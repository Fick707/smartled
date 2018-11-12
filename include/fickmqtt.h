#pragma once

/*
 * get current mqtt staus;
 */
int get_mqtt_status(void);

/*
 * init wifi netmgr 
 */
void mqtt_init(void);

/*
 * mqtt main progress.
 */
int mqtt_main(void *paras);