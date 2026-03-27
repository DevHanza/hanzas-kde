#!/bin/bash

CONFIG_NAME="hanzas-kde"
CHUNK_DIR="chunks"
COMPILED_FILE="${CONFIG_NAME}.knsv"

# Check chunks exist
if [ ! -d "$CHUNK_DIR" ]; then
    echo "Error: $CHUNK_DIR not found!"
    exit 1
fi

# Combine chunks into original file
cat "$CHUNK_DIR/${CONFIG_NAME}_part_"* > "$COMPILED_FILE"

echo "Konsave file compiled: $COMPILED_FILE"

# Check if konsave is installed
if ! command -v konsave &> /dev/null; then
    echo "Konsave not found. Please install it first."
    exit 1
fi

# Import and apply the config
konsave -i "$COMPILED_FILE"
konsave -a "$CONFIG_NAME"

echo "Done! KDE config restored."