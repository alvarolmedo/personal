#!/bin/bash

#Sincroniza disco duro con directorios: Musica, fotos, /home/aolmedo(*)
# (*) Algunos directorios
#El script debe ser ejecutado desde la raíz del disco USB (/mnt/0000-0253)
# Version 1.0 28-Julio

origen=$1
ruta=$2

rsync -av --delete $origen/Musica/ $ruta/Musica/
rsync -av --delete $origen/fotos/ $ruta/fotos/
rsync -av --delete $origen/aolmedo/CapturedVideo/ $ruta/aolmedo/CapturedVideo/
rsync -av --delete $origen/aolmedo/Dropbox/ $ruta/aolmedo/Dropbox/
rsync -av --delete $origen/aolmedo/Eurocopa/ $ruta/aolmedo/Eurocopa/
rsync -av --delete $origen/aolmedo/ingles/ $ruta/aolmedo/ingles/
rsync -av --delete $origen/aolmedo/Jordan/ $ruta/aolmedo/Jordan/
rsync -av --delete $origen/aolmedo/ManualesDocs/ $ruta/aolmedo/ManualesDocs/
rsync -av --delete $origen/aolmedo/Software/ $ruta/aolmedo/Software/
rsync -av --delete $origen/aolmedo/password.doc $ruta/aolmedo/password.doc



