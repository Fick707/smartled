NAME := smartled
$(NAME)_SOURCES := smartled.c
$(NAME)_SOURCES += src/fickwifi.c
# linkkit impl,物联网平台
# $(NAME)_SOURCES += src/linkkit.c
# link developer impl

$(NAME)_SOURCES += src/systools.c


# GLOBAL_DEFINES += AOS_NO_WIFI

$(NAME)_COMPONENTS := yloop cli
$(NAME)_COMPONENTS += feature.linkkit

GLOBAL_INCLUDES += ./**
GLOBAL_INCLUDES += ./include/
GLOBAL_INCLUDES += /Users/songfei/.aos/AliOS-Things/**

$(NAME)_COMPONENTS += network/netmgr \
                      middleware/common \
                      middleware/uagent/uota  \
                      utility/cjson   

$(NAME)_DEFINES += CONFIG_PRINT_HEAP

ifeq ($(debug),1)
$(NAME)_DEFINES += CONFIG_DEBUG_ENABLE
endif

# wifi led gpio
CONFIG_WIFI_BLINK_GPIO := 2
# linkkit led gpio
CONFIG_LINKKIT_BLINK_GPIO := 15
