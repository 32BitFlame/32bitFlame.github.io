Privacy, as I've stated in the past is now hard to come by but the easiest way to retain your anonymity on the web
is with TailsOS.
# 0. What is TailsOS
TailsOS is a fork of debian which redirects all network traffic through Tor relays. 
## Tor Relays
Tor relays are are hosted through schools and universities like
Boston University and often activist groups  and other non-educational organizations.
You can find many of these on [torservers.net](https://torservers.net)
There are three main types of relays which tor traffic is redirected through the first of which being
Middle Relays. Middle relays are where the connections first go. The tor wiki describes these as requiring "minimal maintenance efforts" but also "a dynamic IP address or multiple static IPs"
Exit relays are the exit point of a tor circuit. You can find many of these on [torservers.net](https://torservers.net)
There are also bridges which are not listed on any directory as too not be traced. They only require one ip and can be hosted by almost anyone.
All of the couple for the truest private internet access currently obtainable.
# 1. Installing Qemu
Qemu is free to install and can be found at [Qemu's official site](https://www.qemu.org).
Simply click download at the top right of the screen and follow the instructions.
# Getting the TailsOS iso
https://tails.boum.org/install/dvd-download/index.en.html
Go to the above link and click "Download tails 4.7 ISO"
Move the installed file to a directory you can recognize.
# Generating system image
Now on windows you will need to be in the program directory.
The following command will create an image in your current directory.
```
qemu-img create -f qcow2 tails.img 15G
```
These parameters are pretty self explanatory.
qcow2 is the format for the image and 15G is 15 gigabytes the amount of maximum storage this will use. Its important to note
that this storage is not reserved so if there is not space left in the drive it is stored on it will not write.
tails.img is the file name
# Creating a script to access easier
Now create a bash or bat script depending on what system you use.
If you're on windows make sure to navigate to your install directory.
Create a file called run.sh on linux or run.bat on windows.
it should read:
```
qemu-system-x86_64 -m 4096 -boot d -net nic -net user -smp {CORE_COUNT} -vga cirrus -hda tails.img -cdrom {PATH_TO_YOUR_ISO}
```
Replace {PATH_TO_YOUR_ISO} with its path and {CORE_COUNT} with the amount of cores you wish to dedicate to the VM.
Note: You may need to configure the permissions to run this or run as administrator/root.

This will start an instance of qemu with an x86 machine with 4096 mb (4 gb) 
The `-boot d` will change the machines boot order so that the cdrom device is first on the list.
The `-net nic -net user` sets up an emulated ethernet
`-smp {CORE_COUNT}` will tell qemu how many cores you want.
`-hda tails.img` Uses the `tails.img` image we created as a hard drive.
`-cdrom` tells qemu to create a cdrom device with the iso listed
`-vga cirrus` tells qemu to use the cirrus graphics driver

On Windows copy and paste a shortcut to this on your desktop.
On Linux provided you used an absolute path you can simply move the bash script wherever or simply create a desktop entry for it.

Its important to know that this may take sometime to start up but that's the price of privacy.
