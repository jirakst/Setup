# MokListRT error
sudo su -
cd /boot/efi/EFI/ubuntu
cp grubx64.efi shimx64.efi

# Internal error
rm /var/crash/*

# Kinto
/bin/bash -c "$(wget -qO- https://raw.githubusercontent.com/rbreaves/kinto/HEAD/install/linux.sh || curl -fsSL h>

# Utilities
sudo apt update
sudo apt install gnome-tweaks
sudo apt install git
sudo apt install vim
sudo apt install curl
sudo apt install cpio

# Camera fix
cd ~/Downloads 
git clone https://github.com/patjak/facetimehd-firmware.git
cd facetimehd-firmware
make clean
make
sudo make install
cd ..
sudo apt install kmod libssl-dev checkinstall
git clone https://github.com/patjak/bcwc_pcie.git
cd bcwc_pcie
make clean
make
sudo make install
sudo depmod
sudo modprobe facetimehd

# Applications
sudo snap install --classic code
sudo snap install --classic brave
sudo snap install --classic sublime-text
sudo snap install --classic slack
sudo snap install --classic spotify

# Reboot
reboot
