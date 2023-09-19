# custom_kali
# Custom Boot Animation and GRUB Wallpaper Changer

Welcome to the Custom Boot Animation and GRUB Wallpaper Changer! This tool allows you to personalize your Linux system by customizing the boot animation and GRUB bootloader wallpaper. Developed by **DEVLOPER DARKSEC**, this script simplifies the process of making your Linux system uniquely yours.

## How it Works

### Boot Animation Customization
- **Step 1: Preparation**
  - The script creates the necessary directories and moves essential files to them for smoother operation.

- **Step 2: Interact with the User**
  - The script provides an interactive menu for the user to choose between boot animation customization and GRUB wallpaper customization.

- **Step 3: Boot Animation Customization**
  - If the user selects the boot animation customization option, they are prompted to enter the URL of their desired GIF or image.
  - The script downloads the selected file, converts it to the required format, and removes the previous boot animation.
  - The customized boot animation is placed in the appropriate directory for use.

- **Step 4: Enjoy the New Boot Animation**
  - The script sets the customized boot animation as the default theme.
  - The user is presented with a countdown, and the new boot animation is displayed upon reboot.

### GRUB Wallpaper Customization
- **Step 1: Preparation**
  - The script ensures that the necessary tools are installed for GRUB customization.

- **Step 2: Interact with the User**
  - If the user selects the GRUB wallpaper customization option, they are presented with instructions and a reminder to back up the existing GRUB theme configuration.

- **Step 3: GRUB Wallpaper Customization**
  - The user enters the URL of their preferred image.
  - The script downloads the image and guides the user through editing the GRUB theme configuration file using the Nano text editor.
  - The new wallpaper is copied to the appropriate locations.

- **Step 4: Update GRUB and Restart**
  - The script updates the GRUB configuration to apply the changes.
  - The user is informed that the machine will be restarted to showcase the new GRUB wallpaper.

## Usage
1. Clone this repository to your Linux system.
2. Run the script with root privileges: `sudo ./custom-boot-grub.sh`.
3. Follow the on-screen instructions to customize your boot animation and GRUB wallpaper.

Thank you for using this tool to make your Linux experience more personal! Enjoy your customized boot animation and GRUB wallpaper.
