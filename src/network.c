#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include <aos/aos.h>
#include <hal/soc/soc.h>
#include <aos/yloop.h>

#include "iot_export.h"

#include "netmgr.h"
#include "systools.h"
#include "network.h"
// #include "fickmqtt.h"

// if awss running
// static char awss_running    = 0;

/**
 * do awss active
 */
void do_awss_active();

// do awss active impl
void do_awss_active()
{
    LOG("do_awss_active.");
    #ifdef WIFI_AWSS_ENABLED
        LOG("wifi awss enable");
        extern int awss_config_press();
        awss_config_press();
    #endif
    switch_led(CODE_LED_AWSS,1);
}

/**
 * awss reset network reset;
 */
static void awss_reset(void *p)
{
    LOG("awss reset,clear ap config.");
    netmgr_clear_ap_config();
    LOG("awss reset,reboot.");
    HAL_Sys_reboot();
}


extern int  awss_report_reset();
static void do_awss_reset()
{
    #ifdef WIFI_AWSS_ENABLED
        aos_task_new("reset", (void (*)(void *))awss_report_reset, NULL, 2048);
        switch_led(CODE_LED_AWSS,0);
    #endif
    aos_post_delayed_action(2000, awss_reset, NULL);
}

/**
 * key press handler for boot key
 */
void key_press_event(input_event_t *eventinfo, void *priv_data)
{
    LOG("key press event:%d,%d,%d.",eventinfo->type,eventinfo->code,eventinfo->value);
    if (eventinfo->type != EV_KEY) {
        return;
    }
    LOG("awss config press %d", eventinfo->value);
    LOG("awss config press key %d.",eventinfo->code);
    if (eventinfo->code == CODE_BOOT) {
        if (eventinfo->value == VALUE_KEY_CLICK) {
            LOG("click boot for awss active");
            do_awss_active();
        } else if (eventinfo->value == VALUE_KEY_LTCLICK) {
            LOG("long time click for awss reset");
            do_awss_reset();
        }
    }
}


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
            if (strcmp(config.ssid, "adha") == 0 || strcmp(config.ssid, "aha") == 0) {
                // clear_wifi_ssid();
                return;
            }
            LOG("wifi connected.");
            // power on wifi led;
            switch_led(CODE_LED_WIFI,1);
            // TODO mqtt task start;
            break;
        }
        // wifi disconnect
        case CODE_WIFI_ON_DISCONNECT :
        default : {
            // LOG("wifi disconnect with something wrong,%d.",event -> value);
            // switch_led(CODE_LED_WIFI,1);
            // TODO change mqtt status 
            break;
        }
    }

    if (event->code != CODE_WIFI_ON_GOT_IP) {
        return;
    }
}

