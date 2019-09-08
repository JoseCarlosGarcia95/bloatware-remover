#!/bin/bash
APPS=(
    # OnePlus Bloatware
    "com.oneplus.factorymode" "net.oneplus.odm.provider" "net.oneplus.odm"
    "com.oem.logkitsdservice" "cn.oneplus.nvbackup" "com.oem.oemlogkit" "com.oneplus.opbugreportlite"
    "net.oneplus.commonlogtool" "net.oneplus.push" "cn.oneplus.photos"

    # Google Bloatware
    "com.google.android.music" "com.google.android.apps.tachyon" 
    "com.google.android.music" "com.google.android.apps.walletnfcrel"
) 

for APP in ${APPS[@]}; do
    echo "Uninstalling $APP"
    adb shell "pm uninstall -k --user 0 $APP"
    echo "Uninstalled $APP"
done
