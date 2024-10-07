echo "se crean los grupos secundarios de los usuarios" 
ls /home/ 
sudo groupadd p1c2_2024_gAlumno 
sudo groupadd p1c2_2024_gProfesores 
echo "se crean los usuarios y se le asigna el grupo secundario " 
sudo useradd -m -s /bin/bash -c "Alumno 1" -G p1c2_2024_gAlumno p1c2_2024_A1 
sudo passwd p1c2_2024_A1 
sudo useradd -m -s /bin/bash -c "Alumno 2" -G p1c2_2024_gAlumno p1c2_2024_A2 
sudo passwd p1c2_2024_A2 
sudo useradd -m -s /bin/bash -c "Alumno 3" -G p1c2_2024_gAlumno p1c2_2024_A3 
sudo passwd p1c2_2024_A3 
sudo useradd -m -s /bin/bash -c "Profesor 1" -G p1c2_2024_gProfesores p1c2_2024_P1 
sudo passwd p1c2_2024_P1 
ls /home/ 
echo "se cambia el propietari y grupo de carpeta" 
sudo chown p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno_1 
sudo chown p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-UTN/alumno_2 
sudo chown p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-UTN/alumno_3 
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores 
ls -l /Examenes-UTN
echo "se cambia ñlos permisos" 
sudo chmod 750 /Examenes-UTN/alumno_1 
sudo chmod 760 /Examenes-UTN/alumno_2 
sudo chmod 700 /Examenes-UTN/alumno_3 
sudo chmod 775 /Examenes-UTN/profesores 
ls -l /Examenes-UTN 
echo "crear y validar  archivo.txt en las carpetas" 
sudo -u p1c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno_1/validar.txt" 
sudo -u p1c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno_2/validar.txt" 
sudo -u p1c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno_3/validar.txt" 
sudo -u p1c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar.txt" 
sudo cat /Examenes-UTN/alumno_1/validar.txt 
sudo cat /Examenes-UTN/alumno_2/validar.txt 
sudo cat /Examenes-UTN/alumno_3/validar.txt 
sudo cat /Examenes-UTN/profesores/validar.txt 
echo "fin"

