# Automatic Forensics Acquisition Toolset<br/>
 **Digispark attiny85**<br/>
Supports **Windows 10** and **7** <br/>
Using **wimpmem** and **ftkimager**<br/>
Other Windows OS not been tested yet<br/>
**Linux/Unix support under development**<br/><br/>
Product under **GNU General Public License**<br/><br/>
The script needs approx. 20 seconds to download payload from this repo to C: drive (approx. 8MB) which will be deleted at the end of the acquisition process. Then a memory and a physical disk image from your suspects machine should be stored on the plugged flash-drive labeled "FORENSICS" in the folder SUSPECT/Date and time/ .The script will run once. <br/><br/>
For windows 7 you need to increase the delay time.<br/>
Windows 7 support ends in January 2020. ;-) <br/><br/>
**If you like my effort, you can show your appreciation.**<br/><br/>
Paypal is currently sleeping that's why the button doesn't work yet. :-( <br/>
I believe in 1-2 workdays from 18.04.2019 this should be fixed.<br/>
# Donation Button
[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BBVUYZZW9JP56)

![QR-Code](https://user-images.githubusercontent.com/49499331/56194087-6fb0cd80-6032-11e9-939f-6088a4909b9f.png)

# PREREQUISITES:<br/>
1) **Digispark attiny85**<br/><br/>
2) **FlashDrive labeled "FORENSICS"**<br/><br/>
3) **Suspect needs Admin rights**<br/>
   a) When suspect machine is not admin then get admin credentials and proceed with <br/>
   -) Disable UAC , see instruction with following [link](https://www.faqforge.com/windows/how-to-disable-the-user-account-control-uac-in-windows-10/).<br/>
   -) You can also use [Disable-UAC.ps1](https://github.com/flipthemouse/acquisition/blob/master/Disable-UAC.ps1) from [Microsoft Script center](https://gallery.technet.microsoft.com/scriptcenter/Disable-UAC-using-730b6ecd).<br/>
   -) Disable Windows Defender, see instrcutions with following [link](https://www.wikihow.com/Turn-Off-Windows-Defender-in-Windows-10).<br/><br/>
4) **At least Powershell version 4 needs to be installed on suspects machine**<br/><br/>
3) **[Arduino IDE](https://www.arduino.cc/en/main/software)**<br/><br/>
  a) Follow the Install Instructions from [Digistump.com](https://digistump.com/wiki/digispark/tutorials/connecting).<br/>
  b) Add the [DigiKeyboardDe.h](https://github.com/flipthemouse/acquisition/blob/master/DigiKeyboardDe.h) file to your Arduino project if you use a German keyboard.<br/><br/>
4) **[Code](https://github.com/flipthemouse/acquisition/blob/master/WinFor-payload.txt)**<br/>
  a) If you add something or change be aware that the Digispark has limited storage (8K).<br/>
  b) When using variables be aware that the storage will be shorten for the memory.<br/>
  c) This code uses already approx 60% .<br/>
  d) The suspect needs an internet connection to obtain the payload. <br/><br/>
5) **Unplug multiple displays.** Just use one display !<br/><br/>
  
# Upload to DigiSpark<br/>
1) Open prepared Arduino IDE<br/>
2) Paste the code into new sketch, save and verify code.<br/>
3) Press the upload button, wait for message to plugin Digispark attiny85.<br/>
4) Plug in Digispark attiny85, wait for the success message.<br/>
5) When everything was successfull , you should see the payload automatically running.<br/>
6) Unplug and safe it for future forensics tasks.<br/>

# NO DIGISPARK <br/>
1) Plug your **flash-drive (labeled "FORENSICS)** into suspects machine.  <br/>
2) Just copy **[complete-no-digispark.ps1](https://github.com/flipthemouse/acquisition/blob/master/complete-no-digispark.ps1)** to suspect (C:\).<br/>
3) **Start powershell with admin rights**<br/>
4) **C:\complete-no-digispark.ps1**<br/>
5) That's it :-)<br/>

  
