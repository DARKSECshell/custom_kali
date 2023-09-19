#!/bin/bash
# DEVLOPER DARKSEC
# HELLO THIS SCRIPT IS FOR MAKE A CUSTOM FROM YOUR BOOT ANIMATION AND FROM YOUR GRUB WALLPAPER, THANKS FOR USING MY TOOL :)

# make diretory for install all tools, more configs
mkdir red_loader
mv auxiliary/red_loader.plymouth red_loader
mv auxiliary/red_loader.script red_loader
cd red_loader && cp * ../auxiliary
cd ..
sleep 2
mkdir wallpaper
mkdir backup
# INTERACTIVE WITH USER
echo "|==+RUNNING WITH ROOT+==|"
echo "ENGLISH   |*-- HELLO GUYS, THIS TOOL IS FOR HELP YOU WITH A CHANGED IN BOOT ANIMATION AND THE WALLPAPER GRUB--|*"
echo "PORTUGUÊS |*--OLÁ GALERA ESTÁ FERRAMENTA É PARA AJUDAR VOCÊS A ALTERAR O BOOT ANIMATION E O WALLPAPER DO GRUB--|* "
				echo "|only works on debian|"
echo "|===================================================|"
echo " 1) BOOT ANIMATION"
echo " 2) GRUB WALLPAPER"
echo "|===================================================|"
read choice
case $choice in

"1")


#OPTION 1, BOOT ANIMATION!
	echo "------------"
	echo "UPDATE..."
	echo "------------"


# UPDATE AND INSTALL
apt install plymouth && apt install plymouth-x11

	echo "---------------------------------------------------------------"
	echo "PUT YOUR GIF, URL ALL, EXAMPLE: https://darksec.com/hacking.gif"
	echo "---------------------------------------------------------------"
read boot_animation

# CHANGE DIRETORY
cd red_loader
wget -q $boot_animation
sleep 10


# CONVERT FOR WORKING, ACTION FROM USER!
convert * progress-%d.png

# REMOVING THE OLD GIF
	echo "REMOVING THE OLD GIF..."
rm -rf *.gif
rm -rf darksec

#SEND DIRETORY FOR /USR/SHARE/PLYMOUTH/THEMES
cd ..
mv red_loader /usr/share/plymouth/themes



#START PLYMOUTH
	echo "===================="
	echo "STARTING, NO EXIT!"
	echo "===================="
	echo "INICIANDO, NÃO SAIA!"
	echo "===================="
sleep 2
plymouth-set-default-theme -R red_loader
sleep 13
	echo "READY, LOOK YOUR BOOT ANIMATION IN 3 SEGUNDS:"
	echo "1 SEGUNDS"
sleep 1
	echo "2 SEGUNDS"
sleep 1
	echo "3 SEGUNDS"
sleep 1

	echo "THANKS FOR USING, NOW RESTART YOUR PC :)"
exit

;;

"2")


#OPTION 2, GRUB WALLPAPER!
        echo "UPDATE..."


# UPDATE AND INSTALL
apt install plymouth && apt install plymouth-x11



#=======BACKUP WARNING=======
	echo "-----------------------------------------------------"
	echo "MAKE A BACKUP DO GRUB THEME.TXT IN DIRETORY -> backup"
	echo "-----------------------------------------------------"
cp -r /boot/grub/themes/kali/theme.txt backup
sleep 3



# CHOICE PICTURE
	echo  "-------------------------------------------------------------------------------"
	echo "PUT YOUR PICTURE, URL ALL, EXAMPLE: https://darksec.com/hacking.png, USE PNG PLS"
	echo "--------------------------------------------------------------------------------"
read grub_picture


# ENTER IN DIRETORY
cd wallpaper && wget -q $grub_picture

# NANO WITH THEME.TXT
	echo "-------------------------------"
	cat *
	echo "-------------------------------"
	echo "* |put the name of this photo on the second 2 line of the file: open nano wait 15 segunds| after change use o commands : CTRL + C AND CTRL + X AND FINISH Y."
sleep 15
nano /boot/grub/themes/kali/theme.txt
sleep 2
cp *png *jpg /boot/grub/
cp *png *jpg /boot/grub/themes/kali/

#UPDATE GRUB
update-grub


# WARNING AND RESTART MACHINE
	echo "------------------------------------------------------------------------------------------------------------------------------"
	echo "Now let's update GRUB, and ready your machine will be restarted, if you do not want to CTRL + C, you have 20 seconds to do it."
	echo "------------------------------------------------------------------------------------------------------------------------------"
sleep 20
reboot
esac
