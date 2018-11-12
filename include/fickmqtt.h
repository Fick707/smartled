#pragma once

/*
 * set mqtt stauts
 */
void set_mqtt_status(int status);

/*
 * get current mqtt staus;
 */
int get_mqtt_status(void);

/*
 * init mqtt task 
 */
void mqtt_init(void);

/*
 * mqtt main progress.
 */
int mqtt_main(void *paras);