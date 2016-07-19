# App Academy Dotfiles

This is the one repo you need to set up your Mac for App Academy. It
combines configuration files and installation scripts to automate the setup process and make your life easier.

We've selected some simple configuration settings that will get you set
up and ready to develop. You can tweak these as you learn more and
develop your own configuration preferences.

## Preparing your machine for Dotfiles.

You'll need to follow a few steps before you can use the install scripts
in this repo. Some of these require you to use a terminal. Copy the
given code and paste it in to run these steps.

### Install the Xcode Command Line tools.

1. Make sure that Xcode is installed and updated in the App Store.
2. Install the tools

  ```
  xcode-select --install
  ```

### Change ownership of `/usr/local`.

This will allow you to manage Homebrew and its packages without the use
of `sudo`. Some packages do not behave well if you do not do this.

```
sudo chown -R "$USER" /usr/local
```

### Install Postgres App.

This is the PostgreSQL server we'll be using. Download it
[here](http://postgresapp.com/).

Once it's been installed, open it up. You'll need to click through the
dialog warning you about the dangers of internet downloads.

### Install Atom Text Editor (optional).

This is the text editor we use at App Academy. The dotfiles installer
will install our suite of packages and configuration for Atom, but only
if you've already installed it.

You can download it [here](https://atom.io/).

Open it up and click through the dialog like you did with Postgres.

## Using the Dotfiles repo.

### Download Dotfiles.

```
cd ~
git clone https://github.com/appacademy/dotfiles.git .dotfiles
```

### Install the requirements.

This will install all the requirements, including Ruby and Node, various
Gems and Node packages, and some Atom packages. If you are having trouble with the script below, follow [these instructions](https://github.com/jordvnkm/dotfiles/tree/consolidation/bin) to manually get things set up.

```
~/.dotfiles/bin/install_requirements
```

### Install the configuration files.

This will copy over all the configuration files, including Bash and
linting for JavaScript files.

```
~/.dotfiles/bin/install_dotfiles
```

## That's it!

You're done! No more installation required.
