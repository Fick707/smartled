/**
 * @author Fick Song
 * @date 2018.11.14
 * 系统工具;
 * 控制系统LED提示灯
 * 控制系统在线升级FOTA
 * 先用LED分别提示不同功能，后期可以用一个RGB LED及其闪烁标示不同功能的不同状态
 */
#pragma once

// led for awss
#define CODE_LED_AWSS 1
// led for wifi connection
#define CODE_LED_WIFI 2
// led for mqtt connection
#define CODE_LED_MQTT 3
// led for all
#define CODE_LED_ALL 0

// define led gpios
#define AWSS_LED_GPIO 2
#define WIFI_LED_GPIO 15
#define MQTT_LED_GPIO 16

/*
 * init the system tools.
 */
void init_systools();

/**
 * switch led for,if 0,switch for all led
 */
void switch_led(int led_code,int value);