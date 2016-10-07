# App Academy Dotfiles

This is the one repo you need to set up your Macbook for App Academy. It
combines configuration files and installation scripts to automate the
setup process and make your life easier. (If you do not have a Macbook,
see the note on [other operating systems](#other-operating-systems).)

We've selected some simple configuration settings that will get you set
up and ready to develop. You can tweak these as you learn more and
develop your own configuration preferences.

If for whatever reason you prefer to do your configuration manually,
just read through the [requirements](./requirements) and
[dotfiles](./dot), making the corresponding changes on your machine.

If you run into trouble, don't worry. Our instructors will be around on
the first day to help you with any issues you may have.

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
Gems and Node packages, and some Atom packages. If you are having
trouble with the script below, follow [these
instructions](./requirements) to manually get things set up.

```
~/.dotfiles/bin/install_requirements
```

### Install the configuration files.

This will copy over all the configuration files, including those for
Bash and JavaScript linting.

**Warning:** If you have existing configuration files, this will
overwrite them. When you run this script, it will probably prompt you
about this. When it does, be sure to look over the files in question. If
you want to save them, copy them into a separate file or folder and then
run the script again.

```
~/.dotfiles/bin/install_dotfiles
```

## That's it!

You're done! No more installation required.

## Troubleshooting

If you've installed the dotfiles and you're still having some issues
with your environment, check out our [troubleshooting
docs](./troubleshooting.md).

## Other Operating Systems

This repository is created for machines running **Mac OSX**. Note that
we do not technically support other operating systems, but many students
have succeeded in the course using Linux.

### Linux

If you have a Linux machine, setup will be largely the same, but
you'll need to adapt the requirements and dotfiles for your specific
flavor (e.g. you can't use Homebrew, so you'll have to find those
packages using apt, yum, pacman, wget, etc).

This means that you will not be able to run the requirements install
script. Instead, read through the [requirements](./requirements) docs
and make those changes manually. You can still use the dotfiles install
script, but you may have to tweak the config files after you do.

### Windows

You can install Ruby, MySQL, Node, and all our other dependencies in
Windows, but be forewarned: **this can be a massive headache**. The
packages and installation instructions may be very different, and if you
run into any problems, you're totally on your own. Our instructors are
trained on Macs and the Windows architecture is just too different for
us to be able to help you debug issues.

Instead, we suggest installing Ubuntu Linux alongside Windows in a
[dual-boot setup][dual-boot]. If the thought of partitioning your hard
drive makes you queasy, don't worry. The Ubuntu installer will walk you
through it. Just be sure to back everything up first. If you still don't
like that idea, there are other ways to install Ubuntu on a Windows
machine, but they not as performant. Feel free to Google it.

[dual-boot]: https://help.ubuntu.com/community/WindowsDualBoot

### None

If you do not have your own machine, no problem. We have enough here
that you can use one of our Mac Minis during the course and the job
search. Note that these stay in the office, so you won't be able to do
any of your coding homework from home.
