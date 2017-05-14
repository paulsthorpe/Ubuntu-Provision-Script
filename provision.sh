#!/bin/bash
echo '|========== Updating ==========|'
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y software-properties-common
sudo apt-get install -y python-software-properties
sudo apt-get install -y curl
#VSCode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
#Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#PHP
sudo add-apt-repository ppa:ondrej/php
#Gimp
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
#Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
#Sublime Text
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
echo '|========== Installing Git ==========|'
sudo apt-get install -y git
git config --global user.name "Paul Thorpe"
git config --global user.email paulsthorpe@gmail.com
echo '|========== Installing Sublime ==========|'
sudo apt-get install -y sublime-text-installer
echo '|========== Installing Atom ==========|'
sudo apt-get install -y atom
echo '|========== Installing VLC Media Player ==========|'
sudo apt-get install -y vlc
echo '|========== Installing NodeJS ==========|'
# download node
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
# install node/npm
sudo apt-get install -y nodejs
# fix node permissons
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile
# install npm packages
echo '|========== Installing Gulp ==========|'
npm install -g gulp
echo '|========== Installing Nodemon ==========|'
npm install -g nodemon
echo '|========== Installing Angular CLI ==========|'
npm install -g @angular/cli
echo '|========== Installing VS Code ==========|'
sudo apt-get install -y code
echo '|========== Installing Chrome ==========|'
sudo apt-get install -y google-chrome-stable
echo '|========== Installing PHP7 ==========|'
sudo apt-get install -y php7.1
echo '|========== Installing Composer ==========|'
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
echo '|========== Moving Composer to bin ==========|'
sudo chmod 755 /usr/local/bin/composer
echo '|========== Installing Laravel Installer ==========|'
composer global require "laravel/installer"
echo '|========== Installing Spotify ==========|'
sudo apt-get install -y spotify-client
echo '|========== Installing Gimp ==========|'
sudo apt-get install -y gimp
echo '|========== Installing BleachBit ==========|'
sudo apt-get install -y bleachbit
echo '|========== Installing Minetest ==========|'
sudo apt-get install -y minetest
sudo apt-get autoremove -y
echo '|========== Installing Googler ==========|'
sudo curl -o /usr/local/bin/googler https://raw.githubusercontent.com/jarun/googler/v3.1/googler && sudo chmod +x /usr/local/bin/googler
sudo googler -u
echo '|========== Installing Unrar Free ==========|'
sudo apt-get install -y unrar-free
