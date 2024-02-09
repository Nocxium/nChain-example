#!/usr/bin/env bash

gtk_icon_theme=$(awk -F= '/^gtk-icon-theme-name=/{print $2}' "$HOME/.config/gtk-temp/settings.ini")
gtk_theme=$(awk -F= '/^gtk-theme-name=/{print $2}' "$HOME/.config/gtk-temp/settings.ini")

gsettings --schemadir /home/nocxium/.nix-profile/share/gsettings-schemas/gsettings-desktop-schemas-45.0/glib-2.0/schemas/ set org.gnome.desktop.interface icon-theme "$gtk_icon_theme"

gsettings --schemadir /home/nocxium/.nix-profile/share/gsettings-schemas/gsettings-desktop-schemas-45.0/glib-2.0/schemas/ set org.gnome.desktop.interface gtk-theme "$gtk_theme"
