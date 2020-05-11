# To enable "one click suspend" and disable wake from USB devices

## Creating Keybinding

Firstly, install the pm-utils package from the repositories.

The LXDE (Openbox) configuration file contains a keybinding for mapping Scroll Lock to a command that puts the computer into suspend mode (not hibernate!).


```
<keybind key="Scroll_Lock">
<action name="Execute">
<command>sudo pm-suspend</command>
</action>
</keybind>
```

To update the Openbox configuration, run:
```
sudo openbox --reconfigure
```

## Disabling Wake from Wireless USB Devices

When I used a USB mouse, the computer would wake by itself due to tiny movements of the mouse. The solution was disabling the mouse (and keyboard) so that only pressing the power button would take the computer out of hibernation.

This is really going to work out well if the external power button I have ordered ever arrives!

There is some discussion about how to achieve this on ask Ask Ubuntu here.

My notes:

Disabling wakeup from USB devices (such as wireless mouse) in *buntu:

PWRB is usually “power button”. Make sure not to disable this so that you have some way to restore the system from suspend/hibernate.

```
cat /proc/acpi/wakeup
```

To show current wakeup devices. This is a volatile file. Changes do not persist through reboot.

After much trial and error, I found that 'XHC' was the unique hardware identifier tied to my Logitech wireless keyboard/mouse set. To disable XHC (USB hub macro-controller?) during this session, I was able to pass: 

```
sudo sh -c "echo XHC > /proc/acpi/wakeup"
```
