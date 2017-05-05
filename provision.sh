#!/bin/bash
echo '|========== Updating ==========|'
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties

echo '|========== Installing Git ==========|'
sudo apt-get install -y git
echo '|========== Installing Sublime ==========|'
sudo apt-get install -y sublime-text-installer
echo '|========== Installing Atom ==========|'
sudo apt-get install -y atom
echo '|========== Installing VLC Media Player ==========|'
sudo apt-get install -y vlc
echo '|========== Installing NVM ==========|'
# download nvm
git clone https://github.com/creationix/nvm.git ~/.nvm
cd ~/.nvm
git checkout `git describe --abbrev=0 --tags`
# set variables
export NVM_DIR="/home/dave/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# update .bashrc
cat << 'END' >> ~/.bashrc
# nvm settings:
export NVM_DIR="/home/dave/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
END
# install node/npm
nvm install stable
# install npm packages
echo '|========== Installing Gulp ==========|'
npm install -g gulp
echo '|========== Installing Nodemon ==========|'
npm install -g nodemon
echo '|========== Installing Angular CLI ==========|'
npm install -g @angular/cli
echo '|========== Installing VS Code ==========|'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code
echo '|========== Installing Chrome ==========|'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
echo '|========== Installing PHP7 ==========|'
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.1
echo '|========== Installing Composer ==========|'
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
echo '|========== Moving Composer to bin ==========|'
sudo mv composer.phar /usr/local/bin/composer
sudo chmod 755 /usr/local/bin/composer
echo '|========== Installing Laravel Installer ==========|'
composer global require "laravel/installer"
echo '|========== Installing Spotify ==========|'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
echo '|========== Installing Gimp ==========|'
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install gimp
echo '|========== Installing BleachBit ==========|'
sudo apt-get install -y bleachbit
echo '|========== Installing Minetest ==========|'
sudo apt-get install -y minetest
sudo apt-get autoremove
echo '|========== Installing Googler ==========|'
sudo curl -o /usr/local/bin/googler https://raw.githubusercontent.com/jarun/googler/v3.1/googler && sudo chmod +x /usr/local/bin/googler
sudo googler -u
echo '|========== Installing Unrar Free ==========|'
sudo apt-get install unrar-free
