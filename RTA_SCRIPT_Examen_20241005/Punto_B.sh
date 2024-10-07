#!bin/bash
sudo fdisk /dev/sdd
echo -e "n\np\n1\n\n+1G\nw" | fdisk /dev/sdd
echo -e "n\np\n2\n\n+1G\nw" | fdisk /dev/sdd
echo -e "n\np\n3\n\n+1G\nw" | fdisk /dev/sdd
echo -e "n\ne\n4\n\n\n\nw" | fdisk /dev/sdd
echo -e "n\nl\n\n+1G\n\nw" | fdisk /dev/sdd
echo -e "n\nl\n\n+1G\n\nw" | fdisk /dev/sdd
echo -e "n\nl\n\n+1G\n\nw" | fdisk /dev/sdd
echo -e "n\nl\n\n+1G\n\nw" | fdisk /dev/sdd
echo -e "n\nl\n\n+1G\n\nw" | fdisk /dev/sdd
echo -e "n\nl\n\n+1G\n\nw" | fdisk /dev/sdd
echo -e "n\nl\n\n+1G\nw\nw" | fdisk /dev/sdd

sudo mkfs -t ext4 /dev/sdd1
sudo mkfs -t ext4 /dev/sdd2
sudo mkfs -t ext4 /dev/sdd3
sudo mkfs -t ext4 /dev/sdd5
sudo mkfs -t ext4 /dev/sdd6
sudo mkfs -t ext4 /dev/sdd7
sudo mkfs -t ext4 /dev/sdd8
sudo mkfs -t ext4 /dev/sdd9
sudo mkfs -t ext4 /dev/sdd10
sudo mkfs -t ext4 /dev/sdd11

sudo mount /dev/sdd1 $HOME/repogit/alumno_1/parcial_1
sudo mount /dev/sdd2 $HOME/repogit/alumno_1/parcial_2
sudo mount /dev/sdd3 $HOME/repogit/alumno_1/parcial_3
sudo mount /dev/sdd5 $HOME/repogit/alumno_2/parcial_1/
sudo mount /dev/sdd6 $HOME/repogit/alumno_2/parcial_2/
sudo mount /dev/sdd7 $HOME/repogit/alumno_2/parcial_3/
sudo mount /dev/sdd8 $HOME/repogit/alumno_3/parcial_1/
sudo mount /dev/sdd9 $HOME/repogit/alumno_3/parcial_2/
sudo mount /dev/sdd10 $HOME/repogit/alumno_3/parcial_3/
sudo mount /dev/sdd11 $HOME/repogit/profesores


echo "/dev/sdd1 $HOME/repogit/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdd2 $HOME/repogit/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdd3 $HOME/repogit/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdd5 $HOME/repogit/alumno_2/parcial_1/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdd6 $HOME/repogit/alumno_2/parcial_2/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdd7 $HOME/repogit/alumno_2/parcial_3/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdd8 $HOME/repogit/alumno_3/parcial_1/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdd9 $HOME/repogit/alumno_3/parcial_2/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdd10 $HOME/repogit/alumno_3/parcial_3/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdd11 $HOME/repogit/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab
