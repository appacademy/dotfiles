# Pairing Station Dotfiles and Setup

## Configuration

### Chrome
* Set up an App Academy Student user (no email)
* Extensions:
    * [App Academy Chrome Extension][chrome-extension]
    * JSONView
    * Markdown Reader
    * React Dev Tools

[chrome-extension]: https://github.com/appacademy/app-academy-chrome-tab

### Dotfiles
* Clone this repo to `~/.dotfiles`
* Run `~/dotfiles/install.sh`

### Editor
* Atom
    * rails, ruby scss bundles; themes; sources, YAML, Ruby Sass, RSpec, bundle
* Install atom packages

  ```
  $  apm install --packages-file atom-packages.txt
  ```

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
    * `Applications/Postgres.app`

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

# Necessary Homebrew installs
brew install git
brew install rbenv
brew install phantomjs
brew install qt
brew install bash

# Ruby setup
rbenv install 2.1.2
rbenv global 2.1.2
rbenv rehash
gem install bundler
cd ~/.dotfiles/setup
bundle install

# Other handy Brew formulae
brew install vim
brew install ag
brew install imagemagick
```

* xcode 6.1
    * command line utils `xcode-select --install`
    * brew install gcc48
* [NVM](https://github.com/creationix/nvm), then latest Node 10.0
* Install global Node modules:
    * jshint
    * nodemon
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

## Restoring from backup
Restore all computers from "Backup" partition before W1D1.

* Boot up the computer and hold "Cmd + R" to get to Disk Utility.
* Click on the "Backup" partition. Navigate to the "Restore" tab.
* Drag the "Mac OS X" partition into the section to be overwritten.
* Click OK (or whatever it's called) to start the backup. This will take
  a little while.
* Both partitions will now be named "Backup". Need to rename one "Mac OS X".
    * Assign Startup Disk to one of the partitions and restart.
    * In Finder, find "Backup" and rename to "Mac OS X".
    * Restart computer and go to disk utility again. Reassign Startup Disk
      to the partition now named "Mac OS X"
