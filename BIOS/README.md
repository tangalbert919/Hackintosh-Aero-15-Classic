# Unlocking your BIOS

**DISCLAIMER:** **Proceed at your own risk!** Unlocking your BIOS can brick your laptop if done incorrectly.

## Requirements
* Intel CSME System Tools v12 (not v11 or 13+, v12). Download it from section C2 [here](https://www.win-raid.com/t596f39-Intel-Management-Engine-Drivers-Firmware-amp-System-Tools.html).
* [AMIBCP 5.02.0031](https://www.mediafire.com/file/ckao23pe57ny7jm/AMIBCP_5.02.0031.rar/file)
* [UEFITool](https://github.com/LongSoft/UEFITool/releases)
* [ifrextract](https://github.com/LongSoft/Universal-IFR-Extractor/releases)
* [7-zip](https://7-zip.org) (to extract the tools needed from the Intel CSME System Tools v12 RAR file).
* Your BIOS flashed to the latest version (at the time of writing this document, FB04).
* Secure Boot disabled (go into BIOS and choose `Delete all secure boot variables`, this will NOT reset your computer).
* A USB stick. Seriously.

You should have these files in this directory just to make things easy.

## Instructions

You can follow the instructions on this guide [here](https://www.bios-mods.com/forum/Thread-Gigabyte-Aero-15-v8-FB0A-BIOS-Unlocked). Even though this is for an older Aero 15, the procedure is (more or less) the same.
 * In case that link is not working, you can read [this guide](https://www.win-raid.com/t4386f16-OverPowered-TONGFANG-CyberPower-Machrevo-MACHENIKE-Unlocked-BIOS-Guide-W-Files.html). The system in this guide is not an Aero 15, but both systems use the same BIOS.
While following the instructions, a few things to keep in mind:
 * Don't download the AMITSE section image file (.sct) from the guides. You want to use the file that was included in this repository.
 * You need to release your BIOS lock if you want to flash your unlocked BIOS.
 * The BIOS Lock offset for the Aero 15 Classic and the Aero 15 v8 are not the same. You will need to figure out what yours is. On my Classic-XA, it was 0xB48.

 How to release your BIOS Lock:
   * Format a USB stick to FAT32, and create directory `EFI\BOOT`. Download and extract BOOTx64.EFI from [here](http://brains.by/posts/bootx64.7z) and place it into the directory.
   * Boot from that USB stick (may require you to go into BIOS and change the boot order with the stick being the first entry). Run `setup_var <BIOS lock offset> 0x00`, replacing `<BIOS lock offset>` with your actual BIOS lock offset.
   * Reboot to Windows.

These instructions might also work with later Aero 15 (and possibly Aero 17) systems, but again, proceed with caution.