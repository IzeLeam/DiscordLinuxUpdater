# Discord Updater
Bored to update your discord manually **every single day** ? Get rid of this annoying situation with **Discord Updater** !

<p align="center">
    <img src=".github/update.png" alt="Discord Update Screenshot" />
</p>

Discord Updater will **update your discord automatically** at startup so you will never see this message again.

## Getting Started
Should work on any linux distribution

### Pre-requisites
* A stable internet connection
* An access to root privileges

## Installation
### From the github repository
* Download the package from the [releases](https://github.com/IzeLeam/DiscordLinuxUpdater/releases) page

* Install the package with the following command:
```bash
sudo apt install <path_to_package>
```

### From the source code
* Clone the repository
```bash
git clone "https://github.com/IzeLeam/DiscordLinuxUpdater.git"
cd DiscordLinuxUpdater
```

* Build the package with the following commands:
```bash
chmod +x scripts/package.sh
./scripts/package.sh
```

* Install the package with the following command:
```bash
sudo apt install <path_to_package>
```

The automatic update is already set up by default. You can disable/enable it with the following command:
```bash
sudo systemctl disable/enable discord-updater
```

## Usage
* Run the script
```bash
discord-updater
```

## Uninstallation
* Uninstall the package with the following command:

```bash
sudo apt remove discord-updater
```

## License
This project is under the MIT License. See the [LICENSE](LICENSE) file for the full license text and details.

## Help
If you have any question, feel free to ask me on discord: izeleam