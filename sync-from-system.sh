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
# Applications 
--exclude='Trash/' \
--exclude='plasma-systemmonitor/' \
--exclude='flatpak/' \
--exclude='TelegramDesktop/' \
--exclude='kwrite/' \
--exclude='kate/' \
--exclude='vlc/' \
--exclude='org.localsend.localsend_app/' \
"$HOME/.local/share/" \
"$REPO/.local/share/"



