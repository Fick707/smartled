#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include <aos/aos.h>
#include <hal/soc/soc.h>
#include <aos/yloop.h>

#include "netmgr.h"
#include "fickwifi.h"
#include "fickmqtt.h"

#define WIFI_BLINK_GPIO 2

static int wifi_status = 0;
gpio_dev_t wifi_led;

void wifi_service_event(input_event_t *event, void *priv_data)
{
    if (event->type != EV_WIFI) {
        return;
    }

    switch(event -> code){
        case CODE_WIFI_ON_GOT_IP : {
            netmgr_ap_config_t config;
            memset(&config, 0, sizeof(netmgr_ap_config_t));
            netmgr_get_ap_config(&config);
            LOG("wifi_service_event config.ssid %s", config.ssid);
            wifi_status = 1;
            // start mqtt task;
            aos_task_new("mqtt", (void (*)(void *))mqtt_main, NULL, 1024 * 8);
            break;
        }
        // wifi disconnect
        case CODE_WIFI_ON_DISCONNECT :
        default : {
            LOG("wifi disconnect with something wrong,%d.",event -> value);
            wifi_status = 0;
            // stop mqtt task or handler wifi disconnect event in mqtt task impl;
            break;
        }
    }

    if (event->code != CODE_WIFI_ON_GOT_IP) {
        return;
    }
}

int get_wifi_status(void)
{
	return wifi_status;
}

/*
 * wifi led blink task
 */
static void wifi_led_blink(void *p)
{
    switch (wifi_status) {
    		case 1 : {
                /* WIFI Blink off (output low) */
    			hal_gpio_output_high(&wifi_led);
    			break;
    		}
    		case 0 :
    		default : {
    			/* WIFI Blink on (output high) */
				hal_gpio_output_low(&wifi_led);
    			break;
    		}
    	}
    aos_post_delayed_action(3000, wifi_led_blink, NULL);
}

void wifi_netmgr_init(void)
{
    LOG("init wifi netmgr.");
    netmgr_init();
    LOG("start wifi netmgr.");
    netmgr_start(true);

    LOG("aos registre event filter for wifi service event.");
    aos_register_event_filter(EV_WIFI, wifi_service_event, NULL);

    LOG("init wifi led blink.");
    /* gpio port config */
    wifi_led.port = WIFI_BLINK_GPIO;
    /* set as output mode */
    wifi_led.config = OUTPUT_PUSH_PULL;
    /* configure GPIO with the given settings */
    hal_gpio_init(&wifi_led);
    aos_post_delayed_action(3000, wifi_led_blink, NULL);
}