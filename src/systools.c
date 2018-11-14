#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include <aos/aos.h>
#include <aos/yloop.h>
#include <k_api.h>
#include <hal/soc/soc.h>

#include "systools.h"

// master switch for all led
int LED_FOR_ALL_STATUS = 1;
int LED_FOR_AWSS_STATUS = 0;
int LED_FOR_WIFI_STATUS = 0;
int LED_FOR_MQTT_STATUS = 0;

gpio_dev_t awss_led;
gpio_dev_t wifi_led;
gpio_dev_t mqtt_led;

void init_blinker();
void led_blink(void *arg);
void print_heap();
void print_heap_work();
int get_led_status_by_code(int led_code);
gpio_dev_t *get_gpio_dev_by_code(int led_code);


void init_systools()
{
    LOG("init system tools.");
    // print heap task start if print heap config defined.
    #ifdef CONFIG_PRINT_HEAP
        print_heap();
        aos_post_delayed_action(5000, print_heap_work, NULL);
    #endif
    // set log level to debug if debug enable config defined.
    #ifdef CONFIG_DEBUG_ENABLE
        aos_set_log_level(AOS_LL_DEBUG);
    #endif
    // init blinker
    init_blinker();
}

void init_blinker(void)
{
    led_blink(CODE_LED_AWSS);
    led_blink(CODE_LED_WIFI);
    led_blink(CODE_LED_MQTT);
}

void switch_led(int led_code,int value){
    switch (led_code)
    {
        case CODE_LED_AWSS :
            LED_FOR_AWSS_STATUS = value;
            break;
        case CODE_LED_WIFI :
            LED_FOR_WIFI_STATUS = value;
            break;
        case CODE_LED_MQTT :
            LED_FOR_MQTT_STATUS = value;
            break;
        // default for master switch
        case CODE_LED_ALL :
        default:
            LED_FOR_ALL_STATUS = value;
            break;
    }
}

void led_blink(void *arg)
{
    LOGD("led blink for %s.",arg);
    if(LED_FOR_ALL_STATUS){
        int status = get_led_status_by_code(arg - '0');
        LOGD("status for %s is %d.",arg,status);
        gpio_dev_t *gpio_dev = get_gpio_dev_by_code(arg - '0');
        switch (status) {
    		case 1 : {
    			hal_gpio_output_high(&gpio_dev);
    			break;
    		}
    		case 0 :
    		default : {
				hal_gpio_output_low(&gpio_dev);
    			break;
    		}
    	}
    }
    aos_post_delayed_action(3000, led_blink, arg);
}

int get_led_status_by_code(int led_code)
{
    switch (led_code)
    {
        case CODE_LED_AWSS :
            return LED_FOR_AWSS_STATUS;
        case CODE_LED_WIFI :
            return LED_FOR_WIFI_STATUS;
        default:
            return LED_FOR_MQTT_STATUS;
    }
}

gpio_dev_t *get_gpio_dev_by_code(int led_code)
{
    switch (led_code)
    {
        case CODE_LED_AWSS :
            return &awss_led;
        case CODE_LED_WIFI :
            return &wifi_led;
        default:
            return &mqtt_led;
    }
}

void print_heap()
{
    extern k_mm_head *g_kmm_head;
    int               free = g_kmm_head->free_size;
    LOG("============free heap size =%d==========", free);
}

void print_heap_work(void *p)
{
    print_heap();
    aos_post_delayed_action(5000, print_heap_work, NULL);
}