# Disabling wake on mouse and keyboard

To show current wakeup devices. This is a volatile file. Changes do not persist through reboot.

```
cat /proc/acpi/wakeup
```

To disable XHC (USB hub macro-controller?) during this session:

```
sudo sh -c "echo XHC > /proc/acpi/wakeup"
```

[To make the change permanent](http://www.das-werkstatt.com/forum/werkstatt/viewtopic.php?f=7&t=1985)
