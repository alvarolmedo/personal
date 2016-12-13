#!/bin/bash

eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME xfce4-session)/environ)";

text=`curl -s http://gestiona.madrid.org/CTAC_CITA/cita/obtieneDiasDisponibles?idServicio=195\&idGrupo=62\&tiempoCita=30\&_=1481150686454  | python -c 'import sys, json; print json.load(sys.stdin)["diasDisponibles"]'`
if [ $text == "[]" ]; then
	/usr/bin/notify-send "No hay citas" $text
else 
	/usr/bin/notify-send "Hay citas" $text
fi