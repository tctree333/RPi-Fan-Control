# RPi-Fan-Control
Controls GPIO 18 on the Raspberry Pi.

# Setup
SSH into your Pi or open a new Terminal Window.
Clone the GitHub Repository.
```
git clone https://github.com/tctree333/RPi-Fan-Control.git
```
Make the fan.sh file executable.
```
cd RPi-Fan-Control
chmod +x fan.sh
```
Connect a fan to GPIO pin 18 directly, or through a relay if it needs more power. 

# Test
To test if it works, run `./RPi-Fan-Control/fan.sh` in the home directory.
It should print something like:
```
temp=32.7'C
Fan Is Off
```

# Alias
Since typing out `./RPi-Fan-Control/fan.sh` is a bit long, make an alias.
Edit the `.bashrc` or `.bash_aliases` file to make the alias.
```
cd ~
#Replace .bashrc with .bash_aliases if you have that file.
sudo nano .bashrc
```
At the bottom of the file, type:
```
alias fan='~/./RPi-Fan-Control/fan.sh'
```
Reboot your Pi.

For more info about aliases and the .bashrc/.bash_aliases files, check out this link:
https://www.raspberrypi.org/documentation/linux/usage/bashrc.md
