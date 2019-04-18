# acquisition
Forensics acquisition

Automatic payload for Forensic Acquisition with Windows 7 and 10 using wimpmem and ftkimager, other Windows OS not tested yet.<br/>
The script needs approx 20 seconds to download payload from this repo and to start the acquisition.<br/>
At the end you will have a memory.raw file and a physical disk image from your suspect on a flash-drive labeled "FORENSICS" <br/>
in the folder SUSPECT/<Date and time of start>/<br/>

Prerequisites:<br/>
1) Digispark attiny85
2) FlashDrive labeled "FORENSICS"
3) Suspect needs Admin rights
4) At least Powershell version 4 needed
3) Arduino IDE
  a) Follow the Install instructions from [Digistump.com](https://digistump.com/wiki/digispark/tutorials/connecting)
  b) Add the DigiKeyboardDe.h file to your Arduino project if you use a German keyboard.
4) Code
  a) If you add something or change be aware that the Digispark has limited storage (8K).
  b) When using variables be aware that the storage will be shorten for the memory.
  c) This code uses already approx 60%
  
