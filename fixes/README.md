# Fixes

## brcmfmac does not work after suspend
Fix for Mac laptops with Broadcom chips

Issue: Wifi does not work or does not show networks after sleep/suspend to RAM
Solution: The file `brcmfmac-suspend` contains a script that unloads the kernel module `brcmfmac` before sleep and reloads it after sleep. Wifi should then function normally again 

- Copy `brcmfmac-suspend` to `/usr/lib/systemd/system-sleep/` and rename to `broadcom`
