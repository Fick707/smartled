/*
 * mqtt ali link developer impl
 * @author:fei.song
 * date:2018.11.12
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "iot_import.h"
#include "iot_export.h"
#include "iot_export_mqtt.h"
#include "aos/log.h"
#include "aos/yloop.h"

#include <aos/kernel.h>
#include <k_err.h>

#include <aos/cli.h>
#include <aos/cloud.h>
#include "hal/hal.h"

#include "fickmqtt.h"

#include "mqttbase.c"

#define PRODUCT_KEY             "a114OCxmeCB"
#define DEVICE_NAME             "19I6XgxeRwW69MQBTUu4"
#define DEVICE_SECRET           "hPaNSOg27jT5MHlDW3LV2ETkBHGHfxTV"

#define ALINK_BODY_FORMAT         "{\"id\":\"%d\",\"version\":\"1.0\",\"method\":\"%s\",\"params\":%s}"
#define ALINK_TOPIC_PROP_POST     "/sys/"PRODUCT_KEY"/"DEVICE_NAME"/thing/event/property/post"
#define ALINK_TOPIC_PROP_POSTRSP  "/sys/"PRODUCT_KEY"/"DEVICE_NAME"/thing/event/property/post_reply"
#define ALINK_TOPIC_PROP_SET      "/sys/"PRODUCT_KEY"/"DEVICE_NAME"/thing/service/property/set"
#define ALINK_METHOD_PROP_POST    "thing.event.property.post"

#define MSG_LEN_MAX             (1024)
/*
* Please check below item which in feature self-definition from "https://linkdevelop.aliyun.com/"
*/
#define PROP_SET_FORMAT_CMDLED       "\"cmd_led\":"

void *gpclient;
iotx_mqtt_topic_info_t msg;
char *msg_buf = NULL, *msg_readbuf = NULL;
int mqtt_setup(void);

/*
 * MQTT Subscribe handler
 * topic: ALINK_TOPIC_PROP_SET
 */
static void handle_prop_set(void *pcontext, void *pclient, iotx_mqtt_event_msg_pt msg)
{
    EXAMPLE_TRACE("handler prop set.");
    iotx_mqtt_topic_info_pt ptopic_info = (iotx_mqtt_topic_info_pt)msg->msg;
    char *p_serch = NULL;
    uint8_t led_cmd = 0;
    bool gpio_level = 0;
    p_serch = strstr(ptopic_info->payload, PROP_SET_FORMAT_CMDLED);
    
    if (p_serch != NULL) {
      led_cmd = *(p_serch + strlen(PROP_SET_FORMAT_CMDLED));
    } else {
      EXAMPLE_TRACE("Failed to search, wrong topic!");
	}
    EXAMPLE_TRACE("----");
    EXAMPLE_TRACE("Topic: '%.*s' (Length: %d)", ptopic_info->topic_len,
                ptopic_info->ptopic, ptopic_info->topic_len);
    EXAMPLE_TRACE("Payload: '%.*s' (Length: %d)", ptopic_info->payload_len,
               ptopic_info->payload, ptopic_info->payload_len);
    EXAMPLE_TRACE("----");

    if (led_cmd == '1' || led_cmd == '0')
      gpio_level = led_cmd - '0';
    EXAMPLE_TRACE("set led level %d.",led_cmd);
}


/*
* MQTT Subscribe handler
* topic: ALINK_TOPIC_PROP_POSTRSP
*/
static void handle_prop_postrsp(void *pcontext, void *pclient,
                                iotx_mqtt_event_msg_pt msg)
{
    iotx_mqtt_topic_info_pt ptopic_info = (iotx_mqtt_topic_info_pt)msg->msg;
    // print topic name and topic message
    EXAMPLE_TRACE("Topic: '%.*s' (Length: %d)", ptopic_info->topic_len,
        ptopic_info->ptopic, ptopic_info->topic_len);
    LOG("Payload: '%.*s' (Length: %d)", ptopic_info->payload_len,
        ptopic_info->payload, ptopic_info->payload_len);
}

