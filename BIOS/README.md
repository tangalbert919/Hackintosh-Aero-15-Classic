# How to unlock your BIOS

**DISCLAIMER 1: UNLOCK YOUR BIOS AT YOUR OWN RISK! I AM NOT RESPONSIBLE FOR ANY DAMAGE CAUSED TO YOUR LAPTOP.**

**DISCLAIMER 2: THIS IS FOR GIGABYTE AERO 15 CLASSIC-(SA/WA/XA/YA) MODELS ONLY! DO NOT ATTEMPT ON OTHER MODELS!**

**DISCLAIMER 3: DO ALL OF THIS ON WINDOWS! I CANNOT STRESS HOW IMPORTANT IT IS TO DO THIS ON WINDOWS!!!**

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
1. Extract `FPTw.exe` and its DLLs from the Intel CSME System Tools v12 RAR file (it can be found in `Intel CSME System Tools\Flash Programming Tools`) to this directory.
2. Run CMD (not PowerShell) as administrator and `CD` to this directory. Run `FPTw.exe -bios -d biosreg.bin` to extract your BIOS.
3. Run **UEFITools** and open `biosreg.bin`. Search for `AMITSE` (Press `Ctrl+F` and click on the tab marked `text`), then choose the first choice that says `"Unicode text "AMITSE" found in User interface section at offset 0h"`. Right click on `PEP32 image section` and choose `Replace as is...`:
  * If you are on BIOS version FB02, select the file `Section_PE32_image_AMITSE_unlocked_BIOS-FB02.sct.` If on FB04, select `Section_PE32_image_AMITSE_unlocked_BIOS-FB04.sct`.
  * After that, save the file in UEFITools as `biosmod.bin`.
4. Open `AMIBCP5` (extract it from the RAR file first) and open `biosmod.bin`. Set the menu access to USER, as shown [here](https://i.imgur.com/BnkU0RW.jpg).
5. Once you have saved the file, run `FPTw.exe -bios -f biosmod.bin`
 - If you get the error `Error 167: Protected Range Registers are currently set by BIOS, preventing flash access.`, your BIOS is locked and needs to be unlocked.
 
 How to unlock your BIOS:
   i. Format a USB stick to FAT32, and create directory `EFI\BOOT`. Download and extract BOOTx64.EFI from [here](http://brains.by/posts/bootx64.7z) and place it into the directory.
   ii. Boot from that USB stick (may require you to go into BIOS and change the boot order with the stick being the first entry). Run `setup_var 0xB48 0x00`.
   iii. Reboot to Windows, and run the command in step 5 again.
   
6. If the flashing is successful, run `FPTw.exe -greset`
7. Press F2. Expect to see a lot more options in most tabs.
   