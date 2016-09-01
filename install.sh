echo "deb http://download.atmark-techno.com/debian/ wheezy main contrib non-free" >> /etc/apt/sources.list
gpg --keyserver pgp.mit.edu --recv-keys 3874DA771B351757
gpg --armor --export 3874DA771B351757 | apt-key add -
apt-get update

#for Armadillo-400 Series
apt-get install -y a420-development-environment
apt-get install -y gcc-arm-linux-gnueabi
apt-get install -y g++-arm-linux-gnueabi
apt-get install -y libjpeg8-dev-armel-cross
apt-get install -y libacl1-dev-armel-cross
apt-get install -y libglib2.0-dev
apt-get install -y picocom
#tftp
apt-get install -y tftpd-hpa
mkdir -p /var/lib/tftpboot
chmod 777 /var/lib/tftpboot
echo 'echo TFTP_USERNAME="tftp"
TFTP_DIRECTORY="/var/lib/tftpboot"
TFTP_ADDRESS="0.0.0.0:69"
TFTP_OPTIONS="--secure"' >> /etc/default/tftpd-hpa
service tftpd-hpa restart

#for japanese Environment
apt-get install -y task-japanese
echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen
sudo locale-gen
sudo update-locale LANG=ja_JP.UTF-8


