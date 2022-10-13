#!/bin/bash
#
# This bash script is used for installing Python 3.10.8 in your device.
# This script builds the Python 3.10.8 from the source code so it will take some time to build it

apt update -y
apt upgrade

apt install build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev -y

mkdir python_installation && cd python_installation

wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz
tar xzvf Python-3.10.8.tgz
rm -f Python-3.10.8.tgz

cd Python-3.10.8
./configure --enable-optimizations
make -j 4
make altinstall

cd ../..
rm -rf python_installation

apt --purge remove build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev -y
apt autoremove -y
apt clean

python3.10 -m pip install -U pip
echo '$alias pip3="python3.10 -m pip"' >> ~/.bashrc