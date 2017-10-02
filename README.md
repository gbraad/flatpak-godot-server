Godot Server (flatpak)
======================


### Pre-requisites
```
dnf install -y flatpak
curl -sSL wgethttp://downloads.tuxfamily.org/godotengine/1.2.4/Godot_v1.2.4-stable_export_templates.tpz > /tmp/export_templates.tpz
mkdir -p /home/user/.godot
unzip -d /home/user/.godot /tmp/export_templates.tpz
```

### Install
```
flatpak --user install gnome org.freedesktop.Platform 1.6 
flatpak --user remote-add --no-gpg-verify godot-server https://gbraad.gitlab.io/flatpak-godot-server/repo
flatpak --user install godot-server nl.gbraad.GodotServer
```


### Alias
```
alias godots='flatpak run nl.gbraad.GodotServer'
godots -export_debug "Linux X11" game
```
