# Pairing Station Dotfiles and Setup

## Configuration

### Chrome
* Set up an App Academy Student user (no email)
* Extensions:
    * [App Academy Chrome Extension][chrome-extension]
    * JSONView
    * Markdown Reader

[chrome-extension]: https://github.com/appacademy/app-academy-chrome-tab

### Dotfiles
* Clone this repo to `~/.dotfiles`
* Run `~/dotfiles/install.sh`

### Editor
* Atom
    * rails, ruby scss bundles; themes; sources, YAML, Ruby Sass, RSpec, bundle
    * set 2 spaces instead of tabs
    * [Linter-JSHint](https://atom.io/packages/linter-jshint)
    * [Rubocop](https://atom.io/packages/linter-rubocop) (Test it. Rubocop historically has had errors.)

### iTerm
* set as default program to open shell scripts
    * navigate to ~/.dotfiles, find `update_dotfiles`
    * right click, **Get Info**, choose "Open with: iTerm"
    * click **Change All**
* Settings > Profiles > General
    * Reuse previous session's directory

### Startup Items
* System Preferences < Users & Groups < Login Items
    * `~/.dotfiles/update_dotfiles`
    * `~/Documents/app-academy-chrome-tab/update_chrome_tab`

### General/System Preferences
* Scroll direction
* Fast key repeat/low delay
* Map caps lock to control
* Dock items:
    * Finder
    * Chrome
    * Atom
    * iTerm2
* Icons in finder
    * Set default to open home folder
* Meta key in terminal (color, terminal size)
* Slack/Hipchat

### Command Line Installs
```
# install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Homebrew installs
brew install git
brew install phantomjs
brew install rbenv
brew install qt
brew install vim

# Ruby setup
rbenv install 2.1.2
rbenv global 2.1.2
rbenv rehash
gem install bundler
cd ~/.dotfiles/setup
bundle install

# Other
brew install imagemagick
```

* xcode 6.1
    * command line utils `xcode-select --install`
    * brew install gcc48
* [NVM](https://github.com/creationix/nvm), then latest Node 10.0
* Install global Node modules:
    * jshint
    * nodemon
    * node-inspector
* [postgres.app](http://postgresapp.com/)
* mysql

## Cloning
* http://superuser.com/questions/192518/image-copy-mac-drive-how-to-do-this
    * Works for *firewire* or *lightning*, not *ethernet* you dope.
    * Hold "t" (lower-case) for clonee computer
    * Hold "CMD-r" for cloner
    * Go in to disk utility on the cloner
    * Using the utility, delete all partitions on clonee, and create new partitions.
        * Make Macintosh HD 300 GB
        * Make both partitions Journaled, case-sensitive
    * Use the disk copy utility to copy over both partitions, one at a time.
