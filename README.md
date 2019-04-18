# Automatic Forensic Acquisition toolset for Windows OS with Digispark attiny85

Automatic Forensic Acquisition for Windows 10 and also works on Win7 using wimpmem and ftkimager.<br/>
Other Windows OS not been tested yet.<br/>
The script needs approx 20 seconds to download payload from this repo to C: drive (approx 8MB) which will be deleted at the end of the acquisition process. Then you will have a memory.raw and a physical disk image from your suspects machine on the plugged flash-drive labeled "FORENSICS" in the folder SUSPECT/Datea and time of start/ . <br/><br/>
For windows 7 you need to increase the delay time.<br/>
The script should run just once. Windows 7 support ends in January 2020. ;-) <br/>
I am still working on it.<br/><br/>
If you like my effort, help me to create more.
Paypal is currently sleeping that's why the button doesn't work yet. :-(
I believe in 1-2 days from 18.04.2019 this should be fixed.

# Donation Button
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BBVUYZZW9JP56)

![QR-Code](https://user-images.githubusercontent.com/49499331/56194087-6fb0cd80-6032-11e9-939f-6088a4909b9f.png)

# PREREQUISITES:
1) **Digispark attiny85**
2) **FlashDrive labeled "FORENSICS"**
3) **Suspect needs Admin rights**<br/>
   a) When suspect machine is not admin then get admin credentials and proceed with <br/>
   -) Disable UAC , see instruction with following [link](https://www.faqforge.com/windows/how-to-disable-the-user-account-control-uac-in-windows-10/)<br/>
   -) You can also use [Disable-UAC.ps1](https://github.com/flipthemouse/acquisition/blob/master/Disable-UAC.ps1) from [Microsoft Script center](https://gallery.technet.microsoft.com/scriptcenter/Disable-UAC-using-730b6ecd).<br/>
   -) Disable Windows Defender, see instrcutions with following [link](https://www.wikihow.com/Turn-Off-Windows-Defender-in-Windows-10)<br/>
4) **At least Powershell version 4 needed on suspects machine**
3) **[Arduino IDE]**(https://www.arduino.cc/en/main/software)<br/>
  a) Follow the Install instructions from [Digistump.com](https://digistump.com/wiki/digispark/tutorials/connecting)<br/>
  b) Add the [DigiKeyboardDe.h](https://github.com/flipthemouse/acquisition/blob/master/DigiKeyboardDe.h) file to your Arduino project if you use a German keyboard.<br/>
4) **Code**<br/>
  a) If you add something or change be aware that the Digispark has limited storage (8K).<br/>
  b) When using variables be aware that the storage will be shorten for the memory.<br/>
  c) This code uses already approx 60% <br/>
5) **Unplug multiple displays.** Just use one display !
  
# Upload to DigiSpark
1) Open prepared Arduino IDE
2) Paste the code into new sketch, save and verify code
3) Press the upload button, wait for message to plugin Digispark attiny85
4) Plug in Digispark attiny85, waith approx 5 seconds and for the success message
5) When everything was successfull , you should see the payload automatically running.
  
