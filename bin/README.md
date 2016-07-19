# Machine setup

If you haven't already, clone the Dotfiles repo on the appacademy github. Navigate to the requirements directory in the dotfiles repo.

  ```
  requirements_dir = $( pwd )
  ```

### installing Homebrew

To install homebrew (a package manager) run command
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

If you already have homebrew installed, update homebrew with

```
brew update
```

### installing brew formulae

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
