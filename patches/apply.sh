#!/bin/sh
cd ../../../../

printf "patching adb_install.c"
if [ -f bootable/recovery/adb_install.bak ]; then echo "  ... file already patched"
else
    mv bootable/recovery/adb_install.c bootable/recovery/adb_install.bak
    cp device/htc/g3u/patches/bootable_recovery/adb_install.c bootable/recovery/
    echo "  ... DONE"
fi

printf "patching hostapd/android.config"
if [ -f external/wpa_supplicant_8/hostapd/android.bak ]; then echo "  ... file already patched"
else
    mv external/wpa_supplicant_8/hostapd/android.config external/wpa_supplicant_8/hostapd/android.bak
    cp device/htc/g3u/patches/external_wpa_supplicant_8/hostapd/android.config external/wpa_supplicant_8/hostapd/
    echo "  ... DONE"
fi

printf "patching driver_nl80211.c"
if [ -f external/wpa_supplicant_8/src/drivers/driver_nl80211.bak ]; then echo "  ... file already patched"
else
    mv external/wpa_supplicant_8/src/drivers/driver_nl80211.c external/wpa_supplicant_8/src/drivers/driver_nl80211.bak
    cp device/htc/g3u/patches/external_wpa_supplicant_8/src/drivers/driver_nl80211.c external/wpa_supplicant_8/src/drivers/
    echo "  ... DONE"
fi

printf "patching wpa_supplicant/android.config"
if [ -f external/wpa_supplicant_8/wpa_supplicant/android.bak ]; then echo "  ... file already patched"
else
    mv external/wpa_supplicant_8/wpa_supplicant/android.config external/wpa_supplicant_8/wpa_supplicant/android.bak
    cp device/htc/g3u/patches/external_wpa_supplicant_8/wpa_supplicant/android.config external/wpa_supplicant_8/wpa_supplicant/
    echo "  ... DONE"
fi

printf "patching libstagefright/ESDS.cpp"
if [ -f frameworks/av/media/libstagefright/ESDS.bak ]; then echo "  ... file already patched"
else
    mv frameworks/av/media/libstagefright/ESDS.cpp frameworks/av/media/libstagefright/ESDS.bak
    cp device/htc/g3u/patches/frameworks_av/media/libstagefright/ESDS.cpp frameworks/av/media/libstagefright/
    echo "  ... DONE"
fi

printf "patching libstagefright/MPEG4Extractor.cpp"
if [ -f frameworks/av/media/libstagefright/MPEG4Extractor.bak ]; then echo "  ... file already patched"
else
    mv frameworks/av/media/libstagefright/MPEG4Extractor.cpp frameworks/av/media/libstagefright/MPEG4Extractor.bak
    cp device/htc/g3u/patches/frameworks_av/media/libstagefright/MPEG4Extractor.cpp frameworks/av/media/libstagefright/
    echo "  ... DONE"
fi

printf "patching libstagefright/SampleTable.cpp"
if [ -f frameworks/av/media/libstagefright/SampleTable.bak ]; then echo "  ... file already patched"
else
    mv frameworks/av/media/libstagefright/SampleTable.cpp frameworks/av/media/libstagefright/SampleTable.bak
    cp device/htc/g3u/patches/frameworks_av/media/libstagefright/SampleTable.cpp frameworks/av/media/libstagefright/
    echo "  ... DONE"
fi

printf "patching utils/String8.cpp"
if [ -f frameworks/native/libs/utils/String8.bak ]; then echo "  ... file already patched"
else
    mv frameworks/native/libs/utils/String8.cpp frameworks/native/libs/utils/String8.bak
    cp device/htc/g3u/patches/frameworks_native/libs/utils/String8.cpp frameworks/native/libs/utils/
    echo "  ... DONE"
fi

printf "patching driver_cmd_nl80211.c"
if [ -f hardware/atheros/wlan/ath6kl/wpa_supplicant_8_lib/driver_cmd_nl80211.bak ]; then echo "  ... file already patched"
else
    mv hardware/atheros/wlan/ath6kl/wpa_supplicant_8_lib/driver_cmd_nl80211.c hardware/atheros/wlan/ath6kl/wpa_supplicant_8_lib/driver_cmd_nl80211.bak
    cp device/htc/g3u/patches/hardware_atheros_wlan/ath6kl/wpa_supplicant_8_lib/driver_cmd_nl80211.c hardware/atheros/wlan/ath6kl/wpa_supplicant_8_lib/
    echo "  ... DONE"
fi

printf "patching wifi.c"
if [ -f hardware/libhardware_legacy/wifi/wifi.bak ]; then echo "  ... file already patched"
else
    mv hardware/libhardware_legacy/wifi/wifi.c hardware/libhardware_legacy/wifi/wifi.bak
    cp device/htc/g3u/patches/hardware_libhardware_legacy/wifi/wifi.c hardware/libhardware_legacy/wifi/
    echo "  ... DONE"
fi

printf "patching SoftapController.cpp"
if [ -f system/netd/SoftapController.bak ]; then echo "  ... file already patched"
else
    mv system/netd/SoftapController.cpp system/netd/SoftapController.bak
    cp device/htc/g3u/patches/system_netd/SoftapController.cpp system/netd/
    echo "  ... DONE"
fi

