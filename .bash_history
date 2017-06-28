cd /etc/hostname
ls -l
vim /etc/hostname
vim /etc/hosts
invoke-rc.d hostname.sh start
invoke-rc.d networking force-reload
invoke-rc.d network-manager force-reload
vim /etc/printcap
dpkg-reconfigure exim4-config
vim /etc/ssh/ssh_host_rsa_key.pub
vim /etc/ssh/ssh_host_dsa_key.pub
vim /etc/ssh/ssh_host_ed25519_key.pub
vim /etc/ssh/ssh_host_ecdsa_key.pub
service ssh restart
make-ssl-cert generate-default-snakeoil --force-overwrite
service q
exit
reboot
egrep -c '(vmx|svm)' /proc/cpuinfo
kvm-ok
apt-get update
apt-get install kvm-ok
apt-cache search kvm
/proc/cpuinfo
cat /proc/cpuinfo
cat /proc/cpuinfo | vmx
cat /proc/cpuinfo | grep vmx
apt-get upgrade
apt-get install vim unzip locate htop
vim .ssh/authorized_keys
mkdir .vim
mkdir .vim/colors
cd .vim/colors
wget https://github.com/tomasr/molokai/archive/master.zip --no-check-certificate
unzip master.zip
mv molokai-master/colors/molokai.vim .
rm -r molokai-master/
rm master.zip
ls -l
vim ~/.vimrc
vim .bashrc
cd ~
vim .bashrc
source .bashrc 
l
egrep '(vmx|svm)' --color=always /proc/cpuinfo
apt-get install kvm qemu-kvm libvirt-bin virtinst bridge-utils
adduser $(id -un) kvm
adduser $(id -un) libvirt
id -un
virsh -c qemu:///system list
htop
vim /etc/network/interfaces
df -h
df
cd ho
cd home
cd /home
ls -l
cd lost+found/
ls -l
l
la
cd /
cd ~
systemctl -t service 
lsmod | grep vhost 
lsmod
virsh list --all
virt-install
id root
virsh list
vim /etc/network/interface
cd /etc/network/
ls -l
cat interfaces
ifconfig
brctl show
apt-get install cpu-checker
apt-cache search checker
virsh net-list
iptables
iptables -h
i-tables -l
iptables -L
ip route
exit
:q
exit
ifconfig
exit
cat /proc/net/if_inet6
ping6 -c2 ::1
ping6 -c4 -I eth0 ff02::1
clear
useradd -g users lukas
ls -l /home
su lukas
passwd lukas
cd /home
ls -l
mkdir lukas
ls -l
chown lukas:lukas lukas/
chown lukas:users lukas/
ls -l
userdel lukas
useradd -g users -d /home/lukas -s /bin/bash lukas
passwd lukas
mkdir /home/lukas
cd /home/
ls -l
cd lukas/
la
cp -R /root/.ssh/*
cp -R /root/.ssh .
la
cp -R /root/.bashrc .
chmod -R lukas:users /home/lukas
cd ..
ls -l
cd lukas/
ls -l
la
ll
l
chmod -R lukas:users *
chmod -R lukas:users ./*
chown -R lukas:users /home/lukas
l
cd ~
l
cat .selected_editor 
cat .bash_aliases 
cat .bash_history 
l
cat .profile 
man cp
cp /root/.profile /root/.bash_aliases /home/lukas/
l /home/lukas/
chown -R lukas:users /home/lukas
vim /etc/ssh/sshd_config
/etc/init.d/ssh reload
passwd
mkdir -p /var/kvm/images
virt-install --name cth02 --ram 4096 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianjessie --network bridge=br0 --graphics none --console pty,target_type=serial --location 'https://download.hetzner.de/debian/packages/dists/jessie/main/installer-i386/' --extra-args 'console=ttyS0,115200n8 serial'
virt-install --name cth02 --ram 4096 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant jessie --network bridge=br0 --graphics none --console pty,target_type=serial --location 'https://download.hetzner.de/debian/packages/dists/jessie/main/installer-i386/' --extra-args 'console=ttyS0,115200n8 serial'
man virt-install
virt-install --virt-type kvm --name cth02 --location http://httpredir.debian.org/debian/dists/jessie/main/installer-amd64/ --extra-args "console=ttyS0" -v --os-variant debianjessie --disk size=4 --memory 512
virt-install --os-variant list
virt-install --virt-type kvm --name cth02 --location http://httpredir.debian.org/debian/dists/jessie/main/installer-amd64/ --extra-args "console=ttyS0" -v --os-variant debianwheezy --disk size=4 --memory 512
virsh --connect qemu:///system start cth02
virt-install --name cth02 --ram 4096 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0 --graphics none --console pty,target_type=serial --location 'http://ftp.jaist.ac.jp/pub/Linux/debian/dists/jessie/main/installer-amd64/' --extra-args 'console=ttyS0,115200n8 serial'
ls -l /var/kvm/images
ls -lh /var/kvm/images
cd /var/kvm/images
ls -l
rm template.img 
exit
apt-get update
apt-get upgrade
vim /etc/ssh/sshd_config 
cat /etc/ssh/sshd_config 
service ssh reload
exit
adduser pibackup
cd /home/pibackup/
ls -l
l
cp ~/.bashrc .
cp -r ~/.vim .
cp ~/.vimrc .
l
mkdir backup
ls -l
chown -R pibackup:pibackup /home/pibackup/
usermod -aG root pibackup
exit
cd /var
ls -l
tmp
cd tmp/
ls -l
cd ../log
ls -l
de
cd
su - pibackup
exit
vim /etc/network/interfaces
route -n
vim /etc/network/interfaces
route -n
service networking reload
route -n
apt-get install network-manager
man ifupdown
man interfaces
service network-manager status
service network-manager stop
man interfaces
vim /etc/network/interfaces
man interfaces
exit
vim /etc/network/interfaces
reboot
ifconfig
man virt-install
man virt-install --network=?
virt-install --network=?
man virt-install
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location 'https://download.hetzner.de/debian/packages/dists/jessie/main/installer-amd64/' --extra-args 'console=ttyS0,115200n8 serial'
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location 'https://download.hetzner.de/bootimages/Ubuntu-1610-yakkety-64-minimal.tar.gz' --extra-args 'console=ttyS0,115200n8 serial'
wget virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location 'https://download.hetzner.de/bootimages/Ubuntu-1610-yakkety-64-minimal.tar.gz' \
wget https://download.hetzner.de/bootimages/Ubuntu-1610-yakkety-64-minimal.tar.gz
man wget
wget --http-user=hetzner --http-password=download https://download.hetzner.de/bootimages/Ubuntu-1610-yakkety-64-minimal.tar.gz
tar -zxvf Ubuntu-1610-yakkety-64-minimal.tar.gz 
ls -l
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location '/root/Ubuntu-1610-yakkety-64-minimal.tar.gz' --extra-args 'console=ttyS0,115200n8 serial'
ls -l
mkdir ubuntuimage
mv Ubuntu-1610-yakkety-64-minimal.tar.gz ubuntuimage/
cd ubuntuimage/
tar -zxvf Ubuntu-1610-yakkety-64-minimal.tar.gz 
ls -l
rm Ubuntu-1610-yakkety-64-minimal.tar.gz 
cd ..
ls -l
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location '/root/ubuntuimage/' --extra-args 'console=ttyS0,115200n8 serial'
rm -r ./*
ls -l
ls -la
mkdir ubuntu
cd ubuntu/
wget --http-user=hetzner --http-password=download https://download.hetzner.de/bootimages/Ubuntu-1610-yakkety-64-minimal.tar.gz
man virt-install
ls -l
tar -zxvf Ubuntu-1610-yakkety-64-minimal.tar.gz 
l
cd ..
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location ubuntu/ --extra-args 'console=ttyS0,115200n8 serial'
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /root/ubuntu/ --extra-args 'console=ttyS0,115200n8 serial'
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /root/ubuntu --extra-args 'console=ttyS0,115200n8 serial'
man virt-install
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location https://download.hetzner.de/bootimages/iso/ubuntu-16.10-server-amd64.iso --extra-args 'console=ttyS0,115200n8 serial'
man virt-install
cd ubuntu/
wget --http-user=hetzner --http-password=download https://download.hetzner.de/bootimages/iso/ubuntu-16.10-server-amd64.iso
l /root/ubuntu/
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /root/ubuntu/ubuntu-16.10-server-amd64.iso --extra-args 'console=ttyS0,115200n8 serial'
ls -l
chmod 777 ubuntu-16.10-server-amd64.iso 
ls -l
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /root/ubuntu/ubuntu-16.10-server-amd64.iso --extra-args 'console=ttyS0,115200n8 serial'
vim /etc/libvirt/qemu.conf
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /root/ubuntu/ubuntu-16.10-server-amd64.iso --extra-args 'console=ttyS0,115200n8 serial'
service qemu-system-x86 reload
service qemu-system-x86 restart
ps faux
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /root/ubuntu/ubuntu-16.10-server-amd64.iso --extra-args 'console=ttyS0,115200n8 serial'
l
reboot
vim /etc/libvirt/qemu.conf
/etc/init.d/libvirtd restart
cd /var/lib/libvirt/images
l
l ..
cp ~/ubuntu/ubuntu-16.10-server-amd64.iso .
ls -l
l
l ..
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --extra-args 'console=ttyS0,115200n8 serial'
virsh list
virsh console cth02.qcow2 
virsh console cth02
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --extra-args='console=tty0 console=ttyS0,115200n8 serial'
virsh dominfo cth02
virsh destory cth02
virsh destroy cth02
virsh list
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --extra-args='console=tty0 console=ttyS0,115200n8 serial'
virsh
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --extra-args='console=tty0 console=ttyS0,115200n8 serial'
virsh list
virsh console cth02
virsh list
virsh reboot 3
virsh console cth02
virsh reboot 3
virsh list
virsh net-info default
virsh net-info 3
virsh net-info cth02
virsh net-info
virsh destroy cth02
virt-install --name cth03 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --graphics vnc
virt-install --name cth03 --memory 512 --disk path=/var/kvm/images/cth03.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --graphics vnc
virsh
virsh console cth02
virsh start cth02
virsh list
virsh console cth02
virsh destroy cth02
virsh undefine cth02
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/cth02.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --graphics vnc
virsh console cth02
virsh dumpxml cth02 temp.xml
virsh dumpxml cth02
virsh cosnole cth02
virsh console cth02
virsh destroy cth02
virsh undefine cth02
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/template.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --extra-args="console=ttyS0,115200 text headless"
s -l
l
cd ..
l
cd ..
cd kvm/images/
ls -l
virsh destory cth02
virsh destroy cth02
virsh undefine cth02
rm cth02.img 
rm cth03.img 
rm template.img 
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/cth02.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --extra-args="console=ttyS0,115200 text headless"
man virt-install
virsh destroy cth02
virsh undefine cth02
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/cth02.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location http://ftp.us.debian.org/debian/dists/stable/main/installer-amd64/ --extra-args="console=ttyS0,115200 text headless"
]
clear
virsh destroy cth02
virsh undefine cth02
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/cth02.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location http://ftp.us.debian.org/ubuntu/dists/stable/main/installer-amd64/ --extra-args="console=ttyS0,115200 text headless"
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/cth02.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location http://de.releases.ubuntu.com/yakkety/ubuntu-16.10-server-amd64.iso --extra-args="console=ttyS0,115200 text headless"
cd /var/lib/libvirt/images/
wget http://de.releases.ubuntu.com/yakkety/ubuntu-16.10-server-amd64.iso
ls -l
rm ubuntu-16.10-server-amd64.iso
mv ubuntu-16.10-server-amd64.iso.1 ubuntu-16.10-server-amd64.iso
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/cth02.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --extra-args="console=ttyS0,115200 text headless"
virt-install
man virt-install
clear
man virt-install
exit
rm -r ubuntu/
man virt-install
virt-viewer
ps -ef | grep qemu-system-x86_64
ps faux
man virt-install
virsh destory cth02
virh destroy cth02
virsh destroy cth02
virsh undefine cth02
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/cth02.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --extra-args="acpi=off console=ttyS0,115200 text headless"
virsh destroy cth02
virsh undefine cth02
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/cth02.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.10-server-amd64.iso --extra-args="acpi=off nomodeset xforcevesa console=ttyS0,115200 text headless"
cd /var/lib/libvirt/images
ls -l
cd ..
cd kvm/
cd images/
ls -l
viersh 
virsh
virsh dumpxml cth02 >> cth02.xml
vim cth02.xml 
virsh destroy cth02
virsh undefine cth02
man virt-install
cd ../../lib/libvirt/images/
wget http://de.releases.ubuntu.com/16.04/ubuntu-16.04.1-server-amd64.iso
virt-install --name cth02 --memory 512 --disk path=/var/kvm/images/cth02.img,size=30 --vcpus 2 --os-type linux --os-variant debianwheezy --network bridge=br0,mac=00:50:56:00:7B:B3 --graphics none --location /var/lib/libvirt/images/ubuntu-16.04.1-server-amd64.iso --extra-args="console=ttyS0,115200 text headless"
ps faux
virsh console cth02
route -n
ifconfig
exit
service ssh reload
exit
vim /etc/hostname
vim /etc/hosts
hostnamectl set-hostname cth01-jessie-64
cd /etc/avahi/
vim /etc/printcap
vim /etc/exim4/update-exim4.conf.conf
vim /etc/motd
vim /etc/ssh/ssh_host_rsa_key.pub
vim /etc/ssh/ssh_host_dsa_key.pub
vim /etc/ssh/ssh_host_ed25519_key.pub
vim /etc/ssh/ssh_host_ecdsa_key.pub
vim /etc/ssmtp/ssmtp.conf
vim /etc/mailname
reboot
virsh list
virsh define /var/kvm/images/cth02.xml
virsh start cth02
virsh list
apt-get install letsencrypt -t jessie-backports
cd /etc/apt/sources.list.d/
cd ..
vim sources.l
vim /etc/apt/sources.list.d/dotdeb.list
cat deb http://dotdeb.netmirror.org/ stable all
cat /etc/apt/sources.list.d/dotdeb.list
cd ~
wget https://www.dotdeb.org/dotdeb.gpg
apt-key add dotdeb.gpg
ls -l
rm dotdeb.gpg 
cd /var/www/
ls -l
l
rm -r html/
chown -R www-data:www-data .well-known/
ls -l /etc/letsencrypt/live/
vim /etc/cron.d/letsencrypt
certbot renew
ls -l
service nginx stop
exit
virsh list
virsh -h
man virsh
virsh autostart cth01
virsh autostart cth02
vim /etc/apt/sources.list.d/nginx.list
wget http://nginx.org/keys/nginx_signing.key
apt-key add nginx_signing.key
rm nginx_signing.key 
vim /etc/apt/sources.list
apt-get update
vim /etc/apt/sources.list
apt-get update
apt-get install nginx
apt-get install letsencrypt -t jessie-backports
vim /etc/nginx/sites-available/default
cd /etc/nginx/
vim nginx.conf 
mv nginx.conf nginx.conf.backup
vim nginx.conf 
mkdir sites-available
mkdir sites-enabled
cd sites-available/
vim default
service nginx restart
ls -l
mv default letsencrypt
cd ..
cd sites-enabled/
ls -l
ln -s ../sites-available/letsencrypt 
service nginx reload
ls -l
vim letsencrypt 
cd /var/
ls -l
mkdir www
groups
cat /etc/passwd
:q
l
mkdir www/html
cd www/html/
ls -l
vim index.html
chown -R www-data:www-data /var/www/
sudo www-data mkdir .well-known
mkdir .well-known
chown www-data:www-data .well-known/
cd /etc/nginx/
cat nginx.conf.backup 
cat sites-available/letsencrypt 
letsencrypt certonly -a webroot --webroot-path=/var/www -d host1.codethink.de
cd /var/www/html/
l
cd .well-known/
l
cat /etc/nginx/sites-available/letsencrypt 
cp ../index.html .
vim index.html 
mkdir acme-challenge
chown -R www-data:www-data acme-challenge/
ls -l
cd ..
ls -l
chown -R www-data:www-data .well-known/
letsencrypt certonly -a webroot --webroot-path=/var/www -d host1.codethink.de
cd ..
ls -l
l
vim /etc/nginx/sites-available/letsencrypt 
service nginx restart 
letsencrypt certonly -a webroot --webroot-path=/var/www -d host1.codethink.de
cd /home/pibackup/
cd backup/
ls -l
ln -s /etc/letsencrypt/
ln -s /etc/nginx/
ls -l
rm letsencrypt
ln -s /etc/letsencrypt
rm nginx
ln -s /etc/nginx
l
cd ..
chown -R pibackup:pibackup backup/
l backup/
htop
ps faux
htop
service status-all
service --h
service --status-all
man status
man service
nginx -v
openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
l
l /etc/ssl/certs/
l /etc/ssl/certs/ | grep parm
l /etc/ssl/certs/ | grep param
service nginx start
cd /var/www/
ls -l
vim index.html
l
cd /etc/nginx/
cd sites-available/
l
cat letsencrypt 
vim default
cd ..
mkdir snippets
cd snippets/
l /etc/letsencrypt/live/host1.codethink.de/
l /etc/letsencrypt/archive/host1.codethink.de/
chmod o-r /etc/letsencrypt/archive/host1.codethink.de/privkey1.pem 
chmod g-r /etc/letsencrypt/archive/host1.codethink.de/privkey1.pem 
l /etc/letsencrypt/archive/host1.codethink.de/
cat /etc/letsencrypt/archive/host1.codethink.de/fullchain1.pem 
vim ssl-host1.codethink.de.conf
vim ssl-params.conf
cd ..
nginx -t
service nginx restart
cd sites-enabled/
l
rm letsencrypt 
ln -s ../sites-available/default 
nginx -t
service nginx restart
apt-get update
apt-get install php7.0-fpm
vim /etc/apt/sources.list.d/froxlor.list
cd ~
sudo apt-key adv --keyserver pool.sks-keyservers.net --recv-key FD88018B6F2D5390D051343FF6B4A8704F9E9BBC
apt-key adv --keyserver pool.sks-keyservers.net --recv-key FD88018B6F2D5390D051343FF6B4A8704F9E9BBC
apt-get update && sudo apt-get upgrade
apt-get upgrade
apt-get install froxlor
cd /var/
ls -l
cd www
l
cd html/
l
cd ..
l
rm -r html/
l
service apache2 stop
service apache2 status
system --status-all
service --status-all
service postfix stop
service dovecot stop
service bind9 stop
service proftpd stop
service php7.0-fpm stop
cd /etc/apache2/
l
cd sites-available/
l
vim 000-default.conf 
vim default-ssl.conf 
cd ../sites-enabled/
l
vim 000-default.conf 
cd ..
l
vim apache2.conf 
vim ports.conf 
cd ..
cd nginx/
ls -l
l
cd sites-available/
l
vim default 
nginx -t
service nginx restart 
vim default 
cd /etc/apache2/
vim ports.conf 
mv ports.conf ports.conf.backup
vim ports.conf 
cp ports.conf.backup ports.conf
vim ports.conf 
service apache2 start
vim sites-available/000-default.conf 
cd /var/lo
cd /var/log
l
cd apache2/
l
cat error.log 
cat other_vhosts_access.log 
cd /var/www/
ls -l
cd ..
l
chown -R www-data:www-data www/
cd /etc/apache2/sites-available/
vim 000-default.conf 
service apache2 reload
vim apa
cd ..
vim apache2.conf 
cd conf-enabled/
l
cat security.conf 
cd ..
cd conf-enabled/
l
cd ..
vim envvars 
apache2 -v
service mysql start
cd ~
mysql -p
cd /etc/nginx/sites-available/
ls -l
vim host1.codethink.de
cat default 
:q
vim host1.codethink.de 
cd ..
cd sites-enabled/
l
rm default 
ln -s ../sites-available/host1.codethink.de 
l
nginx -t
service nginx restart
cd /etc/apache2/
l
cat ports.conf
cat sites-available/000-default.conf 
cd /etc/nginx/sites-available/
l
vim apache-forwarder
nginx -t
service nginx restart
l /var/www
locate
updatedb
locate php7.0
vim /etc/init/php7.0-fpm.conf
vim /etc/apache2/conf-available/php7.0-fpm.conf
cd /etc/php/7.0/
l
l fpm
cd fpm/conf.d/
l
cd /usr/share/php/7.0/
l
cd fpm/
l
df -h
mkdir -p /etc/apache2/sites-enabled/
chown root:0 /etc/apache2/sites-enabled/
chmod 0600 /etc/apache2/sites-enabled/
mkdir -p /etc/apache2/sites-enabled/
chown root:0 /etc/apache2/sites-enabled/
chmod 0600 /etc/apache2/sites-enabled/
mkdir -p /var/customers/webs/
mkdir -p /var/customers/logs/
mkdir -p /var/customers/tmp
chmod 1777 /var/customers/tmp
a2dismod userdir
a2enmod headers
apt-get install libapache2-mod-fastcgi
vim /etc/apache2/mods-enabled/fastcgi.conf
vim /etc/apache2/conf-enabled/acme.conf
vim /etc/apache2/conf-available/acme.conf
cd /etc/apache2/conf-enabled/
ln -s ../conf-available/acme.conf 
/etc/init.d/apache2 restart
apt-get install awstats
cp /usr/share/awstats/tools/awstats_buildstaticpages.pl /usr/bin/
mv /etc/awstats//awstats.conf /etc/awstats//awstats.model.conf
sed -i.bak 's/^DirData/# DirData/' /etc/awstats//awstats.model.conf
sed -i.bak 's|^\\(DirIcons=\\).*$|\\1\\"/awstats-icon\\"|' /etc/awstats//awstats.model.conf
rm /etc/cron.d/awstats
apt-get install logrotate
vim /etc/logrotate.d/froxlor
chmod 0644 "/etc/logrotate.d/froxlor"
chown root:root "/etc/logrotate.d/froxlor"
apt-get install nscd
cd ~
wget http://ftp.us.debian.org/debian/pool/main/libn/libnss-mysql-bg/libnss-mysql-bg_1.5-4_`dpkg --print-architecture`.deb
dpkg -i libnss-mysql-bg_1.5-4_`dpkg --print-architecture`.deb
rm libnss-mysql-bg_1.5-4_`dpkg --print-architecture`.deb
l
mv "/etc/libnss-mysql.cfg" "/etc/libnss-mysql.cfg.frx.bak"
vim /etc/libnss-mysql.cfg
chmod 0600 "/etc/libnss-mysql.cfg"
chown root:root "/etc/libnss-mysql.cfg"
mv "/etc/libnss-mysql-root.cfg" "/etc/libnss-mysql-root.cfg.frx.bak"
vim /etc/libnss-mysql-root.cfg
chmod 0600 "/etc/libnss-mysql-root.cfg"
chown root:root "/etc/libnss-mysql-root.cfg"
mv "/etc/nsswitch.conf" "/etc/nsswitch.conf.frx.bak"
vim /etc/nsswitch.conf
/etc/init.d/nscd restart
nscd --invalidate=group
vim /etc/insserv/overrides/apache2
chmod 0644 "/etc/insserv/overrides/apache2"
chown root:root "/etc/insserv/overrides/apache2"
vim /etc/insserv/overrides/nscd
chmod 0644 "/etc/insserv/overrides/nscd"
chown root:root "/etc/insserv/overrides/nscd"
apt-get install apache2-suexec libapache2-mod-fastcgi
a2enmod suexec fastcgi actions
service apache2 restart
ls -al /var/customers/webs/
vim /etc/cron.d/froxlor
chmod 0640 "/etc/cron.d/froxlor"
chown root:0 "/etc/cron.d/froxlor"
/etc/init.d/cron reload
php /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
/usr/bin/php -q /var/www/froxlor/scripts/froxlor_master_cronjob.php
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php
apt-cache search PDO-MySQL
apt-cache search PDO
cd /etc/php/7.0/mods-available/
l
apt-get install php7.0-mysql
service php7.0-fpm restart
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
cd /usr/sbin/
l
cat /etc/passwd
addgroup --gid 9999 froxlorlocal
adduser --no-create-home --uid 9999 --ingroup froxlorlocal --shell /bin/false --disabled-password --gecos '' froxlorlocal
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
vim /etc/nginx/snippets/ssl-host1.codethink.de.conf 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
l /etc/letsencrypt/live/host1.codethink.de/
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
systemctl status apache2.service
a2enmod ssl 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
cd /var/customers/
l
cd webs/
l
cd apps/
l
sudo
apt-get install sudo
sudo -u apps vim info.php
cd /etc/nginx/
cd sites-available/
l
vim host1.codethink.de 
service nginx restart
vim host1.codethink.de 
cat host1.codethink.de 
vim host1.codethink.de 
nginx -t
service nginx restart
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
cd /var/customers/webs/test/
ls -l
cd /etc/nginx/sites-available/
l
vim apache-forwarder 
cd ../sites-enabled/
l
ln -s ../sites-available/apache-forwarder 
service nginx restart
nginx -t
vim apache-forwarder 
nginx -t
service nginx restart
vim host1.codethink.de 
service nginx restart
cd /var/log/
l
cd nginx/
l
less error.log
less access.log
cd /etc/nginx/sites-enabled/
rm apache-forwarder 
service nginx restart
ls -l
mv host1.codethink.de 000-host1.codethink.de
ln -s ../sites-available/apache-forwarder 
mv apache-forwarder 001-apache-forwarder
l
nginx -t
service nginx restart
l
rm 001-apache-forwarder 
service nginx reload
ln -s ../sites-available/apache-forwarder 001-apache-forwarder
service nginx reload
vim 001-apache-forwarder 
service nginx reload
vim 000-host1.codethink.de 
service nginx reload
apt-cache search php curl
apt-get install php7.0-curl
vim /etc/cron.d/froxlor 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
cd /etc/apache2/sites-enabled/
ls -l
vim 28_froxlor_ssl_vhost_apps.host1.codethink.de.conf
apt-get install php5-curl
cd /etc/apache2/mods-available/
l
vim fastcgi.conf
cd /etc/php/7.0/fpm/
l fp
l conf.d/
l pool.d/
/etc/init.d/cron stop
cd conf.d/
l
rm apps.host1.codethink.de.conf 
rm jedeswort.com.conf 
rm test.host1.codethink.de.conf 
ln -s /etc/php/7.0/mods-available/opcache.ini 10-opcache.ini
ln -s /etc/php/7.0/mods-available/pdo.ini 10-pdo.ini
ln -s /etc/php/7.0/mods-available/calendar.ini 20-calendar.ini
l ../pool.d/
cat ../pool.d/www.conf 
l /var/lib/apache2/
l /var/lib/apache2/fastcgi/
cd ..
l
cp pool.d/ pool.d.backup
l
cp -r pool.d/ pool.d.backup
l
cd conf.d/
l
ln -s /etc/php/7.0/mods-available/ctype.ini 20-ctype.ini
ln -s /etc/php/7.0/mods-available/exif.ini 20-exif.ini
ln -s /etc/php/7.0/mods-available/fileinfo.ini 20-fileinfo.ini
ln -s /etc/php/7.0/mods-available/ftp.ini 20-ftp.ini
ln -s /etc/php/7.0/mods-available/gettext.ini 20-gettext.ini
ln -s /etc/php/7.0/mods-available/iconv.ini 20-iconv.ini
ln -s /etc/php/7.0/mods-available/json.ini 20-json.ini
ln -s /etc/php/7.0/mods-available/phar.ini 20-phar.ini
ln -s /etc/php/7.0/mods-available/posix.ini20-posix.ini
l
rm posix.ini20-posix.ini 
ln -s /etc/php/7.0/mods-available/posix.ini 20-posix.ini
l
ln -s /etc/php/7.0/mods-available/readline.ini 20-readline.ini
ln -s /etc/php/7.0/mods-available/shmop.ini 20-shmop.ini
lsn -s /etc/php/7.0/mods-available/sockets.ini 20-sockets.ini
ln -s /etc/php/7.0/mods-available/sockets.ini 20-sockets.ini
ln -s /etc/php/7.0/mods-available/sysvmsg.ini 20-sysvmsg.ini
ln -s /etc/php/7.0/mods-available/sysvsem.ini20-sysvsem.ini
ln -s /etc/php/7.0/mods-available/sysvsem.ini 20-sysvsem.ini
ln -s /etc/php/7.0/mods-available/sysvshm.ini 20-sysvshm.ini
ln -s /etc/php/7.0/mods-available/tokenizer.ini 20-tokenizer.ini
l
rm sysvsem.ini20-sysvsem.ini 
cd ..
cp -r conf.d/ conf.d.backup
l
l /etc/php/7.0/mods-available/
cd conf.d
l
ln -s ln -s /etc/php/7.0/mods-available/mysqli.ini 20-mysqli.ini
ln -s /etc/php/7.0/mods-available/mysqlnd.ini 20-mysqlnd.ini
ln -s /etc/php/7.0/mods-available/pdo_mysql.ini 10-pdo_mysql.ini
ln -s /etc/php/7.0/mods-available/curl.ini 20-curl.ini
ln -s /etc/php/7.0/mods-available/mysqli.ini 20-mysqli.ini
l
l /usr/share/
l /usr/share/php
l /usr/share/php5
l /usr/share/php/7.0/
l /usr/share/php/7.0/fpm/
cd ..
vim php.ini 
service php7.0-fpm restart 
vim /etc/init.d/php7.0-fpm 
insserv
insserv -d php7.0-fpm 
man insserv
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
apt-get install apache2-mpm-worker
/etc/init.d/cron start
l conf.d
l pool.d
cd ~
cd /etc/apache2/mods-enabled/
l
a2enmod mpm_worker 
a2dismod mpm_prefork 
a2enmod mpm_worker 
service apache2 restart
systemctl status apache2.service
systemctl status apache2.service -l
a2dismod mpm_worker 
a2enmod mpm_prefork 
service apache2 restart
l
a2enmod rewrite 
a2dismod php5 
service apache2 restart
a2enmod php5
service apache2 restart
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
cd /etc/nginx/sites-enabled/
l
rm 000-host1.codethink.de 
vim 001-apache-forwarder 
nginx -t
service nginx restart
ln -s ../sites-available/host1.codethink.de 000-host1.codethink.de
service nginx restart
l
rm 001-apache-forwarder 
service nginx restart
cd /etc/apache2/sites-enabled/
l
vim 35_froxlor_ssl_vhost_jedeswort.com.conf 
vim /etc/apache2/conf-enabled/acme.conf
cd /var/www/
l
cd .well-known/
l
cd acme-challenge/
l
vim index.html
rm index.html 
cd ../..
rm php-fpm/
rm -r php-fpm/
cd /etc/apache2/sites-enabled
l
vim 28_froxlor_ssl_vhost_apps.host1.codethink.de.conf 
cd /etc/ssl/froxlor-custom/
l
cat apps.host1.codethink.de_CA.pem 
cd /var/customers/webs/test/jedeswort.com/
l
ls -la
cd /etc/nginx/sites-enabled/
l
ln -s ../sites-available/apache-forwarder 
l
vim apache-forwarder 
service nginx restart
cd /var/customers/li
cd /var/customers/logs/
l
tail test-error.log 
cd /etc/nginx/sites-enabled/
l
rm 000-host1.codethink.de 
vim apache-forwarder 
nginx -t
service nginx restart
l
ln -s ../sites-available/host1.codethink.de
vim host1.codethink.de 
vim apache-forwarder 
mv apache-forwarder 01-apache-forwarder 
mv host1.codethink.de 00-host1.codethink.de 
nginx -t
service nginx restart
man letsencrypt
cd ~
letsencrypt certonly -a webroot --webroot-path=/var/customers/webs/test/jedeswort.de -d jedeswort.de
letsencrypt certonly -a webroot --webroot-path=/var/customers/webs/test/jedeswort.com -d jedeswort.com
l /var/customers/webs/test/jedeswort.com
cd /var/customers/webs/test/jedeswort.com
cd .well-known/
l
ls -l
l
less /var/log/letsencrypt/letsencrypt.log
vim index.html
letsencrypt certonly -a webroot --webroot-path=/var/customers/webs/test/jedeswort.com -d jedeswort.com
l
rm index.html 
cd ..
l
l /var/www/
rm .well-known/
rm -R .well-known/
l
sudo -u www-data ln -s /var/www/.well-known/
sudo -u www-data ln -s /var/www/.well-known
ln -s /var/www/.well-known
l
chown test:test .well-known
l
chown www-data:www-data .well-known
l
chown -R  www-data:www-data .well-known
l
letsencrypt certonly -a webroot --webroot-path=/var/www -d jedeswort.com
l
chown test:test info.php 
l
cd /etc/letsencrypt/
l
cd live/
l
cd jedeswort.com/
l
vim /etc/nginx/sites-available/host1.codethink.de 
cd /etc/nginx/sites-available/
l
vim ssl-jedeswort.com
nginx -t
service nginx restart
ls -l
cd ..
cd sites-enabled/
l
mv 01-apache-forwarder 99-apache-forwarder 
ln -s ../sites-available/ssl-jedeswort.com 05-ssl-jedeswort.com
l
service nginx restart
nginx -t
man letsencrypt
l
vim 05-ssl-jedeswort.com 
service nginx restart
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
cd /etc/apache2/sites-enabled/
l
cat 35_froxlor_ssl_vhost_begegnedeinemgott.de.conf 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
cat 35_froxlor_ssl_vhost_begegnedeinemgott.de.conf 
l
cd /var/log/nginx/
l
tail error.log
exit
cd /var/log/nginx/
l
less error.log
cd ../apache2/
l
less error.log 
vim /etc/apache2/apache2.conf 
less error.log 
l /etc/apache2/conf-available/
vim /etc/apache2/conf-available/fqdn.conf
cd /etc/apache2/conf-enabled/
ln -l cd ../conf-available/fqdn.conf 
ln -s cd ../conf-available/fqdn.conf 
l
ln -s ../conf-available/fqdn.conf 
l
service apache2 restart
cd /var/log
cd /var/customers/webs/test/jedeswort.com/
vim info.php
less /var/log/apache2/error.log 
cd /var/www/
l
sudo -u www-data mkdir test
sudo -u www-data vim test/index.html
cd /var/log/nginx/
less error.log
cd ../apache2/
l
less error.log 
cd ..
l
cd apache2/
tail access.log 
:q
cd /var/customers/logs/
l
tail test-error.log 
apt-get install libnss-mysql nscd libapache2-mod-fastcgi apache2-suexec
cd /etc/php/7.0/fpm/pool.d
l
vim host1.codethink.de.conf 
/etc/init.d/php7.0-fpm restart
service apache2 restart
cd /etc/apache2/sites-enabled/
l
vim 000-default.conf 
vim 10_froxlor_ipandport_127.0.0.1.8080.conf 
vim 10_froxlor_ipandport_127.0.0.1.8443.conf 
vim 35_froxlor_normal_vhost_jedeswort.com.conf 
vim 10_froxlor_ipandport_127.0.0.1.8080.conf 
cd /var/log/apache2/
l
less error.log 
tail access.log 
l /var/customers/logs/
cd ../nginx/
ls -l
tail error.log
ls -l
cd ..
l
less php7.0-fpm.log 
cd letsencrypt/
l
less letsencrypt.log
cd ../apache2/
l
less error.log 
cd /etc/nginx/snippets/
vim ssl-host1.codethink.de.conf 
vim ssl-params.conf 
cd /var/customers/logs/
l
less test-error.log 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --force
cat /etc/cron.d/froxlor 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --letsencrypt
vim /var/www/froxlor/lib/classes/ssl/class.lescript.php
cd /var/log/nginx/
l
tail error.log
tail access.log
cd ..
cd apache2/
l
teil error.log 
tail error.log 
cd /var/customers/logs/
l
tail test-error.log 
cd /etc/nginx/
l
cat nginx.conf
l
vim snippets/vhost-params.conf
vim sites-enabled/
vim sites-enabled/ssl-begegnedeinemgott.de
service nginx reload
cd sites-enabled/
l
mv ssl-begegnedeinemgott.de 05-ssl-begegnedeinemgott.de 
service nginx reload
l
ln -s /var/www/.well-known/ /var/customers/webs/test/begegnedeinemgott.de/
chown www-data:www-data /var/customers/webs/test/begegnedeinemgott.de/.well-known
l /var/customers/webs/test/begegnedeinemgott.de/
chown -h www-data:www-data /var/customers/webs/test/begegnedeinemgott.de/.well-known
l /var/customers/webs/test/begegnedeinemgott.de/
letsencrypt certonly -a webroot --webroot-path=/var/www -d begegnedeinemgott.de
service nginx reload
l /etc/letsencrypt/live/
vim 05-ssl-begegnedeinemgott.de 
service nginx reload
man letsencrypt
cat /etc/cron.d/letsencrypt 
letsencrypt renew
vim 05-ssl-begegnedeinemgott.de 
service nginx reload
l
mv 00-host1.codethink.de 98-host1.codethink.de 
vim ../sites-available/froxlor-standard-subdomains
ln -s ../sites-available/froxlor-standard-subdomains 00-froxlor-standard-subdomains
l
nginx -t
service nginx restart
vim 00-froxlor-standard-subdomains 
service nginx restart
vim ../snippets/ssl-params.conf 
exit
cd /etc/apache2/sites-enabled/
l
vim 10_froxlor_ipandport_127.0.0.1.8080.conf 
service apache2 restart
l
cat 40_froxlor_diroption_3543310b90f4a67100da7507d75c7523.conf 
rm 000-default.conf 
service apache2 reload
mv 10_froxlor_ipandport_127.0.0.1.8080.conf ../sites-available/
l
service apache2 reload
ln -s ../sites-available/000-default.conf 
l
service apache2 reload
service apache2 restart
mv ../sites-available/10_froxlor_ipandport_127.0.0.1.8080.conf .
l
service apache2 reload
cd /etc/php/7.0/fpm/pool.d
l
cat host1.codethink.de.conf 
cd /var/customers/logs/
l
less froxlor-
less froxlor-access.log 
cd /var/log/
l
cd nginx/
l
less access.log
updatedb
locate pdo_mysql
cat /etc/php/7.0/mods-available/pdo_mysql.ini
cd /home/pibackup/
l
cd backup/
su - pibackup
l
cd /var/customers/logs/
l
less froxlor-error.log 
cat /etc/cron.d/
cat /etc/cron.d/froxlor 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
cd /etc/php/7.0/fpm/conf.d
l
cd ..
l /etc/php/7.0/mods-available/
apt-get install php7.0-xml
l
l conf.d
dpkg --get-selections
apt-get install php7.0-mysqli
cd /var/log
l
man chmod
chmod -help
chmod --help
man useradd
usermod -a -G pibackup adm
usermod -a -G adm pibackup
groups
groups pibackup
cd /etc/letsencrypt/
l
cd keys
l
cd ..
man letsencrypt 
getsebool -a | less
getsebool -a | grep off
cd /etc/nginx/
l
vim nginx.conf
l conf.d/
cat conf.d/default.conf 
l
vim nginx.conf
service nginx reload
curl -I http://localhost
vim nginx.conf
vim conf.d/buffer.conf
vim conf.d/timeout.conf
nginx -t
vim nginx.conf
nginx -t
vim conf.d/limitzone.conf
nginx -t
l
nginx -V
nginx -V | grep limit
2>&1 nginx -V | tr -- - '\n' | grep _module
l conf.d/
rm conf.d/limitzone.conf 
apt-get install libapache2-modsecurity
apachectl -M | grep --color security
cd /etc/modsecurity/
l
mv /etc/modsecurity/modsecurity.conf{-recommended,}
l
service apache2 reload
cat /var/log/apache2/modsec_audit.log
l /var/log/apache2/
vim modsecurity.conf 
service nginx reload
service apache2 reload
l
cd /etc/apache2/sites-enabled/
l
cat 000-default.conf 
vim 10_froxlor_ipandport_127.0.0.1.8080.conf 
apachectl configtest
vim ../ports.conf
apachectl configtest
service apache2 restart
cat 10_froxlor_ipandport_127.0.0.1.8080.conf 
cat 35_froxlor_normal_vhost_jedeswort.com.conf 
l /var/www/php7.0-fpm/
l /var/www/php7.0-fpm/froxlor.panel/
l /var/www/php7.0-fpm/froxlor.panel/host1.codethink.de/
l /var/lib/apache2/fastcgi/
l /var/www
cd /var/log
l
less php7.0-fpm.log
cd apache2/
l
less error.log
cd /var/customers/logs/
l
cd /var/www/
l
cd test/
l
cd ..
sudo -u www-data vim info.php
l
cp info.php froxlor/info.php
cd /var/customers/logs/
l
less froxlor-
less froxlor-access.log 
rm /var/www/froxlor/info.php 
cd /etc/nginx/
l
cd sites-enabled/
l
cat 00-froxlor-standard-subdomains 
cat 98-host1.codethink.de 
cat 99-apache-forwarder 
l
rm 98-host1.codethink.de 
service nginx restart
ln -s ../sites-available/host1.codethink.de 98-host1.codethink.de
l
service nginx restart
a2dismod php5 
service apache2 restart
apt-get install php7.0-mysql
apt-get install php-mysql
apt-get install php-mysqlnd
cd /etc/php/7.0/fpm/
l
vim php.ini
service --status-all
l
l conf.d
service apache2 restart
service php7.0-fpm restart
vim php.ini
service php7.0-fpm restart
service apache2 restart
vim php.ini
service php7.0-fpm restart
vim php.ini
cd conf.d
l
vim 10-pdo_mysql.ini 
mv 10-pdo_mysql.ini 20-pdo_mysql.ini 
l
cat 10-pdo.ini
cat 20-mysqli.ini
cat 20-mysqlnd.ini
mv 20-mysqlnd.ini 10-mysqlnd.ini
l
service php7.0-fpm restart
l
apt-get remove php-mysql
apt-get update
apt-get upgrade
cd /etc/apache2/conf-enabled/
l
cd ..
l
cd conf-available/
l
cat php7.0-fpm.conf 
cat /var/log/apache2/modsec_audit.log 
cd /home/pibackup/
cd backup/
sudo -u pibackup ln -s /etc/modsecurity/
l
cd /etc/selinux/
l
cat semanage.conf 
apt-get update
l
apt-get upgrade
exit
apt-get update
apt-get install php7.0-mbstring
apt-get upgrade
cd /etc/apache2/sites-enabled/
l
cd /etc/nginx/sites-enabled/
l
vim 05-ssl-begegnedeinemgott.de 
vim 00-froxlor-standard-subdomains 
vim ../snippets/ssl-params.conf
mv 05-ssl-begegnedeinemgott.de ../sites-available/
l
service nginx reload
vim 00-froxlor-standard-subdomains 
service nginx reload
vim 00-froxlor-standard-subdomains 
service nginx reload
mkdir ../tmp
mv 05-ssl-jedeswort.com ../tmp/
mv 98-host1.codethink.de ../tmp/
mv 99-apache-forwarder ../tmp/
l
service nginx reload
vim ../snippets/ssl-params.conf 
mv ../tmp/98-host1.codethink.de 
mv ../tmp/98-host1.codethink.de .
l
vim 98-host1.codethink.de 
service nginx reload
mv ../tmp/99-apache-forwarder 
mv ../tmp/99-apache-forwarder .
service nginx reload
l
l ../tmp/
l
vim 99-apache-forwarder 
service nginx reload
vim 99-apache-forwarder 
service nginx reload
vim 99-apache-forwarder 
service nginx reload
vim 99-apache-forwarder 
service nginx reload
l
vim 99-apache-forwarder 
mv ../tmp/05-ssl-jedeswort.com .
vim 05-ssl-jedeswort.com 
service nginx reload
l
rm -R ../tmp
l ..
..
l
.
exit
l
q
exit
tmux
apt-get install tmux
tmux
vim .tmux.conf
tmux
tmux -V
vim .tmux.conf
tmux
cd /var/customers/webs/luko/lucimere-kosmetikstudio.de/
l
cd ..
l
rm -r lucimere-kosmetikstudio.de/*
cd lucimere-kosmetikstudio.de/
l
vim ~/.bash_aliases 
exit
untar
cd /var/customers/webs/luko/lucimere-kosmetikstudio.de/
l
untar luci.tar.gz 
l
rm luci.tar.gz 
mysql -u lukosql1 -p lukosql1 < luci_2017-01-03.sql.gz 
l
cd ..
l
chown -R luko:luko lucimere-kosmetikstudio.de/
cd lucimere-kosmetikstudio.de/
l
vim info.php
exit
exit
l
ln -s /var/customers/webs/
l
cd webs/hodo/
l
wget https://de.wordpress.org/latest-de_DE.zip
l
unzip latest-de_DE.zip 
l
rm latest-de_DE.zip 
l
chown -R hodo:hodo wordpress/
cd wordpress/wp-content/uploads/2017/01/
l
apt-cache search gd
apt-get install php7.0-gd
service apache2 restart
l
apt-cache search curl
apt-get install php7.0-curl
tmux
exit
l
set -g mode-mouse on
setw -g mode-mouse on
cd /etc/apache2/sites-enabled/
l
vim 35_froxlor_normal_vhost_lucimere-kosmetikstudio.de.conf 
cd /etc/proftpd/
l
apt-get install proftpd-basic proftpd-mod-mysql
apt-get update
apt-get upgrade
[ -f /etc/ssl/certs/proftpd.crt ] || openssl req -new -x509 -newkey rsa:4096 -days 3650 -nodes -out /etc/ssl/certs/proftpd.crt -keyout /etc/ssl/private/proftpd.key -subj "/C=US/ST=Some-State/O=Internet Widgits Pty Ltd/CN=host1.codethink.de"
[ -f /etc/ssl/certs/proftpd_ec.crt ] || openssl req -new -x509 -nodes -newkey ec:<(openssl ecparam -name secp521r1) -keyout /etc/ssl/private/proftpd_ec.key -out /etc/ssl/certs/proftpd_ec.crt -days 3650 -subj "/C=US/ST=Some-State/O=Internet Widgits Pty Ltd/CN=host1.codethink.de"
chmod 0600 /etc/ssl/private/proftpd.key /etc/ssl/private/proftpd_ec.key
mv "/etc/proftpd/proftpd.conf" "/etc/proftpd/proftpd.conf.frx.bak"
vim /etc/proftpd/proftpd.conf
chmod 0600 "/etc/proftpd/proftpd.conf"
chown root:0 "/etc/proftpd/proftpd.conf"
mv "/etc/proftpd/modules.conf" "/etc/proftpd/modules.conf.frx.bak"
vim /etc/proftpd/modules.conf
chmod 0644 "/etc/proftpd/modules.conf"
chown root:0 "/etc/proftpd/modules.conf"
mv "/etc/proftpd/sql.conf" "/etc/proftpd/sql.conf.frx.bak"
l
vim /etc/proftpd/sql.conf
chmod 0600 "/etc/proftpd/sql.conf"
chown root:0 "/etc/proftpd/sql.conf"
mv "/etc/proftpd/tls.conf" "/etc/proftpd/tls.conf.frx.bak"
vim /etc/proftpd/tls.conf
chmod 0644 "/etc/proftpd/tls.conf"
chown root:root "/etc/proftpd/tls.conf"
service proftpd restart
vim /etc/proftpd/tls.conf
service proftpd restart
systemctl status proftpd.service
systemctl status proftpd.service -l
vim /etc/proftpd/tls.conf
service proftpd restart
vim /etc/proftpd/tls.conf
service proftpd restart
cd /var/customers/webs/luko/lucimere-kosmetikstudio.de/
l
unzip
unzip Lucis-Kosmetikstudio.zip 
l
chown -R luko:luko Lucis-Kosmetikstudio
l
mysql -u lukosql1 -p lukosql1 < db409565858_db_1and1_com.sql
l
rm db409565858_db_1and1_com.sql 
rm Lucis-Kosmetikstudio.zip 
l
rm index.html 
l
mv Lucis-Kosmetikstudio/* ./
l
ls -la Lucis-Kosmetikstudio/
rm -r Lucis-Kosmetikstudio/
l
vim web.config.txt 
l
vim configuration.php 
cat web.config.txt 
cd tmp/
l
cd ..
l
vim README.txt 
cd /var/www/
l
cd /etc/apache2/
l
l conf-enabled/
cd conf-enabled/
l
ln -s /etc/phpmyadmin/apache.conf 
service apache2 restart
a2dismod php5
service apache2 restart
a2enmod php5
service apache2 restart
l
mv apache.conf phpmyadmin.conf
l
cd /etc/letsencrypt/live/host1.codethink.de/
l
cd /etc/nginx/
l
cd sites-enabled/
vim host1
vim 98-host1.codethink.de 
service nginx reload 
vim 98-host1.codethink.de 
service nginx reload 
vim 98-host1.codethink.de 
service nginx reload 
cd ..
l
vim nginx.conf
service nginx reload
vim nginx.conf
service nginx restart
nginx -t
vim nginx.conf
nginx -t
vim nginx.conf
nginx -t
vim nginx.conf
nginx -t
vim nginx.conf
nginx -t
vim nginx.conf
vim conf.d/buffer.conf 
nginx -t
service nginx restart
vim .tmux.conf 
vim temp
apt-get install phpmyadmin
cd /etc/phpmyadmin/
l
vim apache.conf 
cd /etc/nginx/sites-enabled/
l
vim 98-host1.codethink.de 
service nginx reload
service apache2 reload
cd /etc/myphpa
cd /etc/phpmyadmin/
l
vim apache.conf 
a2enmod php5
service apache2 restart
vim /etc/nginx/sites-available/host1.codethink.de 
service nginx restart
vim apache.conf 
service apache2 restart
vim config.inc.php 
vim apache.conf 
l
vim htpasswd.setup 
vim apache.conf 
vim config.inc.php 
cd /var/customers/
cd ../www/
l
cd ../customers/webs/apps/
l
apt-chache search mysql
apt-cache search mysql
apt-cache search mysql backup
apt-get install automysqlbackup
automysqlbackup 
automysqlbackup -v
man automysqlbackup 
vim /etc/default/automysqlbackup 
apt-get remove automysqlbackup 
cd ~
wget http://downloads.sourceforge.net/project/automysqlbackup/AutoMySQLBackup/AutoMySQLBackup%20VER%203.0/automysqlbackup-v3.0_rc6.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fautomysqlbackup%2Ffiles%2Flatest%2Fdownload%3Fsource%3Dnavbar&ts=1483620706&use_mirror=netcologne
l
rm automysqlbackup-v3.0_rc6.tar.gz\?r\=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fautomysqlbackup%2Ffiles%2Flatest%2Fdownload%3Fsource%3Dnavbar 
l
mkdir automysqlbackup
cd automysqlbackup/
cd ~/webs/apps/awstats/
cd ..
mkdir mysqldumper
cd mysqldumper/
l
wget -h
wget -o=dumper http://downloads.sourceforge.net/project/mysqldumper/MySQLDumper/MySQLDumper1.24.4.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fmysqldumper%2F&ts=1483620798&use_mirror=netcologne
l
rm MySQLDumper1.24.4.zip\?r\=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fmysqldumper%2F 
rm =\=dumper 
l
la
ls
ll
rm \=dumper
l
wget http://downloads.sourceforge.net/project/mysqldumper/MySQLDumper/MySQLDumper1.24.4.zip
l
wget "http://downloads.sourceforge.net/project/mysqldumper/MySQLDumper/MySQLDumper1.24.4.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fmysqldumper%2F&ts=1483620798&use_mirror=netcologne" -O MySQLDumper1.24.4.zip
l
unzip MySQLDumper1.24.4.zip 
l
rm MySQLDumper1.24.4.zip 
mv msd1.24.4/* .
l
rm msd1.24.4/
rm -r msd1.24.4/
l
ls -la
l
cd ..
l
chown -R apps:apps mysqldumper/
cd mysqldumper/
l
vim config.php 
l
sudo -u apps vim info.php
apt-cache search php7
apt-get install php7.0-mysql
l
..
rm -R mysqldumper/*
cd mysqldumper/
wget https://github.com/DSB/MySQLDumper/archive/master.zip
l
unzip master.zip 
l
rm master.zip 
mv MySQLDumper-master/* .
rm -r MySQLDumper-master/
l
cd ..
chown -R apps:apps mysqldumper/
l
cd mysqldumper/
l
cd work/backup/
l
perl perl /var/customers/webs/apps/mysqldumper/msd_cron/crondump.pl -config=mysqldumper -html_output=0
perl /var/customers/webs/apps/mysqldumper/msd_cron/crondump.pl -config=mysqldumper -html_output=0
l
chmod 640 /var/customers/webs/apps/mysqldumper/work/backup/*
l
chown apps:apps ./*
l
groups
groups apps
groups pibackup
nscd --invalidate=group
groups pibackup
cd /home/pibackup/backup/
l
mkdir logs
mkdir webs
mkdir etc
l
mv ssh php etc/
l
l etc/
cd ..
cd backup/
l
mv apache2 cron.d letsencrypt logrotate.d modsecurity mysql network nginx etc/
l
mv log logs/
l
cd logs/
l
ln -s /var/customers/logs/
l
cd ..
cd logs/
cd ..
cd etc/
l
cd ..
l
cd webs/
cd ..
l
rm webs/
rm -r webs/
ln -s /var/customers/webs/
l
cd ..
l
chown -R pibackup:pibackup backup/
cd pi
cd backup/
li
ls
ls -l
l
cd ..
vim /etc/mysql/debian.cnf
man automysqlbackup 
apt-cache search mysqldumper
mysql
mysql -p
l
cd automysqlbackup/
l
wget "http://downloads.sourceforge.net/project/automysqlbackup/AutoMySQLBackup/AutoMySQLBackup%20VER%203.0/automysqlbackup-v3.0_rc6.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fautomysqlbackup%2F&ts=1483621795&use_mirror=netcologne" -O automysqlbackup-v3.0_rc6.tar.gz
cd /etc/apache2/
l
l mods-enabled/
cd /etc/php/7.0/fpm/conf.d
l
l ../../mods-available/
cd /etc/cron.d
l
vim mysqldumper
l
chmod o-r mysqldumper 
l
chmod p-r ./*
chmod o-r ./*
l
cat .placeholder 
tmux attach
tmux -l
tmux -h
man tmux
tmux ls
tmux attach
tmux ls
tmux attach
tmux ls
tmux attach
tmux ls
man tmux
tmux -a
tmux -t
man tmux
tmux attach 3
tmux attach -t 3
tmux kill-session -a
tmux ls
tmux attach
tmux ls
tmux kill-session 3
tmux kill-session -t 3
tmux ls
exit
cd /home/pibackup/backup/
l
ll
cd logs/
l
mv log system-log
mv logs customer-logs
cd ../webs
ll
cd apps/
l
ll
cd ..
..
ll
l
sudo -u pibackup ln -s /var/customers/webs/apps/mysqldumper/work/backup/
ll
mv backup mysqldumps
l
l /var/log
l /etc/letsencrypt/
l /home/pibackup/backup/etc/apache2/
chmod g+r /home/pibackup/backup/etc/apache2/sites-enabled/
l /home/pibackup/backup/etc/apache2/
cd /var/log
l
chmod g+r php7.0-fpm*
l
less btmp
less btmp.1
cd libvirt/
l
cd qemu/
l
less cth02.log 
chmod g+r cth02.log 
l
cd ..
..
l
cd dbconfig-common
l
less dbc.log 
chmod g+r dbc.log 
cd ..
l
exit
l
a2dismod php5
service apache2 restart
cat /etc/cron.d/froxlor 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
cd /etc/php/7.0/fpm/
l
vim php
vim php.ini
tmux
exit
tmux ls
tmux -attach
tmux attach
cd /etc/nginx/
l
vim nginx.conf
cd /var/customers/webs/hodo/wordpress/
l
vim wp-config.php 
l
cd wp-content/
l
updatedb
locate debug.log
locate debug
cd ..
vim wp-config
vim wp-config.php 
exit
tmux
cd webs/hodo/wordpress/wp-content/
l
cat debug.log 
cd webs/hodo/wordpress/wp-content/themes/amadeus/
l
vim style.css 
cd ../..
l
cd languages/
l
cd ../themes/amadeus/
vim style.css 
exit
tmux attach
exit
cd /var/log
l
chown -R www-data:adm piwik/
l
cd piwik/
l
cat piwik-archive.log 
cd /home/pibackup/backup/
l
cd etc/
l
cd ..
l
cd ..
cd /etc/apache2/sites-
cd /etc/apache2/sites-enabled/
l
cd ..
l
chmod -R g+r sites-enabled/
cd sites-enabled/
l
namei -om /etc/apache2/sites-enabled
tmux attach
exit
cat /etc/nginx/nginx.conf
exit
tmux attach
exit
mysql -p
exit
cd /var/customers/webs/apps/analytics.codethink.de/
l
chmod g+w misc/
cd misc/
l
chmod g+w GeoIPCity.dat 
cat /etc/cron.d/piwik-archive 
l
cd cron/
l
sudo -u www-data /usr/bin/php7.0 /var/customers/webs/apps/analytics.codethink.de/console core:archive --url=https://analytics.codethink.de > /var/log/piwik/piwik-archive.log
exit
vim /etc/cron.d/piwik-archive 
exit
cd /home/pibackup/
l
cd backup/
l
cd etc/
l
exit
cd /var/log
l
chown -R apps:adm piwik/
l
cd piwik/
l
exit
tmux attach
l
exit
cd webs/witte/
l
mv _site/ /var/www/
l
cd /var/www/
l
rm index.html 
mv _site/* .
l
rm -r _site/
l
chown -R www-data:www-data assets/ datenschutzerklaerung/ impressum/ index.html 
l
rm feed.x*
l
vim index.html 
vim /etc/logrotate.d/piwik 
chown -R apps:adm /var/log/piwik/
exit
tmux attach
curl https://analytics.codethink.de/?module=API&method=API.getBulkRequest&format=json&urls[0]=method%3DAPI.getPiwikVersion%26idSite%3Dn%2Fa&urls[1]=method%3DSitesManager.getSitesWithAtLeastViewAccess%26idSite%3Dn%2Fa&token_auth=926711e183a4e3bef6226c4f44f9db49
curl "https://analytics.codethink.de/?module=API&method=API.getBulkRequest&format=json&urls[0]=method%3DAPI.getPiwikVersion%26idSite%3Dn%2Fa&urls[1]=method%3DSitesManager.getSitesWithAtLeastViewAccess%26idSite%3Dn%2Fa&token_auth=926711e183a4e3bef6226c4f44f9db49"
curl http://joelmediatv.de
curl https://analytics.joelmediatv.de
curl https://analytics.codethink.de
curl http://analytics.codethink.de
curl http://analytics.codethink.de?module=API&method=API.getBulkRequest
curl https://analytics.codethink.de?module=API&method=API.getBulkRequest
curl https://analytics.codethink.de?module=API&method=API.getBulkRequest&format=json&urls[0]=method%3DAPI.getPiwikVersion
curl https://analytics.codethink.de/?module=API&method=API.getBulkRequest&format=json&urls[0]=method%3DAPI.getPiwikVersion%26idSite%3Dn%2Fa&token_auth=926711e183a4e3bef6226c4f44f9db49
curl --get https://analytics.codethink.de/?module=API&method=API.getBulkRequest&format=json&urls[0]=method%3DAPI.getPiwikVersion%26idSite%3Dn%2Fa&token_auth=926711e183a4e3bef6226c4f44f9db49
curl https://analytics.codethink.de/?module=API&method=API\.getBulkRequest&format=json&urls[0]=method%3DAPI\.getPiwikVersion%26idSite%3Dn%2Fa&token_auth=926711e183a4e3bef6226c4f44f9db49
curl "https://analytics.codethink.de/?module=API&method=API.getBulkRequest&format=json&urls[0]=method%3DAPI.getPiwikVersion%26idSite%3Dn%2Fa&token_auth=926711e183a4e3bef6226c4f44f9db49"
curl -g "https://analytics.codethink.de/?module=API&method=API.getBulkRequest&format=json&urls[0]=method%3DAPI.getPiwikVersion%26idSite%3Dn%2Fa&token_auth=926711e183a4e3bef6226c4f44f9db49"
sudo -u reemedee curl -g "https://analytics.codethink.de/?module=API&method=API.getBulkRequest&format=json&urls[0]=method%3DAPI.getPiwikVersion%26idSite%3Dn%2Fa&token_auth=926711e183a4e3bef6226c4f44f9db49"
tmux attach
exit
tmux attach
nscd --invalidate=group
exit
cd /etc/nginx/
l
rm -r h5bp-config-stuff
l
l conf.d/
rm conf.d/buffer.conf 
rm conf.d/default.conf 
rm conf.d/timeout.conf 
nginx -t
l snippets/
l
mv snippets/ssl-params.conf snippets/ssl-params.conf.backup
l
nginx -t
~/sslscript/sslcreate.sh 
nginx -t
cd sites-enabled/
l
cat 05-ssl-begegnedeinemgott.de 
vim 97-analytics.codethink.de 
nginx -t
vim 98-host1.codethink.de 
nginx -t
service nginx reload
cd ..
rm snippets/ssl-params.conf.backup 
l
l snippets/
exit
tmux attach
exit
tmux attach
cd webs/reemedee/
l
cd reemedee.com
l
cd ../reemedee.com.2/
;
l
cd ..
l
rm -r reemedee.com.2
l
exit
tmux attach
exit
tmux attach
cd /etc/nginx/sites-enabled/
;
l
tmux a
tmux attach
cat .tmux.conf 
tmux attach
tmux a
cd /var/customers/logs/
l
less reemedee-error.log
systemctl status apache2.service
a2enmod ssl
service apache2 restart
l
less test-access.log
tail -f test-access.log
l
tail -f test-img.log 
l
rm test-img.log 
l
tail -f test-access.log
l
less test-nginx.log 
tail -f test-nginx.log 
l
tail test-access.log
l
rm test-nginx.log 
l
less test-error.log
less reemedee-error.log
l
ess profecto-access.log 
less profecto-access.log 
l
less reemedee-error.log
less reemedee-access.log
l
tail -f profecto-access.log 
clear
cd /etc/php/7.0/
l
cd fpm/
l
l pool.d
cd pool.d
l
vim reemedee.
vim reemedee.com.conf 
..
l
vim php.ini
vim pool.d/reemedee.com.conf 
vim php.ini
vim pool.d/reemedee.com.conf 
cd conf.d
l
vim 30-ioncube.ini
cd ..
l
cd conf.d
l
mv 30-ioncube.ini 16-ioncube.ini
l
mv 16-ioncube.ini 00-ioncube.ini
cat /etc/nginx/snippets
cat /etc/nginx/snippets/proxy8080.conf 
cat ~/.tmux.conf 
cd /var/customers/logs/
l
cd /var/log/nginx/
l
less access.log
less error.log
tail -f error.log
tail error.log
cd /etc/nginx/sites-enabled/
l
cat 05-ssl-embed.joelmediatv.de 
l
cat 05-ssl-profecto-consulting.com 
d ..
..
cat h5bp/directive-only/ssl.conf 
cd ~
l
mkdir joelbackup
cd joelbackup/
l
mkdir server
mkdir vod
l
mv server/ host
l
cd host/
rsync -avz --stats --partial -e ssh root@5.9.137.73:/mnt/2/ .
rsync -avz --stats --partial --exclude 'proc' -e ssh root@5.9.137.73:/mnt/2/ .
df -h
l
cd var/customers/webs/jmm/joelmediatv.de/processing/source/
l
l -h
q
cd ..
l
rm -R source/
df -h
cd ~/joelbackup/
l
cd vod/
l
cd ..
rm -r vod
l
man du
du host/
du host/ -h
cd host/
l
du -h .
man du
du -h -d 0 .
du -h -d 1 .
cd proc/
l
..
l
rm -r proc/
l
df -h
l
rsync -avz --stats --partial --exclude 'proc' -e ssh root@5.9.137.73:/mnt/2/ .
l
rsync -avz --stats --partial -e ssh root@5.9.137.73:/mnt/2/var/ var
l
rsync -avz --stats --partial -e ssh root@5.9.137.73:/mnt/2/etc/ /root/joelhost/host/etc
rsync -avz --stats --partial -e ssh root@5.9.137.73:/mnt/2/etc/ /root/joelbackup/host/etc
df -h
cd /var/log/
l
cd nginx/
l
tail error.log
tail -f error.log
tail -f access.log
cd /var/customers/logs/
l
tail -f apps-access.log
letsencrypt certonly -a webroot --webroot-path=/var/www -d analytics.codethink.de
apt-cache search php7
php --modules
apt-get install php7.0-geoip
apt-get install php7.0-dev
apt-get install libgeoip-dev
apt-get update
apt-get upgrade
cd ~/webs/apps/analytics.codethink.de/co
cd ~/webs/apps/analytics.codethink.de/config/
vim config.ini.php 
cd /var/customers/webs/apps/analytics.codethink.de/tmp/assets/
cd ..
..
vim config/config.ini.php 
cd tmp/assets/
l
cd ..
l
chown -R apps:mysql assets/
l
chown -R mysql:mysql assets/
chown -R apps:apps assets/
l
namei -l assets/
namei -l /var/customers/webs/apps/analytics.codethink.de/tmp/assets/
chmod o+x /var/customers/webs/apps
namei -l /var/customers/webs/apps/analytics.codethink.de/tmp/assets/
chmod o+r /var/customers/webs/apps
namei -l /var/customers/webs/apps/analytics.codethink.de/tmp/assets/
cd /etc/apache2/sites-enabled/
l
less 35_froxlor_normal_vhost_analytics.codethink.de.conf 
cd ../../php/7.0/
l
cd fpm/
l
cd pool.d
l
less analytics.codethink.de.conf 
cd /var/log
l
cd apache2/
l
less error.log
apache2ctl -M
cd /etc/apache2/mods-enabled/
l
vim security2.conf 
cd ~
clear
letsencrypt certonly -a webroot --webroot-path=/var/www -d reemedee.com
cd /etc/nginx/sites-available/
l
cp ssl-example ssl-reemedee.com
l
vim ssl-reemedee.com 
cd ../sites-enabled/
l
ln -s ../sites-available/ssl-reemedee.com 
l
mv ssl-reemedee.com 05-ssl-reemedee.com 
l
nginx -t
service nginx reload
vim 05-ssl-reemedee.com 
nginx -t
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
vim 05-ssl-reemedee.com 
service nginx reload
cd /var/customers/logs/
l
less reemedee-error.log
cd /var/customers/webs/test/
cd begegnedeinemgott.de/
l
rm .well-known
l
l ../jedeswort.com/
ln -s /var/www/.well-known
chown www-data:www-data .well-known
l
chown -r www-data:www-data .well-known
l
..
l
cd begegnedeinemgott.de/
chown -r www-data:www-data .well-known
chown -R www-data:www-data .well-known
l
wget https://wordpress.org/download/
rm index.html
wget https://wordpress.org/latest.zip
unzip latest.zip 
rm latest.zip 
l
rm index.html.1 
l
mv wordpress/* .
l
rm -r wordpress/
l
cd wp-admin/
vim setup-config.php 
cd ..
l
vim test.php
l
cat .htaccess 
cd /etc/nginx/h5bp/
vim location/expires.conf 
nginx -t
service nginx reload
cd ~/webs/test/begegnedeinemgott.de/
l
cd ..
l
rm nginx.tar.gz 
cd begegnedeinemgott.de/
mkdir testdir
cd ..
chown -R test:test begegnedeinemgott.de/
cd begegnedeinemgott.de/
l
l /var/www/
l
cd testdir/
l
cp ../../profecto/assets/img/header-1.jpg .
l
vim index.htm
l
chown test:test header-1.jpg index.htm 
l
apt-get update
apt-get upgrade
letsencrypt 
letsencrypt --h
letsencrypt renew
nginx -V
cd ../../../profecto/
l
l profecto-consulting.com/
l
rm -r profecto-consulting.com/
cp -r profecto-consulting.de profecto-consulting.com 
l
chown -R profecto:profecto profecto-consulting.com/
l
cd ../reemedee/reemedee.com
l
vim .htaccess 
cd ~/webs/test/jedeswort.com/
l
cat index.html 
l
systemctl status php7.0-fpm.service -l
cd /etc/nginx/sites-enabled/
l
vim 05-ssl-reemedee.com 
cd !
clear
cd ~
apt-get update
apt-get upgrade
free
df -h
cd /home/
l
apt-cache list
apt-cache --help
apt-cache pkgnames
apt-cache pkgnames | less
cd /etc/awstats/
l
grep -i "quota" /usr/src/linux/.config
vim /etc/fstab
mount -o usrquota /dev/md3 /var/customers2
df -h
vim /etc/fstab 
cat /etc/fstab 
apt-get install quota quotatool
vim /etc/fstab 
cd ~
fdisk -l
cat /etc/mtab
service quota status
apt-get install strace
cd /etc/nginx/sites-available/
l
cp ssl-pattern-no-www ssl-embed.joelmediatv.de
vim ssl-embed.joelmediatv.de 
cd ../sites-enabled/
l
ln -s ../sites-available/ssl-embed.joelmediatv.de
ll
mv ssl-embed.joelmediatv.de 05-ssl-embed.joelmediatv.de 
l
nginx -t
l
vim 05-ssl-embed.joelmediatv.de 
nginx -t
vim 05-ssl-embed.joelmediatv.de 
nginx -t
service nginx reload
l
cd ../sites-available/
l
cp ssl-embed.joelmediatv.de ssl-joelmediatv.de
vim ssl-joelmediatv.de 
cd ../sites-enabled/
l
ln -s ../sites-available/ssl-joelmediatv.de 
l
mv ssl-joelmediatv.de 05-ssl-joelmediatv.de 
nginx -t
service nginx reload
l
cd ..
l
cd sites-enabled/
l
vim 05-ssl-temp.joelmediatv.de 
service nginx reload
vim 05-ssl-temp.joelmediatv.de 
service nginx reload
vim 05-ssl-temp.joelmediatv.de 
service nginx reload
vim 05-ssl-temp.joelmediatv.de 
nginx -t
vim 05-ssl-temp.joelmediatv.de 
service nginx reload
nginx -t
vim 05-ssl-temp.joelmediatv.de 
vim 05-ssl-reemedee.com 
vim 05-ssl-temp.joelmediatv.de 
vim 00-froxlor-standard-subdomains 
vim 05-ssl-temp.joelmediatv.de 
vim 99-apache-forwarder 
vim 05-ssl-temp.joelmediatv.de 
l
rm 05-ssl-temp.joelmediatv.de 
l
vim 05-ssl-joelmediatv.de 
ln -s ../sites-available/ssl-temp.joelmediatv.de 
l
mv ssl-temp.joelmediatv.de 04-ssl-temp.joelmediatv.de 
l
vim 04-ssl-temp.joelmediatv.de 
vim 05-ssl-begegnedeinemgott.de 
vim 04-ssl-temp.joelmediatv.de 
vim 99-apache-forwarder 
cat 99-apache-forwarder 
vim 04-ssl-temp.joelmediatv.de 
l
vim 05-ssl-begegnedeinemgott.de 
vim 04-ssl-temp.joelmediatv.de 
mv 04-ssl-temp.joelmediatv.de 05-ssl-temp.joelmediatv.de 
vim 05-ssl-
vim 05-ssl-temp.joelmediatv.de 
l
vim 05-ssl-j
vim 05-ssl-profecto-consulting.
vim 05-ssl-profecto-consulting.com 
cat 05-ssl-profecto-consulting.com 
l
cat 05-ssl-embedtemp.joelmediatv.de 
l
vim 05-ssl-embedtemp.joelmediatv.de 
nginx -t
service nginx reload
procinfo
repquota -a
repquota -ah
repquota -as
cd /etc/cron.d
l
vim joel-livestream-check
cat froxlor 
cat joel-livestream-check 
/usr/bin/php7.0 --no-header /var/customers/webs/joelmedia/joelmediatv.de/script/livestream-check.php
cd /var/log
l
cd /var/customers/logs/
k
l
tail apps-access.log
cd /etc/apache2/sites-enabled/
l
cat 35_froxlor_normal_vhost_mail.codethink.de.conf 
mount -o remount,usrquota /home
df -h
cd /
l
cd tmp
l
rsync -av /home/ /tmp/home
cd home/
l
cd lukas/
l
cd ..
cd pibackup/
l
cd .ssh/
l
cd ..
..
df -h
unmount /home
umount /home
lsof
umount /home
df -h
cd /home/
l
rsync -av /tmp/home/ .
l
cd ..
l
df
lshw -class disk
fdisk -l
cd /var/
l
mkdir customers2
l
man mount
quotacheck -vagum
cd customers2/
l
ls -la

rm -r lukas/
rm -r pibackup/
l
rm aquota.user 
rsync -av /var/customers/ .
l
cd ../customers
l
cd ../customers2/
l
weba
l
cd webs/
l
cd ..
umount /var/customers2
cd ..
umount /var/customers2
mv /var/customers /var/customers.backup
mount -o usrquota /dev/md3 /var/customers
mkdir customers
mount -o usrquota /dev/md3 /var/customers
l
l customers
l customers2
rm customers2
rm -r customers2
l
df -h
customers
cd customers
quotacheck -vagum
service quota start
l /usr/sbin/
l /usr/sbin/ | grep quota
l
vim aquota.user 
repquota --help
repquota -u
repquota -u reemedee
repquota -a
l
/usr/sbin/repquota -a
man quotatool 
quotatool -d
man quotatool 
quotatool -d reemedee
man quotatool 
quotatool -d -u reemedee
quotatool -d -u reemedee -a
quotatool -u reemedee -d /dev/md3
quotatool -u reemedee -d /var/customers
cat /etc/mtab
quotatool -u reemedee -d /dev/sda4
quotatool -u reemedee -d /dev/sdb4
service quota start
quotatool -u reemedee -d /var/customers
ps faux | grep quota
service quota status
service quota stop
quotatool -u reemedee -d /var/customers
repquota /var/customers
quotatool -u reemedee -d /dev/sda4
quotatool -u reemedee -d /var/customers
lsmod | grep quota
lsmod
service quota start
lsmod
lsmod | grep quota
modprobe quota_v2
echo 'quota_v2' >> /etc/modules
modprobe quota_v2
lsmod | grep quota
quotatool -u reemedee -d /var/customers
service quota restart
quotatool -u reemedee -d /var/customers
quotastats 
quotatool -u reemedee -d /dev/md3
quotacheck -vagum
quotatool -u reemedee -d /dev/md3
repquota /var/customers/
repquota /dev/md3
quotatool -u reemedee -d /dev/md3/
quotatool -u reemedee -d /dev/md3
quotatool -v
quotatool --v
cd ~
mkdir quotatool
l
cd quotatool/
wget https://github.com/ekenberg/quotatool/archive/master.zip
unzip master.zip 
rm master.zip 
l
cd quotatool-master/
l
./configure
make
make install
quotatool
which quotatool
apt-get remove quotatool
quotatool
which quotatool
/usr/local/sbin/quotatool
cd /usr/sbin/
l
l | grep quota
ln -s /usr/local/sbin/quotatool 
l | grep quota
cd /var/customers
quotatool
quotatool -u reemedee -d /dev/md3
less /proc/fs/quota
less /proc/sys/fs/quota
cd /proc/sys
l
cd fs
l
cd quota/
l
quotatool
quotatool -u reemedee -d /dev/md3
l
vim drops 
cd ..
l
..
cd fs/
l
cd ext4/
l
cd md3/
l
less options 
cd ,
,,
..
l
quotastats
uota
vim quota
l
touch quota
cd ..
l
man chmod
chmod u+w fs
cd fs/
touch quota
cd ..
l | grep fs
touch ~/quota
cp ~/quota fs/
cd fs/
l
strace quotatool
strace quotatool -u reemedee -d /dev/md3
quotactl
apt-get install quotactl
apt-get remove quota
apt-get install quota
/etc/init.d/quota start
strace quotatool -u reemedee -d /dev/md3
munmap
man quotactl
man quotaon
quotaon
quotaon /dev/md3
quotactl
quotatool -u reemedee -d /dev/md3
uota /var/customers
repquota /var/customers
cd /var/log
l
cd /etc/
l
l rc0.d/
l rc1.d/
l rc2.d/
l rc3.d/
l
l rc3.d/
service bind9 status
service bind9 stop
service bind9 status
l
runlevel
cd /etc/systemd/
l
cd system/
l
systemctl list-unit-files
man service
service status-all
service
service --status-all
systemctl
systemctl status bind9
systemctl disable bind9
man init
cd ~/webs/
l
cd ~
l
cd sslscript/
l
./sslcreate.sh 
vim sslcreate.sh 
./sslcreate.sh 
vim sslcreate.sh 
cd /var/log/nginx/
l
less access.log
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
cd ~/sslscript/
l
./sslcreate.sh 
cd /var/customers/webs/test/
l
ll
sudo -u test vim info.php
cd /etc/nginx/
l
vim nginx.conf
nginx -t
service nginx restart
nginx -t
vim nginx.conf
nginx -t
service nginx reload
vim nginx.conf
cd /var/customers/webs/apps/
l
cd analytics.codethink.de/
l
wget wget https://builds.piwik.org/piwik.zip && unzip piwik.zip
l
unzip piwik.zip 
l
rm piwik.zip 
cd ..
l
chown -R apps:apps analytics.codethink.de/
l
cd analytics.codethink.de/
l
rm How\ to\ install\ Piwik.html 
rm index.html 
mv piwik/* ./
l
rm -r piwik
l
vim config/config.ini.php 
apt-get install libapache2-mod-geoip
l
cat robots.txt 
vim robots.txt 
GRANT FILE on *.* to appssql1@localhost
mysql
mysql -p appssql1
mysql -p appssql1@localhost
man mysql
mysql -h
mysql --h
mysql -help
man mysql
mysql -p
l
cd misc/
l
..
l
vim info.php
vim config/config.ini.php 
l
rm index.php 
rm info.php 
sudo -u apps vim index.php
vim index.php 
cat ~/.tmux.conf 
cd /var/log
l
mkdir piwik
chown -R www-data:www-data piwik/
l
cd /var/customers/webs/apps/analytics.codethink.de/
l
chmod -R g+w tmp/
locate logrotate
cd ~
vim /etc/logrotate.conf 
cd /etc/logrotate.d/
l
vim apache2 
cat froxlor 
l
cp nginx piwik
vim piwik 
cd /etc/mysql/
l
less debian
less debian.cnf 
cd /etc/apache2/sites-enabled/
l
namei -om /etc/apache2/sites-enabled/000-default.conf 
cd ..
l
chmod g+x sites-enabled/
l
cd ~/webs/hodo/
l
mv wordpress nunobiketours.de/
l
ln -s nunobiketours.de/wordpress
l
cd nunobiketours.de/
l
cd wordpress/
l
cp index.php ../
cd ..
l
vim index.
rm index.html 
vim index.php 
l
cd ..
l
cd ..
l
chown -R hodo:hodo hodo/
cd hodo/
l
cd ..
cd reemedee/
l
cd reemedee.com/
l
cd ..
cd
cd webs/reemedee/]\
cd webs/reemedee/
l
mkdir shoptest
cd shoptest/
wget http://releases.s3.shopware.com.s3.amazonaws.com/install_5.2.15_f78c4fd1b3d68d7c3542a7aad2ac33d90726f8db.zip?_ga=1.253122569.1434354300.1485280692
l
rm install_5.2.15_f78c4fd1b3d68d7c3542a7aad2ac33d90726f8db.zip\?_ga\=1.253122569.1434354300.1485280692 install_5.2.15_f78c4fd1b3d68d7c3542a7aad2ac33d90726f8db.zip\?_ga\=1.253122569.1434354300.1485280692 
l
man wget
wget http://releases.s3.shopware.com.s3.amazonaws.com/install_5.2.15_f78c4fd1b3d68d7c3542a7aad2ac33d90726f8db.zip?_ga=1.253122569.1434354300.1485280692 -o zip
l
man wget
rm zip 
mv install_5.2.15_f78c4fd1b3d68d7c3542a7aad2ac33d90726f8db.zip\?_ga\=1.253122569.1434354300.1485280692 zip
l
unzip 
unzip zip
l
rm zip 
cd ..
l
chown -R reemedee:reemedee shoptest/
cd shoptest/
l
sudo -u reemedee vim info.php
vim .htaccess 
vim info.php 
apache2 
apache2ctl -M
l
cd ..
mv shoptest reemedee.com/
cd reemedee.com/
cd shoptest/
l
mkdir test
cd test/
l
vim tester.php
l
vim .htaccess
mv tester.php htaccess_tester.php
cd ..
chown -R reemedee:reemedee test/
cd ..
l
cd shoptest/
l
vim .htaccess 
sudo -u reemedee cp .htaccess ../
cd ..
l
cd shoptest/
l
cd engine/Shopware/Controllers/Backend/
l
vim Systeminfo.php 
..
vim info.php 
cd ..
l
rm shoptest/
rm -R shoptest/
l
cd ..
l
cd reemedee.com/
l
rm -R themes/ var/ vendor/ web/
wget http://releases.s3.shopware.com.s3.amazonaws.com/install_5.2.16_361b837b2dba5bbc5fb7064a718ebf57cfac5cad.zip?_ga=1.208146450.1434354300.1485280692
l
mv install_5.2.16_361b837b2dba5bbc5fb7064a718ebf57cfac5cad.zip\?_ga\=1.208146450.1434354300.1485280692 zip
l
unzip zip
l
rm zip
l
ll
l
cd ..
l
rm -R reemedee.com/*
cd reemedee.com/
l
sudo -u reemedee vim info.php
l
wget http://releases.s3.shopware.com.s3.amazonaws.com/install_5.2.16_361b837b2dba5bbc5fb7064a718ebf57cfac5cad.zip?_ga=1.208146450.1434354300.1485280692
mv install_5.2.16_361b837b2dba5bbc5fb7064a718ebf57cfac5cad.zip\?_ga\=1.208146450.1434354300.1485280692 install.zip
l
chown -u reemedee:reemedee install.zip 
chown reemedee:reemedee install.zip 
l
cd ..
l
mkdir reemedee2
l
chown reemedee:reemedee reemedee2
l
mv reemedee.com/install.zip reemedee2
l
mv reemedee.com/info.php reemedee2/
l
cd reemedee2/
l
unzip install.zip 
l
cd ..
l
chown -R reemedee2
chown -R reemedee:reemedee reemedee2
l
cd reemedee
cd reemedee.com/
l
sudo -u reemedee composer install
l
cd ..
l
mv reemedee.com reemedee.com.2
mv reemedee.com.2 reemedee.com
l
mv reemedee.com reemedee.com.2
mv reemedee2 reemedee.com
l
cd reemedee.com
l
cd /etc/nginx/sites-enabled/
l
vim 05-ssl-reemedee.com 
cd ~/webs/reemedee/
cd reemedee.com
l
sudo -u reemedee vim test.html
cd themes/Frontend/
l
cd ..
..
l
vim config.php 
cd /etc/nginx/
l
l conf.d/
cd conf.d/
l
cat buffer.conf 
cat default.conf 
l
cat timeout.conf 
cd ..
cd sites-enabled/
l
vim 97-analytics.codethink.de 
cd ../snippets/
l
cat vhost-params.conf 
cat ssl-
cat ssl-host1.codethink.de.conf 
cat ssl-params.conf 
vim ssl-params.conf 
service nginx reload
cd /etc/nginx/
l
mkdir h5bp
cd h5bp/
wget https://github.com/h5bp/server-configs-nginx/archive/master.zip
l
unzip master.zip 
rm master.zip 
l
mv server-configs-nginx-master/* .
l
rm server-configs-nginx-master/
rm -r server-configs-nginx-master/
cd h5bp/
l
cd ..
l
cd h5bp/
l
vim basic.conf 
..
vim nginx.conf 
..
l
cd modules
l
cd ..
l
mkdir backup
cp ./* backup/
cp -r ./* backup/
l
cd backup/
l
rm -r backup/
l
rm -r h5bp/
cd ..
l
rm mime.types 
rm nginx.conf*
l
cp h5bp/nginx.conf .
cp h5bp/mime.types .
nginx -t
cd conf.d/
l
cat timeout.conf 
cd ..
vim nginx.conf 
nginx -t
cd sites-available/
l
cat letsencrypt 
:q
..
l
cd backup/
l
tar -zcvf nginx.tar.gz .
l
mv nginx.tar.gz /var/customers/webs/test/
cd ..
l
mv h5bp/ h5bp-config-stuff
cp h5bp-config-stuff/h5bp .
l
mkdir h5bp
cp -r h5bp-config-stuff/h5bp/* h5bp/
l h5bp
l
letsencrypt certonly -a webroot --webroot-path=/var/www -d jedeswort.com -d www.jedeswort.com
letsencrypt certonly -a webroot --webroot-path=/var/www -d begegnedeinemgott.com -d www.begegnedeinemgott.com
letsencrypt certonly -a webroot --webroot-path=/var/www -d begegnedeinemgott.de -d www.begegnedeinemgott.de
vim h5bp/directive-only/ssl.conf 
cd sites-available/
l
vim ssl-begegnedeinemgott.de
cd ../sites-enabled/
l
ln -s ../sites-available/ssl-begegnedeinemgott.de 
mv ssl-begegnedeinemgott.de 05-ssl-begegnedeinemgott.de 
l
nginx -t
service nginx reload
vim 05-ssl-begegnedeinemgott.de 
nginx -t
service nginx reload
vim 05-ssl-begegnedeinemgott.de 
service nginx reload
vim 05-ssl-begegnedeinemgott.de 
service nginx reload
vim 05-ssl-begegnedeinemgott.de 
service nginx reload
vim 05-ssl-begegnedeinemgott.de 
nginx -t
service nginx reload
vim 05-ssl-begegnedeinemgott.de 
service nginx reload
vim 05-ssl-begegnedeinemgott.de 
cd ..
cd snippets/
.
l
rm ssl-params.conf 
rm vhost-params.conf 
l
vim procy8081.conf
vim proxy8080.conf
mv procy8081.conf proxy8081.conf 
l
..
l
cd sites-enabled/
l
vim 05-ssl-begegnedeinemgott.de 
cd ../h5bp
l
cd directive-only/
l
cd ..
cd location/
l
vim expires.conf 
cd ..
cd ../sites-enabled/
l
vim 05-ssl-begegnedeinemgott.de 
vim ../nginx.conf 
vim 05-ssl-begegnedeinemgott.de 
nginx -t
vim 05-ssl-begegnedeinemgott.de 
vim ../h5bp/directive-only/ssl
vim ../h5bp/directive-only/ssl.conf 
vim 05-ssl-begegnedeinemgott.de 
..
cp sites-available/ssl-begegnedeinemgott.de ~
cd ~
l
mkdir sslscript
mv ssl-begegnedeinemgott.de sslscript/
cd sslscript/
l
cp ssl-begegnedeinemgott.de ssl-pattern
l
vim sslcreate.sh
l
chmod u+x sslcreate.sh 
l
./sslcreate.sh 
l
rm ssl-test.de 
vim sslcreate.sh
./sslcreate.sh 
vim sslcreate.sh
./sslcreate.sh 
vim sslcreate.sh
l
rm ssl-hello.com 
rm ssl-begegnedeinemgott.de 
l
./sslcreate.sh 
vim sslcreate.sh 
clear
./sslcreate.sh 
cd /etc/nginx/sites-enabled/
l
vim 05-ssl-reemedee.com 
cd ~
cd sslscript/
l
vim ssl
vim sslcreate.sh 
./sslcreate.sh 
clear
./sslcreate.sh 
clear
./sslcreate.sh 
vim sslcreate.sh 
./sslcreate.sh 
service nginx reload
cd /etc/nginx/sites-enabled/
l
vim 97-analytics.codethink.de 
l
vim 99-apache-forwarder 
cd /etc/apache2/
l
l conf-available/
wget https://github.com/h5bp/server-configs-apache/archive/master.zip
l
unzip master.zip 
rm master.zip 
l
cd conf-available/
l
mv ../server-configs-apache-master/src/security .
l
mv ../server-configs-apache-master/src/web_performance .
a2enmod expires
a2enmod mime
a2enmod setenvif
a2enmod deflate
a2enmod autoindex
service apache2 restart
l
mv ../server-configs-apache-master/src/media_types/ .
l
mv ../server-configs-apache-master/src/internet_explorer/ .
l
cd ../conf-enabled/
l
ln -s ../conf-available/web_performance/compression.conf 
ln -s ../conf-available/web_performance/etags.conf 
ln -s ../conf-available/web_performance/expires_headers.conf 
service apache2 restart
l
rm etags.conf 
rm compression.conf 
rm expires_headers.conf 
l
service apache2 restart
ln -s ../conf-available/web_performance/compression.conf 
ln -s ../conf-available/web_performance/etags.conf 
ln -s ../conf-available/web_performance/expires_headers.conf 
service apache2 restart
cat security.conf 
rm security.conf 
ln -s ../conf-available/security/content-security-policy.conf .
ln -s ../conf-available/security/file_access.conf 
l
ln -s ../conf-available/security/server_software_information.conf 
vim server_software_information.conf 
service apache2 restart
l
rm content-security-policy.conf 
service apache2 restart
ln -s ../conf-available/security/x-content-type-option.conf 
ln -s ../conf-available/security/x-powered-by.conf 
ln -s ../conf-available/security/x-xss-protection.conf 
service apache2 restart
ln -s ../conf-available/media_types/character_encodings.conf 
ln -s ../conf-available/media_types/media_types.conf 
l
service apache2 restart
cd /etc/nginx/sites-enabled/
l
vim 05-ssl-profecto-consulting.com
l
vim 05-ssl-begegnedeinemgott.de 
vim 05-ssl-jedeswort.com 
vim 05-ssl-profecto-consulting.de 
vim 05-ssl-reemedee.com 
service nginx reload
vim 97-analytics.codethink.de 
vim 98-host1.codethink.de 
vim 99-apache-forwarder 
vim 00-froxlor-standard-subdomains 
nginx -t
service nginx reload 
l
vim 05-ssl-jedeswort.com 
vim 05-ssl-profecto-consulting.com 
vim 05-ssl-profecto-consulting.de
vim 05-ssl-begegnedeinemgott.de 
vim 05-ssl-reemedee.com 
cd ../sites-available/
l
vim ssl-pattern-www 
vim ssl-pattern-no-www 
cd ../sites-enabled/
vim 05-ssl-jedeswort.com 
cd ~/webs/reemedee/reemedee.com/
l
mkdir ioncube
cd ioncube/
dpkg --print-architecture
wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
l
untar
untar ioncube_loaders_lin_x86-64.tar.gz 
l
rm ioncube_loaders_lin_x86-64.tar.gz 
l ioncube/
cd ..
mv ioncube/ ioncube2
mv ioncube2/ioncube .
l
chown reemedee:reemedee -R ioncube
l
rm -r ioncube2
l
cd ioncube/
cat README.txt 
l
cp ioncube_loader_lin_7.0.so /usr/lib/php/20151012
l
vim info.php
cd /etc/php/7.0/fpm/php.ini
vim /etc/php/7.0/fpm/php.ini
systemctl status php7.0-fpm.service
cd ..
l
rm -r ioncube/
cd /etc/nginx/
l
cd sites-enabled/
l
vim 05-ssl-reemedee.com 
cd ..
l
vim nginx.conf 
cd conf.d/
l
cd ..
l
l conf.d/
l modules
l modules/
cd snippets/
l
cd ..
cd sites-enabled/
l
vim 05-ssl-reemedee.com 
cd /etc/apache2/
l
l conf-enabled/
cd conf-enabled/
l
cat x-xss-protection.conf 
rm x-xss-protection.conf 
l
service apache2 reload
cat x-content-type-option.conf 
:q
rm x-content-type-option.conf 
l
cat x-powered-by.conf 
service apache2 reload
cd /etc/nginx/
l
cd sites-enabled/
l
vim 99-apache-forwarder 
vim 98-host1.codethink.de 
vim 97-analytics.codethink.de 
vim 00-froxlor-standard-subdomains 
cd ..
cd snippets/
l
cat proxy808
cat proxy8080.conf 
cd ..
l
cd sites-enabled/
l
cat 05-ssl-reemedee.com 
cd ~/webs/joelmedia/
l
cd joelmediatv.de/
l
rm index.html 
wget https://wordpress.org/latest.tar.gz
untar
vim ~/.bash_aliases 
untar latest.tar.gz 
l
rm latest.tar.gz 
l
cd ..
l
cd word
l
cd joelmediatv.de/
l
chown -R joelmedia:joelmedia wordpress/
l
cd themefiles/
l
ll
l
cd css/
l
cd ..
l
cd ..
l
cd themefiles/
l
cd ..
l
cd themefiles/
l
cd ..
l
chmod -R u+rwX,go+rX,go-w themefiles/
l
cd themefiles/
l
cd ..
l
l script/
l
rsync -avz -e ssh root@5.9.137.73:/mnt/2/root/2017-02-24-jmmsql1.sql.gz .
l
mysql -u joelmediasql1 -p joelmediasql1 < 2017-02-24-jmmsql1.sql.gz
q
l
gunzip 2017-02-24-jmmsql1.sql.gz 
l
mysql -u joelmediasql1 -p joelmediasql1 < 2017-02-24-jmmsql1.sql
cd wordpress/
vim wp-config
vim wp-config.php 
cd wp-content/themes/
l
ln -s ../../../themefiles/ joelmedia
l
cd ../../
..
l
cd wordpress/
l
vim wp-config.php 
cd ..
..
l
cd embed.joelmediatv.de/
l
rm index.html 
cd ..
l
rsync -avz -e ssh root@5.9.137.73:/mnt/2/root/embed.tar.gz .
l
untar embed.
untar embed.tar.gz 
l
cd embed.joelmediatv.de/
l
cd ..
l
chown -R joelmedia:joelmedia embed.joelmediatv.de/
rm embed.tar.gz 
l
cd joelmediatv.de/wordpress/wp-content/uploads/
l
cd ..
l
chmod -R u+rwX,go+rX,go-w uploads/
l
cd uploads/2017/
l
cd ~/webs/joelmedia/
l
cd embed.joelmediatv.de/
l
vim conf.
vim conf.php 
vim embed.php 
cd ..
l
cd joelmediatv.de/
l
cd ..
l
vim index.html 
cd joelmediatv.de/
l
mv .htaccess .htaccess.backup
mv .htaccess.backup .htaccess
cd ..
l
cd ..
l
cd joelmedia/
l
cd joelmediatv.de/
l
chown g+x index.php 
chown u+x index.php 
chmod g+x index.php 
l
chown u+x o+g index.php 
chmod u+x o+g index.php 
chmod u+x,o+g index.php 
l
cd wordpress/
l
cd ..
l
sudo -u www-data cat index.php 
sudo -u www-data cat conf.php 
cd ..
l
cd joelmediatv.de/
l
sudo -u joelmedia vim test.txt
l
cd ..
l
cd reemedee/
l
cd reemedee.com/
l
cd ..
l
cd ..
l
cd joelmedia/
l
cd joelmediatv.de/
l
chmod u-x,g-x,o-x index.php 
k
l
df -h
cd wordpress/wp-content/uploads/
l
cd ..
l
rsync -avz -e ssh root@5.9.137.73:/mnt/2/root/upload.tar.gz .
l
untar upload.tar.gz 
l
chown -R joelmedia:joelmedia uploads
rm upload.tar.gz 
l
cd uploads/
l
cd 201cd ~/webs/joelmedia/embed.joelmediatv.de/
l
cd ~/webs/joelmedia/embed.joelmediatv.de/
l
vim embed.php 
cd inc/
l
vim embed-functions.php 
cd ../static/fp/flash/
l
vim jmplayer-3.2.13.min.js 
cd ../../../../joelmediatv.de/themefiles/
l
vim header.php 
cd ../../embed.joelmediatv.de/
l
cd templates/
l
vim fp6-video.php 
cd ../../
cd embed.joelmediatv.de/
vim embed.php 
cd templates/
vim fp6-video.php 
cd ..
vim embed.php 
cd ..
l
cd joelmediatv.de/
l
cd script/
l
..
l
cd script/
vim livestream-check.php 
..
l
vim conf.php 
cd ~
clear
apt-get install dovecot-core dovecot-imapd dovecot-managesieved dovecot-pop3d dovecot-sieve postfix
groupadd -g 2000 vmail
useradd -u 2000 -g vmail vmail
apt-get install postfix postfix-mysql
mkdir -p /var/spool/postfix/etc/pam.d
mkdir -p /var/spool/postfix/var/run/mysqld
mkdir -p /var/customers/mail/
chown -R 2000:2000 /var/customers/mail/
chmod 0750  /var/customers/mail/
mv "/etc/postfix/main.cf" "/etc/postfix/main.cf.frx.bak"
vim /etc/postfix/main.cf
chmod 0644 "/etc/postfix/main.cf"
chown root:root "/etc/postfix/main.cf"
vim /etc/postfix/mysql-virtual_alias_maps.cf
chmod 0640 "/etc/postfix/mysql-virtual_alias_maps.cf"
chown root:postfix "/etc/postfix/mysql-virtual_alias_maps.cf"
vim /etc/postfix/mysql-virtual_mailbox_domains.cf
chmod 0640 "/etc/postfix/mysql-virtual_mailbox_domains.cf"
chown root:postfix "/etc/postfix/mysql-virtual_mailbox_domains.cf"
vim /etc/postfix/mysql-virtual_mailbox_maps.cf
chmod 0640 "/etc/postfix/mysql-virtual_mailbox_maps.cf"
chown root:postfix "/etc/postfix/mysql-virtual_mailbox_maps.cf"
vim /etc/postfix/mysql-virtual_sender_permissions.cf
chmod 0640 "/etc/postfix/mysql-virtual_sender_permissions.cf"
chown root:postfix "/etc/postfix/mysql-virtual_sender_permissions.cf"
vim /etc/postfix/mysql-virtual_uid_maps.cf
chmod 0640 "/etc/postfix/mysql-virtual_uid_maps.cf"
chown root:postfix "/etc/postfix/mysql-virtual_uid_maps.cf"
vim /etc/postfix/mysql-virtual_gid_maps.cf
chmod 0640 "/etc/postfix/mysql-virtual_gid_maps.cf"
chown root:postfix "/etc/postfix/mysql-virtual_gid_maps.cf"
mv "/etc/aliases" "/etc/aliases.frx.bak"
cat /etc/aliases.frx.bak 
i/etc/aliases
vim /etc/aliases
mv "/etc/postfix/master.cf" "/etc/postfix/master.cf.frx.bak"
vim /etc/postfix/master.cf
chmod 0644 "/etc/postfix/master.cf"
chown root:root "/etc/postfix/master.cf"
newaliases
/etc/init.d/postfix restart
apt-get install dovecot-imapd dovecot-pop3d dovecot-mysql dovecot-managesieved dovecot-sieve
mv "/etc/dovecot/dovecot.conf" "/etc/dovecot/dovecot.conf.frx.bak"
vim /etc/dovecot/dovecot.conf
chmod 0644 "/etc/dovecot/dovecot.conf"
chown root:root "/etc/dovecot/dovecot.conf"
mv "/etc/dovecot/dovecot-sql.conf.ext" "/etc/dovecot/dovecot-sql.conf.ext.frx.bak"
vim /etc/dovecot/dovecot-sql.conf.ext
chmod 0600 "/etc/dovecot/dovecot-sql.conf.ext"
chown root:root "/etc/dovecot/dovecot-sql.conf.ext"
mv "/etc/dovecot/conf.d/10-auth.conf" "/etc/dovecot/conf.d/10-auth.conf.frx.bak"
vim /etc/dovecot/conf.d/10-auth.conf
chmod 0644 "/etc/dovecot/conf.d/10-auth.conf"
chown root:0 "/etc/dovecot/conf.d/10-auth.conf"
mv "/etc/dovecot/conf.d/10-mail.conf" "/etc/dovecot/conf.d/10-mail.conf.frx.bak"
vim /etc/dovecot/conf.d/10-mail.conf
chmod 0644 "/etc/dovecot/conf.d/10-mail.conf"
chown root:0 "/etc/dovecot/conf.d/10-mail.conf"
mv "/etc/dovecot/conf.d/10-master.conf" "/etc/dovecot/conf.d/10-master.conf.frx.bak"
vim /etc/dovecot/conf.d/10-master.conf
chmod 0644 "/etc/dovecot/conf.d/10-master.conf"
chown root:0 "/etc/dovecot/conf.d/10-master.conf"
mv "/etc/dovecot/conf.d/15-lda.conf" "/etc/dovecot/conf.d/15-lda.conf.frx.bak"
vim /etc/dovecot/conf.d/15-lda.conf
chmod 0644 "/etc/dovecot/conf.d/15-lda.conf"
chown root:0 "/etc/dovecot/conf.d/15-lda.conf"
mv "/etc/dovecot/conf.d/20-imap.conf" "/etc/dovecot/conf.d/20-imap.conf.frx.bak"
vim /etc/dovecot/conf.d/20-imap.conf
chmod 0644 "/etc/dovecot/conf.d/20-imap.conf"
chown root:0 "/etc/dovecot/conf.d/20-imap.conf"
mv "/etc/dovecot/conf.d/20-managesieve.conf" "/etc/dovecot/conf.d/20-managesieve.conf.frx.bak"
vim /etc/dovecot/conf.d/20-managesieve.conf
chmod 0644 "/etc/dovecot/conf.d/20-managesieve.conf"
chown root:0 "/etc/dovecot/conf.d/20-managesieve.conf"
mv "/etc/dovecot/conf.d/20-pop3.conf" "/etc/dovecot/conf.d/20-pop3.conf.frx.bak"
vim /etc/dovecot/conf.d/20-pop3.conf
chmod 0644 "/etc/dovecot/conf.d/20-pop3.conf"
chown root:0 "/etc/dovecot/conf.d/20-pop3.conf"
mv "/etc/dovecot/conf.d/90-sieve.conf" "/etc/dovecot/conf.d/90-sieve.conf.frx.bak"
vim /etc/dovecot/conf.d/90-sieve.conf
chmod 0644 "/etc/dovecot/conf.d/90-sieve.conf"
chown root:0 "/etc/dovecot/conf.d/90-sieve.conf"
service dovecot restart 
apt-get install croundcube
apt-get install roundcube
l
cd /etc/roundcube/
l
vim apache.conf 
cd ~
cat /etc/cron.d/froxlor 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
cat ~/.tmux.conf 
cd /etc/cron.d/
l
vim /etc/cron.d/piwik-archive
cat froxlor 
vim /etc/cron.d/piwik-archive
cat piwik-archive 
sudo -u www-data /usr/bin/php7.0 /var/customers/webs/apps/analytics.codethink.de/console core:archive --url=https://analytics.codethink.de > /var/log/piwik/piwik-archive.log
l
cd ../cron.daily/
l
vim logrotate 
cd ~
a2enmod php5
service apache2 restart
nscd --invalidate=group
cd /home/pibackup/backup
l
cd webs
l
a2enmod mod_rewrite
a2enmod rewrite
cat /etc/cron.d/froxlor 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
service apache2 restart
service php7.0-fpm restart
service apache2 restart
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
service php7.0-fpm restart
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
service php7.0-fpm restart
zend_extension = /usr/lib/php/20151012/ioncube_loader_lin_7.0.so
service php7.0-fpm restart
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
cat /etc/cron.d/froxlor 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
which quotatool
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
cd /etc/nginx/
l
cd sites-enabled/
l
cat 98-host1.codethink.de 
cd ../sites-available/
l
cp host1.codethink.de analytics.codethink.de
vim analytics.codethink.de 
vim ssl-jedeswort.com 
mv analytics.codethink.de analytics.codethink.de.2
vim letsencrypt 
cp ssl-jedeswort.com analytics.codethink.de
l
vim analytics.codethink.de
cd ../sites-enabled/
l
ln -s ../sites-available/analytics.codethink.de
l
mv analytics.codethink.de 97-analytics.codethink.de 
l
nginx -t
service nginx reload
cd ../sites-available/
l
cp ssl-jedeswort.com ssl-example
vim ssl-example 
cd ../sites-enabled/
l
vim 97-analytics.codethink.de 
nginx -t
vim 97-analytics.codethink.de 
nginx -t
service nginx reload
cd ~
l
cd webs/apps/analytics.codethink.de/
l
cd tmp/
l
..
l
cd tmp/
l
chmod -r o+x assets/
chmod -r o+x assets
chmod -r o+r assets
chmod o+r assets
l
chmod -R o+r assets
chmod -R o+x assets
l
cd /etc/mysql/
l
vim my.cnf 
cd /var/lib/
l
mysql
cd mysql
l
cd appssql1/
l
cd ..
cd mysql-files/
l
ln -s /var/customers/webs/apps/analytics.codethink.de/tmp/assets/
l
rm assets
cd /etc/mysql/
l
vim my.cnf 
service mysql restart
vim my.cnf 
service mysql restart
vim my.cnf 
service mysql restart
vim my.cnf 
cd ~
pecl install geoip
apt-cache search pecl
pecl install geoip
apt-cache search php7
cd /etc/php/7.0/fpm/conf.d/
l
..
l
..
l
cd mods-available/
l
less geoip.ini 
l ../fpm/conf.d
cd ../fpm/conf.d
l
vim 20-geoip.ini 
service php7.0-fpm reload
cd /etc/nginx/sites-enabled/
l
less 97-analytics.codethink.de 
vim 97-analytics.codethink.de 
service nginx reload
vim 97-analytics.codethink.de 
service nginx reload
cd /etc/mysql/
l
vim my.cnf 
xclip
xsel
pbcopy
vim --version
vim my.cnf 
which php7
which php
cd /usr/bin/
l
l /var/log
cd /etc/apache2/mods-available/
l
apt-get update
apt-cache search php7
cd ../sites-enabled/
l
vim 28_froxlor_normal_vhost_reemedee.host1.codethink.de.conf 
apt-get install php7.0-zip
service php7.0-fpm restart
apt-cache search ioncube
cd ..
l
vim apache2.conf 
service apache2 reload
service apache2 restart
vim apache2.conf 
service apache2 restart
vim apache2.conf 
l mods-enabled/
vim apache2.conf 
service apache2 reload
vim apache2.conf 
service apache2 reload
vim apache2.conf 
apt-get -list
apt-get list
apt-cache search mod_
apt-cache search mod_security
apt-cache search rewrite
apt-cache search libapache
apt-cache search yajl
apt-get install libapache2-mod-security2
locate config.log
updatedb
locate config.log
apt-get install libyajl2
a2dismod security2 
service apache2 restart
cd /var/log/
cd nginx/
l
less error.log
cd /etc/nginx/
l
cd sites-enabled/
l
nginx -t
vim 05-ssl-jedeswort.com 
cd /etc/letsencrypt/live/
l
a2enmod ssl
a2dismod ssl
service apache2 restart
SSLOptions +StdEnvVars
systemctl status apache2.service
cd /etc/nginx/
service nginx reload
nginx -t
cp backup/snippets/ssl-params.conf snippets/
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -V
cd ~
cd sslscript/
l
vim ssl-pattern 
./sslcreate.sh 
l
vim ssl-test123.de
vim ssl-test123.com
mv ssl-test123.com 123.com
rm ssl-test123.de 
l
sed -i -- 's/%DOMAIN%/123.com/g' 123.com 
less 123.com 
./sslcreate.sh 
l
less ssl-hello.com 
sed -i -- "s/%DOMAIN%/123.com/g" 123.com 
rm ssl-hello.com 
rm 123.com 
l
./sslcreate.sh 
less ssl-hello.com 
cp ssl-pattern 
cp ssl-pattern /etc/nginx/sites-available/
cd /etc/nginx/sites-available/
l
cd ../sites-enabled/
l
cd ../sites-available/
l
rm 05-ssl-begegnedeinemgott.de 
l
mv ssl-begegnedeinemgott.de ssl-begegnedeinemgott.de.backup
rm ../sites-enabled/05-ssl-begegnedeinemgott.de 
l
less ssl-begegnedeinemgott.de
l ../sites-enabled/
nginx -t
service nginx reload 
l
nginx -t
service nginx reload
l
vim ssl-profecto-consulting.com 
vim ssl-begegnedeinemgott.de
vim ssl-pattern 
service nginx reload
vim ssl-profecto-consulting.com 
service nginx reload
l
mv ssl-reemedee.com ssl-reemedee.com.backup
l
vim ssl-reemedee.com
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
l
mv ssl-pattern ssl-pattern-www
cp ssl-pattern-www ssl-pattern-no-www 
l
vim ssl-pattern-no-www 
l
less ssl-test123.com 
rm ssl-test123.com 
rm ../sites-enabled/05-ssl-test123.com 
l
clear
l
l ../sites-enabled/
cat analytics.codethink.de
mv analytics.codethink.de analytics.codethink.de.backup
l
rm ssl-analytics.codethink.de 
cd ../sites-enabled/
l
rm 05-ssl-analytics.codethink.de 
cd ../sites-available/
mv analytics.codethink.de.backup analytics.codethink.de
l
l ../sites-enabled/
vim analytics.codethink.de
nginx -t
service nginx reload
clear
l
vim ssl-profecto-consulting.de 
cat ssl-profecto-consulting.com 
nginx -t
service nginx reload
nginx -t
service nginx reload
l ../h5bp
l ../h5bp/location/
cd ../h5bp/location/
l
vim expires.conf 
vim cross-domain-fonts.conf 
vim expires.conf 
cd ../..
cat sites-enabled/05-ssl-profecto-consulting.com 
cat snippets/proxy8080.conf 
nginx -t
service nginx reload
cd sites-enabled/
l
vim 99-apache-forwarder 
service nginx reload
vim 99-apache-forwarder 
service nginx reload
cd ../sites-available/
l
vim ssl-pattern-www 
vim ssl-pattern-no-www 
vim ssl-pattern-www 
l
cd ..
l
cd backup/
l
cat nginx.conf
vim nginx.conf
cd ..
l
vim nginx.conf 
nginx -t
service nginx reload
nginx -t
service nginx reload
l
cd h5bp/
l
cd directive-only/
l
vim cross-domain-insecure.conf 
cd ../directive-only/
cd ..
l
cd location/
l
cd ../directive-only/
cat ssl.conf 
vim ssl.conf 
nginx -t
..
service nginx reload
nginx -t
service nginx reload
nginx -t
service nginx reload
cd directive-only/
vim ssl.conf 
cd ..
service nginx reload
nginx -t
service nginx reload
cd /usr/lib/php/20151012
l
cd ~
service nginx reload
nginx -t
service nginx reload
rsync -avz -e ssh root@5.9.137.73:/mnt/2/root/certs.tar.gz .
l
untar certs.tar.gz 
l
cd froxlor-custom/
l
cd~
cd ~
clear
cd /etc/apache2/
l
cd sites-enabled/
l
cd ~/joelbackup/host/
l
cd etc/apache2/
k
l
vim apache2.conf 
l conf.d/
l sites-enabled/
vim sites-enabled/000-default.conf 
..
l
cd /var/lib/roundcube/
l
tmux
tmux a
tmux
tmux a
reset
tmux a
mysql -u root -p
service --status-all
service postfix restart
cd /var/run/mysqld/mysqld.sock
cd /var/run/mysqld/
l
namei -om /var/run/mysqld/mysqld.sock 
service mysql restart
mysql -u root -p --socket=/var/run/mysqld/mysqld.sock
mysql -u noxx3 -p --socket=/var/run/mysqld/mysqld.sock
man letsencrypt
cd ~/joelbackup/host/etc/
l
vim host
vim hosts
vim hostname 
cd /etc/nginx/sites-enabled/
l
vim 05-ssl-mail.codethink.de 
nginx -t
service nginx reload
cd /var/lib/roundcube/
l
cd ..
l
cd roundcube/
l
namei -om /var/lib/roundcube/
cd ..
l
chown -R apps:apps roundcube/
l
l roundcube/
l
cd roundcube/
l
cd ..
l
chown -R root:root roundcube/
l
tmux a
l
cd /var/www/
l
tmux a
l
cat .bash_aliases 
0;25;41M0;25;41m
reset
cat .bash_aliases 
tmux a
cd /etc/nginx/
cat nginx.conf 
l
cd sites-enabled/
l
cat 98-host1.codethink.de 
cat 97-analytics.codethink.de 
reset
tmux a
l
tmux a
exit
:q
exit
vim .ssh/authorized_keys 
vim /etc/ssh/
vim /etc/ssh/ssh_config 
vim /etc/ssh/sshd_config 
service ssh restart
exit
tmux
tmux a
cd joelhost/usr/local/nginx/
l
cd sbin/
l
cd ..
l
cd ..
rsync -avz --rsh='ssh -p22007'
rsync -avz --rsh='ssh -p22007' /root/joelhost/usr/local/nginx root@host1.joelmediatv.de/usr/local/
rsync -avz --rsh='ssh -p22007' /root/joelhost/usr/local/nginx root@host1.joelmediatv.de:/usr/local/
cd /var/
l
rm -r customers.backup/
cd customers/
l
cd webs/joelmedia/embed.joelmediatv.de/
l
vim conf.php 
vim embed.php 
tmux a
cd sslscript/
l
cat ssl
cat sslcreate.sh 
tmux a
cat /etc/cron.d/froxlor 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
l
cd /etc/nginx/
l
cd sites-enabled/
l
tmux a
l
echo $PATH
l /usr/bin
l
cat /etc/passwd
cat /etc/group
cd /lib/modules/3.16.0-4-amd64/kernel/drivers/
certbot
man certbot
letsencrypt autorenew
letsencrypt renew
tmux a
certbot renew
tmux a
l
tmux a
exit
tmux a
ssh ct1
tmux a
cd /var/www/
l
ls -s /var/lib/roundcube/
ls -s /var/lib/roundcube
l
ln -s /var/lib/roundcube/
l
cd /etc/roundcube/
l
vim config.inc.php 
cd /var/lib/roundcube/
l
vim index.php 
cd /etc/postfix/
l
vim main.cf
vim master.cf
cat mysql-virtual_alias_maps.cf 
l
sed -i 's/localhost/127.0.0.1/g' *.cf
cat mysql-virtual_alias_maps.cf 
l
vim main.cf
service postfix restart
vim main.cf
service postfix reload
vim main.cf
vim master.cf
vim main.cf
service postfix reload
vim main.cf
service postfix reload
cd /etc/php/7.0/fpm/
l
vim php.ini
service php7.0-fpm reload
apt-get install php7.0-intl
apt-get install php7.0-ldap
service php7.0-fpm restart
service apache2 restart
cd /var/customers/webs/apps/mail.codethink.de/
l
cd installer/
l
cd ..
updatedb
locate mime.types
cd config/
l
vim config.inc.php
cd /etc/dovecot/
l
vim dovecot
vim dovecot.conf
cd conf.d/
l
ifconfig
ipconfig
netstat
clear
l
vim 10-ssl.conf 
cp 10-ssl.conf 10-ssl.conf.bak
vim 10-ssl.conf 
vim 20-imap.conf
service dovecot restart
dovecot -n
netstat -tlnp
cd /etc/postfix/
l
cd ..
l
cat /etc/passwd
cat /etc/passwd | grep spam
usermod -a -G debian-spamd spamass-milter
group
groups
groups debian-spamd 
groups spam
groups spamass-milter 
vim /etc/default/spamassassin
mkdir /var/spool/postfix/spamassassin
chown debian-spamd:root /var/spool/postfix/spamassassin/
vim default/spamass
vim default/spamassassin 
spamassassin --lint
chown -R debian-spamd:debian-spamd /var/lib/spamassassin
sa-update
l
cd razor/
l
vim razor-agent.conf 
cd ..
l
mkdir /var/lib/spamassassin/.spamassassin
chown debian-spamd:debian-spamd /var/lib/spamassassin/.spamassassin
cd /var/lib/spamassassin/
l
cd .spamassassin/
l
cd ..
l
pyzor --homedir /var/lib/spamassassin/.pyzor discover
razor-admin -home=/var/lib/spamassassin/.razor -register
razor-admin -home=/var/lib/spamassassin/.razor -create
razor-admin -home=/var/lib/spamassassin/.razor -discover
vim /var/lib/spamassassin/.razor/razor-agent.conf
cd .razor/
l
vim /var/lib/spamassassin/.razor/razor-agent.conf
chown -R debian-spamd:debian-spamd /var/lib/spamassassin
l
cd ..
l
service spamassassin restart && service spamass-milter restart
l
cd .spamassassin/m
cd .spamassassin/
l
cp ~/joelhost/var/lib/spamassassin/.spamassassin/bayes_* .
l
chmod g+r bayes_*
chmod o+r bayes_*
l
chmod g+w,o+w bayes_*
l
chown debian-spamd:debian-spamd bayes_*
l
service spamassassin restart && service spamass-milter restart
cd /etc/
apt-get install opendkim opendkim-tools
cat /etc/passwd
mkdir /etc/opendkim
chown opendkim:opendkim /etc/opendkim
cd /etc/opendkim
l
opendkim-genkey -r -h sha256 -d mail.codethink.de -s mail
l
vim /etc/opendkim/KeyTable
vim SigningTable
vim TrustedHosts
chown -R opendkim:opendkim /etc/opendkim
vim /etc/opendkim.conf
mkdir /var/spool/postfix/opendkim
chown opendkim:root /var/spool/postfix/opendkim
service opendkim restart
usermod -G opendkim postfix
groups opendkim 
groups postfix 
chown -R debian-spamd:debian-spamd /var/lib/spamassassin/.spamassassin
service postfix restart
cd /var/mail/vmail/
apt-get install sieve
cd /var/mail/
l
cd /etc/
l
q
sievec
mkdir /var/mail/vmail/sieve-before
cat passwd | grep vmail
mkdir /var/mail/vmail
mkdir /var/mail/vmail/sieve-before
mkdir /var/mail/vmail/sieve-after
chown -R vmail:vmail /var/mail/vmail/sieve-before
chown -R vmail:vmail /var/mail/vmail/sieve-after
l
cd /var/mail/vmail/sieve-before/
l
cp ~/joelhost/var/mail/vmail/sieve-before/* .
l
vim masterfilter.sieve 
vim masterfilter.svbin 
vim masterfilter.sieve 
sievec yourrulefile.sieve
sievec masterfilter.sieve 
l
chown -R vmail:vmail /var/mail/vmail/sieve-before
l
cd /var/www/
l
rm roundcube
apt-get remove roundcube
apt-get autoremove
mysql -u froxlor -p froxlor -e 'create view panel_dkim_domains as select id,domain from panel_domains where dkim=1;'
mysql -u froxloruser -p froxlor -e 'create view panel_dkim_domains as select id,domain from panel_domains where dkim=1;'
apt-get install libopendbx
apt-get install libopendbx1
apt-get install libopendbx1-mysql
man OpenDBX
man libopendbx1
vim /etc/opendkim.conf
cd /var/customers/webs/apps/mail.codethink.de/
l
cd plugins/
l
cd password/
l
sudo -u apps cp config.inc.php.dist config.inc.php
l
vim config.inc.php
cd ~
cd /var/customers/mail/
l
cd reemedee/
l
cd outpost.center/
l
cd david/
l
cd ..
l
rsync -avz /var/customers/mail/reemedee/outpost.center/ .
l
cd david/
l
rsync -avz /var/customers/mail/reemedee/outpost.center/ .
l
rm -r david/
rm -r sara/
l
rsync -avz /var/customers/mail/reemedee/outpost.center/david/ .
rsync -avz /var/customers/mail/reemedee/outpost.center/david .
l
rm -r david/
l
cd ..
l
rsync -av --size-only /var/customers/mail/reemedee/outpost.center/ .
rsync -av /var/customers/mail/reemedee/outpost.center/david/ david
l
rsync -av /root/joelhost/var/customers/mail/reemedee/outpost.center/ .
cd ..
l
cd ..
l
cd joelmedia/
l
cd joelmediatv.de/
l
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/admin/ admin
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/christopher.kramp/ christopher.kramp
l
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/antje.klemm/ antje.klemm
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/kontakt/ kontakt
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/daniel.knirsch/ daniel.knirsch
l
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/ronny.schreiber/ /var/customers/mail/joelmedia/joelmediatv.de/ronny.schreiber
l
du -h -d 2 .
du -h -d 1 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/daniel.knirsch/ /var/customers/mail/joelmedia/joelmediatv.de/daniel.knirsch
cd ..
..
cd carolin/gesundheitsvilla.net/
l
rsync -av /root/joelhost/var/customers/mail/carolin/gesundheitsvilla.net/carolin.daehmlow/ carolin.daehmlow
rsync -av /root/joelhost/var/customers/mail/carolin/gesundheitsvilla.net/info/ info
rsync -av /root/joelhost/var/customers/mail/carolin/gesundheitsvilla.net/sophie.naumann/ sophie.naumann
rsync -av /root/joelhost/var/customers/mail/carolin/gesundheitsvilla.net/sebastian/ sebastian
l
..
l
mkdir TEMP
cd TEMP/
l
rsync -avz -e ssh root@5.9.137.73:/mnt/2/var/customers/mail/ .
cd ..
rm -r TEMP/
l
cd carolin/
l
cdgesu
cd gesundheitsvilla.net/
l
rsync -av /root/joelhost/var/customers/mail/carolin/gesundheitsvilla.net/carolin.daehmlow/ carolin.daehmlow
..
cd joelmedia/joelmediatv.de/
l
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/admin/ admin
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/christopher.kramp/ christopher.kramp
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/kontakt/ kontakt
..
cd reemedee/outpost.center/
l
rsync -av /root/joelhost/var/customers/mail/reemedee/outpost.center/sara/ sara
cd ..
..
cd jmm/
cd joelmedia/
l
cd joelmediatv.de/admin/Maildir/
l
mkdir .Thomas
l
cd .Thomas/
k
l
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488217590.M634935P963.rescue,S=10391,W=10654 .
l
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488217590.M634935P963.rescue,S=10391,W=10654 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488217975.M229948P1233.rescue,S=10420,W=10683 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488221438.M996114P3831.rescue,S=10392,W=10654 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488221714.M490081P4072.rescue,S=10443,W=10706 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488222187.M343896P4405.rescue,S=10537,W=10800 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488223015.M880172P5015.rescue,S=19062,W=19329 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488224394.M27482P6052.rescue,S=4193,W=4275 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488224417.M9460P6085.rescue,S=9702,W=9923 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488225192.M883877P6655.rescue,S=191296,W=194111 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488225837.M746133P7089.rescue,S=10449,W=10712 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488226998.M876051P7984.rescue,S=10427,W=10690 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488228356.M875420P8953.rescue,S=10405,W=10668 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488229027.M646471P9462.rescue,S=10785,W=11048 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488230713.M1223P10800.rescue,S=10432,W=10695 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488231295.M311755P11222.rescue,S=10755,W=11018 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488265886.M306382P4955.rescue,S=791484,W=801961 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488283540.M704644P20984.rescue,S=10465,W=10728 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488293881.M706951P29382.rescue,S=4854,W=4949 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488294934.M311911P30308.rescue,S=18883,W=19386 .
l
..
l
cd cur/
l
cd ..
l
cd .Hetzner/
l
cd ..
cd .Thomas/
l
mkdir cur
mv ./* cur/
l
cd cur/
l
cd ..
l
rm -r .Thomas/
l
cd .Thomas/
l
cd cur/
l
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488217590.M634935P963.rescue,S=10391,W=10654 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488217975.M229948P1233.rescue,S=10420,W=10683 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488221438.M996114P3831.rescue,S=10392,W=10654 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488221714.M490081P4072.rescue,S=10443,W=10706 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488222187.M343896P4405.rescue,S=10537,W=10800 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488223015.M880172P5015.rescue,S=19062,W=19329 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488224394.M27482P6052.rescue,S=4193,W=4275 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488224417.M9460P6085.rescue,S=9702,W=9923 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488225192.M883877P6655.rescue,S=191296,W=194111 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488225837.M746133P7089.rescue,S=10449,W=10712 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488226998.M876051P7984.rescue,S=10427,W=10690 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488228356.M875420P8953.rescue,S=10405,W=10668 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488229027.M646471P9462.rescue,S=10785,W=11048 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488230713.M1223P10800.rescue,S=10432,W=10695 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488231295.M311755P11222.rescue,S=10755,W=11018 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488265886.M306382P4955.rescue,S=791484,W=801961 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488283540.M704644P20984.rescue,S=10465,W=10728 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488293881.M706951P29382.rescue,S=4854,W=4949 .
rsync -av /root/joelhost/var/customers/mail/jmm/joelmediatv.de/thomas.kasunic/Maildir/new/1488294934.M311911P30308.rescue,S=18883,W=19386 .
l
cd ..
l
cd cur/
l
cd ..
l
rm -r .Thomas/
cd ~
l
cd joelhost/
l
cd ..
l
mkdir joeldb
cd joeldb/
l
rsync -avz -e ssh root@5.9.137.73:/mnt/2/root/dbdump/ .
rsync -avz -e ssh root@5.9.137.73:/mnt/2/root/dbdumps/ .
l
l -h
vim ~/.bash_aliases 
source ~/.bashrc 
l
cd /etc/letsencrypt/
l
cd keys/
l
cd ..
cd archive/
l
cd analytics.codethink.de/
l
cd ..
..
cd /home/lukas/
l
mkdir html
cd html/
l
..
l
chown -R lukas:lukas html/
chown -R lukas:users html/
l
cd html/
l
groups lukas
chmod --help
usermod --help
usermod -a www-data lukas
adduser lukas www-data
groups lukas
l
cd ..
l
vim htmlsync
mv htmlsync htmlsync.bs
mv htmlsync.bs htmlsync.sh
vim htmlsync.sh 
chmod u+x htmlsync.sh 
l
chown lukas:users htmlsync.sh 
l
./htmlsync.sh 
cd ~
l
cd sslscript/
l
cat sslcreate.sh 
cd /etc/nginx/
l
vim nginx.conf 
l snippets/
cd sites-enabled/
l
vim 98-host1.codethink.de 
l
vim 00-froxlor-standard-subdomains 
vim 05-ssl-begegnedeinemgott.de 
cd ..
l
vim nginx.conf 
cd sites-enabled/
l
cd ..
l
l conf.d/
cd sites-enabled/
l
vim 05-ssl-jedeswort.com 
cd ..
cd sites-available/
l
vim ssl-pattern-www 
cd ../sites-enabled/
vim 98-host1.codethink.de
l
vim 99-apache-forwarder 
nginx -t
vim 99-apache-forwarder 
nginx -t
service nginx reload
vim 99-apache-forwarder 
service nginx reload
vim 97-analytics.codethink.de 
cd /etc/cron.d
;
l
cat letsencrypt 
cd ~
l
cd .ssh/
l
ssh-keygen -t rsa -b 4096 -C "root@host1.codethink.de"
l
cd /etc/apache2/
l
vim ports.conf
cd sites-enabled/
l
vim 35_froxlor_normal_vhost_jedeswort.com.conf 
cd ~/joelhost/var/www/
;
l
cd php-fpm/
l
cd jmm/joelmediatv.de/
l
cd
cd /joelhost/var/www/php-fpm/jmm/
cd ~//joelhost/var/www/php-fpm/jmm/
l
cd /var/customers/webs/joelmedia/joelmediatv.de/
l
cd /etc/ssh
l
vim sshd_config 
service ssh reload
cd ~
l
cd .ssh/
l
vim authorized_keys 
cd /var/customers/webs/joelmedia/joelmediatv.de/
l
cd wordpress/wp-content/uploads/
l
service ssh restart
l
rsync -avzn --rsh='ssh -p22007' /var/customers/webs/joelmedia/joelmediatv.de/wordpress/wp-content/uploads/ root@host1.joelmediatv.de:/var/www/joelmediatv.de/wordpress/wp-content/uploads
rsync -avz --rsh='ssh -p22007' /var/customers/webs/joelmedia/joelmediatv.de/wordpress/wp-content/uploads/ root@host1.joelmediatv.de:/var/www/joelmediatv.de/wordpress/wp-content/uploads
...
l
vim sqldump.sh
chmod u+x sqldump.sh 
l
./sqldump.sh 
l
vim sqldump.sh 
rm 2017-03-03-jm.sql.gz 
./sqldump.sh 
vim sqldump.sh 
rm 2017-03-03-jm.sql.gz 
./sqldump.sh 
vim sqldump.sh 
rm 2017-03-03-jm.sql.gz 
./sqldump.sh 
l
mv sqldump.sh sqlsync.sh
mysql -p
l
./sqlsync.sh 
l
cd /etc/nginx/
l
cd sites-enabled/
l
vim 05-ssl-joelmediatv.de 
service nginx reload
vim 05-ssl-joelmediatv.de 
service nginx restart
l
vim 05-ssl-jedeswort.com 
cd /var/customers/webs/carolin/gesundheitsvilla.net/
l
rsync -av /root/joelhost/var/customers/webs/carolin/gesundheitsvilla.net/ .
l
..
l
chown -R carolin:carolin gesundheitsvilla.net
l
cd gesundheitsvilla.net/
l
rm index.html 
l
vim wordpress/wp-config.php 
cd ~/joelhost/etc/ssl/froxlor-custom/
l
cd ..
l
cd certs/
l
..
cd apache2/
l
cd sites-enabled/
l
l | grep gesundheits
...
cd nginx/
l
cd sites-enabled
l
cd ../sites-enabled.backup/
l
..
cd ap
cd apache2/sites-enabled/
l
l | grep gesundheits
vim 35_froxlor_normal_vhost_g
vim 35_froxlor_normal_vhost_gesundheitsvilla.net.conf 
...
..
cd var/customers/webs/
l
cd carolin/
l
cd gesundheitsvilla.net/
l
vim .htaccess 
vim wordpress/wp-config.php 
l
vim /etc/ssl/private/ca-certs.pem;
vim /etc/ssl/certs/
l /etc/ssl/certs/
l /etc/ssl/certs/ca-certificates.crt 
cd ..
..
cd /var/customers/webs/joelmedia/embed.joelmediatv.de/
l
vim conf.php 
vim embed.php 
l
rsync -avz --rsh='ssh -p22007' . root@host1.joelmediatv.de:/var/www/embed.joelmediatv.de
cd /etc/nginx/
l
cd sites-enabled/
l
vim 05-ssl-embed
vim 05-ssl-embed.joelmediatv.de 
l
vim 05-ssl-embed.joelmediatv.de 
vim 05-ssl-embedtemp.joelmediatv.de 
service nginx reload
vim 05-ssl-embedtemp.joelmediatv.de 
service nginx reload
vim 05-ssl-embedtemp.joelmediatv.de 
service nginx reload
vim 05-ssl-temp.joelmediatv.de 
vim /etc/mailname
vim /etc/aliases
sendmail luke.antix@gmail.com
nginx -V
apt-get update
apt-get upgrade
vim /etc/aliases
echo 'this is a test'| mail -s test_email admin@codethink.de
virsh list
man virsh
man virsh-list
man virsh
virsh domiflist vm1
virsh domiflist cth02
virsh attach-interface --domain cth01 --type bridge --source br0 --model virtio --mac 00:50:56:00:C7:7F --config --live
virsh attach-interface --domain cth02 --type bridge --source br0 --model virtio --mac 00:50:56:00:C7:7F --config --live
virsh domiflist cth02
virsh attach-interface --domain cth02 --type bridge --source br0 --model virtio --mac 00:50:56:00:C7:80 --config --live
virsh domiflist cth02
l
..
l
cd snippets/
l
vim proxy8080.conf 
..
vim scgi_params 
vim fastcgi_params 
cd snippets/
l
vim proxy8080.conf 
vim proxy8081.conf 
nginx -t
service nginx restart
..
cd sites-enabled/
l
vim 05-ssl-outpost.center 
nginx -t
vim 05-ssl-outpost.center 
service nginx restart
nginx -t
vim 05-ssl-outpost.center 
service nginx restart
vim ../sites-available/ssl-pattern-no-www 
vim 05-ssl-outpost.center 
service nginx restart
cd ~
apt-get install php7.0-gd
apt-get update
apt-get upgrade
apt-cach search soap
apt-cache search soap
apt-get install php7.0-soap
service php7.0-fpm restart
cd /var/customers/webs/
l
cd reemedee/outpost.center/
k
l
vim info.php
...
cd codethink/files.codethink.de/
l
vim .htaccess
git clone https://github.com/Vestride/fancy-index.git
apt-get install git
git clone https://github.com/Vestride/fancy-index.git
l
chown -R codethink:codethink fancy-index/ .htaccess 
l
vim .htaccess 
cd fancy-index/
l
vim .htaccess 
l
cd ..
l
rm .htaccess 
mv fancy-index/* .
l
l fancy-index/
mv fancy-index/.* .
l
ll
l fancy-index/
l
rm -r fancy-index/
l
git status
mv index.html index.html.bak
vim .htaccess 
;
l
git clone https://github.com/Vestride/fancy-index.git
l
rm after*
rm before*
l
rm footer.html .git .gitignore header.html 
l
rm -r footer.html .git .gitignore header.html 
l
rm style.css script.js LICENSE README.md 
l
rm -r icons/ test/
l
chown -R codethink:codethink fancy-index/
l
mv index.html
mv index.html.bak index.html
vim .htaccess 
..
cd reemedee/
l
cd outpost.center/
find 
find .htaccess
vim .htaccess 
vim event
find event
find . .htaccess
man find
find . -name access
find . -name .htaccess
cat ./wp-content/uploads/wpcf7_captcha/.htaccess
cat ./.htaccess
cat ./wp-content/plugins/zen-mobile-app-native/server/images/.htaccess
find . -name .htaccess
cat ./wp-content/plugins/zen-mobile-app-native/server/images/tails/.htaccess
l
find . -name .htaccess
cat ./wp-content/plugins/wp-piwik/languages/.htaccess
cat ./wp-content/plugins/wp-piwik/logs/.htaccess
cat ./wp-content/plugins/wp-piwik/update/.htaccess
cat ./wp-content/plugins/zen-mobile-app-native/server/views/.htaccess
find . -name .htaccess
l
cd wp-content/
l
cd plugins/
l
rm -R zen-mobile-app-native/
l
cd ~
l
mkdir spam-mails
cd spam-mails/
l
cd ..
l
cd spam-mails/
ls | wc -l
l
cd /etc/apache2/
l
cd sites-enabled/
l
vim 35_froxlor_normal_vhost_waldens
vim 35_froxlor_normal_vhost_waldenses.org.conf 
cd /etc/nginx/
l
cd sites-enabled/
l
cat 05-ssl-profecto-consulting.de 
cd /var/customers/mail/reemedee/outpost.center/david/Maildir/
l
cd .Junk/
l
cd new/
l
cat 1490365641.M181162P27980.cth01-jessie-64\,S\=1660\,W\=1706 
l
..
l
cd cur/
l
..
l
..
l
cd cur/
l
..
cd new/
l
..
l
cd .Trash/
.
l
l new/
l
who
cd /etc/nginx/
l
cd sites-enabled/
l
vim 97-analytics.codethink.de 
vim 05-ssl-reemedee.com 
vim 97-analytics.codethink.de 
nginx -t
service nginx restart
vim 97-analytics.codethink.de 
nginx -t
service nginx restart
vim 97-analytics.codethink.de 
service nginx restart
vim 97-analytics.codethink.de 
service nginx restart
l
vim 97-analytics.codethink.de 
...
cd phpmyadmin/
l
vim apache.conf 
vim config.inc.php 
cd conf.d/
l
..
vim config.inc.php 
cd /etc/nginx/
l
cd sites-enabled/
l
vim 98-host1.codethink.de 
..
l
vim nginx.conf 
cd /etc/php5/apache2/
l
vim php.ini 
service apache2 restart
apt list --installed
apt-get update
apt-get upgrade
python -v
python -V
pip
apt-get install python3
python -V
python3 -V
pip
python pip
cd 
cd ~
apt list --installed | grep python
apt-get install python-pip
apt-cache search python3
apt-cache search pip
pip
pip -V
apt-get install python3-pip
pip -V
pip3 -V
python -V
python3 -V
pip install virtualenv
pip install uwsgi
pip update
pip
apt-get install python-dev
pip install uwsgi
adduser daniel
id daniel
l
cd .ssh/
l
cd /var/customers/webs/daniel/
l
apt-get install postgresql-9.6
apt list --installed | grep postgres
cd /etc/postgresql/9.4/
l
cd main/
l
sudo -u postgres psql
vim postgresql.conf
vim pg_hba.conf 
sudo -u postgres createuser -P -d nutzername 
su daniel
psql
sudo -u postgres psql
su postgres
su daniel
sudo -u postgres createdb -O daniel daniel
su daniel
l
vim pg_hba.conf 
apt-get install git
service postgresql restart
vim pg_hba.conf 
cd /etc/nginx/
l
cd conf.d/
l
..
l
cat uwsgi_params 
l
cd sites-available/
l
vim uwsgi-django.jedeswort.com
vim ssl-pattern-www 
vim uwsgi-django.jedeswort.com
l
vim uwsgi-django.jedeswort.com 
cd ~
l
apt-get install silversearcher-ag
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/rking/ag.vim ~/.vim/bundle/ag.vim
vim .vimrc 
vim .tmux.conf 
vim .vimrc 
exit
cd joelbackup/
l
cd host/
l
cd var/www/html/froxlor/
cd ..
l
..
cd var/customers/webs/apps/mail.
cd var/customers/webs/apps/mail.joelmediatv.de/
l
cd config/
l
vim config.inc.php
l
cd ..
l
vim index.php 
l
..
cd etc/postfix/
l
vim main.cf
cd /etc/letsencrypt/live/
l
cd mail.codethink.de/
l
l ../../archive/mail.codethink.de/
cd ..
l
cd reemedee.com/
l
cd ..
cd archive/
l
cd reemedee.com/
l
find . -type f
find . -type f priv
man find
find --h
find --help
man find
find . -name priv*
find . -name priv
find . -name *
find . -name 'priv*'
cd ..
find . -name 'priv*'
find . -name 'priv*' -exec chmod o-r g-r {} \;
find . -name 'priv*' -exec chmod o-r {} \;
l reemedee.com/
find . -name 'priv*' -exec chmod g-r {} \;
l reemedee.com/
cd ~
l
mv joelbackup/ joelhost
cd joelhost/
mv host/* .
l
rm -r host/
cd etc/postfix/
l
vim master.cf
vim main.cf
l /etc/letsencrypt/live/mail.codethink.de/
cd ..
..
cd var/customers/webs/apps/mail.
cd var/customers/webs/apps/mail.joelmediatv.de/
l
cd config/
l
vim config.inc.php
cp mime.types /var/customers/webs/apps/mail.codethink.de/config/
..
cd etc/dovecot/
vim dovecot.conf
cd conf.d/
vim 10-ssl.conf
vim 20-imap.conf
..
cd etc/postfix/
l
cd ..
l
cd spamassassin/
l
cd ../default/
vim spamassassin 
cd ../razor/
l
vim razor-agent.conf 
cd ../../var/lib/spamassassin/
l
l sa-update-keys/
l .spamassassin/
mkdir /var/lib/spamassassin/.razor
mkdir /var/lib/spamassassin/.pyzor
mkdir /var/lib/spamassassin/.spamassassin
cd .razor/
l
less razor-agent.log 
cat razor-agent.conf 
cd ..
l
l compiled/
l py
l .pyzor/
cd .spamassassin/
l
less bayes_
less bayes_seen 
ls -la
cd ..
..
cd etc/opendkim/
l
vim SigningTable 
vim ../opendkim.conf 
..
cd var/
l
cd mail/vmail/sieve-before/
l
cd ..
l
l sieve-after/
cd sieve-before/
l
cd /etc/opendkim/
l
cat KeyTable 
cat SigningTable 
man opendkim
opendkim -n
chroot /root/joelhost/
cd /var/www/
l
chown -R lukas:users assets/ datenschutzerklaerung/ impressum/ index.html 
l
cd ..
l
cd www/
chown -R www-data:www-data assets/ datenschutzerklaerung/ impressum/ index.html 
l
cd ~
l
cd sslscript/
l
vim sslcreate.sh 
cd /var/www/
l
vim /etc/ssh/sshd_config 
vim ~/.ssh/authorized_keys 
vim /etc/ssh/sshd_config 
cd /var/customers/webs/test/jedeswort.com/
l
..
cd joelmedia/
l
cd embed.joelmediatv.de/
l
vim conf.
vim conf.php 
cd ~/joelhost/var/customers/webs/carolin/gesundheitsvilla.net/
l
cd ~/joeldb/
l
mysql -p -u carolinsql1 carolinsql1 < 2017-02-24-carolinsql1.sql 
cd /etc/nginx/
l
cd sites-enabled/
l
~/sslscript/sslcreate.sh 
nginx -t
service nginx restart
l
vim 05-ssl-joelmediatv.de 
vim 05-ssl-gesundheitsvilla.net 
service nginx -restart
service nginx restart
rm 05-ssl-gesundheitsvilla.net 
service nginx restart
ln -s ../sites-available/ssl-gesundheitsvilla.net 
l
mv ssl-gesundheitsvilla.net 05-ssl-gesundheitsvilla.net 
vim 05-ssl-
vim 05-ssl-gesundheitsvilla.net 
service nginx restart
l
rm 05-ssl-gesundheitsvilla.net 
~/sslscript/sslcreate.sh 
l
vim 05-ssl-gesundheitsvilla.net 
service nginx restart
vim 05-ssl-gesundheitsvilla.net 
service nginx restart
vim 05-ssl-gesundheitsvilla.net 
service nginx restart
nginx -t
vim 05-ssl-gesundheitsvilla.net 
vim ../h5bp/directive-only/ssl-stapling.conf 
service nginx restart
service nginx reload
vim 05-ssl-gesundheitsvilla.net 
rm "/var/customers/webs/apps/analytics.codethink.de/libs/jquery/jquery.smartbanner.js" "/var/customers/webs/apps/analytics.codethink.de/libs/jquery/MIT-LICENSE-smartbanner.txt" "/var/customers/webs/apps/analytics.codethink.de/libs/jquery/stylesheets/jquery.smartbanner.css"
cd ~/joelhost/var/customers/webs/codethink/files.codethink.de/
l
cd hyvecamp/
l
cat .htaccess 
cd /var/www/
l
ll
ls -la
cd .well-known/
l
vim index.html
l
vim index.html
exit
cat /etc/cron.d/froxlor 
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks 1> /dev/null
/usr/bin/php7.0 -q /var/www/froxlor/scripts/froxlor_master_cronjob.php --tasks
exit
cd /var/log/
l
service --status-all
service postfix status
service postfix status -l
service postfix -l status
service -l postfix status
service postfix status
l
cat syslog | grep postfix
vim /etc/postfix/mysql-virtual_alias_maps.cf
postfix -f
man postfix
mailq
man mailq
postsuper
man postsuper
postsuper -d ALL
mailq
l
less mail.log
cat mail.log | grep mysql
service postfix restart
service postfix status
tail mail.err -f
tail mail.warn -f
less mail.log
l
less mail.log
cd nginx/
tail -f error.log
tail -f access.log
reset
cd /var/customers/logs/
l
tail apps-error.log
l /usr/share/
l /usr/share/roundcube/
apt-get install spamass-milter pyzor razor libmail-dkim-perl
cd /etc/
vim default/spamassassin 
cd nginx/
l
cd snippets/
l
cat proxy8080.conf 
cat proxy8081.conf 
cd ../sites-enabled/
l
cat 05-ssl-temp.joelmediatv.de 
cd /var/log
l
less mail.err
opendkim-testkey -d google.com -s 20161025 -vvv
less mail.err
opendkim-testkey -d google.com -s 20161025 -vvv
host -t TXT mail._domainkey.mail.codethink.de
l
less mail.log
opendkim-testkey -d google.com -s 20161025 -vvv
netstat -an
netstat -an | grep 8891
opendkim-testkey -d google.com -s 20161025 -vvv
vim /etc/resolve.conf
opendkim-testkey -d google.com -s 20161025 -vvv
service opendkim restart
opendkim-testkey -d google.com -s 20161025 -vvv
cd ~/joelhost/var/www/php-fpm/
l
cd jmm/joelmediatv.de/
l
...
..
cd etc/php5/fpm/
l
l pool.d/
cd pool.d/
l
vim joelmediatv.de.conf 
cat joelmediatv.de.conf 
cd /var/log/
l
less mail.err
cd ~
cd sslscript/
l
vim sslcreate.sh 
./sslcreate.sh 
cd /var/log
l
less mail.err
less mail.err.1 
less mail.log
tail -f mail.log
l
less mail.log
l
cd nginx/
less error.log
cd ..
less mail.log
cat mail.log | daniel.knirsch
cat mail.log | grep daniel.knirsch
cd nginx/
l
less error.log
cd /etc/spamassassin/
l
vim local.cf 
service spamassassin restart
service spamass-milter restart
cd /var/customers/webs/hodo/nunobiketours.de/
l
cd ~
l
cd sslscript/
l
cat sslcreate.sh 
cd /etc/nginx/sites-available/
l
cat ssl-pattern-www 
cd /var/customers/mail/
l
cd joelmedia/
l
cd joelmediatv.de/admin/Maildir/.Junk/
l
l cur/
l new/
l
l tmp/
rsync -av cur/ /root/spam-mails
...
..
cd kontakt/
cd Maildir/.Junk/
l
l new/
rsync -av cur/ /root/spam-mails
rsync -av new/ /root/spam-mails
...
..
l
cd christopher.kramp/
cd Maildir/.Junk/
l
l cur/
rsync -av new/ /root/spam-mails
rsync -av cur/ /root/spam-mails
cd ~
l
ssh -p 22001 lukas@codethink.dnshome.de
cd /etc/cron.d
l
vim froxlor
cd /var/log
l
cat mail.log | grep woloho
less mail.log
cat mail.log | grep woloho
less mail.log
cat mail.log | grep woloho
l
cat mail.log.1 | grep woloho
less mail.log
l
cd letsencrypt/
l
less letsencrypt.log
letsencrypt renew
cd /etc/letsencrypt/renewal/
l
vim analytics.codethink.de.conf 
service nginx reload
cd /var/www/
l
cd .well-known/
l
cd /etc/nginx/h5bp/location/
l
vim expires.conf 
vim protect-system-files.conf 
service nginx restart
cd ~
dig reemedee.com
dig nunobiketours.de
cd /etc/phpmyadmin/conf.d/
..
l
vim config.inc.php 
cd ../apache2/
cd conf-enabled/
l
vim phpmyadmin.conf 
..
l
vim ports.conf
vim phpmyadmin.conf 
vim conf-enabled/phpmyadmin.conf 
cd /var/lib/phpmyadmin/
l
vim config.inc.php 
cd /etc/phpmyadmin/
l
cat config-db.php 
cd /var/customers/webs/daniel/
l
..
l
rm -R webdaniel/
cd daniel/
l
cd var/
l
cd customers/webs/webdaniel/
l
..
...
man usermod
usermod -d /var/customers/webs/daniel daniel
ps
ps a
ps faux | grep 21004
ps faux
kill -9 21004
usermod -d /var/customers/webs/daniel daniel
ps faux
service php7.0-fpm stop
usermod -d /var/customers/webs/daniel daniel
service php7.0-fpm start
l
su daniel
l
..
l
rm -R var/
su daniel
l
..
l
chown -R daniel:daniel daniel/
l
chmod o-r,o-x daniel/
l
cd daniel/
l
cd ..
l
su daniel
l
cd daniel/
l
cp ~/.bash* .
l
cp ~/.vim* .
l
cp -r ~/.vim .
l
..
l
l apps/
l
chown -R daniel:daniel daniel/
l
cd daniel/
l
su daniel
l
vim .ssh/authorized_keys 
l
cd .ssh/
l
mv authorized_keys authorized_keys
service ssh reload
..
l
id daniel
rm -R var/
l
su daniel
l
man usermod
l
home
echo ~daniel
pwd
..
pwd
echo ~daniel
cd /etc/
vim bash.bashrc 
mv bash.bashrc bash.bashrc.bakup
cp ~/.bashrc bash.bashrc
l
groupmod -g 1002 daniel
id daniel
cat /etc/group
cd /var/customers/webs/daniel/
l
chown -R daniel:daniel test2.jedeswort.com/
l
l var/customers/webs/webdaniel/
rm test2.jedeswort.com/
rm -R var/
l
id daniel
cat /etc/passwd | grep daniel
cat /etc/passwd | grep pibackup
group
groups
groups daniel
usermod -G daniel
usermod -G daniel daniel
groups daniel
id daniel
l
..
chmod -R daniel:daniel daniel/
chown -R daniel:daniel daniel/
l
chmod o-r,o-x apps/
l
chmod o-r,o-x webdaniel/
l
cd daniel/
l
cd test2.jedeswort.com/
l
..
l
cd test2.jedeswort.com/
l
su daniel
apt-get install postgresql-9.4
service --status-all
su - postgres
..
l
cd tes
l
cd test2.jedeswort.com/
l
./uwsgi.sh 
vim test.py 
vim uwsgi.sh 
cd ~
su postgres
cd /var/customers/webs/daniel/
l
cd yofee.com/
l
..
l
crontab -l
su daniel
exit
cd /etc/postfix/
cat main.cf
cd ../dovecot/conf.d/
l
cat 10-ssl.conf
netstat -tlnp
service proftpd status
service proftpd restart
netstat -tlnp
cat /etc/opendkim/SigningTable 
cat /etc/opendkim/mail.txt
vim "v=DKIM1; h=sha256; k=rsa; s=email; "
vim /etc/opendkim/mail.txt
cat /var/mail/vmail/sieve-before/masterfilter.sieve 
cat /etc/opendkim.conf
netstat -tlnp
cd ~
cat .tmux.conf 
cd /etc/nginx/
l
vat nginx.conf 
cat nginx.conf 
cd sites-enabled/
cat 98-host1.codethink.de 
cat ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub 
clear
l
cd ~/joelhost/etc/apache2/
l
cd sites-enabled/
l
cat 35_froxlor_ssl_vhost_joelmediatv.de.conf 
cd /etc/opendkim/
l
cd ..
vim opendkim.conf 
service postfix status
cd apache2/
l
cd sites-enabled/
l
cd /etc/nginx/sites-enabled/
l
cat 05-ssl-temp.joelmediatv.de 
apt-get update
cd /var/log
l
less mail.log
cat mail.log | grep daniel.knirsch
less mail.log
postmap /etc/aliases
vim /etc/aliases
less mail.log
vim /etc/aliases
newaliases
service postfix restart
less mail.log
cat mail.log | grep aliases
l /etc/ | grep aliases
l
apt-get update
cd /etc/apt/sources.list.d/
l
cat dotdeb.list 
vim dotdeb.list 
apt-get update
vim dotdeb.list 
apt-get update
apt-get upgrade
apt-cache serach php7.1
apt-cache find php7.1
apt-cache php7.1
apt-cache
apt-cache search php7.1
apt-cache list python
dpkg
dpkg list
cd /var/lo
cd /var/log
l
less mail.log
cat mail.log | grep test@outpost.center
cat mail.log | grep david@outpost.center
cat mail.log | grep error
cat mail.log | grep Apr 23 19:04
cat mail.log | grep 'Apr 23 19:04'
cat mail.log | grep 'Apr 23 19:0'
less mail.log
exit
service mysqld status
service --status-all
service mysqld start
cd /etc/mysql/
l
vim my.cnf 
cd ~
l
cd sslscript/
l
cat ssl
cat sslcreate.sh 
letsencrypt certonly -a webroot --webroot-path=/var/www -d mail.codethink.de
cd /var/log
less mail.log
clear
cd >
cd ~
telnet mail.demoslice.com 25
apt-get install telnet
telnet mail.demoslice.com 25
telnet mail.codethink.de 25
q
telnet mail.codethink.de 25
vim /etc/hosts
vim /etc/hostname
telnet mail.codethink.de 25
telnet mail.codethink.de 587
openssl s_client -starttls smtp -crlf -connect mail.codethink.de:25
openssl s_client -starttls smtp -crlf -connect 127.0.0.1:587
openssl s_client -starttls smtp -crlf -connect mail.codethink.de:587
telnet mail.codethink.de 110
clear
cd sslscript/
l
./sslcreate.sh 
cd /var/customers/logs/
l
less apps-error.log
cd ../webs/apps/ma
cd ../webs/apps/
l
ll
ln -s /var/lib/roundcube/ mail.codethink.de
l
chown apps:apps mail.codethink.de
l
cd mail.codethink.de
l
cd ..
chown -R root:apps mail.codethink.de
l
chown -R apps:apps mail.codethink.de
l
rm mail.codethink.de
ln -s /usr/share/roundcube/ mail.codethink.de
l
rm mail.codethink.de
mkdir mail.codethink.de
cd mail.codethink.de/
l
wget https://github.com/roundcube/roundcubemail/releases/download/1.2.3/roundcubemail-1.2.3-complete.tar.gz
l
untar roundcubemail-1.2.3-complete.tar.gz 
l
rm roundcubemail-1.2.3-complete.tar.gz 
mv roundcubemail-1.2.3/* .
l
rm -r roundcubemail-1.2.3/
l
cd ..
l
chown -R apps:apps mail.codethink.de/
mysql -u root -p
ps fu --ppid 2 --deselect
man ps
ps fu --ppid 2
vim ~/.bash_aliases 
source ~/.bashrc 
ps
cd 
cd /var/log/
l
tail mail.err
less mail.log
man rsync
l
tail mail.warn
tail mail.err
tail mail.log
less mail.log
cd ~
cd joelhost/
l
cd var/
l
cd ..
rsync -avz -e ssh ~/joelhost/var/ root@host1.joelmediatv.de:/root/joelbackup/var/
rsync -avz --rsh='ssh -p22007' ~/joelhost/var/ root@host1.joelmediatv.de:/root/joelbackup/var/
l ..
rsync -avz --rsh='ssh -p22007' ~/joeldb/ root@host1.joelmediatv.de:/root/joeldb
rsync -avz --rsh='ssh -p22007' ~/joelhost/etc/ root@host1.joelmediatv.de:/root/joelbackup/etc
rsync -avz --rsh='ssh -p22007' ~/joelhost/var/ root@host1.joelmediatv.de:/root/joelbackup/var/
netstat -tlnp
netstat -lnp
netstat -a
netstat -ap
netstat -ap | grep opendkim
netstat -anp
cd /var/log
k
l
cat syslog | milter-reject
cat syslog | grep milter-reject
service dkim-milter status
netstat -nalp | grep dkim-filter
cd /etc/postfix/
l
vim main.cf
service opendkim restart
service postfix restart
vim main.cf
service spamass-milter status
service spamassassin status
service spamass-milter restart
cd /etc/opendkim/
l
vim SigningTable 
vim ../opendkim.conf 
service opendkim restart
cd /etc/nginx/
l
cd sites-enabled/
l
cat 05-ssl-joelmediatv.de 
q
l
cat 05-ssl-temp.joelmediatv.de 
l
vim 05-ssl-temp.joelmediatv.de 
nginx -t
vim 05-ssl-joelmediatv.de 
nginx -t
service nginx reload
cd /var/customers/webs/joelmedia/joelmediatv.de/
l
cd themefiles/
vim header
vim header.php 
cd /var/log
l
cd nginx/
l
less access.log
l
cd ..
l
cd nginx/
l
less error.log
cat error.log | grep gesundheits
cd ..
l
less mail.log
vim mail.cf

less mail.log
cat /etc/mailname
less mail.log
cd /var/customers/webs/reemedee/outpost.center/
l
vim .htaccess 
vim wp-config.php 
cd /etc/postfix/
l
vim main.cf
service postfix restart
vim main.cf
postmap /etc/aliases
cd ~
l
cd sslscript/
l
./sslcreate.sh 
cd /etc/nginx/
l
cd sites-enabled/
l
vim 99-apache-forwarder 
service nginx restart
vim ../h5bp/directive-only/extra-security.conf 
vim 99-apache-forwarder 
service nginx restart
cd ..
vim nginx.conf 
ack
apt-get install ack
apt-get install ack-grep
ack-grep "Frame"
cd sites-enabled/
l
vim 99-apache-forwarder 
service nginx restart
vim 99-apache-forwarder 
service nginx restart
cd /
cd ~
l
l .ssh/
cd /etc/ssh/
l
vim sshd_config 
exit
sendmail luke.antix@gmail.com
cd /etc/postfix/
l
vim main.cf
cd ../spamassassin/
l
vim local.cf 
vim 65_debian.cf 
vim init.pre 
vim sa-compile.pre 
cd sa-update-
cd sa-update-keys/
l
cd ..
l
..
l
which spamass-milter
which spamassassin 
which spamd 
service spamass-milter status
cd postfix/
vim main.cf
cd /open:q
cd /var/spool/postfix/
l
l spamassassin/
l spamass
cd /var/mail/vmail/sieve-before/
l
vim masterfilter.sieve 
sievec masterfilter.sieve 
l
cd..
l
..
l
..
l
dovecot -n
l
cd /etc/dovecot/
l
vim dovecot.conf
cd conf.d/
l
vim 90-sieve.conf
service dovecot restart
dovecot -n
cd /etc/nginx/sites-enabled/
l
vim 05-ssl-temp.joelmediatv.de 
service nginx restart
vim 05-ssl-temp.joelmediatv.de 
service nginx restart
cd ~
virsh edit cth02
cd /etc/apache2/
l
vim apache2.conf 
cd sites-enabled/
l
vim 35_froxlor_normal_vhost_nunobiketours.de.conf 
..
l
cd conf-enabled/
l
vim file_access.conf 
vim acme.conf 
..
ack "Frame"
exit
tmux
tmux a
cd /var/log/nginx/
l
tail -f access.log
tail -f error.log
..
l
tail -f php7.0-fpm.log
cd apache2/
l
less modsec_audit.log.
less modsec_audit.log.1
less error.log
less error.log.1
cd /var/customers/logs/
l
less basista-error.log
less basista-error.log.1
cd /var/log/uwsgi/
l
less emperor.log 
ps
l
..
l
cd uwsgi/
l
chown www-data:adm
chown www-data:adm emperor.log 
l
..
l
ps
l
..
cd sites-available-uwsgi/
l
cp atsyc.de atsyouthcongress.de
l
exit
l
ls -l ../sites-available-uwsgi/atsyouthcongress.de 
l
ln -s ../sites-available-uwsgi/atsyouthcongress.de 
l
mv atsyouthcongress.de 10-uwsgi-atsyouthcongress.de 
exit
tmux a
cat sslscript/sslcreate.sh 
cat /etc/passwd
tmux a
cd /
l
cd var/log/
l
cd postgresql/
l
..
l
tmux a
exit
tmux a
su daniel
l
cd /var/customers/webs/daniel/logs/
l
rm *.log
l
less atsyc.log 
l
less atsyc.log 
l
rm *.log
l
less atsyc.log 
rm atsyc.log 
l
rm yofee.log 
l
su daniel
l
rm atsyc.log 
l
less atsyc.log 
su www-data 
l
groups
su lukas
l
rm *.log
l
less atsyc.log 
l
rm *.log
l
;l
l
..
l
chmod o-r logs/
l
cd /var/www/
l
cd .well-known/
l
cd ~
l
cd sslscript/
l
cat sslcreate.sh 
cd /etc/letsencrypt/live/
l
cd yofee.de/
l
nginx -t
service nginx restart
cd /var/customers/webs/daniel/
cd logs/
l
less yofee.log 
../django-projects/
l
cd ../django-projects/
l
vim vassals-common.ini 
service uwsgi-emperor restart
cd ~
l
nginx -t
service nginx reload
nginx -t
service nginx reload
l
nginx -t
service nginx reload
letsencrypt renew
nginx -t
service nginx reload
letsencrypt renew
nginx -t
service nginx reload
letsencrypt renew
cd /etc/letsencrypt/live/
l
cd /etc/logrotate.d/
l
vim uwsgi 
cd ~/webs/joelmedia/
l
cd joelmediatv.de/
l
cd wordpress/
l
vim wp-config
vim wp-config.php 
cd ~/webs/rabea/rabeakramp.de/
l
rm .htaccess 
l
vim index.php 
...
cd dav
cd daniel/
l
cd nginx-configs/
l
vim yofee.conf 
service nginx reload
nginx -t
vim yofee.conf 
service nginx reload
vim yofee.conf 
service nginx reload
l
vim yofee.conf 
service nginx reload
vim atsyc.conf 
service nginx reload
vim atsyc.conf 
cd /var/log
l
less php7.0-fpm.log
cd apache2/
l
less error.log
cd /var/customers/logs/
l
less basista-error.log
less basista-access.log
cd /var/log/
l
cat mail.log | grep gmx
cd /etc/nginx/
l
cd sites-enabled/
l
vim 05-ssl-infovero.info 
fg
l
vim 05-www.rabeakramp.de 
cd /var/customers/webs/yimc/galerie.yimc.host1.codethink.de/
l
sudo -u yimc git clone https://github.com/electerious/Lychee.git
l
rm index.html 
cd Lychee/
l
..
l
cd galerie.yimc.host1.codethink.de/
l
mv Lychee/* .
l
cd Lychee/
l
..
mv Lychee/.* .
l
l Lychee/
rm -r Lychee/
l
chmod -R 777 uploads/ data/
l
vim index.html 
vim .htaccess 
l
l src/
l dist/
l plugins/
l php/
..
l
vim info.php
l
mv info.php galerie.yimc.host1.codethink.de/
l
rsync galerie.yimc.host1.codethink.de/ yimgalerie.codethink.de
rsync galerie.yimc.host1.codethink.de/ yimgalerie.codethink.de/
rsync -avz galerie.yimc.host1.codethink.de/ yimgalerie.codethink.de
l
cd yimgalerie.codethink.de/
l
..
l
cd yimgalerie.codethink.de/
l
vim info.php 
l
vim index.html 
l
cd uploads/
l
..
l
cd data/
l
..
l
cd uploads/
cd import/
l
vim index.html 
l
..
l
cd import/
l
..
l
..
l
cd uploads/
l
cd import/
l
..
.
..
l
cd uploads/import/
l
..
mv import/* ../yimgalerie.codethink.de/uploads/import/
l
..
l
cd yimc/
l
rm -r uploads/
l
cd yimgalerie.codethink.de/
l
cd uploads/
l
..
l
chmod -R 774 uploads/
l
chmod -R 774 data/
l
chmod -R o+x uploads/
chmod -R o+x data/
l
cd uploads/
l
cd big/
l
chmod 664 ./*.jpg
l
..
l
cd import/
l
..
cd medium/
l
..
cd thumb/
l
chmod 664 ./*.jpeg
l
ll
..
l
..
l
cd data/
l
chmod 664 .-(
chmod 664 ./*
l
chmod 664 ./.*
l
vim config.php 
..
l
cd yimgalerie.codethink.de/
l
chown 754 data/
l
chown yimc data/
chmod 754 data/
l
chmod o+x data/
l
..
l
..
l
cd yimc/
l
chmod 755 yimgalerie.codethink.de/
l
rm -r galerie.yimc.host1.codethink.de/
l
rm -r galerie.yimc.de/
mv yimgalerie.codethink.de/ galerie.yimc.de
l
cd galerie.yimc.de/
l
vim index.html 
vim view.php 
cd php/
l
vim index.php 
..
ack --php 'test'
ack --php 'Albums'
ack --html 'Albums'
ack --html
ack 'Albums'
vim src/scripts/view
vim src/scripts/view.js 
cd src/scripts/
l
..
l
cd galerie.yimc.de/
l
vim view.php 
vim index.html 
l
cd dist/
l
chmod -x main.css 
l
vim main.css 
..
cd .git
vim config 
git s
git status
..
git status
vim ~/.gitconfig
git s
rm info.php 
l
git s
vim .gitignore 
diff data/.gitignore 
diff
git diff
l
git s
git diff dist/main.css
git co --a
git co -a
vim ~/.gitconfig 
git co -a
git push
cat ~/.ssh/id_rsa.pub 
git push
..
l
cd daniel/
l
cd django-projects/
l
vim vassals-common.ini 
ps
ps o pid,group,gid
vim ~/.bashrc 
vim ~/.bash_aliases 
sourced ~/.bashrc 
source ~/.bashrc 
ps
psc
psl
alias ps=ps
ps
ps o gid
ps o pid,group,gid
ps o pid,user,group,gid
ps o pid,user,group,%cpu,%mem
ps o pid,user,group,%cpu,%mem,tty,start,com
ps o pid,user,group,%cpu,%mem,tty,start,comm
ps ax o pid,user,group,%cpu,%mem,tty,start,comm
alias psc='ps ax o pid,user,group,%cpu,%mem,tty,start,com'
psc
ps ax o pid,user,group,%cpu,%mem,tty,start,comm
cat ~/.bash_aliases 
ps fu --ppid 2 --deselect o pid,user,group,%cpu,%mem,tty,start,comm
ps fu --ppid 2 o pid,user,group,%cpu,%mem,tty,start,comm
ps fu o pid,user,group,%cpu,%mem,tty,start,comm
ps f o pid,user,group,%cpu,%mem,tty,start,comm
ps axf o pid,user,group,%cpu,%mem,tty,start,comm
l
vim vassals-common.ini 
service uwsgi-emperor restart
ps
psl
l
vim atsyc_uwsgi.ini 
..
l
cd logs/
l
less atsyc.log
service uwsgi-emperor stop
..
l
less nginx-configs/atsyc.conf 
cd logs/
l
less atsyc.log
groups daniel
service uwsgi-emperor stop
..
l
cd web-files/atsyouthcongress.de/
l
cd media/media/
l
cd event/
l
..
l
..
l
cd media/
l
...
l
cd nginx-configs/
l
sudo -u daniel mkdir sockets
l
vim atsyc.conf 
..
l
cd django-projects/
l
vim atsyc
vim atsyc_uwsgi.ini 
l
..
l
cd nginx-configs/
l
cd sockets/
l
service nginx reload
cd /run/uwsgi/
l
rm daniel-*
l
cd ~/webs/joelmedia/galerie.joelmediatv.de/
l
..
l
chown -R joelmedia:joelmedia galerie.joelmediatv.de/
cd galerie.joelmediatv.de/uploads/import/
l
mkdir test
l
cd test/
l
mkdir test2
..
l
cd import/
l
chown -R joelmedia:joelmedia 
chown -R joelmedia:joelmedia test/
l
cd test/test2/
l
rsync -avz ../../Erde/ .
l
rm Icon 
rm .DS_Store 
l
..
rm -r test/
l
rm -r Dinge-Essen/
l
rm -r Bibel-*
l
ps
ps aux
ps faux
htop
l
rm Dinge-Schmuck/ Erde/ Karten/
rm -r Dinge-Schmuck/ Erde/ Karten/
rm -r Landschaft* Menschen/ Nationen* Natur* Tiere*
l
rm 0r Staedte/
rm -r Staedte/
l
rm -r Wasser*
l
rm -r Weltall/ Zivilisation/
l
rm -r JOSUA\ Camp*
l
ps
source ~/.bashrc 
ps
cat ~/.bash_aliases 
psl
htop
l
rm -r 2017\ Weltengeschichte/
...
..
cd witte/
l
cd waldenses.org/
l
git s
..
cd codethink/lmphilippines.org/
l
..
l
cd lmphilippines.org/
l
rm serve.command 
l
cd /etc/nginx/
cd sites-enabled/
l
vim 05-gesundheitsvilla.net 
letsencrypt -h
letsencrypt renew
cd /var/customers/webs/basista/
l
cd basista-media.com/
l
rm index.html 
l
rsync -av -e ssh ssh-w012ed0e@candor-group.eu:/www/htdocs/w012ed0e/basista-media.com/www/ .
l
rm basista_25.zip 
l
vim web.config.txt 
vim configuration.php 
l
rsync -av -e ssh ssh-w012ed0e@candor-group.eu:/www/htdocs/w012ed0e/basista-media.com/basista-17-05-29.sql .
rsync -av -e ssh ssh-w012ed0e@candor-group.eu:/www/htdocs/w012ed0e/basista-media.com/www/ .
l
rsync -av -e ssh ssh-w012ed0e@candor-group.eu:/www/htdocs/w012ed0e/basista-media.com/www/basista-17-05-29.sql.gz .
rsync -v -e ssh ssh-w012ed0e@candor-group.eu:/www/htdocs/w012ed0e/basista-media.com/www/basista-17-05-29.sql.gz .
rsync -av -e ssh ssh-w012ed0e@candor-group.eu:/www/htdocs/w012ed0e/basista-media.com/www/basista-17-05-29.sqlwedwef .
l
rm -r ./
l
rm -r ./*
l
rm .gitignore .htaccess 
l
rsync -av -e ssh ssh-w012ed0e@candor-group.eu:/www/htdocs/w012ed0e/update.basista-media.com/www/ .
l
mysql -p -u basistasql2 basistasql2 < basista-17-05-29.sql.gz 
l
gunzip basista-17-05-29.sql.gz 
l
mysql -p -u basistasql2 basistasql2 < basista-17-05-29.sql
vim configuration.php 
rm basista-17-05-29.sql 
rsync -av -e ssh ssh-w012ed0e@candor-group.eu:/www/htdocs/w012ed0e/update.basista-media.com/www/ .
mysql -p -u basistasql2 basistasql2 < basista-17-05-29.sql
l
vim configuration.php 
;
l
chmod u+w configuration.php 
l
vim configuration.php 
l
cd administrator/
l
ps
psl
l
..
l
..
l
chown basista:basista basista-media.com/
l
chown -R basista:basista basista-media.com/
cd ../codethink/
l
mkdir deploy
l
cd deploy/
l
mkdir lmphilippines.org
l
cd lmphilippines.org/
..
l
chown -R codethink:codethink deploy/
cd deploy/
l
cd lmphilippines.org/
l
sudo -u codethink git clone https://github.com/lhermann/lmphilippines.git
l
..
l
rm -r lmphilippines.org/
sudo -u codethink git clone https://github.com/lhermann/lmphilippines.git
l
cd lmphilippines/
l
bundler install
bundle install
gem install jekyll bundler
ruby -v
ruby
apt-cache search ruby
apt-cache search ruby-2
apt-cache search ruby2
apt-get install ruby-full
ruby -v
gem
gem install bundler
l
sudo -u codethink bundle install
sudo -u codethink bundle install --path ~/deploy/gems
sudo -u codethink bundle install --path ~codethink/deploy/gems
l
..
k
l
du
dus
duh
cd gems/
l
cd ruby/
l
..
l
cd deploy/
l
cd lmphilippines/
l
sudo -u codethink bundle exec jekyll build
node
l
..
l
apt-cache search node
apt-cache search nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install nodejs
l
cd lmphilippines/
l
node -v
npm -v
sudo -u codethink nam install
sudo -u codethink npm install
sudo -u codethink bundle exec jekyll build
l
..
l
rm -r gems/
rm -r lmphilippines/
l
git clone https://github.com/lhermann/deploy-script.git .
l
vim lmphilippines.config.php
l
..
l
chown -R codethink:codethink deploy/
cd deploy/
l
vim lmphilippines.config.php 
git pull
l
cd inc/
l
vim deploy.php 
l
..
l
git pull
l
git pull --force
git stach
git stash
git pull
l
..
l
chown -R codethink:codethink deploy/
cd deploy/
l
vim lmphilippines.config.php 
cd inc/
l
vim deploy.php 
..
l
vim lmphilippines.config.php 
vim inc/deploy.php 
l
cd lmphilippines.org.repo/
l
..
l
vim inc/deploy.php 
vim lmphilippines.
vim lmphilippines.config.php 
l
rm -r lmphilippines.org.repo/
l
;l
l
cd lmphilippines.org.repo/
l
cd .git/
l
..
l
cd lmphilippines.org.repo/
l
git --git-dir="lmphilippines.org.repo/.git" --work-tree="lmphilippines.org.repo/" describe --always
git --git-dir="lmphilippines.org.repo" --work-tree="lmphilippines.org.repo/" describe --always
git describe
git describe --always
l
..
l
git describe
git describe --always
..
git describe --always 
git --git-dir="deploy" describe --always 
git --git-dir="deploy/.git" describe --always 
git --git-dir="deploy/lmphilippines.org.repo/.git" describe --always 
cd deploy/
git --git-dir="lmphilippines.org.repo/.git" describe --always 
git --git-dir="lmphilippines.org.repo/.git" describe --always
git --git-dir="lmphilippines.org.repo/.git" --work-tree="lmphilippines.org.repo/" describe --always
git --git-dir="lmphilippines.org.repo/.git" --work-tree="lmphilippines.org.repo/" describe --always > lmphilippines.org.repo/VERSION
cd lmphilippines.org.repo/
l
rm VERSION 
..
l
sudo -u codethink git --git-dir="lmphilippines.org.repo/.git" --work-tree="lmphilippines.org.repo/" describe --always > lmphilippines.org.repo/VERSION
cd lmphilippines.org.repo/
l
rm VERSION 
l
..
l
sudo -u codethink git describe --always
sudo -u codethink git --git-dir="lmphilippines.org.repo/.git" --work-tree="lmphilippines.org.repo/" fetch --tags origin master
l
vim inc/deploy.php 
vim lmphilippines.config.php 
vim inc/deploy.php 
rm -r lmphilippines.org.repo/
l
vim inc/deploy.php 
vim lmphilippines.
vim lmphilippines.config.php 
l
ps
psl
cd lmphilippines.org.repo/
l
..
l
vim lmphilippines.
vim lmphilippines.config.php 
cd lmphilippines.org.repo/
l
sudo -u codethink bundle exec jekyll build
..
l
vim lmphilippines.config.php 
cd ..
l
sudo -u codethink vim .bashrc
l
nscd --invalidate=user
id codethink
shell
sudo -u codethink bash
l
chown -R codethink:codethink lmphilippines.org/
l
cat deploy/inc/deploy.php 
l
/etc/init.d/nscd restart
nscd --invalidate=group
su codethink
su basista
l
su codethink
cd deploy
l
git pull
git stash
git pull
l
git s
exit
tmux a
letsencrypt renew
psql -d template1 -c 'CREATE EXTENSION IF NOT EXISTS hstore;'
psql -d yofee -c 'CREATE EXTENSION IF NOT EXISTS hstore;'
su postgres 
tmux a
man ps
ps axjf
ps f
man ps
tmux a
l
tmux a
