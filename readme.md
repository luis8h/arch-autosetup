
## install arch

#### default
-   [video](https://www.youtube.com/watch?v=8YE1LlTxfMQ&t=319s)
-   [video for wifi on laptop](https://www.youtube.com/watch?v=3czrHtFHteY)
-   [video for manual disk partitioning + grub bootloader installatino after arch install](https://www.youtube.com/watch?v=4dKzYmhcGEU)
    * if there is an error or efi type is not showing up, maybe the partition/disk is not in gpt format. [this guide](https://recoverit.wondershare.com/partition-tips/convert-mbr-to-gpt-linux.html) shows how to change this. Change the disk, but also change each required partition to gpt.
-   [video from dreams of code](https://www.youtube.com/watch?v=YC7NMbl4goo&t=637s)
-   use `archinstall` script
-   configure `mirrors`, `hostname`, `user account`, `root password`, `audio server`, `network configuration`, `timezone`
-   install gnome display manager: `pacman -S gnome`
-   reboot: `exit` and `shutdown -h now`
-   enable gnome display manager: `sudo systemctl enable gdm.service`
-   start display manager: `sudo sytemctl start gdm.service` or reboot if it does not work
-   open settings and manually set alternate characters key to `right ctrl` and compose key to `right alt`

#### dual boot with disk encryption

## notes
-   after running an install script run `dotfiles.sh` again to ensure the dotfiles are up to date (note that this may delete the default dotfiles created when installing a program)
-   when using a vm enable 3d accelaration to run hyprland and set graphics controller to vmsvga
