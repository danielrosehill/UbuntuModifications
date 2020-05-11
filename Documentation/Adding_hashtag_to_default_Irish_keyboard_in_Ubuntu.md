n order to permanently remap the Shift+3 combination in a default Irish keyboard in Ubuntu, follow these steps.

Firstly, navigate to the folder where the default keymaps are stored. This is
```
/usr/share/X11/xkb/symbols
```

Edit the Irish keyboard layout using nano or your text editor of choice:

```
sudo nano ie
```

The default combination for Shift + 3 is to display the Sterling currency symbol.


```
key <TLDE> { [ grave, notsign, brokenbar, > <br/>
key <AE01> { [ 1, exclam, exclamdown, on> <br/>
key <AE02> { [ 2, quotedbl, trademark, tw> <br/>
key <AE03> { [ 3, sterling, copyright, th> <br/>
```

Remap it to numbersign (not 'hashtag'!)

```
key <TLDE> { [ grave, notsign, brokenbar, > <br/>
key <AE01> { [ 1, exclam, exclamdown, on> <br/>
key <AE02> { [ 2, quotedbl, trademark, tw> <br/>
key <AE03> { [ 3, numbersign, copyright, th> <br/>
```

Save changes.

Reload the keymap to verify that the change has been applied correctly:
```
setxkbmap -layout ie
```

Now you can use the Irish keyboard layout in Ubuntu while retaining quick access to create hashtags for Twitter like in the US layout!
