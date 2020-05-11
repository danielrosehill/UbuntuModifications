# Chrome desktop entries for different users

Save with extension .desktop.

I haven't worked out a method for mapping profiles to "Profile X" — however "Default" is the first profile created.

The next profile created will be "Profile 1", etc.

The profile is called with the variable --profile-directory="Profile X"

A simple profile-specific desktop entry, therefore, would be structured something like this:

```
[Desktop Entry]
Type=Application
Name=Chrome (Unique Name)
Icon=google-chrome
Exec=google-chrome --profile-directory="Profile 1"
```
