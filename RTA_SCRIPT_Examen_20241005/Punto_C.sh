#!/bin/bash

groupadd 1c2_2024_gAlumno
groupadd 1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -c "Alumno 1" p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "Alumno 2" p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "Alumno 3" p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "Profesor 1" p1c2_2024_P1

echo "p1c2_2024_A1:p1c2_2024_A1" | sudo chpasswd
echo "p1c2_2024_A2:p1c2_2024_A2" | sudo chpasswd
echo "p1c2_2024_A3:p1c2_2024_A3" | sudo chpasswd
echo "p1c2_2024_P1:p1c2_2024_P1" | sudo chpasswd

sudo usermod -aG 1c2_2024_gAlumno p1c2_2024_A1
sudo usermod -aG 1c2_2024_gAlumno p1c2_2024_A2
sudo usermod -aG 1c2_2024_gAlumno p1c2_2024_A3
sudo usermod -aG 1c2_2024_gProfesores p1c2_2024_A1

sudo chown -R p1c2_2024_A1:1c2_2024_gAlumno $HOME/repogit/alumno_1
sudo chown -R p1c2_2024_A2:1c2_2024_gAlumno $HOME/repogit/alumno_2
sudo chown -R p1c2_2024_A3:1c2_2024_gAlumno $HOME/repogit/alumno_3
sudo chown -R p1c2_2024_P1:1c2_2024_gProfesores $HOME/repogit/profesores

sudo chmod 770 $HOME/repogit/alumno_1
sudo chmod 770 $HOME/repogit/alumno_2
sudo chmod 770 $HOME/repogit/alumno_3
sudo chmod 770 $HOME/repogit/profesores

cd $HOME/repogit/alumno_1
sudo -u p1c2_2024_A1 bash -c "whoami > validar.txt"
cd $HOME/repogit/alumno_2
sudo -u p1c2_2024_A2 bash -c "whoami > validar.txt"
cd $HOME/repogit/alumno_3
sudo -u p1c2_2024_A3 bash -c "whoami > validar.txt"
cd $HOME/repogit/profesores
sudo -u p1c2_2024_P1 bash -c "whoami > validar.txt"

sudo chmod 750 $HOME/repogit/alumno_1
sudo chmod 760 $HOME/repogit/alumno_2
sudo chmod 700 $HOME/repogit/alumno_3
sudo chmod 775 $HOME/repogit/profesores
