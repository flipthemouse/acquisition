# Powershell version 4 needed !!
# Works on Windows OS , tested Win7 and Win10
# Prerequisites
# An Flash-Drive labeled "FORENSICS"
# A folder SUSPECT will be created with subfolders
# Memory image is named: memory.raw
# Physical image is named: physical.001
# powershell.exe drive:\complete.ps1
# Under GNU General Public License

$AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
[System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

$client = new-object System.Net.WebClient
$client.DownloadFile(“https://github.com/google/rekall/releases/download/v1.5.1/winpmem-2.1.post4.exe”,“C:\winpmem-2.1.post4.exe”)

New-Item -Path C:\ftkimager -ItemType Directory
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/ADIsoDLL.dll”,“C:\ftkimager\ADIsoDLL.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/ad_globals.dll”,“C:\ftkimager\ad_globals.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/ad_log.dll”,“C:\ftkimager\ad_log.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/adfs_globals.dll”,“C:\ftkimager\adfs_globals.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/adshattrdefs.dll”,“C:\ftkimager\adshattrdefs.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/boost_date_time-vc100-mt-1_49.dll”,“C:\ftkimager\boost_date_time-vc100-mt-1_49.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/boost_filesystem-vc100-mt-1_49.dll”,“C:\ftkimager\boost_filesystem-vc100-mt-1_49.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/boost_system-vc100-mt-1_49.dll”,“C:\ftkimager\boost_system-vc100-mt-1_49.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/boost_thread-vc100-mt-1_49.dll”,“C:\ftkimager\boost_thread-vc100-mt-1_49.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/drives.txt”,“C:\ftkimager\drives.txt”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/ftkimager.exe”,“C:\ftkimager\ftkimager.exe”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/libeay32.dll”,“C:\ftkimager\libeay32.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/msvcp100.dll”,“C:\ftkimager\msvcp100.dll”)
$client.DownloadFile(“https://github.com/flipthemouse/acquisition/raw/master/ftkimager/msvcr100.dll”,“C:\ftkimager\msvcr100.dll”)


$drive1=Get-WMIObject -Class Win32_Volume | Select DriveLetter,Label | where-object {$_.Label -Like "FORENSICS"}
$dl1 = ($drive1.DriveLetter | Out-String)[0] +":"
$dl1
New-Item -Path $dl1\SUSPECT -ItemType Directory

$date = (Get-Date).tostring("dd.MM.yyyy-HH:mm:ss")

$folder = (New-Item "$dl1/SUSPECT/$(get-date -f yyyy-MM-dd-hh-mm-ss)" -ItemType Directory -Force)

C:\winpmem-2.1.post4.exe -o $folder/memory.raw

C:\ftkimager\ftkimager.exe \\.\PHYSICALDRIVE0 $folder/physical

Remove-Item –path C:\ftkimager -recurse
Remove-Item –path C:\winpmem-2.1.post4.exe
