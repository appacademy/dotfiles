# Using Linux for App Academy

Linux is a family of operating systems that are open-source and free to install. There are many versions of Linux available for use, but for the purpose of development and ease of use, we will be installing Ubuntu Linux. This is generally considered to be very stable and makes a huge swath of packages readily available to us. This means we can install dev tools and apps directly from the console without having to manually install them.

## Setup

### Create a USB install drive

1. Download the mountable Ubuntu iso file
  * Get it here: [Ubuntu Official Download Page](https://www.ubuntu.com/download/desktop)
  * ***NB:*** If you are installing from the device you plan to install Linux on, the Ubuntu download page will be able to figure out the device's system architecture (32-bit vs 64-bit) for you, otherwise you will need to:
    1. Figure out whether the device you plan on installing Linux on has a 32 or 64-bit processor.
    2. Go here: [Ubuntu Releases](releases.ubuntu.com) and select the latest version that has 'LTS' (this is a stable version) at the end. Download the .iso file for your architecture (32-bit == i386, 64-bit == amd64).
2. Install on a USB stick.
  * [From a Windows machine](https://www.ubuntu.com/download/desktop/create-a-usb-stick-on-windows)
  * [From a Mac](https://www.ubuntu.com/download/desktop/create-a-usb-stick-on-mac-osx)
3. Hooray! You should now have a bootable Linux drive.

### Prepare your device for Linux

I will assume here that everyone consulting this guide is:

1. Installing Linux on a Windows machine
2. Either installing Linux alongside (dual-booting) or overwriting their Windows installation

Those who choose to just use Linux can skip the next section. It will deal with partitioning your Windows drive to create space for a parallel Linux installation.

#### Dual-boot prep

Before we start it should be mentioned that although Ubuntu provides an option to install alongside another operating system, it does not guarantee a perfect installation. Things can always go wrong when messing with boot drives, so just to be safe it is recommended to **backup any important data or files from your Windows machine**. I would recommend just copying them to another USB drive or on cloud storage like Dropbox or Google Drive.

After you've backed up anything important, continue with the following steps in Windows. These will shrink your `C:` drive to make space for Linux.

Also, check out [this](http://www.tecmint.com/install-ubuntu-16-04-alongside-with-windows-10-or-8-in-dual-boot/) guide for helpful screenshots and a more detailed description of the process.

1. Open the 'Disk Management' disk utility. This is easily done by right-clicking the 'Start' menu and selecting 'Disk Management'. If on an older system consult [this](https://support.wdc.com/knowledgebase/answer.aspx?ID=1284#win) guide.
2. Find and right-click on your `C:` drive. Select 'Shrink Partition'.
3. Shrink your drive by at least 25000MB (roughly 25GB). This will ensure that Ubuntu not only has enough room to install, but also creates a large enough swapfile (used when dealing with a lot of memory) and has enough room to to store other applications and files. When finished click 'Shrink'.
4. There should now be a black, 'Unallocated' partition next to your `C:` drive. This is where Ubuntu will be installed.

## Install

OK, now for the fun/scary part. What we will be do here is go into our computer's BIOS boot menu and changing our boot device to our Ubuntu USB drive. This will enable us to boot into Ubuntu and complete our installation.

Another note. I would *very strongly* recommend doing your installation where you have access to another computer. If anything does not go according to plan, being able to Google the errors your encounter is going to help a lot.

1. Shut down your computer.
2. Enter your [BIOS](https://en.wikipedia.org/wiki/BIOS). This is done right when your computer begins to boot. So power on your machine. You should see a brief splash screen with the computer manufacturer or something other than the Windows logo. At exactly this moment you *hopefully* will see something like 'Press [key] to enter BIOS'. Hit that key. You should be greeted your BIOS settings interface. Sadly, on some machines there are no hints. Take look at this [list of common BIOS keys by PC manufacturer](http://www.makeuseof.com/tag/enter-bios-computer/) to find what works for you. It may take a couple iterations of power on/power off, but persevere.
3. BIOS interfaces vary wildly by motherboard manufacturer. But you should see something regarding 'Boot' or 'Boot Order'. Go there. If you have trouble navigating your BIOS try searching for 'change boot order [PC manufacturer]', someone has likely hit the same issue.
4. Once at the Boot settings, we should see a list of drives titled 'Boot Order'. This is the order in which you machine will search drives for bootable installations (meaning if the first fails, it will check the second and so on). Change the first device to be your bootable Ubuntu USB drive.
5. Exit the BIOS and confirm to save your changes.
6. Restart your machine. It should boot up into the GRUB boot loader.
7. Follow the [Installing Ubuntu Desktop](https://www.ubuntu.com/download/desktop/install-ubuntu-desktop) instructions to complete your installation.
    * **NB**: If you are dual booting, make sure to select 'Install Ubuntu alongside Windows X'.

*For the dual-booters, Linux will install the GRUB boot loader on top of your Windows boot loader. In a nutshell, this allows you to select which operating system you want to boot into each time you restart your computer. There is no need to go into the boot menu and change your boot order each time.*

You should now have a working Linux installation on your machine. Woot!

## Setting up the development environment

In general, Linux uses BASH as its terminal scripting language, so everything should feel pretty familiar. Before we get started setting up our development environment, let me introduce you to your new package manager, APT. APT works very similarly to OSX's 'brew' package manager for installation, removal and upgrading packages. Here are a couple of the most common APT commands:

```bash
$ sudo apt-get install <package-name> # install a package
$ sudo apt-get remove <package-name> # remove a package
$ sudo apt-get update # updates package lists
```

In linux, installing most development-related packages requires administrator permissions, so `sudo` will prefix most of our commands.

Before we install any dev packages let's install [Google Chrome](https://www.google.com/chrome/) and [Atom](https://atom.io/). Download the .deb files available from the download pages and double click to install. This should open a install dialogue.

Once you have all this set up, you should be ready to [download and run the dotfiles scripts](./README.md#using-the-dotfiles-repo).

Good luck!
