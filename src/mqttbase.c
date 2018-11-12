#include <hal/soc/soc.h>

#include "fickmqtt.h"

#define WIFI_BLINK_GPIO 15
#define EXAMPLE_TRACE(fmt, ...)                        \
    do {                                               \
        LOG("%s|%03d :: ", __func__, __LINE__); \
        LOG(fmt, ##__VA_ARGS__);                \
        LOG("%s", "\r\n");                      \
    } while (0)

static int mqtt_status = 0;
gpio_dev_t mqtt_led;

void set_mqtt_status(int status){
    mqtt_status = status;
}

int get_mqtt_status(void)
{
    return mqtt_status;
}

/*
 * mqtt led blink task
 */
static void mqtt_led_blink(void *p)
{
    switch (mqtt_status) {
    		case 1 : {
                /* MQTT Blink off (output low) */
    			hal_gpio_output_high(&mqtt_led);
    			break;
    		}
    		case 0 :
    		default : {
    			/* MQTT Blink on (output high) */
				hal_gpio_output_low(&mqtt_led);
    			break;
    		}
    	}
    aos_post_delayed_action(3000, mqtt_led_blink, NULL);
}

/*
 * 初始化mqtt
 */
void mqtt_init(void)
{
    EXAMPLE_TRACE("init mqtt led blink.");
    /* gpio port config */
    mqtt_led.port = WIFI_BLINK_GPIO;
    /* set as output mode */
    mqtt_led.config = OUTPUT_PUSH_PULL;
    /* configure GPIO with the given settings */
    hal_gpio_init(&mqtt_led);
    aos_post_delayed_action(3000, mqtt_led_blink, NULL);
}