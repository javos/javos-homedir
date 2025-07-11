#!/bin/bash

# Check the distro name
distro_id=$(grep "^ID=" /etc/*release | cut -d= -f2)

if [ "$distro_id" = "fedora" ]; then
  # Install zsh
  #test ! -f /usr/bin/zsh && echo "Installing zsh and oh-my-zsh"
  #test ! -f /usr/bin/zsh && sudo dnf install zsh -y
  #test ! -f /usr/bin/zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  echo "Removing some GNOME Default Apps"

  # Remove Unused Gnome Default Apps
  sudo dnf remove gnome-boxes -y
  sudo dnf remove gnome-calculator -y
  sudo dnf remove gnome-color-manager -y
  sudo dnf remove gnome-connections -y
  sudo dnf remove gnome-maps -y
  sudo dnf remove gnome-tour -y
  sudo dnf remove rhythmbox -y
  sudo dnf remove gnome-help -y

  # Add Flathub repo
  flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

fi

# Install Flatpak Apps

echo "Installing Flatpak Apps"

flatpak install --user flathub com.cassidyjames.butler -y
flatpak install --user flathub com.daidouji.oneko -y
flatpak install --user flathub com.github.k4zmu2a.spacecadetpinball -y
flatpak install --user flathub com.github.tchx84.Flatseal -y
flatpak install --user flathub com.github.wwmm.easyeffects -y
flatpak install --user flathub com.google.Chrome -y
flatpak install --user flathub com.heroicgameslauncher.hgl -y
flatpak install --user flathub com.obsproject.Studio -y
flatpak install --user flathub com.rtosta.zapzap -y
flatpak install --user flathub com.spotify.Client -y
flatpak install --user flathub com.stremio.stremio -y
flatpak install --user flathub com.todoist.Todoist -y
flatpak install --user flathub com.usebottles.bottles -y
flatpak install --user flathub com.valvesoftware.Steam -y
flatpak install --user flathub com.visualstudio.code -y
flatpak install --user flathub de.haeckerfelix.Shortwave -y
flatpak install --user flathub dev.qwery.AddWater -y
flatpak install --user flathub fm.reaper.Reaper -y
flatpak install --user flathub io.github.dvlv.boxbuddyrs -y
flatpak install --user flathub io.github.flattool.Ignition -y
flatpak install --user flathub io.github.flattool.Warehouse -y
flatpak install --user flathub io.github.Foldex.AdwSteamGtk -y 
flatpak install --user flathub io.github.jeffshee.Hidamari -y 
flatpak install --user flathub io.github.peazip.Peazip.Addon.i386 -y
flatpak install --user flathub net.nokyan.Resources -y
flatpak install --user flathub org.blender.Blender -y
flatpak install --user flathub org.gnome.Epiphany -y
flatpak install --user flathub org.gnome.meld -y
flatpak install --user flathub org.gnome.World.PikaBackup -y
flatpak install --user flathub org.libreoffice.LibreOffice -y
flatpak install --user flathub org.mozilla.Thunderbird -y
flatpak install --user flathub org.rncbc.qpwgraph -y
flatpak install --user flathub org.signal.Signal -y
flatpak install --user flathub org.telegram.desktop -y
flatpak install --user flathub org.videolan.VLC -y
flatpak install --user flathub org.virt_manager.virt-manager -y
flatpak install --user flathub com.discordapp.Discord -y
