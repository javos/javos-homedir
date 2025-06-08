# javos homedir
This used to be a backup of my essential home folder configs but has evolved a bit over time. Now this is a collection of my configs, fixes and improvements that I use with every linux install. I either made them myself or found them on the internet (sources are provided in this README)

## Scripts

## postinstall 
Automatic installation of apps. *Deprecated! Do not use!*

TODO: Rewrite postinstall to be distro-independent.

TODO: Add ability to select which software to install

TODO: Add error handling

## Styling

### vonvon-tweaks
GNOME Shell theme with small tweaks to vanilla, most importantly a mac-inspired dark styling for `dashtodock`. Includes light and dark theme (has to be set manually)


- Copy `Styling/vonvon-tweaks` and `Styling/vonvon-tweaks-dark` to `.local/share/themes/`
- Set Shell Theme in GNOME Tweaks to `vonvon-tweaks` or `vonvon-tweaks-dark` 

## Configs

### Pipewire
Create virtual pipewire sinks for VOIP/Streaming/Recording

- Copy `Configs/pipewire/sinks.conf` to `.config/pipewire/pipewire.conf.d/`


## Fixes

### brcmfmac does not work after suspend
Fix for Mac laptops with Broadcom chips

Source: https://www.reddit.com/r/Fedora/comments/12fy9zc/comment/jh0uiox/

#### Issue:
Wifi does not work or does not show networks after sleep/suspend to RAM

#### Solution:
The file `brcmfmac-suspend` contains a script that unloads the kernel module `brcmfmac` before sleep and reloads it after sleep. Wifi should then function normally again 

- Copy `Fixes/brcmfmac-suspend` to `/usr/lib/systemd/system-sleep/` and rename to `broadcom`


### GTK4 apps not launching on older NVIDIA cards with vulkan GSK renderer

#### Issue:
New Gnome versions use the vulkan renderer for GTK4 apps, which apparently doesn't work with my Nvidia 1070ti and newer Nvidia drivers. Switching the GSK Renderer to cairo fixes that but disables some vulkan-related features on GTK4 apps

#### Workaround/Solution:

- Copy 'Fixes/gsk/gsk.sh/ to '/etc/profile.d/'
