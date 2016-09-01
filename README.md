# cui atde5

debian wheezyをベースにAtmark Technoのリポジトリを追加したatde5相当の機能を提供するVagrantfileです。
Armadillo-400シリーズの開発環境が入っています。
また、ホームディレクトリ以下にatmark-distとlinux kernelのファイルが配置されています。

## how to use

    $ sudo apt-get install vagrant
    $ vagrant plugin install vagrant-vbguest
    $ cd cui_atde5
    $ vagrant up
    $ vagrant ssh

