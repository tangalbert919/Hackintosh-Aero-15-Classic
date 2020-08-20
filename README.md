# Hackintosh Aero 15 Classic

Hackintosh files for Gigabyte Aero 15 Classic. Not to be confused with [Aero 15 W9/X9/Y9](https://www.gigabyte.com/Laptop/AERO-15--RTX-20-Series).

## Specs

```
- Processor: Intel Core i7-9750H (all models)/i9-9980HK (YA only)
- Memory: Up to 64 GB Samsung DDR4 2666 MHz
- Panel:
  - FHD (1920x1080):
    - LG 144Hz IPS LCD anti-glare display (SA/WA)
    - SHARP 240Hz IGZO LCD anti-glare display (XA/YA)
  - UHD (3840x2160):
    - AUO 60Hz Adobe RGB 100% IPS LCD anti-glare display (all models)
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

**USB Devices**
- [x] All USB ports (2.0 + 3.1)
- [ ] SD Card Reader (3.0)
- [x] HD Camera (2.0)
- [x] Keyboard (2.0)
- [x] Bluetooth (Internal)

**Network**
- [x] Ethernet port
- [x] Wi-Fi (Intel cards now work)
- [x] Bluetooth

**Power**
- [ ] CPU power management
- [ ] Battery indicator
- [ ] Shutdown/Sleep/Restart
- [x] Disable dGPU to save power

**Graphics**
- [x] Intel Graphics card

**Misc**
- [x] Sound (internal speakers + audio jack)
- [ ] Touchpad + Gestures
- [ ] Thunderbolt hotplug

### Notes:
* This repo is based off of [the Hackintosh Aero 15X repo](https://github.com/zacmks/Hackintosh-Aero-15X).
* NVIDIA GeForce RTX GPUs (and GTX 1660 Ti) are not supported on any macOS version; they must be disabled.
* Killer Wireless cards are all Intel Wi-Fi cards with some rebranding.

### Special thanks to:
* [zacmks](https://github.com/zacmks/Hackintosh-Aero-15X) for already hacking an older Aero 15, which served as a base for this repo.

* [RehabMan](https://github.com/RehabMan) for his guides, tools, kexts, and other contributions to the community.

* [CorpNewt](https://github.com/corpnewt) for his tools (SSDTTime, gibMacOS, ProperTree).

* [The OpenCore Team](https://github.com/acidanthera) for OpenCore and other needed kexts.

* [OpenIntelWireless](https://github.com/OpenIntelWireless) for making Intel Wi-Fi cards finally work on macOS.

### TODO:
* Maybe add support for other Aero 15 models and Aero 17 models. The W9/X9/Y9 models don't have anything yet.
