#!/bin/bash
APPS=(
    "com.android.chrome" "com.google.android.googlequicksearchbox" "com.google.android.apps.tachyon"
    "com.google.android.apps.photos" "com.google.android.music" "com.oem.autotest" "net.oneplus.odm.provider"
    "net.oneplus.odm" "com.oppo.bttestmode" "com.fingerprints.fingerprintsensortest" "com.google.android.videos"
    "com.oneplus.factorymode.specialtest" "com.oneplus.factorymode"
    ) 

for APP in ${APPS[@]}; do
    echo "Uninstalling $APP"
    adb shell "pm uninstall -k --user 0 $APP"
    echo "Uninstalled $APP"
done
