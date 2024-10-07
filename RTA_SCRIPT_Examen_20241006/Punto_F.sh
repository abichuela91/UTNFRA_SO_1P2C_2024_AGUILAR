#!/bin/bash
echo " crea filtro_avanzado, con ip, usuario, Hash y URL" 
echo "Mi IP publica es: $(curl -s ifconfig.me)" > RTA_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt 
echo "Mi Usuario es: $(whoami)" >> RTA_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt 
echo "El hash de mi Usuario es:$(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')" >> RT 
A_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt 
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> RTA_ARCHIVOS_Examen_20241006/F 
iltro_Avanzado.txt 
cat RTA_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt 

echo "se muestra en el formato pedido"                             

