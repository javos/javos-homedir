#!/bin/bash

# Check the distro name
distro_id=$(grep "^ID=" /etc/*release | cut -d= -f2)

if [ "$distro_id" = "fedora" ]; then
  echo "Removing some GNOME Default Apps"

  # Remove Unused Gnome Default Apps
  sudo dnf remove gnome-boxes -y
  sudo dnf remove gnome-calculator -y
  sudo dnf remove gnome-color-manager -y
  sudo dnf remove gnome-connections -y
  sudo dnf remove gnome-maps -y
  sudo dnf remove gnome-tour -y

fi

# Install Flatpak Apps

echo "Installing Flatpak Apps"

flatpak install flathub com.cassidyjames.butler -y
flatpak install flathub com.daidouji.oneko -y
flatpak install flathub com.github.k4zmu2a.spacecadetpinball -y
flatpak install flathub com.github.tchx84.Flatseal -y
flatpak install flathub com.github.wwmm.easyeffects -y
flatpak install flathub com.google.Chrome -y
flatpak install flathub com.heroicgameslauncher.hgl -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub com.rtosta.zapzap -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.stremio.stremio -y
flatpak install flathub com.todoist.Todoist -y
flatpak install flathub com.usebottles.bottles -y
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub de.haeckerfelix.Shortwave -y
flatpak install flathub dev.qwery.AddWater -y
flatpak install flathub fm.reaper.Reaper -y
flatpak install flathub io.github.dvlv.boxbuddyrs -y
flatpak install flathub io.github.flattool.Ignition -y
flatpak install flathub io.github.flattool.Warehouse -y
flatpak install flathub io.github.Foldex.AdwSteamGtk -y 
flatpak install flathub io.github.jeffshee.Hidamari -y 
flatpak install flathub io.github.peazip.Peazip.Addon.i386 -y
flatpak install flathub net.nokyan.Resources -y
flatpak install flathub org.blender.Blender -y
flatpak install flathub org.gnome.Epiphany -y
flatpak install flathub org.gnome.meld -y
flatpak install flathub org.gnome.World.PikaBackup -y
flatpak install flathub org.libreoffice.LibreOffice -y
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub org.rncbc.qpwgraph -y
flatpak install flathub org.signal.Signal -y
flatpak install flathub org.telegram.desktop -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub org.virt_manager.virt-manager -y
