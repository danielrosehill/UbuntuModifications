## How to change the time applet to display the day only in LXDE

One of my favorite changes to make in LXDE is to change the default display of the digital clock applet to display the day only.

Full documentation on how to use the date command can be found [at this link](http://manpages.ubuntu.com/manpages/trusty/man1/date.1posix.html).

In order to edit the applet, simply right click on it:

![](/images/date1.png)

And then navigate to 'Digital Clock Settings':

![](/images/date2.png)

You can change the setting to this:

![](/images/date3.png)

Some common settings I have applied at various times are:

%a: Abbreviated weekday (e.g. Sun, Mon, Tues)

%H:%M: 24 hour clock with a colon (:) separateing. E.g. 13:24

%u: Weekday as a decmical number starting with 1

%w: Weeking as a decimal number starting with 0

%Z: Timezone name

