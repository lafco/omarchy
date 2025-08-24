## Installation
#### Step one:
Download the Arch Linux ISO (https://archlinux.org/download/#http-downloads)
#### Step two:
If you're using WiFi (and not ethernet), start by running the following:
```
iwctl
station wlan0 scan
station wlan0 connect <tab>
```
Then pick your network, and enter its password.
#### Step three:
Run the `archinstall` command, and pick the following options (note: disc encryption is mandatory for this install to function):

| Section | Option |
| ------- | ------ |
| Mirrors and repositories | Select regions > Your country |
| Disk configuration | Partitioning > Default partitioning layout > Select disk (with space + return) |
| Disk > File system | btrfs (default structure: yes + use compression) |
| Disk > Disk encryption | Entryption type: LUKS + Encryption password + Partitions (select the one) |
| Hostname | Give your computer a name |
| Root password | Set yours |
| User account | Add a user > Superuser: Yes > Confirm and exit |
| Audio | pipewire |
| Network configuration | Copy ISO network config |
| Additional packages | Add wget (type "/wget" to filter list) |
| Timezone | Set yours |

#### Step four:
Run the following command:
```
wget -qO- https://raw.githubusercontent.com/lafco/omarchy/master/boot.sh | bash
```

And that's it! Reboot your computer when prompted, and you are good to go.
