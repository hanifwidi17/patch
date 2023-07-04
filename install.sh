#!/bin/bash
apt update -y
apt install wget -y
wget --no-check-certificate https://github.com/hanifwidi17/patch/raw/main/add-tr
wget --no-check-certificate https://github.com/hanifwidi17/patch/raw/main/add-vm
wget --no-check-certificate https://github.com/hanifwidi17/patch/raw/main/renew-tr
wget --no-check-certificate https://github.com/hanifwidi17/patch/raw/main/renew-vm
wget --no-check-certificate https://github.com/hanifwidi17/patch/raw/main/auto
touch /etc/.list
mv add-tr /usr/bin/add-tr
mv add-vm /usr/bin/add-vm
mv renew-tr /usr/bin/renew-tr
mv renew-vm /usr/bin/renew-vm
mv auto /usr/bin/auto
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/add-vm
chmod +x /usr/bin/renew-tr
chmod +x /usr/bin/renew-vm
chmod +x /usr/bin/auto
crontab -l ; echo "* * * * * /usr/bin/auto >/dev/null 2>&1" | crontab -
sleep 2
sed -i "/^menu/d" /root/.profile
sleep 2
clear
echo "Installasi sukses"

