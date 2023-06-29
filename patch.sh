#!/bin/bash
apt update -y
apt install wget -y
wget https://github.com/hanifwidi17/patch/raw/main/add-tr.sh
wget https://github.com/hanifwidi17/patch/raw/main/add-vm.sh
wget https://github.com/hanifwidi17/patch/raw/main/renew-tr.sh
wget https://github.com/hanifwidi17/patch/raw/main/renew-vm.sh
wget https://github.com/hanifwidi17/patch/raw/main/auto.sh
touch /etc/.list
mv add-tr.sh /usr/bin/add-tr
mv add-vm.sh /usr/bin/add-vm
mv renew-tr.sh /usr/bin/renew-tr
mv renew-vm.sh /usr/bin/renew-vm
mv auto.sh /usr/bin/auto
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/add-vm
chmod +x /usr/bin/renew-tr
chmod +x /usr/bin/renew-vm
chmod +x /usr/bin/auto
crontab -l ; echo "* * * * * /usr/bin/auto >/dev/null 2>&1" | crontab -
sleep 2
sed -i "/^menu/d" /root/.profile
sleep 2
echo "Installasi sukses"

