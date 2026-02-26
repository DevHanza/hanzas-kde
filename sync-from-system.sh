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
--exclude='Trash/' \
--exclude='sddm/' \
--exclude='flatpak/' \
--exclude='kwalletd/' \
--exclude='klipper/' \
--exclude='libkunitconversion/' \ 
--exclude='kactivitymanagerd/' \ 
--exclude='kwrite/' \
--exclude='plasma-systemmonitor/' \
--exclude='TelegramDesktop/' \
--exclude='vlc/' \
--exclude='org.localsend.localsend_app/' \
"$HOME/.local/share/" \
"$REPO/.local/share/"