/*
 * MQTT subscribe, from fixed topic, alink protocol format
 */
static void mqtt_subscribe(void *pclient)
{
    EXAMPLE_TRACE("mqtt subscribe.");
    int rc = -1;
    /* Subscribe the specific topic */
    EXAMPLE_TRACE("mqtt subscribe ALINK_TOPIC_PROP_SET.");
    rc = IOT_MQTT_Subscribe(pclient, ALINK_TOPIC_PROP_SET, IOTX_MQTT_QOS0,
                            handle_prop_set, NULL);
    if (rc < 0) {
        LOG("subscribe ALINK_TOPIC_PROP_SET failed, rc = %d", rc);
    }
    EXAMPLE_TRACE("mqtt subscribe ALINK_TOPIC_PROP_POSTRSP.");
    rc = IOT_MQTT_Subscribe(pclient, ALINK_TOPIC_PROP_POSTRSP, IOTX_MQTT_QOS0,
                            handle_prop_postrsp, NULL);
    if (rc < 0) {
        LOG("subscribe ALINK_TOPIC_PROP_POSTRSP failed, rc = %d", rc);
    }
}

/*
 * MQTT ready event handler
 */
static void mqtt_service_event(input_event_t *event, void *priv_data)
{
    char *pclient = priv_data;
    EXAMPLE_TRACE("mqtt service event handler,%d,%d.",event->code,event->value);
    if (event->type == EV_SYS && event->code == CODE_SYS_ON_MQTT_READ) {
        LOG("mqtt service");
        mqtt_subscribe(pclient);
    } else {
        LOG("skip mqtt service");
    }
}

void event_handle_mqtt(void *pcontext, void *pclient, iotx_mqtt_event_msg_pt msg)
{
    uintptr_t packet_id = (uintptr_t)msg->msg;
    iotx_mqtt_topic_info_pt topic_info = (iotx_mqtt_topic_info_pt)msg->msg;

    switch (msg->event_type) {
        case IOTX_MQTT_EVENT_UNDEF:
            EXAMPLE_TRACE("undefined event occur.");
            break;

        case IOTX_MQTT_EVENT_DISCONNECT:
            EXAMPLE_TRACE("MQTT disconnect.");
            set_mqtt_status(0);
            break;

        case IOTX_MQTT_EVENT_RECONNECT:
            EXAMPLE_TRACE("MQTT reconnect.");
            set_mqtt_status(1);
            break;

        case IOTX_MQTT_EVENT_SUBCRIBE_SUCCESS:
            EXAMPLE_TRACE("subscribe success, packet-id=%u", (unsigned int)packet_id);
            break;

        case IOTX_MQTT_EVENT_SUBCRIBE_TIMEOUT:
            EXAMPLE_TRACE("subscribe wait ack timeout, packet-id=%u", (unsigned int)packet_id);
            break;

        case IOTX_MQTT_EVENT_SUBCRIBE_NACK:
            EXAMPLE_TRACE("subscribe nack, packet-id=%u", (unsigned int)packet_id);
            break;

        case IOTX_MQTT_EVENT_UNSUBCRIBE_SUCCESS:
            EXAMPLE_TRACE("unsubscribe success, packet-id=%u", (unsigned int)packet_id);
            break;

        case IOTX_MQTT_EVENT_UNSUBCRIBE_TIMEOUT:
            EXAMPLE_TRACE("unsubscribe timeout, packet-id=%u", (unsigned int)packet_id);
            break;

        case IOTX_MQTT_EVENT_UNSUBCRIBE_NACK:
            EXAMPLE_TRACE("unsubscribe nack, packet-id=%u", (unsigned int)packet_id);
            break;

        case IOTX_MQTT_EVENT_PUBLISH_SUCCESS:
            EXAMPLE_TRACE("publish success, packet-id=%u", (unsigned int)packet_id);
            break;

        case IOTX_MQTT_EVENT_PUBLISH_TIMEOUT:
            EXAMPLE_TRACE("publish timeout, packet-id=%u", (unsigned int)packet_id);
            break;

        case IOTX_MQTT_EVENT_PUBLISH_NACK:
            EXAMPLE_TRACE("publish nack, packet-id=%u", (unsigned int)packet_id);
            break;

        case IOTX_MQTT_EVENT_PUBLISH_RECEIVED:
            EXAMPLE_TRACE("topic message arrived but without any related handle: topic=%.*s, topic_msg=%.*s",
                topic_info->topic_len,
                topic_info->ptopic,
                topic_info->payload_len,
                topic_info->payload);
            break;
        default:
            EXAMPLE_TRACE("Should NOT arrive here.");
            break;
    }
}

