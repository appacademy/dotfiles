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

The following scripts will work if your operating system is based on
Darwin (the Mac OS) or Debian (Ubuntu is Debian). If you are running a
different UNIX flavor, you may have to follow the [manual install
instructions](./requirements) and set up your `.bashrc` yourself.

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

If you have a Linux machine, setup will be largely the same but slightly
more involved. Take a look at [Linux Development
Setup](./linux.md#setting-up-the-development-environment) for
instructions.

### Windows

You can install Ruby, MySQL, Node, and all our other dependencies in
Windows, but be forewarned: **this can be a massive headache**. The
packages and installation instructions may be very different, and if you
run into any problems, you're totally on your own. Our instructors are
trained on Macs and the Windows architecture is just too different for
us to be able to help you debug issues.

Instead, we suggest installing Ubuntu Linux for use on your personal
machine. Linux can be installed over Windows (overwriting your Windows
install) or alongside in a dual-boot setup. You can find a full tutorial
for both install and development setup [here](./linux.md).

**Warning:** This setup can take some time and can potentially corrupt
your Windows installation. Make sure to read all instructions before
proceeding.

### None

If you do not have your own machine, no problem. We have enough here
that you can use one of our Mac Minis during the course and the job
search. Note that these stay in the office, so you won't be able to do
any of your coding homework from home.
