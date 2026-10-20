#!/data/data/com.termux/files/usr/bin/bash

termux-wake-lock

sleep 5

termux-toast -b  black -c white "جاري التحضير لتشغيل يوتيوب.. لحظات من فضلك"

sleep 5

am start --user 0 -n com.google.android.youtube.tv/com.google.android.apps.youtube.tv.activity.ShellActivity

termux-toast -b  black -c white "تم تشغيل يوتيوب بنجاح.. استمتع"
