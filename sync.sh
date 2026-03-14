#!/bin/bash

CONFIG_NAME="hanzas-kde"
EXPORT_DIR="$(pwd)"
KNVS_FILE="${CONFIG_NAME}.knsv"
CHUNK_DIR="chunks"

if ! command -v konsave &> /dev/null
then
    echo "Konsave not found. Please install it first."
    exit 1
fi

# Installation

echo "Saving KDE config..."
konsave -s "$CONFIG_NAME"

echo "Exporting config..."
konsave -e "$CONFIG_NAME" -d "$EXPORT_DIR"

echo "Done! Backup saved to: $EXPORT_DIR"

# Chunk the .knsv file

if [ ! -f "$KNVS_FILE" ]; then
    echo "Error: $KNVS_FILE not found."
    exit 1
fi

mkdir -p "$CHUNK_DIR"
split -b 10M "$KNVS_FILE" "$CHUNK_DIR/${CONFIG_NAME}_part_" # Split file into 10MB chunks
echo "Done! Chunks saved in $CHUNK_DIR"