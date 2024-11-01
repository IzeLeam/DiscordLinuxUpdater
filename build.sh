#!/bin/bash

usage() {
    echo "Discord Updater Builder"
    echo "Usage: ./build.sh <build> [OPTIONS] (deb, rpm, arch, snap)"
    echo ""
    echo "Options:"
    echo "  -h, --help      Display this help message"
    echo "  -v, --verbose   Enable verbose mode"
    echo "  -a, --all       Build all packages"
}

if [ $# -lt 1 ]; then
	echo "Missing build argument"
	usage
	exit
fi

exit
