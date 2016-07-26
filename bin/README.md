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

### Installing brew formulae

Run the following commands:
```
brew install ag
```
This will install a code searching tool

```
brew install git
```
This will install git, a version control tool

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

### Installing git complete
Git complete is an autocomplete tool for git branches and commands.  To install git complete run
```
git_url="https://raw.githubusercontent.com/git/git/master/contrib/completion"
curl "$git_url/git-completion.bash" > "$HOME/.git-completion.bash"
curl "$git_url/git-prompt.sh" > "$HOME/.git-prompt.sh"
```

### Uninstall rvm
rvm is a ruby version manager, but since we will be using rbenv, we can uninstall rvm. Run command
```
which rvm
```
If rvm is installed, then run
```
rvm implode
```

### Installing ruby
run
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


### Installing ruby libraries
To install the necessary ruby libraries run
```
rm Gemfile.lock > /dev/null
gem install bundler
rbenv rehash
bundle install
rbenv rehash
```

### Install nvm
Nvm is the version manager for Javascript.  To get nvm installed run
```
NVM_DIR = $HOME/.nvm
```
cd $NVM_DIR. If there is already a directory, then you already have nvm installed. If the nvm directory is not there run
```
git clone https://github.com/creationix/nvm.git $NVM_DIR
cd $NVM_DIR
git checkout `git describe --abbrev=0 --tag`  
```
Notice that the git command uses backticks and not quotes

### Activating nvm
to activate nvm run these commands
```
cd $NVM_DIR
source nvm.sh
cd $requirements_dir
```

### Installing node
Node.js is an open-source, cross-platform runtime environment for developing server-side Web applications. To get node installed run
```
nvm ls 6.2.1
```
if 6.2.1 is displayed then you have node installed.  If node is not installed, run
```
nvm install 6.2.1
nvm alias default 6.2.1
```

### Installing node packages
Make sure you are in the requirements directory and run the following command
```
npm install -g $(cat "node-packages.txt")
```

### Installing atom packages
Atom is the text editor that is used here at App academy. To install the necessary atom packages run
```
apm install --packages-files "atom-packages.txt"
```

# Bashrc
.bashrc is a shell script that Bash runs whenever it is started.  You can put any command into this script file that you can type into the command prompt. People mainly put commands in this file to set up a particular environment or to customize things to your preferences.  You can manually run the bashrc file provided by app academy by navigating to dotfiles/dot running command:
```
source ./bashrc
```


# Atom Packages
Atom packages are plugins for the Atom text editor.  Many of these plugins help with finding syntax errors or set development preferences, such as using the VIM commands.  Take a look through the atom packages available by opening atom, clicking Atom => preferences => packages .
