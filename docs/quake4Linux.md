# Linux Quake 4 Setup
These instructions give some basic instructions on how to install Quake 4 on Linux.
```
Disclaimer: I've only tested this with Ubuntu 23.04 and Arch Linux but the setup should more or less be the same for other distros.
```

Download the Linux binaries from [here](https://drive.proton.me/urls/7SJAA678RM#p4fEhFelkAFG). These are needed to run the game natively, They are not provided by steam. You can grab the binaries from other places if you would prefer.

## Setup (Arch/Ubuntu)

Run the installer in a terminal, make sure to run with ```sudo```. The installer seems to not have the correct permission to setup the game binaries without sudo permissions.

Go to the game install directory and chown the directory.
```
sudo chown -R USERNAME:USERNAME quake4/
```

Remove the following libraries from the game directory. These conflict with the operating system libraries which can cause the game to not launch: 
```
libgcc_s.so.1 libstdc++.so.6
```

You will also need to create a CD key file. You can just copy your steam key and create a ```quake4key``` and paste the key into the file. You will need to place this file in the q4base folder.

You will need to copy any missing .pk4 files from your retail/steam q4base to the Linux q4base folder. You can do this by just copying all of the additional .pk4 files and skip overwriting the existing ones.

## Ubuntu Additional Setup
Make sure to install the following libraries, without these you will not be able to launch the game.

```bash
sudo apt-get install libsdl1.2debian:i386
# second one installs audio support for ubuntu 23.04+.
sudo apt install pipewire-alsa:i386
```



