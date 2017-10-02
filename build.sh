#!/bin/sh
mkdir -p godot-server/export
mkdir -p godot-server/files/bin
mkdir -p .tmp
curl -sSL https://downloads.tuxfamily.org/godotengine/2.1.4/Godot_v2.1.4-stable_linux_server.64.zip > .tmp/godot.zip
unzip .tmp/godot.zip -d .tmp
mv .tmp/Godot_v2.1.4-stable_linux_server.64 godot-server/files/bin/godot
cp metadata godot-server/
rm -rf .tmp
flatpak build-export repo godot-server
flatpak build-bundle repo godot-server.flatpak nl.gbraad.GodotServer
