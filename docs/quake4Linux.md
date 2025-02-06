# Linux Quake 4 Setup
I've created these instructions to hopefully help with installing the native Linux binaries so that the SDK can be used on Linux. If you have linux users you can point them to this doc to help them install the game.
Disclaimer: I've only tested this with Ubuntu 23.04 but the setup should more or less be the same for other Linux based OS.

Download the Linux binaries from [here](https://drive.proton.me/urls/7SJAA678RM#p4fEhFelkAFG). These are needed to run the game natively, They are not provided by steam. You can grab the binaries from other places if you would prefer. 

Just run the installer in a terminal, make sure to run with sudo. The installer seems to fall over otherwise. I had to later chown the game install to actually be able to start the game so make sure to do this as well after the game is done installing.

Remove the following libraries: libgcc_s.so.1 and libstdc++.so.6

I would recommend you install the following libraries in the latest Ubuntu version.

```bash
sudo apt-get install libsdl1.2debian:i386
# second one installs audio support for ubuntu 23.04+.
sudo apt install pipewire-alsa:i386
```

You will also need to create a CD key file. You can just copy your steam key and create a “quake4key” and paste the key into the file. You will need to place this file in the q4base folder.

You will need to copy any missing .pk4 files from your retail/steam q4base to the Linux q4base folder.

