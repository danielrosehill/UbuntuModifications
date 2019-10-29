<meta name="google-site-verification" content="CeO82P1T5Qsx63lUUYSShuht4HOpK3ctMArvt90S4yY" />

## REINSTALLING *BUNTU (BUT TYPICALLY LUBUNTU WITH LXDE) FROM A CLEAN INSTALL ##
### My configuration — documented ###

Author: <a href="https://www.danielrosehill.co.il">Daniel Rosehill</a><br/>
Email: git at danielrosehill dot co dot il

<img src="https://i.imgur.com/40MuIWp.png" width="1000">



## NOTES ##

* These instructions are intended to facilitate the reinstallation of my Ubuntu system (Lubuntu, running LXDE rather than LXQt), supplementing Bash scripts and other automated reinstallation methods as well as the configuration files contained in this Git repository. 

* I am compiling this documentation based on my desktop installation as it runs on 27/10/19 after a very "close call" attempting to upgrade from Lubuntu 19.04 to Lubuntu 19.10 which almost broke both the package manager and my Nvidia driver. Thanks to the author of Timeshift (https://github.com/teejee2008/timeshift) for avoiding disaster.

* (Paranthetical note to others in this position: at critical moments, restore to snapshots via the CLI rather than the GUI; this resolved the issue I was experiencing in which the Nvidia driver would not recurse to its pre-meltdown state. A less volatile restore method is, of course, favorable).

* As this repository is publicly accessible, I would be pleased to answer any questions regarding the packages or modifications documented here.


## FIRST STEPS & PRE-INSTALLATION ##

- -> Install base system onto previous Ubuntu volume (currently SDA1).
- -> Cross-check against drive schema to avoid accidentally overwriting alternate drives, currently:
- --> SDB -- Clonezilla backup images
- --> SDC -- Windows 
- --> SDD -- Timeshift snapshots (restore points)

## PROGRAMS ##

(This should be scripted!)

## ACCESSORIES ##

(Unimportant programs not included)

- Activity Log Manager (Zeitgeist GUI)
- Ark (work with file archives)
- Atom IDE (Atom.io)
- Boostnote
- CherryTree (hierarchial notes)
- ClipIt (clipboard manager)
- Clocks (world clocks)
- Emacs
- F.Lux (install via website; I now prefer Redshift)
- Font Manager (note: I currently have about 70 custom fonts installed; these are located 
- HP Device Manager --> Need to install the latest version of HPLIP for my HP printers to run
- KeeppassX
- Linspeed (internet speed tester)
- Kate
- NixNote2
- NobleNote
- NoteCase Pro
- PlayOnLinux
- Redshift
- Shutter
- Pluma
- Qlipper
- QOwnNotes
- Shutter
- SimpleNote
- SpiderOakONE (backups; not in use)
- Synergy (paid; keyboard/mouse share; installer in cloud)
- VeraCrypt
- Vim
- Zim

(The RescueTime background daemon is not listed here; installer on website).

## Chrome Apps ##

Create launchers from Google Chrome, open in new window, for:

- Airdroid
- Brain.fm
- Google Contacts
- Gmail
- RescueTime - home
- RescueTime - today's report
- RescueTime - week dashboard
- TeamViewer
- YouTube

## Education ##

- Klavaro
- Ktouch

## Graphics ##
- BirdFont (font editor)
- Blender
- Darktable
- Eye of MATE
- Flameshot
- FontForge
- FreeCAD
- GIMP *Vital!*
- gscan2pdf (PDFs from image libaries)
- gThumb
- ImageMagick
- Inkscape *Vital!*
- Krita
- LibreCAD (install from website)
- LibreOfficeDraw
- Okular
- Pinta
- Scribus (publishing)
- Sweet Home 3D
- WireframeSketcher (install from website; wireframing
- Xsane

## Internet ##

- 4KVideoDownloader
- Chromium
- Cloudberry Backup
- CoyIM 
- CrossFTP
- Discord
- DragonDisk (S3 client, very important)
- Filezilla
- Firefox
- Franz
- Geary
- Google Chrome
- Google Chrome (Beta); separate download
- Insync
- Konversation
- Linphone (SIP client)
- Mailspring
- Midori (lightweight browser)
- NixNote2
- OnionShare (filesharing over TOR)
- Opera
- Otter Browser
- pCloud *Vital!*
- Pidgin
- Putty
- Rambox
- Ramme
- Remmina
- Shift
- Skype
- SpiderOakONE
- Steam
- Teamviewer
- ThunderbirdMail (post-installation steps, install add-ons: Enigmail, Mail Merge, Send Later. Configure PGP keys.)
- TOR Browser
- uGet (multithread downloader)
- Vivaldi
- Wireshark
- Zoom 

## Office ##

- Ancestris
- Calibre (v. important)
- CloudBerry Backup
- Evolution
- Fanurio
- Focuswriter (distraction-free writing tool)
- Ghostwriter (distraction-free writing tool)
- Gramps
- LibreOffice
-- Calc
-- Draw
-- Impress
-- Math
-- Writer
- Manuskript
- NoteCase Pro
- OCRFeeder
- Okular
- PDF Arrange 
- PDFsam Basic
- Toggl Desktop (often asked to use)
- uP

## Other ##
Maltego

## Programming ##
- Atom
- Bluefish Editor
- Boostnote
- Emacs
- Geany
- Genymotion
- Git Cola
- Git DAG
- MySQL Workbench
- phpMyAdmin
- Sublime Text
- Visual Studio Code

--> Typical activity: install LAMP stack

## Sound ##
- Ardour5
- Audacity *Vital!*
- Cheese
- Emixer
- Flowblade Movie Editor
- Green Recorder (v. important - best screencasting software)
- Handbraker
- Kdenlive
- Kodi (vital!)
- Lightworks
- LMMS
- Mixxx (very important!)
- MusicBrainz Picard
- Open Shot *Vital!*
- Parlatype
- PulseAudio Volume Control *Vital!*
- QjackCtl
- RecordMyDesktop
- Rhythmbox
- Rosegarden
- Selene Media Encoder
- SimpleScreenRecorder (v. good)
- SINE Editor
- SINE Isochronic Entrainer
- Sound Converter
- Tracktion7
- Tranquil
- Vidoes
- VLC
- WinFF

## System Tools ##

- Back In Time
- BleachBit
- Gparted
- VM Virtualbox 
- VMWare 
-- Pre-installation acitivity: set up Windows VM and Kali VM



# Other Config Changes # 

- Editing Xscreensaver so that it fades immediately to black.
- Adding startup programs.
- Editing LXPanel and keyboard changer (+ shortcut in UI).
- Configure all daily automated backups on Crontab
- Setup Timeshift and configure necessary daily backups
- Change the clock format in the digital clock LXDE panel applet to clock format %d/%m
- Disable WiFi in network manager to force ethernet connection
- Change the keyboard layouts and switcher
- Change power management to disable DMPS and screen blanking.

# Downloads required # 

pCloud:
https://www.pcloud.com/download-free-online-cloud-file-storage.html

VMWare Workstation Player:
https://www.vmware.com/il/products/workstation-player/workstation-player-evaluation.html

Timeshift:
https://itsfoss.com/backup-restore-linux-timeshift/














