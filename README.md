# App Academy Pairing Station Dotfiles and Setup

## Configuration

### Chrome
* Set so that old tabs open
* Extensions:
    * App Academy extension?
    * JSON Formatter
    * Markdown Reader
    * Postman
    * W3Schools Hider

### Dotfiles
* Download appacademy dotfiles
    * clone to ~/.dotfiles
    * setup update_dotfiles to be a login item

### Editor
* atom
    * rails, ruby scss bundles; themes; sources, YAML, Ruby Sass, RSpec, bundle
    * set 2 spaces instead of tabs
    * [Linter-JSHint](https://atom.io/packages/linter-jshint)
    * [Rubocop](https://atom.io/packages/linter-rubocop)

### General/System Preferences
* scroll direction
* fast key repeat/low delay
* Dock items:
    * Finder
    * Chrome
    * Atom
    * iTerm2
* icons in finder
    * also set default to open home folder
* meta key in terminal (color, terminal size)
* Hipchat (native, not AIR)
* sources bundle

### Command Line Installs
* xcode 6.1
    * command line utils `xcode-select --install`
    * port install gcc48
* macports
* rbenv based on instructions: https://github.com/appacademy/meta/blob/master/setup/ruby.md
    * `gem install bundler`
    * cd to `dotfiles/setup` and run `bundle install`
* [NVM](https://github.com/creationix/nvm), then latest Node 10.0
* Install global Node modules:
    * jshint
    * nodemon
    * node-inspector
* [postgres.app](http://postgresapp.com/)
* mysql
* imagemagick (port install imagemagick)

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