void release_buff()
{
    if (NULL != msg_buf) {
        aos_free(msg_buf);
    }

    if (NULL != msg_readbuf) {
        aos_free(msg_readbuf);
    }
}

int mqtt_setup(void)
{
    EXAMPLE_TRACE("mqtt setting up.");
    int rc = 0;
    iotx_conn_info_pt pconn_info;
    iotx_mqtt_param_t mqtt_params;

    if (msg_buf != NULL) {
        return rc;
    }

    if (NULL == (msg_buf = (char *)aos_malloc(MSG_LEN_MAX))) {
        EXAMPLE_TRACE("not enough memory");
        rc = -1;
        release_buff();
        return rc;
    }

    if (NULL == (msg_readbuf = (char *)aos_malloc(MSG_LEN_MAX))) {
        EXAMPLE_TRACE("not enough memory");
        rc = -1;
        release_buff();
        return rc;
    }

    /* Device AUTH */
    if (0 != IOT_SetupConnInfo(PRODUCT_KEY, DEVICE_NAME, DEVICE_SECRET, (void **)&pconn_info)) {
        EXAMPLE_TRACE("AUTH request failed!");
        rc = -1;
        release_buff();
        return rc;
    }

    /* Initialize MQTT parameter */
    EXAMPLE_TRACE("init mqtt parameter.");
    memset(&mqtt_params, 0x0, sizeof(mqtt_params));
    mqtt_params.port = pconn_info->port;
    mqtt_params.host = pconn_info->host_name;
    mqtt_params.client_id = pconn_info->client_id;
    mqtt_params.username = pconn_info->username;
    mqtt_params.password = pconn_info->password;
    mqtt_params.pub_key = pconn_info->pub_key;
    mqtt_params.request_timeout_ms = 2000;
    mqtt_params.clean_session = 0;
    mqtt_params.keepalive_interval_ms = 60000;
    mqtt_params.pread_buf = msg_readbuf;
    mqtt_params.read_buf_size = MSG_LEN_MAX;
    mqtt_params.pwrite_buf = msg_buf;
    mqtt_params.write_buf_size = MSG_LEN_MAX;
    mqtt_params.handle_event.h_fp = event_handle_mqtt;
    mqtt_params.handle_event.pcontext = NULL;

    /* Construct a MQTT client with specify parameter */
    EXAMPLE_TRACE("construct a mqtt client with specify parameter.");
    gpclient = IOT_MQTT_Construct(&mqtt_params);
    if (NULL == gpclient) {
        EXAMPLE_TRACE("MQTT construct failed");
        release_buff();
        rc = -1;
    } else {
        EXAMPLE_TRACE("mqtt client init done.");
        aos_register_event_filter(EV_SYS,  mqtt_service_event, gpclient);
        set_mqtt_status(1);
        mqtt_subscribe(gpclient);
    }

    return rc;
}

int mqtt_main(void *paras)
{
    EXAMPLE_TRACE("link developer start: %s %s ===\n", __DATE__, __TIME__);
    mqtt_setup();
    return 0;
}