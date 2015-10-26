#!/bin/bash

# go to script directory
cd "$( dirname "${BASH_SOURCE[0]}" )"

#install brew formulae
brew install $(cat "brew-formulae.txt")

# install ruby
eval "$(rbenv init -)"
rbenv install 2.1.2
rbenv global 2.1.2
rbenv rehash

# install gems
gem install bundler
rbenv rehash
bundle install
rbenv rehash

# install node & atom packages
npm install -g $(cat "node-packages.txt")
apm install --packages-file "atom-packages.txt"
