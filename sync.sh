#!/bin/bash

CONFIG_NAME="hanzas-kde"
EXPORT_DIR="$(pwd)"


if ! command -v konsave &> /dev/null
then
    echo "Konsave not found. Please install it first."
    exit 1
fi

echo "Saving KDE config..."
konsave -s "$CONFIG_NAME"

echo "Exporting config..."
konsave -e "$CONFIG_NAME" -d "$EXPORT_DIR"

echo "Done! Backup saved to: $EXPORT_DIR"