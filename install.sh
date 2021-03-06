sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update -y

sudo apt-get install php7.0-curl php7.0-cli php7.0-dev php7.0-gd php7.0-intl php7.0-mcrypt php7.0-json php7.0-mysql php7.0-opcache php7.0-bcmath php7.0-mbstring php7.0-soap php7.0-xml php7.0-zip -y

sudo mv /etc/apache2/envvars /etc/apache2/envvars.bak
sudo apt-get remove libapache2-mod-php5 -y
sudo apt-get install libapache2-mod-php7.0 -y
sudo cp /etc/apache2/envvars.bak /etc/apache2/envvars

rm hello-world.php php.ini README.md

composer global require 'laravel/installer'
export PATH=~/.composer/vendor/bin:$PATH

composer create-project laravel/laravel project

#laravel new project
mv ./project/* ./
mv ./project/.* ./
rm -rf project

sudo sed -i 's/workspace/workspace\/public/g' /etc/apache2/sites-enabled/001-cloud9.conf

mysql-ctl install
Y
phpmyadmin-ctl install

npm install
npm rebuild node-sass

