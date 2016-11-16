## Git
sudo apt-get install git -y
git config --global color.ui true
git config --global user.name "your name here"
git config --global user.email your_email_here

## Atom
sudo dpkg -i atom-amd64.deb
sudo apt-get install -f

## Node
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm i -g webpack -y

## Ruby & rails

### install dependencies
sudo apt-get update -y
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev -y libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev imagemagick -y
sudo apt-get update -y

## mySQL
sudo apt-get install mysql-server mysql-client libmysqlclient-dev -y

## Postgresql
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-common -y
sudo apt-get install postgresql-9.5 libpq-dev -y

### install rbenv
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

### install ruby
rbenv install -v 2.3.1
rbenv global 2.3.1

### install bundler to manage dependencies
gem install bundler

### install rails
gem install rails
rbenv rehash
