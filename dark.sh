#!/bin/bash

 dbus-send --session --dest=org.kde.plasmashell --type=method_call \
         /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
     var Desktops = desktops();
     for (i=0;i<Desktops.length;i++) {
             d = Desktops[i];
             d.wallpaperPlugin = "org.kde.image";
             d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General");
             d.writeConfig("Image", "/home/nomec/Themeswitcher/Sfondi/dark.jpg");
     }'


lookandfeeltool -a com.github.vinceliuice.ChromeOS-dark //your global theme

kvantummanager --set ChromeOS-dark //your kvantum theme

cd /home/nomec/.config/
        rm plasmahudrc

cd /home/nomec/Themeswitcher/
        cp /home/nomec/Themeswitcher/dark/plasmahudrc /home/nomec/.config/

killall plasmashell
kstart5 plasmashell
