This is a thing to export saved variables for addon documentation.

The prettydoc program assumes you have mingw and a lua.exe in $PATH.

IF YOU WRITE ME BECAUSE YOU TRIED THIS WITHOUT USING THE PATH TO YOUR
ACTUAL ADDON DIRECTORY, I WILL HUNT YOU DOWN AND DESTROY EVERYTHING YOU
HAVE EVER LOVED.

You should create a directory named after the realm type.  For instance:

$ mkdir pts
$ ./prettydoc pts "/c/games/RIFT PTS/Interface/AddOns"

This populates the 'pts' directory with an index.html, a full.html
(the whole thing all in one file), and a bunch of other files.  Not very
heavily tested.

