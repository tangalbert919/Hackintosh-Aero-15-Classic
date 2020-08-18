# Hackintosh Aero 15 Classic

Hackintosh files for Gigabyte Aero 15 Classic. Not to be confused with [Aero 15 W9/X9/Y9](https://www.gigabyte.com/Laptop/AERO-15--RTX-20-Series#kf).

## Specs

```
- Processor: Intel Core i7-9750H (all models)/i9-9980HK (YA only)
- Memory: Up to 64 GB Samsung DDR4 2666 MHz
- Panel:
  - FHD (1920x1080):
    - LG 144Hz IPS LCD anti-glare display (SA/WA)
    - SHARP 240Hz IGZO LCD anti-glare display (XA/YA)
  - UHD (3840x2160):
    - AUO 60Hz Adobe RGB 100% IPS LCD anti-glare display (WA/XA/YA)
- Graphics:
  - Integrated: Intel UHD Graphics 630
  - Dedicated:
    - NVIDIA GeForce GTX 1660 Ti GDDR6 6GB (SA only)
    - NVIDIA GeForce RTX:
      - 2060 GDDR6 6GB (WA)
      - 2070 Max-Q GDDR6 8GB (XA)
      - 2080 Max-Q GDDR6 8GB (YA)

I/O | Ports (all models):

- 3x USB 3.1 Type-A (2x Gen1, 1x Gen2)
- 1x DP 1.4 (USB 3.1 Type-C)
- 1x Thunderbolt 3 (USB Type-C)
- 1x HDMI 2.0 (hard-wired to NVIDIA GPU)
- 1x 3.5mm Headphone/Mic Combo Jack
- 1x UHS-II SD Card Reader
- 1x DC-in (charging) Jack
- 1x RJ45 (Ethernet, Killer E2500)

Misc (all models):
- Killer Wireless-AC 1550 (Intel 9560NGW)
- 2x 2 Watt Speaker
- HD Camera
```

## How to use this repository
- I am only using OpenCore right now, but I might provide Clover files later on.
- Folder structure:
  * `EFI/OC`: OpenCore files
  * `EFI/BOOT`: BOOTX64.efi
  * `BIOS`: Unlocked BIOS file + instructions

## What's working
[ ] All USB ports (2.0 + 3.1)

### Notes:
* This repo is based off of [the Hackintosh Aero 15X repo](https://github.com/zacmks/Hackintosh-Aero-15X).
* Killer Wireless AC-1550 (Intel 9560) must be replaced with a compatible Wi-Fi chip. Broadcom BCM94352Z is recommended.
* NVIDIA GeForce RTX GPUs (and GTX 1660 Ti) are not supported on any macOS version; they must be disabled.
* You will need to unlock your BIOS. Instructions are provided in the `BIOS` folder.
