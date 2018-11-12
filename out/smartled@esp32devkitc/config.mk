AOS_SDK_MAKEFILES           		+= /Users/songfei/AliOS-Things-project//smartled/smartled.mk ./board/esp32devkitc/esp32devkitc.mk ././platform/mcu/esp32/esp32.mk ././osal/osal.mk ./kernel/init/init.mk /Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/auto_component/auto_component.mk ./kernel/yloop/yloop.mk ./tools/cli/cli.mk ././network/netmgr/netmgr.mk ././middleware/common/common.mk ././middleware/uagent/uota/uota.mk ././utility/cjson/cjson.mk ./kernel/hal/hal.mk ./kernel/rhino/fs/kv/kv.mk ././network/lwip/lwip.mk ./security/alicrypto/alicrypto.mk ./kernel/rhino/rhino.mk ././platform/arch/xtensa/lx6/lx6.mk ././middleware/alink/cloud/cloud.mk ././osal/espos/espos.mk ./utility/log/log.mk ./kernel/rhino/vfs/vfs.mk ././middleware/uagent/uota/src/recovery/recovery.mk ././kernel/rhino/vfs/device/device.mk ././middleware/linkkit/sdk-c/sdk-c.mk ././middleware/linkkit/hal/hal.mk ././middleware/linkkit/sdk-c/src/protocol/mqtt/mqtt.mk ././middleware/linkkit/sdk-c/src/services/awss/awss.mk ././middleware/linkkit/sdk-c/src/protocol/http/http.mk ././middleware/linkkit/sdk-c/src/protocol/alcs/alcs.mk ././middleware/linkkit/sdk-c/src/services/linkkit/cm/cm.mk ././middleware/linkkit/sdk-c/src/services/linkkit/dm/dm.mk ./utility/digest_algorithm/digest_algorithm.mk ./tools/activation/activation.mk ./utility/chip_code/chip_code.mk ././security/mbedtls/mbedtls.mk ././middleware/linkkit/sdk-c/src/infra/utils/utils.mk ././middleware/linkkit/sdk-c/src/infra/log/log.mk ././middleware/linkkit/sdk-c/src/infra/system/system.mk ././middleware/linkkit/sdk-c/src/sdk-impl/sdk-impl.mk
TOOLCHAIN_NAME            		:= GCC
AOS_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,--cref -nostdlib -Lplatform/mcu/esp32/ -lc -lgcc -lstdc++ -lgcov -lm -L platform/mcu/esp32/bsp/ld
AOS_SDK_LDS_FILES                     += platform/mcu/esp32/bsp/ld/esp32.ld.S platform/mcu/esp32/bsp/ld/esp32.common.ld platform/mcu/esp32/bsp/ld/esp32.rom.ld platform/mcu/esp32/bsp/ld/esp32.peripherals.ld platform/mcu/esp32/bsp/ld/esp32.rom.spiram_incompatible_fns.ld
AOS_SDK_LDS_INCLUDES                  += 
RESOURCE_CFLAGS					+= -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32 -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\" -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\" -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT
AOS_SDK_LINK_SCRIPT         		+= 
AOS_SDK_LINK_SCRIPT_CMD    	 	+= 
AOS_SDK_PREBUILT_LIBRARIES 	 	+= ././platform/mcu/esp32/lib/libesp32.a ././platform/mcu/esp32/lib/libsoc.a ././platform/mcu/esp32/lib/libhal.a ././platform/mcu/esp32/lib/libnewlib.a ././platform/mcu/esp32/lib/libvfs.a ././platform/mcu/esp32/lib/libspi_flash.a ././platform/mcu/esp32/lib/liblog.a ././platform/mcu/esp32/lib/libdriver.a ././platform/mcu/esp32/lib/libcontainer.a ././platform/mcu/esp32/lib/librtc.a ././platform/mcu/esp32/lib/libcoexist.a ././platform/mcu/esp32/lib/libcore.a ././platform/mcu/esp32/lib/libnet80211.a ././platform/mcu/esp32/lib/libpp.a ././platform/mcu/esp32/lib/libwpa.a ././platform/mcu/esp32/lib/libwpa2.a ././platform/mcu/esp32/lib/libwps.a ././platform/mcu/esp32/lib/libphy.a ././platform/mcu/esp32/lib/libnvs_flash.a ././platform/mcu/esp32/lib/libcxx.a ././platform/mcu/esp32/lib/libstdcc++-cache-workaround.a ././platform/mcu/esp32/lib/libwpa_supplicant.a ././platform/mcu/esp32/lib/libapp_update.a ././platform/mcu/esp32/lib/libbootloader_support.a ./tools/activation/./xtensa/esp32/activation.a
AOS_SDK_CERTIFICATES       	 	+= 
AOS_SDK_PRE_APP_BUILDS      		+= 
AOS_SDK_LINK_FILES          		+=                                                                                
AOS_SDK_INCLUDES           	 	+=                                                                              -I/Users/songfei/AliOS-Things-project//smartled/./** -I/Users/songfei/AliOS-Things-project//smartled/./include/ -I/Users/songfei/AliOS-Things-project//smartled//Users/songfei/.aos/AliOS-Things/** -I./board/esp32devkitc/. -I././platform/mcu/esp32/bsp/include -I././platform/mcu/esp32/bsp/include/esp32/include -I././platform/mcu/esp32/bsp/include/soc/esp32/include -I././platform/mcu/esp32/bsp/include/soc/include -I././platform/mcu/esp32/bsp/include/driver/include -I././platform/mcu/esp32/bsp/include/ethernet/include -I././platform/mcu/esp32/bsp/include/log/include -I././platform/mcu/esp32/bsp/include/nvs_flash/include -I././platform/mcu/esp32/bsp/include/spi_flash/include -I././platform/mcu/esp32/bsp/include/container/include -I././platform/mcu/esp32/bsp/include/app_update/include -I././osal/./mico/include -I././osal/./include -I./kernel/init/include -I./kernel/yloop/include -I./tools/cli/include -I././network/netmgr/include -I././network/netmgr/../../middleware/alink/protocol/os/platform/ -I././middleware/common/include -I././utility/cjson/include -I./kernel/hal/include -I./kernel/hal/../rhino -I./kernel/hal/../rhino/hal/soc -I./kernel/rhino/fs/kv/include -I././network/lwip/include -I././network/lwip/port/include -I./security/alicrypto/./libalicrypto/inc -I./kernel/rhino/core/include -I./kernel/rhino/uspace/include -I./kernel/rhino/debug/include -I./kernel/rhino/hal/soc -I./kernel/rhino/./ -I././platform/arch/xtensa/lx6/. -I././platform/arch/xtensa/lx6/./include -I././platform/arch/xtensa/lx6/./include/frxt -I././platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/esp32/include -I././middleware/alink/cloud/include -I././osal/espos/include -I./utility/log/include -I./kernel/rhino/vfs/include -I././middleware/uagent/uota/src/recovery/. -I././middleware/linkkit/sdk-c/include/exports -I././middleware/linkkit/sdk-c/include/imports -I././middleware/linkkit/sdk-c/include -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/sdk-impl -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/infra/utils/digest -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/infra/utils -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/infra/utils/misc -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/infra/log -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/include/exports -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/include/imports -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/include -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/protocol/alcs -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/services/linkkit/dm -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/services/linkkit/cm -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/utils/misc -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/protocol/mqtt/Link-MQTT -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/protocol/mqtt -I././middleware/linkkit/sdk-c/../../../middleware/linkkit/sdk-c/src/protocol/mqtt/client -I./utility/digest_algorithm/. -I./tools/activation/. -I./utility/chip_code/. -I././security/mbedtls/include -I.//network/include -I./app/example/smartled -I./kernel/hal/include/hal -I./kernel/hal/include/hal/soc
AOS_SDK_DEFINES             		+=                                          -DBUILD_BIN -DCONFIG_AOS_KV_BUFFER_SIZE=8192 -DCONFIG_AOS_CLI_BOARD -DOSAL_RHINO -DAOS_LOOP -DHAVE_NOT_ADVANCED_FORMATE -DCONFIG_AOS_CLI -DNET_WITH_WIFI -DAOS_NETMGR -DAOS_FRAMEWORK_COMMON -DUSE_LPTHREAD -DOTA_ALIOS -DOTA_WITH_LINKKIT -DOTA_SIGNAL_CHANNEL=1 -DAOS_HAL -DAOS_KV -DWITH_LWIP -DCONFIG_NET_LWIP -DCONFIG_ALICRYPTO -DCONFIG_CLOUD -DAOS_VFS -DBUILD_AOS -DIOTX_NET_INIT_WITH_PK_EXT -DCM_VIA_CLOUD_CONN -DCM_VIA_CLOUD_CONN_MQTT -DCM_SUPPORT_MULTI_THREAD_VIA_HAL -DCM_SUPPORT_LOCAL_CONN -DCONFIG_DM_SUPPORT_LOCAL_CONN -DCONFIG_HTTP_AUTH_TIMEOUT=500 -DCONFIG_MID_HTTP_TIMEOUT=500 -DCONFIG_GUIDER_AUTH_TIMEOUT=500 -DCONFIG_MQTT_TX_MAXLEN=640 -DCONFIG_MQTT_RX_MAXLEN=1200 -D_IS_LINKKIT_ -DCOAP_OBSERVE_SERVER_SUPPORTED -DCOAP_OBSERVE_CLIENT_SUPPORTED -DCOAP_SERV_MULTITHREAD -DCOAP_USE_PLATFORM_MEMORY -DCOAP_USE_PLATFORM_LOG -DCONFIG_YWSS -DMCU_FAMILY=\"esp32\"
COMPONENTS                		:= smartled board_esp32devkitc esp32 osal kernel_init auto_component yloop cli netmgr common uOTA cjson hal kv lwip alicrypto rhino xtensa cloud espos log vfs recovery vfs_device linkkit_sdk_c iotx-hal libiot_mqtt libawss libiot_http libiot_alcs libiot_cm libiot_dm digest_algorithm activation chip_code mbedtls libiot_utils libiot_log libiot_system libiot_sdk_impl
PLATFORM_DIRECTORY        		:= esp32devkitc
APP_FULL                  		:= smartled
PLATFORM                  		:= esp32devkitc
HOST_MCU_FAMILY                  	:= esp32
SUPPORT_BINS                          := no
APP                       		:= smartled
HOST_OPENOCD              		:= esp32
JTAG              		        := jlink_swd
HOST_ARCH                 		:= xtensa
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
smartled_LOCATION         := /Users/songfei/AliOS-Things-project//smartled/
board_esp32devkitc_LOCATION         := ./board/esp32devkitc/
esp32_LOCATION         := ././platform/mcu/esp32/
osal_LOCATION         := ././osal/
kernel_init_LOCATION         := ./kernel/init/
auto_component_LOCATION         := /Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/auto_component/
yloop_LOCATION         := ./kernel/yloop/
cli_LOCATION         := ./tools/cli/
netmgr_LOCATION         := ././network/netmgr/
common_LOCATION         := ././middleware/common/
uOTA_LOCATION         := ././middleware/uagent/uota/
cjson_LOCATION         := ././utility/cjson/
hal_LOCATION         := ./kernel/hal/
kv_LOCATION         := ./kernel/rhino/fs/kv/
lwip_LOCATION         := ././network/lwip/
alicrypto_LOCATION         := ./security/alicrypto/
rhino_LOCATION         := ./kernel/rhino/
xtensa_LOCATION         := ././platform/arch/xtensa/lx6/
cloud_LOCATION         := ././middleware/alink/cloud/
espos_LOCATION         := ././osal/espos/
log_LOCATION         := ./utility/log/
vfs_LOCATION         := ./kernel/rhino/vfs/
recovery_LOCATION         := ././middleware/uagent/uota/src/recovery/
vfs_device_LOCATION         := ././kernel/rhino/vfs/device/
linkkit_sdk_c_LOCATION         := ././middleware/linkkit/sdk-c/
iotx-hal_LOCATION         := ././middleware/linkkit/hal/
libiot_mqtt_LOCATION         := ././middleware/linkkit/sdk-c/src/protocol/mqtt/
libawss_LOCATION         := ././middleware/linkkit/sdk-c/src/services/awss/
libiot_http_LOCATION         := ././middleware/linkkit/sdk-c/src/protocol/http/
libiot_alcs_LOCATION         := ././middleware/linkkit/sdk-c/src/protocol/alcs/
libiot_cm_LOCATION         := ././middleware/linkkit/sdk-c/src/services/linkkit/cm/
libiot_dm_LOCATION         := ././middleware/linkkit/sdk-c/src/services/linkkit/dm/
digest_algorithm_LOCATION         := ./utility/digest_algorithm/
activation_LOCATION         := ./tools/activation/
chip_code_LOCATION         := ./utility/chip_code/
mbedtls_LOCATION         := ././security/mbedtls/
libiot_utils_LOCATION         := ././middleware/linkkit/sdk-c/src/infra/utils/
libiot_log_LOCATION         := ././middleware/linkkit/sdk-c/src/infra/log/
libiot_system_LOCATION         := ././middleware/linkkit/sdk-c/src/infra/system/
libiot_sdk_impl_LOCATION         := ././middleware/linkkit/sdk-c/src/sdk-impl/
smartled_SOURCES          += smartled.c src/alimqtt.c src/fickwifi.c src/systools.c 
board_esp32devkitc_SOURCES          += board.c 
esp32_SOURCES          += aos/heap_wrapper.c aos/hook_impl.c aos/soc_impl.c aos/trace_impl.c bsp/entry.c bsp/ethernetif.c bsp/setboot_cli.c bsp/tcpip_adapter_lwip.c bsp/wlanif.c hal/adc.c hal/dac.c hal/flash.c hal/gpio.c hal/i2c.c hal/misc.c hal/ota_port.c hal/pwm.c hal/rtc.c hal/uart.c hal/wdg.c hal/wifi_port.c 
osal_SOURCES          += aos/aos_rhino.c 
kernel_init_SOURCES          += aos_init.c 
auto_component_SOURCES          +=  component_init.c testcase_register.c
yloop_SOURCES          += device.c local_event.c select.c yloop.c 
cli_SOURCES          += cli.c dumpsys.c 
netmgr_SOURCES          += interfaces/netmgr_wifi.c netmgr.c 
common_SOURCES          += main.c version.c 
uOTA_SOURCES          += hal/ota_hal_os.c hal/ota_hal_plat.c src/download/ota_download_coap.c src/download/ota_download_http.c src/download/ota_manifest.c src/otalib/ota.c src/service/ota_service.c src/service/ota_version.c src/transport/ota_transport_coap.c src/transport/ota_transport_mqtt.c src/utility/base64/ota_base64.c src/utility/hexstr2hexbuf/ota_hexstr2hexbuf.c src/verify/hash/ota_hash.c src/verify/hash/ota_md5.c src/verify/hash/ota_sha256.c src/verify/ota_rsa_verify.c src/verify/ota_util.c src/verify/ota_verify.c src/verify/rsa/ota_bignum.c src/verify/rsa/ota_hash_rsa.c src/verify/rsa/ota_rsa.c 
cjson_SOURCES          += cJSON.c cJSON_Utils.c 
hal_SOURCES          += ota.c wifi.c 
kv_SOURCES          += kv_osal.c kvmgr.c 
lwip_SOURCES          += api/api_lib.c api/api_msg.c api/err.c api/netbuf.c api/netdb.c api/netifapi.c api/sockets.c api/tcpip.c apps/tftp/tftp_client.c apps/tftp/tftp_common.c apps/tftp/tftp_ota.c apps/tftp/tftp_server.c core/af_packet.c core/def.c core/dns.c core/inet_chksum.c core/init.c core/ip.c core/ipv4/autoip.c core/ipv4/dhcp.c core/ipv4/etharp.c core/ipv4/icmp.c core/ipv4/igmp.c core/ipv4/ip4.c core/ipv4/ip4_addr.c core/ipv4/ip4_frag.c core/ipv6/dhcp6.c core/ipv6/ethip6.c core/ipv6/icmp6.c core/ipv6/inet6.c core/ipv6/ip6.c core/ipv6/ip6_addr.c core/ipv6/ip6_frag.c core/ipv6/mld6.c core/ipv6/nd6.c core/mem.c core/memp.c core/netif.c core/pbuf.c core/raw.c core/stats.c core/sys.c core/tcp.c core/tcp_in.c core/tcp_out.c core/timeouts.c core/udp.c netif/ethernet.c netif/slipif.c port/sys_arch.c 
alicrypto_SOURCES          += ./libalicrypto/ali_crypto.c ./libalicrypto/mbed/asym/rsa.c ./libalicrypto/mbed/cipher/aes.c ./libalicrypto/mbed/hash/hash.c ./libalicrypto/mbed/mac/hmac.c ./libalicrypto/sw/ali_crypto_rand.c ./mbedtls/library/aes.c ./mbedtls/library/asn1parse.c ./mbedtls/library/bignum.c ./mbedtls/library/hash_wrap.c ./mbedtls/library/hmac.c ./mbedtls/library/mbedtls_alt.c ./mbedtls/library/md5.c ./mbedtls/library/oid.c ./mbedtls/library/rsa.c ./mbedtls/library/sha1.c ./mbedtls/library/sha256.c ./mbedtls/library/threading.c 
rhino_SOURCES          += common/k_fifo.c common/k_trace.c core/k_buf_queue.c core/k_dyn_mem_proc.c core/k_err.c core/k_event.c core/k_idle.c core/k_mm.c core/k_mm_blk.c core/k_mm_debug.c core/k_mutex.c core/k_obj.c core/k_pend.c core/k_queue.c core/k_ringbuf.c core/k_sched.c core/k_sem.c core/k_stats.c core/k_sys.c core/k_task.c core/k_task_sem.c core/k_tick.c core/k_time.c core/k_timer.c core/k_workqueue.c debug/k_backtrace.c debug/k_infoget.c debug/k_overview.c debug/k_panic.c uspace/u_task.c 
xtensa_SOURCES          += port.c portasm.S xtensa_context.S xtensa_init.c xtensa_intr.c xtensa_intr_asm.S xtensa_vectors.S 
cloud_SOURCES          += cloud.c 
espos_SOURCES          += platform/rhino/espos_misc.c platform/rhino/espos_mutex.c platform/rhino/espos_queue.c platform/rhino/espos_scheduler.c platform/rhino/espos_semaphore.c platform/rhino/espos_spinlock.c platform/rhino/espos_task.c platform/rhino/espos_time.c platform/rhino/espos_timer.c 
log_SOURCES          += log.c 
vfs_SOURCES          += vfs.c vfs_file.c vfs_inode.c vfs_register.c 
recovery_SOURCES          += 
vfs_device_SOURCES          += vfs_adc.c vfs_gpio.c vfs_i2c.c vfs_pwm.c vfs_rtc.c vfs_spi.c vfs_uart.c vfs_wdg.c 
linkkit_sdk_c_SOURCES          += 
iotx-hal_SOURCES          += HAL_AWSS_rhino.c HAL_Crypt_rhino.c HAL_DTLS_mbedtls.c HAL_OS_rhino.c HAL_PRODUCT_rhino.c HAL_TCP_rhino.c HAL_TLS_mbedtls.c HAL_UDP_rhino.c 
libiot_mqtt_SOURCES          += ./MQTTPacket/MQTTConnectClient.c ./MQTTPacket/MQTTDeserializePublish.c ./MQTTPacket/MQTTPacket.c ./MQTTPacket/MQTTSerializePublish.c ./MQTTPacket/MQTTSubscribeClient.c ./MQTTPacket/MQTTUnsubscribeClient.c ./client/mqtt_client.c ./client/mqtt_instance.c 
libawss_SOURCES          += awss.c awss_cmp_coap.c awss_cmp_mqtt.c awss_main.c awss_notify.c awss_packet.c awss_report.c awss_timer.c awss_wifimgr.c enrollee.c ntp.c os/os_misc.c passwd.c registrar.c sha256.c utility/log.c zconfig_ieee80211.c zconfig_protocol.c zconfig_utils.c zconfig_vendor_common.c 
libiot_http_SOURCES          += ./iotx_http_api.c 
libiot_alcs_SOURCES          += ./CoAPDeserialize.c ./CoAPExport.c ./CoAPMessage.c ./CoAPNetwork.c ./CoAPObserve.c ./CoAPPlatform.c ./CoAPResource.c ./CoAPSerialize.c ./CoAPServer.c ./alcs_adapter.c ./alcs_api.c ./alcs_client.c ./alcs_coap.c ./alcs_mqtt.c ./alcs_server.c 
libiot_cm_SOURCES          += ./iotx_cm_api.c ./iotx_cm_cloud_conn.c ./iotx_cm_common.c ./iotx_cm_conn_coap.c ./iotx_cm_conn_http.c ./iotx_cm_conn_mqtt.c ./iotx_cm_connectivity.c ./iotx_cm_local_conn.c ./iotx_cm_log.c ./iotx_local_conn_alcs.c 
libiot_dm_SOURCES          += ./dm_api.c ./dm_cm_wrapper.c ./dm_conn.c ./dm_cota.c ./dm_dispatch.c ./dm_fota.c ./dm_ipc.c ./dm_manager.c ./dm_message.c ./dm_message_cache.c ./dm_opt.c ./dm_ota.c ./dm_shadow.c ./dm_subscribe.c ./dm_tsl_alink.c ./dm_utils.c ./linkkit_gateway_legacy.c ./linkkit_solo_legacy.c 
digest_algorithm_SOURCES          += CheckSumUtils.c crc.c crc16.c digest_algorithm.c md5.c 
activation_SOURCES          += 
chip_code_SOURCES          += chip_code.c 
mbedtls_SOURCES          += src/aes.c src/aesni.c src/arc4.c src/asn1write.c src/base64.c src/bignum.c src/blowfish.c src/camellia.c src/ccm.c src/cipher.c src/cipher_wrap.c src/cmac.c src/ctr_drbg.c src/debug.c src/des.c src/dhm.c src/ecdh.c src/ecdsa.c src/ecjpake.c src/ecp.c src/ecp_curves.c src/entropy.c src/entropy_poll.c src/error.c src/gcm.c src/havege.c src/hmac_drbg.c src/mbedtls_alt.c src/mbedtls_net.c src/mbedtls_ssl.c src/md.c src/md2.c src/md4.c src/md_wrap.c src/memory_buffer_alloc.c src/net_sockets.c src/oid.c src/padlock.c src/pem.c src/pk.c src/pk_wrap.c src/pkcs11.c src/pkcs12.c src/pkcs5.c src/pkparse.c src/pkwrite.c src/platform.c src/ripemd160.c src/rsa.c src/sha512.c src/ssl_cache.c src/ssl_ciphersuites.c src/ssl_cli.c src/ssl_cookie.c src/ssl_srv.c src/ssl_ticket.c src/ssl_tls.c src/timing.c src/version.c src/version_features.c src/x509.c src/x509_create.c src/x509_crl.c src/x509_crt.c src/x509_csr.c src/x509write_crt.c src/x509write_csr.c src/xtea.c 
libiot_utils_SOURCES          += ./digest/utils_base64.c ./digest/utils_hmac.c ./digest/utils_md5.c ./digest/utils_sha1.c ./digest/utils_sha256.c ./misc/json_parser.c ./misc/json_token.c ./misc/linked_list.c ./misc/lite-cjson.c ./misc/mem_stats.c ./misc/string_utils.c ./misc/utils_epoch_time.c ./misc/utils_event.c ./misc/utils_httpc.c ./misc/utils_list.c ./misc/utils_net.c ./misc/utils_timer.c 
libiot_log_SOURCES          += ./iotx_log.c 
libiot_system_SOURCES          += ./ca.c ./device.c ./guider.c ./report.c 
libiot_sdk_impl_SOURCES          += ./impl_dynreg.c ./impl_linkkit.c ./impl_logpost.c ./sdk-impl.c 
smartled_CHECK_HEADERS    += 
board_esp32devkitc_CHECK_HEADERS    += 
esp32_CHECK_HEADERS    += 
osal_CHECK_HEADERS    += 
kernel_init_CHECK_HEADERS    += 
auto_component_CHECK_HEADERS    += 
yloop_CHECK_HEADERS    += 
cli_CHECK_HEADERS    += 
netmgr_CHECK_HEADERS    += 
common_CHECK_HEADERS    += 
uOTA_CHECK_HEADERS    += 
cjson_CHECK_HEADERS    += 
hal_CHECK_HEADERS    += 
kv_CHECK_HEADERS    += 
lwip_CHECK_HEADERS    += 
alicrypto_CHECK_HEADERS    += 
rhino_CHECK_HEADERS    += 
xtensa_CHECK_HEADERS    += 
cloud_CHECK_HEADERS    += 
espos_CHECK_HEADERS    += 
log_CHECK_HEADERS    += 
vfs_CHECK_HEADERS    += 
recovery_CHECK_HEADERS    += 
vfs_device_CHECK_HEADERS    += 
linkkit_sdk_c_CHECK_HEADERS    += 
iotx-hal_CHECK_HEADERS    += 
libiot_mqtt_CHECK_HEADERS    += 
libawss_CHECK_HEADERS    += 
libiot_http_CHECK_HEADERS    += 
libiot_alcs_CHECK_HEADERS    += 
libiot_cm_CHECK_HEADERS    += 
libiot_dm_CHECK_HEADERS    += 
digest_algorithm_CHECK_HEADERS    += 
activation_CHECK_HEADERS    += 
chip_code_CHECK_HEADERS    += 
mbedtls_CHECK_HEADERS    += 
libiot_utils_CHECK_HEADERS    += 
libiot_log_CHECK_HEADERS    += 
libiot_system_CHECK_HEADERS    += 
libiot_sdk_impl_CHECK_HEADERS    += 
smartled_INCLUDES         := 
board_esp32devkitc_INCLUDES         := 
esp32_INCLUDES         := 
osal_INCLUDES         := 
kernel_init_INCLUDES         := 
auto_component_INCLUDES         := 
yloop_INCLUDES         := 
cli_INCLUDES         := 
netmgr_INCLUDES         := 
common_INCLUDES         := 
uOTA_INCLUDES         := -I././middleware/uagent/uota/src/service -I././middleware/uagent/uota/src/transport -I././middleware/uagent/uota/src/download -I././middleware/uagent/uota/src/verify -I././middleware/uagent/uota/src/verify/rsa -I././middleware/uagent/uota/src/verify/hash -I././middleware/uagent/uota/src/utility/cjson -I././middleware/uagent/uota/src/utility/crc -I././middleware/uagent/uota/src/utility/base64 -I././middleware/uagent/uota/src/utility/hexstr2hexbuf -I././middleware/uagent/uota/hal -I././middleware/uagent/uota/inc -I././middleware/uagent/uota/src/service -I././middleware/uagent/uota/src/transport -I././middleware/uagent/uota/src/download -I././middleware/uagent/uota/src/verify -I././middleware/uagent/uota/src/verify/rsa -I././middleware/uagent/uota/src/verify/hash -I././middleware/uagent/uota/src/utility/cjson -I././middleware/uagent/uota/src/utility/crc -I././middleware/uagent/uota/src/utility/base64 -I././middleware/uagent/uota/src/utility/hexstr2hexbuf -I././middleware/uagent/uota/hal -I././middleware/uagent/uota/inc
cjson_INCLUDES         := 
hal_INCLUDES         := 
kv_INCLUDES         := 
lwip_INCLUDES         := -I././network/lwip/port/include -I././network/lwip/port/include
alicrypto_INCLUDES         := 
rhino_INCLUDES         := 
xtensa_INCLUDES         := -I././platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/freertos/include -I././platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/soc/esp32/include -I././platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/log/include -I././platform/arch/xtensa/lx6/../../mcu/esp32/espidf/components/driver/include
cloud_INCLUDES         := 
espos_INCLUDES         := 
log_INCLUDES         := 
vfs_INCLUDES         := 
recovery_INCLUDES         := 
vfs_device_INCLUDES         := -I././kernel/rhino/vfs/device/../include/device/ -I././kernel/rhino/vfs/device/../include/ -I././kernel/rhino/vfs/device/../../hal/soc/ -I././kernel/rhino/vfs/device/../include/device/ -I././kernel/rhino/vfs/device/../include/ -I././kernel/rhino/vfs/device/../../hal/soc/
linkkit_sdk_c_INCLUDES         := 
iotx-hal_INCLUDES         := 
libiot_mqtt_INCLUDES         := -I././middleware/linkkit/sdk-c/src/protocol/mqtt/../../../src/infra -I././middleware/linkkit/sdk-c/src/protocol/mqtt/../../../src/infra/log -I././middleware/linkkit/sdk-c/src/protocol/mqtt/../../../src/infra/utils -I././middleware/linkkit/sdk-c/src/protocol/mqtt/../../../src/infra/utils/misc -I././middleware/linkkit/sdk-c/src/protocol/mqtt/../../../src/infra/utils/digest -I././middleware/linkkit/sdk-c/src/protocol/mqtt/../../../src/infra/system -I././middleware/linkkit/sdk-c/src/protocol/mqtt/./client -I././middleware/linkkit/sdk-c/src/protocol/mqtt/./MQTTPacket
libawss_INCLUDES         := -I././middleware/linkkit/sdk-c/src/services/awss/. -I././middleware/linkkit/sdk-c/src/services/awss/./os/ -I././middleware/linkkit/sdk-c/src/services/awss/./os/product/ -I././middleware/linkkit/sdk-c/src/services/awss/./os/platform/ -I././middleware/linkkit/sdk-c/src/services/awss/./utility/ -I././middleware/linkkit/sdk-c/src/services/awss/. -I././middleware/linkkit/sdk-c/src/services/awss/./os/ -I././middleware/linkkit/sdk-c/src/services/awss/./os/product/ -I././middleware/linkkit/sdk-c/src/services/awss/./os/platform/ -I././middleware/linkkit/sdk-c/src/services/awss/./utility/
libiot_http_INCLUDES         := -I././middleware/linkkit/sdk-c/src/protocol/http/../../../src/infra -I././middleware/linkkit/sdk-c/src/protocol/http/../../../src/infra/log -I././middleware/linkkit/sdk-c/src/protocol/http/../../../src/infra/utils -I././middleware/linkkit/sdk-c/src/protocol/http/../../../src/infra/utils/misc -I././middleware/linkkit/sdk-c/src/protocol/http/../../../src/infra/utils/digest -I././middleware/linkkit/sdk-c/src/protocol/http/../../../src/infra/system
libiot_alcs_INCLUDES         := -I././middleware/linkkit/sdk-c/src/protocol/alcs/../../../src/infra -I././middleware/linkkit/sdk-c/src/protocol/alcs/../../../src/infra/log -I././middleware/linkkit/sdk-c/src/protocol/alcs/../../../src/infra/utils -I././middleware/linkkit/sdk-c/src/protocol/alcs/../../../src/infra/utils/misc -I././middleware/linkkit/sdk-c/src/protocol/alcs/../../../src/infra/utils/digest -I././middleware/linkkit/sdk-c/src/protocol/alcs/../../../src/infra/system -I././middleware/linkkit/sdk-c/src/protocol/alcs/../../../src/protocol/mqtt -I././middleware/linkkit/sdk-c/src/protocol/alcs/../../../src/protocol/mqtt/client -I././middleware/linkkit/sdk-c/src/protocol/alcs/../../../src/protocol/mqtt/MQTTPacket
libiot_cm_INCLUDES         := -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/../../../../src/infra -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/../../../../src/infra/log -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/../../../../src/infra/utils -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/../../../../src/infra/utils/misc -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/../../../../src/infra/utils/digest -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/../../../../src/infra/system -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/../../../../src/protocol/mqtt -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/../../../../src/protocol/mqtt/client -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/../../../../src/protocol/mqtt/MQTTPacket -I././middleware/linkkit/sdk-c/src/services/linkkit/cm/./example
libiot_dm_INCLUDES         := -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/../../../../src/infra -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/../../../../src/infra/log -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/../../../../src/infra/utils -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/../../../../src/infra/utils/misc -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/../../../../src/infra/utils/digest -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/../../../../src/infra/system -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/q../../../../src/services/linkkit/cm -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/../../../../src/services/linkkit/cm/example -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/q. -I././middleware/linkkit/sdk-c/src/services/linkkit/dm/./example
digest_algorithm_INCLUDES         := 
activation_INCLUDES         := 
chip_code_INCLUDES         := 
mbedtls_INCLUDES         := 
libiot_utils_INCLUDES         := -I././middleware/linkkit/sdk-c/src/infra/utils/../../../src/infra/log -I././middleware/linkkit/sdk-c/src/infra/utils/./misc -I././middleware/linkkit/sdk-c/src/infra/utils/./digest
libiot_log_INCLUDES         := -I././middleware/linkkit/sdk-c/src/infra/log/../../../src/infra/utils -I././middleware/linkkit/sdk-c/src/infra/log/../../../src/infra/utils/misc -I././middleware/linkkit/sdk-c/src/infra/log/../../../src/infra/utils/digest
libiot_system_INCLUDES         := -I././middleware/linkkit/sdk-c/src/infra/system/../../../src/infra/utils -I././middleware/linkkit/sdk-c/src/infra/system/../../../src/infra/utils/misc -I././middleware/linkkit/sdk-c/src/infra/system/../../../src/infra/utils/digest -I././middleware/linkkit/sdk-c/src/infra/system/../../../src/infra/log -I././middleware/linkkit/sdk-c/src/infra/system/../../../src/security/pro -I././middleware/linkkit/sdk-c/src/infra/system/../../../src/security/pro/crypto -I././middleware/linkkit/sdk-c/src/infra/system/../../../src/security/pro/id2 -I././middleware/linkkit/sdk-c/src/infra/system/../../../src/security/pro/km -I././middleware/linkkit/sdk-c/src/infra/system/../../../src/security/pro/itls
libiot_sdk_impl_INCLUDES         := -I././middleware/linkkit/sdk-c/src/sdk-impl/../../src/infra -I././middleware/linkkit/sdk-c/src/sdk-impl/../../src/infra/log -I././middleware/linkkit/sdk-c/src/sdk-impl/../../src/infra/utils -I././middleware/linkkit/sdk-c/src/sdk-impl/../../src/infra/utils/misc -I././middleware/linkkit/sdk-c/src/sdk-impl/../../src/infra/utils/digest -I././middleware/linkkit/sdk-c/src/sdk-impl/../../src/infra/system
smartled_DEFINES          := -DCONFIG_PRINT_HEAP -DCONFIG_DEBUG_ENABLE -DCONFIG_PRINT_HEAP -DCONFIG_DEBUG_ENABLE
board_esp32devkitc_DEFINES          := 
esp32_DEFINES          := 
osal_DEFINES          := 
kernel_init_DEFINES          := 
auto_component_DEFINES          := 
yloop_DEFINES          := 
cli_DEFINES          := 
netmgr_DEFINES          := 
common_DEFINES          := 
uOTA_DEFINES          := 
cjson_DEFINES          := 
hal_DEFINES          := 
kv_DEFINES          := 
lwip_DEFINES          := 
alicrypto_DEFINES          := 
rhino_DEFINES          := 
xtensa_DEFINES          := 
cloud_DEFINES          := 
espos_DEFINES          := 
log_DEFINES          := 
vfs_DEFINES          := 
recovery_DEFINES          := 
vfs_device_DEFINES          := 
linkkit_sdk_c_DEFINES          := 
iotx-hal_DEFINES          := 
libiot_mqtt_DEFINES          := 
libawss_DEFINES          := -DUSE_LPTHREAD -DDEBUG
libiot_http_DEFINES          := 
libiot_alcs_DEFINES          := 
libiot_cm_DEFINES          := -DCONFIG_CM_SUPPORT_LOCAL_CONN -DCONFIG_CM_VIA_CLOUD_CONN -DCONFIG_CM_SUPPORT_LOCAL_CONN -DCONFIG_CM_VIA_CLOUD_CONN
libiot_dm_DEFINES          := 
digest_algorithm_DEFINES          := 
activation_DEFINES          := 
chip_code_DEFINES          := 
mbedtls_DEFINES          := -DLWIP_ENABLED -DLWIP_ENABLED
libiot_utils_DEFINES          := 
libiot_log_DEFINES          := 
libiot_system_DEFINES          := 
libiot_sdk_impl_DEFINES          := 
smartled_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
board_esp32devkitc_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
esp32_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -std=gnu99 -DENABLE_WIFI -I platform/mcu/esp32/bsp
osal_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Wall -Werror
kernel_init_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
auto_component_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
yloop_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Wall -Werror
cli_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Wall -Werror
netmgr_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Wall -Werror
common_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
uOTA_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Wall
cjson_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
hal_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Wall -Werror -Wall -Werror
kv_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Wall -Werror
lwip_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
alicrypto_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -DCONFIG_CRYPT_MBED=1 -DCONFIG_DBG_CRYPT=1 -W -Wdeclaration-after-statement -D_FILE_OFFSET_BITS=64 -DCONFIG_CRYPT_MBED=1 -DCONFIG_DBG_CRYPT=1 -W -Wdeclaration-after-statement -D_FILE_OFFSET_BITS=64
rhino_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Wall -Werror
xtensa_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
cloud_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
espos_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
log_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
vfs_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Wall -Werror
recovery_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Wall -Werror
vfs_device_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
linkkit_sdk_c_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
iotx-hal_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_mqtt_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libawss_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_http_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_alcs_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_cm_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_dm_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
digest_algorithm_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
activation_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
chip_code_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
mbedtls_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" -Wall -Werror -Os -Wall -Werror -Os
libiot_utils_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_log_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_system_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_sdk_impl_CFLAGS           :=  -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_ESP32\" -DSYSINFO_DEVICE_NAME=\"ESP32\" -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -DESPOS_FOR_ESP32       -DSYSINFO_APP_VERSION=\"app-1.0.0-20181110.2254\"       -DSYSINFO_KERNEL_VERSION=\"AOS-R-2.0.0\"        -DALCS_ENABLED -DCMP_VIA_MQTT_DIRECT -DHTTP_COMM_ENABLED -DMQTT_COMM_ENABLED -DMQTT_DIRECT -DOTA_ENABLED -DSDK_ENHANCE -DSUPPORT_TLS -DWIFI_AWSS_ENABLED -DCM_ENABLED -DDM_ENABLED -DCONFIG_DM_DEVTYPE_SINGLE -DOTA_SIGNAL_CHANNEL=1 -DSERVICE_OTA_ENABLED -DCMP_VIA_MQTT_DIRECT                -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
smartled_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
board_esp32devkitc_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
esp32_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
osal_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
kernel_init_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
auto_component_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
yloop_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
cli_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
netmgr_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
common_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
uOTA_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
cjson_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
hal_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
kv_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
lwip_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
alicrypto_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
rhino_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
xtensa_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
cloud_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
espos_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
log_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
vfs_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
recovery_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
vfs_device_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
linkkit_sdk_c_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
iotx-hal_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_mqtt_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libawss_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_http_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_alcs_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_cm_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_dm_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
digest_algorithm_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
activation_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
chip_code_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
mbedtls_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_utils_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_log_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_system_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
libiot_sdk_impl_CXXFLAGS         :=                                         -ggdb -Os  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/resources/ -DPLATFORM=\"esp32devkitc\" 
smartled_ASMFLAGS         :=                                         
board_esp32devkitc_ASMFLAGS         :=                                         
esp32_ASMFLAGS         :=                                         
osal_ASMFLAGS         :=                                         
kernel_init_ASMFLAGS         :=                                         
auto_component_ASMFLAGS         :=                                         
yloop_ASMFLAGS         :=                                         
cli_ASMFLAGS         :=                                         
netmgr_ASMFLAGS         :=                                         
common_ASMFLAGS         :=                                         
uOTA_ASMFLAGS         :=                                         
cjson_ASMFLAGS         :=                                         
hal_ASMFLAGS         :=                                         
kv_ASMFLAGS         :=                                         
lwip_ASMFLAGS         :=                                         
alicrypto_ASMFLAGS         :=                                         
rhino_ASMFLAGS         :=                                         
xtensa_ASMFLAGS         :=                                         
cloud_ASMFLAGS         :=                                         
espos_ASMFLAGS         :=                                         
log_ASMFLAGS         :=                                         
vfs_ASMFLAGS         :=                                         
recovery_ASMFLAGS         :=                                         
vfs_device_ASMFLAGS         :=                                         
linkkit_sdk_c_ASMFLAGS         :=                                         
iotx-hal_ASMFLAGS         :=                                         
libiot_mqtt_ASMFLAGS         :=                                         
libawss_ASMFLAGS         :=                                         
libiot_http_ASMFLAGS         :=                                         
libiot_alcs_ASMFLAGS         :=                                         
libiot_cm_ASMFLAGS         :=                                         
libiot_dm_ASMFLAGS         :=                                         
digest_algorithm_ASMFLAGS         :=                                         
activation_ASMFLAGS         :=                                         
chip_code_ASMFLAGS         :=                                         
mbedtls_ASMFLAGS         :=                                         
libiot_utils_ASMFLAGS         :=                                         
libiot_log_ASMFLAGS         :=                                         
libiot_system_ASMFLAGS         :=                                         
libiot_sdk_impl_ASMFLAGS         :=                                         
smartled_RESOURCES        := 
board_esp32devkitc_RESOURCES        := 
esp32_RESOURCES        := 
osal_RESOURCES        := 
kernel_init_RESOURCES        := 
auto_component_RESOURCES        := 
yloop_RESOURCES        := 
cli_RESOURCES        := 
netmgr_RESOURCES        := 
common_RESOURCES        := 
uOTA_RESOURCES        := 
cjson_RESOURCES        := 
hal_RESOURCES        := 
kv_RESOURCES        := 
lwip_RESOURCES        := 
alicrypto_RESOURCES        := 
rhino_RESOURCES        := 
xtensa_RESOURCES        := 
cloud_RESOURCES        := 
espos_RESOURCES        := 
log_RESOURCES        := 
vfs_RESOURCES        := 
recovery_RESOURCES        := 
vfs_device_RESOURCES        := 
linkkit_sdk_c_RESOURCES        := 
iotx-hal_RESOURCES        := 
libiot_mqtt_RESOURCES        := 
libawss_RESOURCES        := 
libiot_http_RESOURCES        := 
libiot_alcs_RESOURCES        := 
libiot_cm_RESOURCES        := 
libiot_dm_RESOURCES        := 
digest_algorithm_RESOURCES        := 
activation_RESOURCES        := 
chip_code_RESOURCES        := 
mbedtls_RESOURCES        := 
libiot_utils_RESOURCES        := 
libiot_log_RESOURCES        := 
libiot_system_RESOURCES        := 
libiot_sdk_impl_RESOURCES        := 
smartled_MAKEFILE         := /Users/songfei/AliOS-Things-project//smartled/smartled.mk
board_esp32devkitc_MAKEFILE         := ./board/esp32devkitc/esp32devkitc.mk
esp32_MAKEFILE         := ././platform/mcu/esp32/esp32.mk
osal_MAKEFILE         := ././osal/osal.mk
kernel_init_MAKEFILE         := ./kernel/init/init.mk
auto_component_MAKEFILE         := /Users/songfei/AliOS-Things-project/smartled/out/smartled@esp32devkitc/auto_component/auto_component.mk
yloop_MAKEFILE         := ./kernel/yloop/yloop.mk
cli_MAKEFILE         := ./tools/cli/cli.mk
netmgr_MAKEFILE         := ././network/netmgr/netmgr.mk
common_MAKEFILE         := ././middleware/common/common.mk
uOTA_MAKEFILE         := ././middleware/uagent/uota/uota.mk
cjson_MAKEFILE         := ././utility/cjson/cjson.mk
hal_MAKEFILE         := ./kernel/hal/hal.mk
kv_MAKEFILE         := ./kernel/rhino/fs/kv/kv.mk
lwip_MAKEFILE         := ././network/lwip/lwip.mk
alicrypto_MAKEFILE         := ./security/alicrypto/alicrypto.mk
rhino_MAKEFILE         := ./kernel/rhino/rhino.mk
xtensa_MAKEFILE         := ././platform/arch/xtensa/lx6/lx6.mk
cloud_MAKEFILE         := ././middleware/alink/cloud/cloud.mk
espos_MAKEFILE         := ././osal/espos/espos.mk
log_MAKEFILE         := ./utility/log/log.mk
vfs_MAKEFILE         := ./kernel/rhino/vfs/vfs.mk
recovery_MAKEFILE         := ././middleware/uagent/uota/src/recovery/recovery.mk
vfs_device_MAKEFILE         := ././kernel/rhino/vfs/device/device.mk
linkkit_sdk_c_MAKEFILE         := ././middleware/linkkit/sdk-c/sdk-c.mk
iotx-hal_MAKEFILE         := ././middleware/linkkit/hal/hal.mk
libiot_mqtt_MAKEFILE         := ././middleware/linkkit/sdk-c/src/protocol/mqtt/mqtt.mk
libawss_MAKEFILE         := ././middleware/linkkit/sdk-c/src/services/awss/awss.mk
libiot_http_MAKEFILE         := ././middleware/linkkit/sdk-c/src/protocol/http/http.mk
libiot_alcs_MAKEFILE         := ././middleware/linkkit/sdk-c/src/protocol/alcs/alcs.mk
libiot_cm_MAKEFILE         := ././middleware/linkkit/sdk-c/src/services/linkkit/cm/cm.mk
libiot_dm_MAKEFILE         := ././middleware/linkkit/sdk-c/src/services/linkkit/dm/dm.mk
digest_algorithm_MAKEFILE         := ./utility/digest_algorithm/digest_algorithm.mk
activation_MAKEFILE         := ./tools/activation/activation.mk
chip_code_MAKEFILE         := ./utility/chip_code/chip_code.mk
mbedtls_MAKEFILE         := ././security/mbedtls/mbedtls.mk
libiot_utils_MAKEFILE         := ././middleware/linkkit/sdk-c/src/infra/utils/utils.mk
libiot_log_MAKEFILE         := ././middleware/linkkit/sdk-c/src/infra/log/log.mk
libiot_system_MAKEFILE         := ././middleware/linkkit/sdk-c/src/infra/system/system.mk
libiot_sdk_impl_MAKEFILE         := ././middleware/linkkit/sdk-c/src/sdk-impl/sdk-impl.mk
smartled_PRE_BUILD_TARGETS:= 
board_esp32devkitc_PRE_BUILD_TARGETS:= 
esp32_PRE_BUILD_TARGETS:= 
osal_PRE_BUILD_TARGETS:= 
kernel_init_PRE_BUILD_TARGETS:= 
auto_component_PRE_BUILD_TARGETS:= 
yloop_PRE_BUILD_TARGETS:= 
cli_PRE_BUILD_TARGETS:= 
netmgr_PRE_BUILD_TARGETS:= 
common_PRE_BUILD_TARGETS:= 
uOTA_PRE_BUILD_TARGETS:= 
cjson_PRE_BUILD_TARGETS:= 
hal_PRE_BUILD_TARGETS:= 
kv_PRE_BUILD_TARGETS:= 
lwip_PRE_BUILD_TARGETS:= 
alicrypto_PRE_BUILD_TARGETS:= 
rhino_PRE_BUILD_TARGETS:= 
xtensa_PRE_BUILD_TARGETS:= 
cloud_PRE_BUILD_TARGETS:= 
espos_PRE_BUILD_TARGETS:= 
log_PRE_BUILD_TARGETS:= 
vfs_PRE_BUILD_TARGETS:= 
recovery_PRE_BUILD_TARGETS:= 
vfs_device_PRE_BUILD_TARGETS:= 
linkkit_sdk_c_PRE_BUILD_TARGETS:= 
iotx-hal_PRE_BUILD_TARGETS:= 
libiot_mqtt_PRE_BUILD_TARGETS:= 
libawss_PRE_BUILD_TARGETS:= 
libiot_http_PRE_BUILD_TARGETS:= 
libiot_alcs_PRE_BUILD_TARGETS:= 
libiot_cm_PRE_BUILD_TARGETS:= 
libiot_dm_PRE_BUILD_TARGETS:= 
digest_algorithm_PRE_BUILD_TARGETS:= 
activation_PRE_BUILD_TARGETS:= 
chip_code_PRE_BUILD_TARGETS:= 
mbedtls_PRE_BUILD_TARGETS:= 
libiot_utils_PRE_BUILD_TARGETS:= 
libiot_log_PRE_BUILD_TARGETS:= 
libiot_system_PRE_BUILD_TARGETS:= 
libiot_sdk_impl_PRE_BUILD_TARGETS:= 
smartled_PREBUILT_LIBRARY := 
board_esp32devkitc_PREBUILT_LIBRARY := 
esp32_PREBUILT_LIBRARY := ././platform/mcu/esp32/lib/libesp32.a ././platform/mcu/esp32/lib/libsoc.a ././platform/mcu/esp32/lib/libhal.a ././platform/mcu/esp32/lib/libnewlib.a ././platform/mcu/esp32/lib/libvfs.a ././platform/mcu/esp32/lib/libspi_flash.a ././platform/mcu/esp32/lib/liblog.a ././platform/mcu/esp32/lib/libdriver.a ././platform/mcu/esp32/lib/libcontainer.a ././platform/mcu/esp32/lib/librtc.a ././platform/mcu/esp32/lib/libcoexist.a ././platform/mcu/esp32/lib/libcore.a ././platform/mcu/esp32/lib/libnet80211.a ././platform/mcu/esp32/lib/libpp.a ././platform/mcu/esp32/lib/libwpa.a ././platform/mcu/esp32/lib/libwpa2.a ././platform/mcu/esp32/lib/libwps.a ././platform/mcu/esp32/lib/libphy.a ././platform/mcu/esp32/lib/libnvs_flash.a ././platform/mcu/esp32/lib/libcxx.a ././platform/mcu/esp32/lib/libstdcc++-cache-workaround.a ././platform/mcu/esp32/lib/libwpa_supplicant.a ././platform/mcu/esp32/lib/libapp_update.a ././platform/mcu/esp32/lib/libbootloader_support.a
osal_PREBUILT_LIBRARY := 
kernel_init_PREBUILT_LIBRARY := 
auto_component_PREBUILT_LIBRARY := 
yloop_PREBUILT_LIBRARY := 
cli_PREBUILT_LIBRARY := 
netmgr_PREBUILT_LIBRARY := 
common_PREBUILT_LIBRARY := 
uOTA_PREBUILT_LIBRARY := 
cjson_PREBUILT_LIBRARY := 
hal_PREBUILT_LIBRARY := 
kv_PREBUILT_LIBRARY := 
lwip_PREBUILT_LIBRARY := 
alicrypto_PREBUILT_LIBRARY := 
rhino_PREBUILT_LIBRARY := 
xtensa_PREBUILT_LIBRARY := 
cloud_PREBUILT_LIBRARY := 
espos_PREBUILT_LIBRARY := 
log_PREBUILT_LIBRARY := 
vfs_PREBUILT_LIBRARY := 
recovery_PREBUILT_LIBRARY := 
vfs_device_PREBUILT_LIBRARY := 
linkkit_sdk_c_PREBUILT_LIBRARY := 
iotx-hal_PREBUILT_LIBRARY := 
libiot_mqtt_PREBUILT_LIBRARY := 
libawss_PREBUILT_LIBRARY := 
libiot_http_PREBUILT_LIBRARY := 
libiot_alcs_PREBUILT_LIBRARY := 
libiot_cm_PREBUILT_LIBRARY := 
libiot_dm_PREBUILT_LIBRARY := 
digest_algorithm_PREBUILT_LIBRARY := 
activation_PREBUILT_LIBRARY := ./tools/activation/./xtensa/esp32/activation.a
chip_code_PREBUILT_LIBRARY := 
mbedtls_PREBUILT_LIBRARY := 
libiot_utils_PREBUILT_LIBRARY := 
libiot_log_PREBUILT_LIBRARY := 
libiot_system_PREBUILT_LIBRARY := 
libiot_sdk_impl_PREBUILT_LIBRARY := 
smartled_TYPE             := 
board_esp32devkitc_TYPE             := 
esp32_TYPE             := kernel 
osal_TYPE             := 
kernel_init_TYPE             := kernel
auto_component_TYPE             := kernel
yloop_TYPE             := kernel
cli_TYPE             := kernel
netmgr_TYPE             := framework
common_TYPE             := 
uOTA_TYPE             := framework
cjson_TYPE             := share
hal_TYPE             := kernel
kv_TYPE             := 
lwip_TYPE             := kernel
alicrypto_TYPE             := 
rhino_TYPE             := kernel
xtensa_TYPE             := 
cloud_TYPE             := kernel
espos_TYPE             := 
log_TYPE             := 
vfs_TYPE             := kernel
recovery_TYPE             := uota
vfs_device_TYPE             := 
linkkit_sdk_c_TYPE             := 
iotx-hal_TYPE             := 
libiot_mqtt_TYPE             := 
libawss_TYPE             := 
libiot_http_TYPE             := 
libiot_alcs_TYPE             := 
libiot_cm_TYPE             := 
libiot_dm_TYPE             := 
digest_algorithm_TYPE             := 
activation_TYPE             := 
chip_code_TYPE             := 
mbedtls_TYPE             := 
libiot_utils_TYPE             := 
libiot_log_TYPE             := 
libiot_system_TYPE             := 
libiot_sdk_impl_TYPE             := 
smartled_SELF_BUIlD_COMP_targets  := 
board_esp32devkitc_SELF_BUIlD_COMP_targets  := 
esp32_SELF_BUIlD_COMP_targets  := 
osal_SELF_BUIlD_COMP_targets  := 
kernel_init_SELF_BUIlD_COMP_targets  := 
auto_component_SELF_BUIlD_COMP_targets  := 
yloop_SELF_BUIlD_COMP_targets  := 
cli_SELF_BUIlD_COMP_targets  := 
netmgr_SELF_BUIlD_COMP_targets  := 
common_SELF_BUIlD_COMP_targets  := 
uOTA_SELF_BUIlD_COMP_targets  := 
cjson_SELF_BUIlD_COMP_targets  := 
hal_SELF_BUIlD_COMP_targets  := 
kv_SELF_BUIlD_COMP_targets  := 
lwip_SELF_BUIlD_COMP_targets  := 
alicrypto_SELF_BUIlD_COMP_targets  := 
rhino_SELF_BUIlD_COMP_targets  := 
xtensa_SELF_BUIlD_COMP_targets  := 
cloud_SELF_BUIlD_COMP_targets  := 
espos_SELF_BUIlD_COMP_targets  := 
log_SELF_BUIlD_COMP_targets  := 
vfs_SELF_BUIlD_COMP_targets  := 
recovery_SELF_BUIlD_COMP_targets  := 
vfs_device_SELF_BUIlD_COMP_targets  := 
linkkit_sdk_c_SELF_BUIlD_COMP_targets  := 
iotx-hal_SELF_BUIlD_COMP_targets  := 
libiot_mqtt_SELF_BUIlD_COMP_targets  := 
libawss_SELF_BUIlD_COMP_targets  := 
libiot_http_SELF_BUIlD_COMP_targets  := 
libiot_alcs_SELF_BUIlD_COMP_targets  := 
libiot_cm_SELF_BUIlD_COMP_targets  := 
libiot_dm_SELF_BUIlD_COMP_targets  := 
digest_algorithm_SELF_BUIlD_COMP_targets  := 
activation_SELF_BUIlD_COMP_targets  := 
chip_code_SELF_BUIlD_COMP_targets  := 
mbedtls_SELF_BUIlD_COMP_targets  := 
libiot_utils_SELF_BUIlD_COMP_targets  := 
libiot_log_SELF_BUIlD_COMP_targets  := 
libiot_system_SELF_BUIlD_COMP_targets  := 
libiot_sdk_impl_SELF_BUIlD_COMP_targets  := 
smartled_SELF_BUIlD_COMP_scripts  := 
board_esp32devkitc_SELF_BUIlD_COMP_scripts  := 
esp32_SELF_BUIlD_COMP_scripts  := 
osal_SELF_BUIlD_COMP_scripts  := 
kernel_init_SELF_BUIlD_COMP_scripts  := 
auto_component_SELF_BUIlD_COMP_scripts  := 
yloop_SELF_BUIlD_COMP_scripts  := 
cli_SELF_BUIlD_COMP_scripts  := 
netmgr_SELF_BUIlD_COMP_scripts  := 
common_SELF_BUIlD_COMP_scripts  := 
uOTA_SELF_BUIlD_COMP_scripts  := 
cjson_SELF_BUIlD_COMP_scripts  := 
hal_SELF_BUIlD_COMP_scripts  := 
kv_SELF_BUIlD_COMP_scripts  := 
lwip_SELF_BUIlD_COMP_scripts  := 
alicrypto_SELF_BUIlD_COMP_scripts  := 
rhino_SELF_BUIlD_COMP_scripts  := 
xtensa_SELF_BUIlD_COMP_scripts  := 
cloud_SELF_BUIlD_COMP_scripts  := 
espos_SELF_BUIlD_COMP_scripts  := 
log_SELF_BUIlD_COMP_scripts  := 
vfs_SELF_BUIlD_COMP_scripts  := 
recovery_SELF_BUIlD_COMP_scripts  := 
vfs_device_SELF_BUIlD_COMP_scripts  := 
linkkit_sdk_c_SELF_BUIlD_COMP_scripts  := 
iotx-hal_SELF_BUIlD_COMP_scripts  := 
libiot_mqtt_SELF_BUIlD_COMP_scripts  := 
libawss_SELF_BUIlD_COMP_scripts  := 
libiot_http_SELF_BUIlD_COMP_scripts  := 
libiot_alcs_SELF_BUIlD_COMP_scripts  := 
libiot_cm_SELF_BUIlD_COMP_scripts  := 
libiot_dm_SELF_BUIlD_COMP_scripts  := 
digest_algorithm_SELF_BUIlD_COMP_scripts  := 
activation_SELF_BUIlD_COMP_scripts  := 
chip_code_SELF_BUIlD_COMP_scripts  := 
mbedtls_SELF_BUIlD_COMP_scripts  := 
libiot_utils_SELF_BUIlD_COMP_scripts  := 
libiot_log_SELF_BUIlD_COMP_scripts  := 
libiot_system_SELF_BUIlD_COMP_scripts  := 
libiot_sdk_impl_SELF_BUIlD_COMP_scripts  := 
AOS_SDK_UNIT_TEST_SOURCES   		:=                                                                                
ALL_RESOURCES             		:= 
INTERNAL_MEMORY_RESOURCES 		:= 
EXTRA_TARGET_MAKEFILES 			:=    .//platform/mcu/esp32/gen_crc_bin.mk
APPS_START_SECTOR 				:=  
BOOTLOADER_FIRMWARE				:=  
ATE_FIRMWARE				        :=  
APPLICATION_FIRMWARE				:=  
PARAMETER_1_IMAGE					:=  
PARAMETER_2_IMAGE					:=  
FILESYSTEM_IMAGE					:=  
WIFI_FIRMWARE						:=  
BT_PATCH_FIRMWARE					:=  
AOS_ROM_SYMBOL_LIST_FILE 		:= 
AOS_SDK_CHIP_SPECIFIC_SCRIPT		:=                                        
AOS_SDK_CONVERTER_OUTPUT_FILE	:=                                        
AOS_SDK_FINAL_OUTPUT_FILE 		:=                                        
AOS_RAM_STUB_LIST_FILE 			:= 
PING_PONG_OTA 					:= 
