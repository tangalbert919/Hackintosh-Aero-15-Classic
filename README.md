# Hackintosh-Aero-15-Classic

Hackintosh files for Gigabyte Aero 15 Classic.

Files currently included are for Classic-XA model. It is possible that it works for Classic-(SA/WA/YA) models too, but is untested.

## Specs (Classic-XA)

```
- Processor: Intel Core i7-9750H
- Memory: 16GB 2666 MHz DDR4
- Panel: FHD SHARP IGZO 240Hz 1920x1080
- Graphics: Intel UHD Graphics 630 + NVIDIA GeForce RTX 2070 Max-Q GDDR5 8GB

I/O | Ports:

- 3x USB 3.1 Type-A (2x gen 1, 1x gen 2)
- 1x DP 1.4 (USB Type-C)
- 1x Thunderbolt 3 (USB Type-C)
- 1x HDMI 2.0 (hard-wired to NVIDIA GPU)
- 1x 3.5mm Headphone/Mic Combo Jack
- 1x SD UHS-II Card Reader
- 1x DC-in (charging) Jack
- 1x RJ45 (Ethernet, Killer E2500)

Misc:
- 2x 2 Watt Speaker
- HD Camera
```

### Notes:
* This repo is based off of [the Hackintosh Aero 15X repo](https://github.com/zacmks/Hackintosh-Aero-15X).
* Killer Wireless AC-1550 (Intel 9560) must be replaced with a compatible Wi-Fi chip. Broadcom BCM94352Z is recommended.
* NVIDIA GeForce RTX GPUs are not supported on any macOS version; they must be disabled.
* Only OpenCore files will be provided.
