-- This file is intended to be run from a floppydisk in-game
-- This install file installs the git clone utility and a help text file to the appropriate directories
mkdir /etc
mkdir /etc/help
help.setPath(/etc/help)
cp /disk/clone.lua /etc/clone.lua
cp /disk/clone.txt /etc/help/clone.txt