# pi-cast-kiosk
Show slideshow on raspberry pi (all versions)

This asume you have a NAS with rsync running where the to display slides are stored. Every n minutes the 'copyslides.sh' will be executed, if there are any new slides the viewer 'feh' will be restarted to refresh teh slides.

# Installation #
Install a pi image to sd card and clone this repositry. 

Install feh viewer by 
	sudo apt-get install feh

## home directory ##

script 'copyslides.sh'
replace password with your password with your NAS

script 'start.sh'


copy the 'helper/slideshow.desktop' to ~/.config/autostart/ this will start the start.sh script on reboot
