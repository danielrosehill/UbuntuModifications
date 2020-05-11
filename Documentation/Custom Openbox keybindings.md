If you’re still running LXDE, or are using Openbox through some other lightweight desktop environment (DE) then you might be interested in creating custom keybindings to be able to do everything from shutting down the computer to opening your favorite Chrome app at the touch of a button.

Fortunately, because Openbox, like LXDE, is a lightweight piece of software, creating these is not too complicated. Follow these steps to have your keyboard doing exactly what you want — just be careful not to overwrite keyboard shortcuts built into programs which you might use regularly!

## Open the Openbox configuration file 

Firstly, navigate to the default Openbox configuration file. In both LXDE and Ubuntu this can be found within:

```
/home/$user/.config/openbox
```

(Replacing $user with your username).

If you’re using LXDE the file is lxde-rc.xml. In Lubuntu, the corresponding file is lubuntu-rc.xml.

It’s best practice to take a backup of the file before making any chances. I typically just append the date as a suffix in DDMMYY format:

```
cp lxde-rc.xml lxde-rc-DDMMYY.xml
```

You can then open the file in your IDE of choice.

## Use xev to capture key identifiers

Attaching keys to specific commands is as easy as looking up the key’s identifier. You can use the xev tool in order to do this.
Xev will output the coordinates of your mouse movements and the identifiers of the keys that you type back into the terminal. Just make sure to type the keystrokes while the capture box is in focus:

![Description](/Documentation/images/1.png)

![Description](/Documentation/images/2.png)

## Assign Keybindings

After getting familiar with the layout of lxde.rc.xml you can begin adding in your own custom keybindings — or reassigning existing ones.
Just pay attention to the <context> tags as these will determine where the keybindings are allowed to run.

But you can easily decipher the basic format:

```
<keybind key=”Scroll_Lock”>
 <action name=”Execute”>
 <command>sudo pm-suspend</command>
 </action>
 </keybind>
 ```
 
The above is a keybinding I have been using for years to make it easy for me to put my desktop into suspend rather than turning it off. It requires the pm-utils utility. But simply pressing the scroll lock key will automatically put my PC into the suspend state.

The only other edit I had to create to make this work was to disable wake from USB devices.

You can find the wake states of your various devices using:

```
cat /proc/acpi/wakeup
```

After some experimentation I was then able to pass:

```
sudo sh -c “echo XHC > /proc/acpi/wakeup”
```

If you like the thought of setting a suspend keybinding but are running into difficulty with your wireless mouse/keyboard waking the device without your intervention, you can find more information and details on AskUbuntu and here.

Sample edited default Openbox configuration file

Lower (10%), raise (10%), and toggle mute using the bottom three buttons on the numeric keypad:

```
<keybind key=”KP_End”>
 <action name=”Execute”>
 <command>amixer -D pulse set Master 10%-</command>
 </action>
</keybind>
<keybind key=”KP_Down”>
 <action name=”Execute”>
 <command>amixer -D pulse set Master 10%+</command>
 </action>
</keybind>
<keybind key=”KP_Next”>
 <action name=”Execute”>
 <command>amixer -D pulse set Master 1+ toggle</command>
 </action>
</keybind>
```

I use the Pause Break key to call up a Chrome App shortcut that launches Brain.fm:

```
<keybind key=”Pause”>
<action name=”Execute”>
<command>/opt/google/chrome/google-chrome — profile-directory=Default — app-id=dgksfs9fsfsfksf</command>
</action>
</keybind>
```

I use Flameshot for screenshots. I mapped the flameshot gui command onto the Print Screen key:

```
<keybind key=”Print”>
<action name=”Execute”>
<command>flameshot gui</command>
</action>
</keybind>
```

And of course I can suspend the computer directly using Scroll Lock. Just make sure to install pm-utils first:

```
<keybind key=”Scroll_Lock”>
 <action name=”Execute”>
 <command>sudo pm-suspend</command>
 </action>
 </keybind>
 ```
