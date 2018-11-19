/*
 * Copyright (C) 2015-2017 Alibaba Group Holding Limited
 */

#include <aos/aos.h>
#include <aos/yloop.h>

#include "systools.h"
#include "network.h"
// #include "fickmqtt.h"
// #include "smartledcore.h"

int application_start(int argc, char *argv[])
{
    LOG("smart led for ali application started.");
    // 1. init the system tools,start print heap task,set log level and so on.
    init_systools();

    // 2. init the network awss service.
    network_init();

    // 3. init mqtt ;
    // mqtt_init();

    // 4. init core;
    // core_init();

    // and finally,invoke aos loop run.
    aos_loop_run();

    return 0;
}
