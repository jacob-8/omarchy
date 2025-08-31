#!/bin/bash

yay -S --noconfirm --needed \
  brightnessctl playerctl pamixer wiremix wireplumber \
  fcitx5 fcitx5-gtk fcitx5-qt wl-clip-persist \
  nautilus sushi ffmpegthumbnailer gvfs-mtp \
  slurp satty \
  mpv evince imv \
  google-chrome slack-desktop

# fcitx5-chinese-addons fcitx-configtool (I need to add but causes install issue)
# fcitx5-configtool (used to be in Omarchy)

# Add screen recorder based on GPU
if lspci | grep -qi 'nvidia'; then
  yay -S --noconfirm --needed wf-recorder
else
  yay -S --noconfirm --needed wl-screenrec
fi

# Astril
yay -S --noconfirm --needed \
  gtk2 gtk-engines astril