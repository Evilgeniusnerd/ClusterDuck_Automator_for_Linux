#!/bin/bash
#
# This script checks to make sure that required dependieces are installed
# for the Project Owl ClusterDuck-Prototcol Arduino IDE build system

INSTALL_DIR=${HOME}
ARDUINO_VERSION=1.8.13

# Only download if newer version exists
wget -N https://downloads.arduino.cc/arduino-$ARDUINO_VERSION-linuxaarch64.tar.xz
tar -C $INSTALL_DIR/ -xvf arduino-${ARDUINO_VERSION}-linuxaarch64.tar.xz
cd $INSTALL_DIR/arduino-${ARDUINO_VERSION}
sudo ./install.sh
./arduino-linux-setup.sh "$USER"
echo "You can delete the tar file if desired: arduino-"${ARDUINO_VERSION}"-linuxaarch64.tar.xz"


# Install Python3 and make it your default 
echo "Now getting Python 3 & Making it your default"
sudo apt-get install python3 python3-pip python3-setuptools

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10

#Install Pyserial 
echo "Now getting Pyserial installed for you"
sudo pip3 install pyserial

exit 0
