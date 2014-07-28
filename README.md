Wallpaper changers for cinnamon, gnome, and openbox
-----------------------------------------

Very simple scripts to change the desktop background/wallpaper.


SCRIPTS

- cinnamon-wp-changer.sh
- cinnamon-wp-now.sh
- gnome-wp-changer.sh
- gnome-wp-now.sh
- wp-changer.sh          (Works with cinnamon, gnome, and openbox.)


USAGE

You can run them from the command line or make a '.desktop' file.
You can start them by cron or a systemd timer.
You can bind '...-wp-now.sh' with a key combination.

Note: The script with names ending in 'changer' run permanently once started.
There's a sleep command inside the 'changer' scripts.
The author considers running scripts 'wp-now' through systemd timers and removing 'wp-changer' ones.


INSTALLATION

No special installation.
Recommended use is through systemd timers or as cron jobs.


DEPENDENCIES/CONFLICTS

No dependencies or conflicts.


FURTHER DEVELOPMENT

The author would like to remove the sleep command and run the scripts through timers, but 'sleep' makes it possible to randomize the time the wallpaper is changed at.
