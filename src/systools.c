#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include <aos/aos.h>
#include <aos/yloop.h>
#include <k_api.h>

#include "systools.h"

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