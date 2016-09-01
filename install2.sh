cd

wget -q http://armadillo.atmark-techno.com/files/downloads/dist/atmark-dist-20160830.tar.gz
wget -q http://armadillo.atmark-techno.com/files/downloads/kernel-source/linux-3.14-at/linux-3.14-at7.tar.gz
ls

tar zxf atmark-dist-20160830.tar.gz
tar zxf linux-3.14-at7.tar.gz
ls

ln -s atmark-dist-20160830 atmark-dist
ls -l atmark-dist

cd atmark-dist
ln -s ../linux-3.14-at7 linux-3.x
ls -l linux-3.x

cp /vagrant/login_message $HOME/.login_message
echo 'cat $HOME/.login_message' >> $HOME/.bashrc
