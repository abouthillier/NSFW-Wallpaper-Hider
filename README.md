# README #

### What is this repository for? ###

Update:

You'll notice the .app folder in the repo, I'm working on getting the icon to switch upon execution. Feel free to use the script below, but if you have an idea for the icon problem, let me know!

NSFW Wallpaper Hider is a simple bash script that allows
the user to hide or include NSFW-labelled images in a
rotating wallpaper cycle.

This script hides the offending files with the prepended `.`
in the filename. In your Finder, you may toggle hidden files
with simple terminal commands. I prefer to use aliases, so
I have provided the appropriate aliases in the provided
`.bash_profile` script. These aliases can reside in `.bash_profile`
or your `.bashrc` file, whichever you prefer.

Simple run `showFiles` or `hideFiles` to toggle your desired view. This ability to toggle
hidden files will give you a visual of the working script, to see for yourself before you
go into the big meeting and don't want Oliva Wilde spanning your desktop.

### How do I get set up? ###

Simply move the `screen.sh` file to your home directory
(or wherever you want to run it from) and edit the directory
in the script to point to the folder where you keep your
wallpapers. This script runs on the assumption that all
offending files have the term `nsfw` somewhere in the
filename. Case is not sensitive.

Examples:

- `nsfwBatmanOnAUnicyle.jpg`

- `RaxacoricofallapatoriusNSFW.png`

- `Kermit-nsfw-drinking-whiskey.jpg`


Once you have your `nsfw` files littered amongst your G-rated wallpapers,
you can run the script in your Terminal with `./screen.sh`.

This currently only works on Mac OSX. Last tested on 10.10 Yosemite.

### Who do I talk to? ###

Alex Bouthillier

alexbouthillier@gmail.com

abouthillier@cs.uri.edu