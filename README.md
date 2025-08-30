# Discord Updater
Bored to update your discord manually **every single day** ? Get rid of this awkward situation with **Discord Updater** !

## Description
Don't waste your time for every time you see this annoying update message on discord: *A new version of Discord is available! Please update.* gngngngn...

![Discord Update Screenshot](assets/update.png)

Discord Updater will **update your discord automatically** at startup so you will never see this message again. You can also update it manually by running the script.

## Getting Started
Should work on any linux distribution

### Pre-requisites
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

* Build the package with the following commands:

```bash
chmod +x scripts/package.sh
./scripts/package.sh
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

## License
This project is under the MIT License. See the [LICENSE](LICENSE) file for the full license text and details.

## Help
If you have any question, feel free to ask me on discord: izeleam