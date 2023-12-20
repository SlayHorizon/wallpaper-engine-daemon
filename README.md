### Simple linux daemon to change gnome wallpaper every 20 secs.

# Installation:

Clone the repo in your home.

Be sure to have your wallpapers in `~/Pictures/wallpapers`
you can change this path in `change_wallpaper.sh` file.

Place `wallpaper-engine-daemon.service` in `~/.config/systemd/user`
then inside this folder open terminal and run:
```
systemctl --user reload-daemon
```

To enable daemon and start it do:
```
systemctl --user enable wallpaper-engine-daemon.service
systemctl --user start wallpaper-engine-daemon.service
```
that's all, now the wallpaper should change every 20 sec by default.

To change the time you can modify `main.c`
and change the line with sleep(20) by any number,
but you'll need to recompile the daemon and restart the service by doing:
```
gcc main.c -o daemon
systemctl --user restart wallpaper-engine-daemon.service
```
