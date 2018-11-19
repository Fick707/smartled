#pragma once
#include <aos/aos.h>
#include <aos/yloop.h>

/*
 * wifi service event handler
 * 1. wifi connected event;
 * 2. wifi disconnected event;
 */
void wifi_service_event(input_event_t *event, void *priv_data);

/*
 * init network for awss and wireless network
 */
void network_init(void);