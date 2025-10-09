#!/bin/bash

yay -S --noconfirm --needed \
  cargo clang llvm mise \
  imagemagick \
  mariadb-libs postgresql-libs \
  github-cli \
  lazygit lazydocker-bin \
  lmstudio visual-studio-code-bin

# can also add jdk-openjdk if wanting to create key signing for Android apps

# For Android studio
# lib32-glibc lib32-ncurses lib32-gcc-libs lib32-zlib lib32-bzip2 base-devel git android-studio