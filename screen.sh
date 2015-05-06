#!/bin/bash

#---------------------------------------------------#
#   NSFW Wallpaper Hider                            #
#                                                   #
#   Developed by Alex Bouthillier                   #
#       Email: alexbouthillier@gmail.com            #
#       Alternate: abouthillier@cs.uri.edu          #
#                                                   #
#   Last Revision: 10/17/14                         #
#       - Added Comments                            #
#                                                   #
#   This script is protected under the              #
#    Creative Commons Attribution License.          #
#   https://creativecommons.org/licenses/by/3.0/    #
#---------------------------------------------------#

# This assumes that all NSFW files to be affected
#  have "nsfw" somewhere in the filename.
#  Case is insensitive.

# Directory where the wallpapers are located
cd ~/Downloads/Wallpapers

# Count how many hidden files there are
lines=`ls -a | grep -s .* | wc -l`

# Count how many NSFW images there are
files=`ls -a | grep nsfw | wc -l`

# If there are more hidden files than just the
#  default .DS_store file
if [ "$lines" -gt "1" ]; then

    # Loop through each file
    for f in $(ls -a | grep -i nsfw); do

        # And remove the period, making visible
        mv -n "$f" "${f#.}"
    done
    echo "$files" NSFW files now visible

# If there are no additional hidden files
else

    # Loop through each file
    for file in $(ls -a | grep -i nsfw); do

        # Prepend the period, removing visibility
        mv "$file" ".$file"
    done
    echo "$files" NSFW files now hidden
fi
sleep .75
clear
