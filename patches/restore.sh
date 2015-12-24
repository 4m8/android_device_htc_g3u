#!/bin/sh
cd ../../../../

printf "restoring adb_install.c"
if [ -f "bootable/recovery/adb_install.bak" ]; then
    rm bootable/recovery/adb_install.c
    mv bootable/recovery/adb_install.bak bootable/recovery/adb_install.c
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring hostapd/android.config"
if [ -f external/wpa_supplicant_8/hostapd/android.bak ]; then
    rm external/wpa_supplicant_8/hostapd/android.config
    mv external/wpa_supplicant_8/hostapd/android.bak external/wpa_supplicant_8/hostapd/android.config
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring driver_nl80211.c"
if [ -f external/wpa_supplicant_8/src/drivers/driver_nl80211.bak ]; then
    rm external/wpa_supplicant_8/src/drivers/driver_nl80211.c
    mv external/wpa_supplicant_8/src/drivers/driver_nl80211.bak external/wpa_supplicant_8/src/drivers/driver_nl80211.c
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring wpa_supplicant/android.config"
if [ -f external/wpa_supplicant_8/wpa_supplicant/android.bak ]; then
    rm external/wpa_supplicant_8/wpa_supplicant/android.config
    mv external/wpa_supplicant_8/wpa_supplicant/android.bak external/wpa_supplicant_8/wpa_supplicant/android.config
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring libstagefright/ESDS.cpp"
if [ -f frameworks/av/media/libstagefright/ESDS.bak ]; then
    rm frameworks/av/media/libstagefright/ESDS.cpp
    mv frameworks/av/media/libstagefright/ESDS.bak frameworks/av/media/libstagefright/ESDS.cpp
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring libstagefright/MPEG4Extractor.cpp"
if [ -f frameworks/av/media/libstagefright/MPEG4Extractor.bak ]; then
    rm frameworks/av/media/libstagefright/MPEG4Extractor.cpp
    mv frameworks/av/media/libstagefright/MPEG4Extractor.bak frameworks/av/media/libstagefright/MPEG4Extractor.cpp
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring libstagefright/SampleTable.cpp"
if [ -f frameworks/av/media/libstagefright/SampleTable.bak ]; then
    rm frameworks/av/media/libstagefright/SampleTable.cpp
    mv frameworks/av/media/libstagefright/SampleTable.bak frameworks/av/media/libstagefright/SampleTable.cpp
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring utils/String8.cpp"
if [ -f frameworks/native/libs/utils/String8.bak ]; then
    rm frameworks/native/libs/utils/String8.cpp
    mv frameworks/native/libs/utils/String8.bak frameworks/native/libs/utils/String8.cpp
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring driver_cmd_nl80211.c"
if [ -f hardware/atheros/wlan/ath6kl/wpa_supplicant_8_lib/driver_cmd_nl80211.bak ]; then
    rm hardware/atheros/wlan/ath6kl/wpa_supplicant_8_lib/driver_cmd_nl80211.c
    mv hardware/atheros/wlan/ath6kl/wpa_supplicant_8_lib/driver_cmd_nl80211.bak hardware/atheros/wlan/ath6kl/wpa_supplicant_8_lib/driver_cmd_nl80211.c
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring wifi.c"
if [ -f hardware/libhardware_legacy/wifi/wifi.bak ]; then
    rm hardware/libhardware_legacy/wifi/wifi.c
    mv hardware/libhardware_legacy/wifi/wifi.bak hardware/libhardware_legacy/wifi/wifi.c
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi

printf "restoring SoftapController.cpp"
if [ -f system/netd/SoftapController.bak ]; then
    rm system/netd/SoftapController.cpp
    mv system/netd/SoftapController.bak system/netd/SoftapController.cpp
    echo "  ... DONE"
else echo "  ... file isn't patched"; fi
