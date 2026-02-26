#!/bin/bash

REPO="$PWD"

# Sync .config
rsync -av --delete --mkpath \
--exclude='google-chrome/' \
--exclude='Code/' \
--exclude='VSCodium/' \
--exclude='MongoDB Compass/' \
--exclude='Postman/' \
--exclude='yay/' \
--exclude='htop/' \
--exclude='vlc/' \
--exclude='kate/' \
--exclude='go/' \
# System
--exclude='session/' \
--exclude='kdedefaults/' \
--exclude='libaccounts-glib/' \
"$HOME/.config/" \
"$REPO/.config/"


# Sync .local/share
rsync -av --delete --mkpath \
--exclude='sddm/' \
--exclude='baloo/' \ 
--exclude='kwalletd/' \
--exclude='klipper/' \
--exclude='libkunitconversion/' \ 
--exclude='kactivitymanagerd/' \ 
# Packages
--exclude='flatpak/' \
--exclude='CMakeTools/' \
# Applications 
--exclude='Trash/' \
--exclude='plasma-systemmonitor/' \
--exclude='TelegramDesktop/' \
--exclude='kwrite/' \
--exclude='kate/' \
--exclude='vlc/' \
--exclude='org.localsend.localsend_app/' \
"$HOME/.local/share/" \
"$REPO/.local/share/"



