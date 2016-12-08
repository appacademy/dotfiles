printf "\n\n====> Linux Development Setup <===="
printf "\nEach group of packages wl be install one at a time. Follow the prompts to continue.\n"
read -p "Press enter to continue"
clear

# Updates package lists
sudo apt-get update
# Updates packages to newest version
sudo apt-get upgrade

printf "\n\n====> Package upgrade complete <====\n"
read -p "Press enter to continue"
clear

## Git
sudo apt-get install git
git config --global color.ui true
git config --global user.name "your name here"
git config --global user.email your_email_here

printf "\n\n====> Git install complete <====\n"
read -p "Press enter to continue"
clear

## Node
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs
sudo apt-get install npm
sudo npm i -g webpack # installs webpack globally

printf "\n\n====> git install complete <====\n"
read -p "Press enter to continue"
clear

## Dependencies
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
sudo apt-get update

printf "\n\n====> Node + Webpack install complete <====\n"
read -p "Press enter to continue"
clear

## Postgresql

sudo apt-get install postgresql postgresql-contrib
# creates admin role in psql for current user
sudo -u postgres createuser "$USER" -s

printf "\n\n====> Postgresql install complete <====\n"
read -p "Press enter to continue"
clear

## Rbenv

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

printf "\n\n====> Rbenv install complete <====\n"
read -p "Press enter to continue"
clear

## Ruby
rbenv install 2.3.1
rbenv global 2.3.1
rbenv rehash

### install bundler to manage dependencies
gem install bundler
rbenv rehash

printf "\n\n====> Ruby + Bundler install complete <====\n"
read -p "Press enter to continue"
clear

## Rails
gem install rails
rbenv rehash

printf "\n\n====> Rails install complete <====\n"
read -p "Done installing. Press enter to continue"
clear
