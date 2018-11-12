NAME := smartled
$(NAME)_SOURCES := smartled.c
$(NAME)_SOURCES += src/systools.c
$(NAME)_SOURCES += src/fickwifi.c
# mqtt 基础实现
$(NAME)_SOURCES += src/mqttbase.c

# mqtt的实现可选以下几种linkkit(阿里物联网平台)，ld(阿里link developer)，OneNET
# 物联网平台高级版实现
# $(NAME)_SOURCES += src/linkkitadv.c
# 物联网平台基础版实现
# $(NAME)_SOURCES += src/linkkitcom.c

# link developer实现
$(NAME)_SOURCES += src/ld.c

# OneNET实现
#$(NAME)_SOURCES += src/onenet.c



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
