-- This file is intended to be run from a floppydisk in-game
-- This install file installs the git clone utility and a help text file to the appropriate directories
shell.run("mkdir /etc")
shell.run("mkdir /etc/help")
help.setPath("/etc/help")
shell.run("cp /disk/clone.lua /etc/clone.lua")
shell.run("cp /disk/clone.txt /etc/help/clone.txt")