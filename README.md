# Omarchy

1. Boot into a flash drive with Arch ISO.

2. Connect to Wi-Fi: iwctl, station wlan0 scan, station wlan0 get-networks, station wlan0 connect "SSID", enter password, station wlan0 show, exit

3. archinstall, mirror:select region, disk configuration, btrfs, default structure, compression, disk encryption, LUKS, password, select partition with space, hostname, bootloader=Limine authentication (root password, user with pass), applications > Bluetooth yes, audio = pipewire, network copy over, timezone. (refer to https://learn.omacom.io/2/the-omarchy-manual/96/manual-installation for more details)

4. Reboot, login with user name and pass, then install this Omarchy 1 fork with `curl -fsSL https://raw.githubusercontent.com/jacob-8/omarchy/refs/heads/master/boot.sh | bash`

5. Add pinyin by right clicking menu item and restarting fcitx, then adding pinyin.

Then adjust configs to liking.

------

Turn a fresh Arch installation into a fully-configured, beautiful, and modern web development system based on Hyprland by running a single command. Read more at [omarchy.org](https://omarchy.org).

This version modifies Omarchy:
- removes 1password, Ruby, Apple display controls, webapps from menu, Signal, Obsidian, Spotify, XCompose 
- adds Node, PNPM, VSCode, Pinyin input, LM Studio, Slack
- adjusts some keybindings and other settings to my preference

## License

Omarchy is released under the [MIT License](https://opensource.org/licenses/MIT).

