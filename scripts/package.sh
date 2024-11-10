#!/bin/bash

OUT_DIR="out"
DIST_FILE="dist/discord-updater"
DEBIAN_DIST_DEST="deb/usr/local/bin"

usage() {
    echo "Discord Updater Builder"
    echo "Usage: ./build.sh <build> [OPTIONS] (deb, rpm, arch, snap)"
    echo ""
    echo "Options:"
    echo "  -h, --help      Show this help message"
    echo "  -v, --verbose   Enable verbose mode"
}

if [ $# -lt 1 ]; then
	echo "Missing build argument"
	usage
	exit
fi

if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    usage
    exit
fi

if [ "$1" == "-v" ] || [ "$1" == "--verbose" ]; then
    set -x
fi

# Copy binary to packages
cp "$DIST_FILE" "$DEBIAN_DIST_DEST"

# Create out directory if it doesn't exist
if [ ! -d "$OUT_DIR" ]; then
    mkdir "$OUT_DIR"
fi

if [ "$1" == "deb" ]; then
    echo "Building deb package"
    dpkg-deb --build deb out/discord-updater.deb
elif [ "$1" == "rpm" ]; then
    echo "Building rpm package"
    echo "Not implemented yet"
    exit
    rpmbuild -bb rpm/SPECS/discord-updater.spec
elif [ "$1" == "arch" ]; then
    echo "Building arch package"
    echo "Not implemented yet"
    exit
    makepkg -f
elif [ "$1" == "snap" ]; then
    echo "Building snap package"
    echo "Not implemented yet"
    exit
    snapcraft
else
    echo "Invalid build argument"
    usage
    exit
fi

echo "Build completed"