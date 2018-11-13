#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include <aos/aos.h>
#include <hal/soc/soc.h>
#include "smartledcore.h"

#define CORE_BLINK_GPIO 16

static int core_status = 0;
gpio_dev_t core_led;

void switch_led(int value)
{
    LOG("switch led:%d.", value);
    core_status = value;
}

/*
 * core led blink task
 */
static void core_led_blink(void *p)
{
    switch (core_status)
    {
    case 1:
    {
        /* WIFI Blink off (output low) */
        hal_gpio_output_high(&core_led);
        break;
    }
    case 0:
    default:
    {
        /* WIFI Blink on (output high) */
        hal_gpio_output_low(&core_led);
        break;
    }
    }
    aos_post_delayed_action(1000, core_led_blink, NULL);
}

void core_init(void)
{
    LOG("init core led blink.");
    /* gpio port config */
    core_led.port = CORE_BLINK_GPIO;
    /* set as output mode */
    core_led.config = OUTPUT_PUSH_PULL;
    /* configure GPIO with the given settings */
    hal_gpio_init(&core_led);
    aos_post_delayed_action(3000, core_led_blink, NULL);
}