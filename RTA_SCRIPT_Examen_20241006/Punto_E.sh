#!bin/bash
echo "se filtra la busqueda de solo Total de memoria de ram y el fabricante del chassis" 
grep MemTotal /proc/meminfo > RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt  
sudo dmidecode -t chassis | grep Manufacturer >> RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt 
cat RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt 
echo "se muesta solo dicha info" 