static void awss_event_monitor(int event)
{
    switch (event) {
        case IOTX_AWSS_START: // AWSS start without enbale, just supports device
                              // discover
            // operate led to indicate user
            LOG("IOTX_AWSS_START");
            break;
        case IOTX_AWSS_ENABLE: // AWSS enable
            LOG("IOTX_AWSS_ENABLE");
            // operate led to indicate user
            break;
        case IOTX_AWSS_LOCK_CHAN: // AWSS lock channel(Got AWSS sync packet)
            LOG("IOTX_AWSS_LOCK_CHAN");
            // operate led to indicate user
            break;
        case IOTX_AWSS_PASSWD_ERR: // AWSS decrypt passwd error
            LOG("IOTX_AWSS_PASSWD_ERR");
            // operate led to indicate user
            break;
        case IOTX_AWSS_GOT_SSID_PASSWD:
            LOG("IOTX_AWSS_GOT_SSID_PASSWD");
            // operate led to indicate user
            break;
        case IOTX_AWSS_CONNECT_ADHA: // AWSS try to connnect adha (device
                                     // discover, router solution)
            LOG("IOTX_AWSS_CONNECT_ADHA");
            // operate led to indicate user
            break;
        case IOTX_AWSS_CONNECT_ADHA_FAIL: // AWSS fails to connect adha
            LOG("IOTX_AWSS_CONNECT_ADHA_FAIL");
            // operate led to indicate user
            break;
        case IOTX_AWSS_CONNECT_AHA: // AWSS try to connect aha (AP solution)
            LOG("IOTX_AWSS_CONNECT_AHA");
            // operate led to indicate user
            break;
        case IOTX_AWSS_CONNECT_AHA_FAIL: // AWSS fails to connect aha
            LOG("IOTX_AWSS_CONNECT_AHA_FAIL");
            // operate led to indicate user
            break;
        case IOTX_AWSS_SETUP_NOTIFY: // AWSS sends out device setup information
                                     // (AP and router solution)
            LOG("IOTX_AWSS_SETUP_NOTIFY");
            // operate led to indicate user
            break;
        case IOTX_AWSS_CONNECT_ROUTER: // AWSS try to connect destination router
            LOG("IOTX_AWSS_CONNECT_ROUTER");
            // operate led to indicate user
            break;
        case IOTX_AWSS_CONNECT_ROUTER_FAIL: // AWSS fails to connect destination
                                            // router.
            LOG("IOTX_AWSS_CONNECT_ROUTER_FAIL");
            // operate led to indicate user
            break;
        case IOTX_AWSS_GOT_IP: // AWSS connects destination successfully and got
                               // ip address
            LOG("IOTX_AWSS_GOT_IP");
            // operate led to indicate user
            break;
        case IOTX_AWSS_SUC_NOTIFY: // AWSS sends out success notify (AWSS
                                   // sucess)
            LOG("IOTX_AWSS_SUC_NOTIFY");
            // operate led to indicate user
            break;
        case IOTX_AWSS_BIND_NOTIFY: // AWSS sends out bind notify information to
                                    // support bind between user and device
            LOG("IOTX_AWSS_BIND_NOTIFY");
            // operate led to indicate user
            break;
        case IOTX_CONN_CLOUD: // Device try to connect cloud
            LOG("IOTX_CONN_CLOUD");
            // operate led to indicate user
            break;
        case IOTX_CONN_CLOUD_FAIL: // Device fails to connect cloud, refer to
                                   // net_sockets.h for error code
            LOG("IOTX_CONN_CLOUD_FAIL");
            // operate led to indicate user
            break;
        case IOTX_CONN_CLOUD_SUC: // Device connects cloud successfully
            LOG("IOTX_CONN_CLOUD_SUC");
            // operate led to indicate user
            break;
        case IOTX_RESET: // Linkkit reset success (just got reset response from
                         // cloud without any other operation)
            LOG("IOTX_RESET");
            // operate led to indicate user
            break;
        default:
            break;
    }
}

static void start_netmgr(void *p)
{
    iotx_event_regist_cb(awss_event_monitor);
    netmgr_start(true);
    aos_task_exit(0);
}

#ifdef CONFIG_AOS_CLI
static void handle_reset_cmd(char *pwbuf, int blen, int argc, char **argv)
{
    aos_schedule_call(do_awss_reset, NULL);
}

static void handle_active_cmd(char *pwbuf, int blen, int argc, char **argv)
{
    aos_schedule_call(do_awss_active, NULL);
}

static struct cli_command resetcmd = { .name     = "reset",
                                       .help     = "factory reset",
                                       .function = handle_reset_cmd };

static struct cli_command ncmd = { .name     = "active_awss",
                                   .help     = "active_awss [start]",
                                   .function = handle_active_cmd };
#endif

void network_init(void)
{
    LOG("init netmgr.");
    netmgr_init();
    // LOG("start awss");
    // awss_start();
    
    LOG("aos registre event filter for key press event.");
    aos_register_event_filter(EV_KEY, key_press_event, NULL);

    LOG("aos registre event filter for wifi service event.");
    aos_register_event_filter(EV_WIFI, wifi_service_event, NULL);

    aos_task_new("netmgr", start_netmgr, NULL, 4096);

    #ifdef CONFIG_AOS_CLI
        aos_cli_register_command(&resetcmd);
        aos_cli_register_command(&ncmd);
    #endif
}