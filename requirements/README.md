# Machine setup

If you haven't already, clone the Dotfiles repo on the appacademy github. Navigate to the requirements directory in the dotfiles repo.
Run this to set up the requirements_dir variable.

```
requirements_dir = $( pwd )
```

### Installing Homebrew

To install homebrew (a package manager) run command

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

If you already have homebrew installed, update homebrew with

```
brew update
```

### Installing Brew Formulae

Run the following commands:

```
brew install git
```

This will install Git, a version control tool

```
brew install heroku
```

This will install heroku, a tool for pushing code to a web hosting platform

```
brew install qt
```

This will install qt, a development framework.

```
brew install rbenv
```

This will install rbenv, a tool for managing ruby versions

### Installing Git Completion
Git completion is an autocomplete tool for git branches and commands.  This step is optional, though you will have to delete the Git completion line from your bashrc file if you decide skip this section. To install Git completion run

```
git_url="https://raw.githubusercontent.com/git/git/master/contrib/completion"
curl "$git_url/git-completion.bash" > "$HOME/.git-completion.bash"
curl "$git_url/git-prompt.sh" > "$HOME/.git-prompt.sh"
```

### Uninstall RVM
RVM is a ruby version manager, but since we will be using rbenv, we can uninstall RVM. Run command

```
which rvm
```

If no directory for RVM is displayed, then you are done.  If RVM's location is displayed then RVM is installed. To uninstall run

```
rvm implode
```

### Installing Ruby

Run

```
rbenv init -
rbenv global
```

If the version is 2.3.1 then you have the correct version.  If the version is incorrect, run

```
brew upgrade rbenv ruby-build
rbenv install 2.3.1
rbenv global 2.3.1
rbenv rehash
```

### Installing Ruby Libraries
To install the necessary ruby libraries run

```
rm Gemfile.lock > /dev/null
gem install bundler
rbenv rehash
bundle install
rbenv rehash
```

### Install NVM

NVM is the version manager for Javascript.  To get NVM installed run

```
NVM_DIR=$HOME/.nvm
```

cd $NVM_DIR. If there is already a directory, then you already have nvm installed. If the nvm directory is not there run

```
git clone https://github.com/creationix/nvm.git $NVM_DIR
cd $NVM_DIR
git checkout `git describe --abbrev=0 --tag`  
```

Notice that the git command uses backticks and not quotes

### Activating NVM

to activate NVM run these commands

```
cd $NVM_DIR
source nvm.sh
cd $requirements_dir
```

### Installing Node

Node.js is an open-source, cross-platform runtime environment for developing server-side Web applications. To get Node installed run

```
nvm ls 6.10.0
```

If 6.10.0 is displayed then you have Node installed.  If Node is not installed, run

```
nvm install 6.10.0
nvm alias default 6.10.0
```

### Installing Node Packages

Make sure you are in the requirements directory and run the following command

```
npm install -g $(cat "node-packages.txt")
```

### Installing Atom Packages

Atom is the text editor that is used here at App academy. Atom packages
are plugins for the Atom text editor. Take a look through the atom
packages available by opening atom, clicking Atom => preferences =>
packages.

To install the necessary Atom packages for this course run

```
apm install --packages-files "atom-packages.txt"
```
