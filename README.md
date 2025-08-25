# Omarchy

1. Install Arch

2. Connect to Wi-Fi: iwctl, station wlan0 scan, station wlan0 get-networks, station wlan0 connect "SSID", enter password, station wlan0 show

3. Install this Omarchy with `curl -fsSL https://raw.githubusercontent.com/jacob-8/omarchy/refs/heads/master/boot.sh | bash`

4. Copy config

5. Add pinyin by right clicking menu item and restarting fcitx, then adding pinyin.

------

Turn a fresh Arch installation into a fully-configured, beautiful, and modern web development system based on Hyprland by running a single command. Read more at [omarchy.org](https://omarchy.org).

This version modifies Omarchy:
- removes 1password, Ruby, Apple display controls, webapps from menu, Signal, Obsidian, Spotify, XCompose 
- adds Node, PNPM, VSCode, Pinyin input, LM Studio, Slack
- adjusts some keybindings and other settings to my preference

## License

Omarchy is released under the [MIT License](https://opensource.org/licenses/MIT).

