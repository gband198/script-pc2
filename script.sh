#!/bin/bash
#instalacion esencial
echo instalacion esencial
#apt-get install -y build-essential
#apt-get install -y openssh-server
#apt-get install -y nfs-kernel-server
#apt-get install -y nfs-common
#cd

#configuracion de redes
#echo configuracion de redes
#ip addr show
#read -p "direccion_ip" ip
#read -p "identificador" id
#concat="$ip $id"
#echo "10.0.2.4 master"| tee --append /etc/hosts
#echo $concat | tee --append /etc/hosts


# mpi
#echo parte de mpi
#sudo adduser mpiuser
#sudo usermod -aG sudo,adm mpiuser
#sudo  -i -u mpiuser ssh-keygen -b 4096 -C "" -p "" -f "/home/mpiuser/.ssh/id_rsa" -q
#sudo  -i -u mpiuser ssh-copy-id master 
#sudo  -i -u mpiuser ssh master "echo 12345 | sudo -S --sh -c 'echo $concat >> /etc/hosts'"
#esta parte todavia no funca 
#sudo -i -u mpiuser ssh master "echo'yes \n'| ssh-copy-id $id"
#la de arriba^
#mkdir /home/mpiuser/cloud
#sudo mount -t nfs master:/home/mpiuser/cloud /home/mpiuser/cloud
#echo master:/home/mpiuser/cloud /home/mpiuser/cloud nfs | tee --apend /etc/fstab
 
#instalacion de mpich-3.2.1
echo instalacion de mpich
wget http://www.mpich.org/static/downloads/3.2.1/mpich-3.2.1.tar.gz
tar -xzf mpich-3.2.1.tar.gz
cd mpich-3.2.1
./configure --disable-fortran
make; sudo make install
apt autoremove -y python
apt-get install python-setuptools
add-apt-repository universe 
apt-get install -y python-deb python-pip
pip install mpi4py
cd 

