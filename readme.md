## automatic arch setup

### install arch

#### default
-   [video](https://www.youtube.com/watch?v=8YE1LlTxfMQ&t=319s)
-   use `archinstall` script
-   configure `mirrors`, `hostname`, `user account`, `root password`, `audio server`, `network configuration`, `timezone`
-   install gnome display manager: `pacman -S gnome`
-   reboot: `exit` and `shutdown -h now`
-   enable gnome display manager: `sudo systemctl enable gdm.service`
-   start display manager: `sudo sytemctl start gdm.service` or reboot if it does not work

#### dual boot with disk encryption
