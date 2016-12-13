import sys
import json
import urllib2
import subprocess
import os

response = urllib2.urlopen('http://gestiona.madrid.org/CTAC_CITA/cita/obtieneDiasDisponibles?idServicio=195&idGrupo=62&tiempoCita=30&_=1481150686454')
data = json.load(response)
#if data["diasDisponibles"]:
if data["diasNoDisponibles"]:
	os.system('notify-send "Hay Citas"')
	#subprocess.Popen(['/usr/bin/notify-send', 'Hay citas'], env=new_env)
	exit(0)
else:
	exit(1)
