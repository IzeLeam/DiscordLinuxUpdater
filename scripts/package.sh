#!/bin/bash

DIST_FILE="dist/discord-updater"
DEBIAN_DIST_DEST="deb/usr/local/bin"

VERSION=$(cat deb/DEBIAN/control | grep Version | cut -d " " -f 2)

usage() {
    echo "Usage: ./package.sh [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -h, --help      Show this help message"
}

if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    usage
    exit
fi

# Copy binary to packages
cp "$DIST_FILE" "$DEBIAN_DIST_DEST"

# Remove previous builds
rm -rf *.deb 2>/dev/null

# Build package
dpkg-deb --build --root-owner-group deb discord-updater-"$VERSION".deb

echo "Build completed"