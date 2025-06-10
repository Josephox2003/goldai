#!/bin/bash

# بدء خادم العرض الافتراضي Xvfb
Xvfb :0 -screen 0 1024x768x16 &

# بدء مدير النوافذ fluxbox
fluxbox &

# بدء MetaTrader 4 داخل بيئة Wine
wine "C:\\Program Files\\MetaTrader 4\\terminal.exe" &

# بدء x11vnc لربط سطح المكتب عن بعد
x11vnc -display :0 -nopw -forever &
 
# إبقاء الحاوية شغالة
tail -f /dev/null
