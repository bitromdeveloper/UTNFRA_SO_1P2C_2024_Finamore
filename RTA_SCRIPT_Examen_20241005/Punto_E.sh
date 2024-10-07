#!/bin/bash

cat /proc/meminfo | grep -i MemTotal > $HOME/repogit/Filtro_Basico.txt
sudo dmidecode -t chassis | grep "Chassis" >> $HOME/repogit/Filtro_Basico.txt
sudo dmidecode -t chassis | grep "Manufacturer" >> $HOME/repogit/Filtro_Basico.txt
