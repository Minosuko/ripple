sudo apt-get update
sudo apt-get install nginx
sudo apt -y install php7.4
sudo apt-get install -y php7.4-cli php7.4-json php7.4-common php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath php7.4-fpm
sudo apt install gcc make autoconf libc-dev pkg-config libmcrypt-dev php-pear php-dev
pecl channel-update pecl.php.net
pecl update-channels
pecl install mcrypt
sudo systemctyl reload php-fpm
sudo systemctyl reload nginx
sudo apt-get install python3
pip install flask
pip install tornado
pip install pymysql
pip install psutil
pip install bcrypt
