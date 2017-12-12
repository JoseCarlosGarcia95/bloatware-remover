#!/bin/bash
APPS=("com.android.chrome" "com.google.android.googlequicksearchbox" "com.google.android.apps.tachyon" "com.google.android.apps.photos" "com.google.android.music" "com.google.android.videos")

for APP in ${APPS[@]}; do
    echo "Uninstalling $APP"
    adb shell "pm uninstall -k --user 0 $APP"
    echo "Uninstalled $APP"
done
