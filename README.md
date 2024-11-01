# Discord Updater

Bored to update your discord manually every single morning ? This script is made for you !

## Description

Don't waste your time for every time you see this annoying update message on discord: "A new version of Discord is available! Please update to continue." gngngngn...

Discord Updater will update your discord automatically each time you start up your computer. You can also update it manually by running the script.

## Getting Started

Should work on any linux distribution

### Dependencies

* A stable internet connection
* An access to root privileges (for the installation)

## Installation

### From the github repository

* Download the package from the [releases](https://github.com/IzeLeam/DiscordLinuxUpdater/releases) page

* Install the package with the following command:

```bash
sudo dpkg -i <package_name>
```

### From the source code

* Clone the repository

```bash
git clone "https://github.com/IzeLeam/DiscordLinuxUpdater.git"
```

or

```bash
git clone "git@github.com:IzeLeam/DiscordLinuxUpdater.git"
```

* Go to the repository

```bash
cd DiscordLinuxUpdater
```

* Build the package with the build type you want
    Build types available:
    * `deb` for debian based distributions
    * `rpm` for redhat based distributions
    * `arch` for arch based distributions
    * `snap` for snap packages

```bash
chmod +x build.sh
./build.sh <build_type>
```

* Install the package with the following command:

```bash
sudo dpkg -i <package_name>
```

The automatic update is already set up by default. You can disable it by running the following command:

```bash
sudo systemctl disable discord-updater
```

And enable it by running the following command:

```bash
sudo systemctl enable discord-updater
```

## Uninstallation

* Uninstall the package with the following command:

```bash
sudo dpkg -r discord-updater
```

## Usage

* Run the script

```bash
discord-updater
```

## Help

If you have any question, feel free to ask me on discord: izeleam#0001