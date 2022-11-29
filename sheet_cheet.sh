### Piping
# write output to a new file (creating it and overwriting all it contents)
# ">"
# e.g. writing the output of "ll" to test.txt
ll > test.txt

# append output to a file (or create a new one)
# ">>"
ll >> test.txt

### Ownership
# "ll"
# provides information for the output of "ll": https://wiki.ubuntuusers.de/ls/#Allgemeines-Beispiel
# --> short: 
#   d for directory
#   - for file
#   rwx read write execute
#   rwx or - will be repeated for owner, group and the "world" or anybody else
#   owner group

# "chown"
# changing the owner to new_owner (e.g. root) 
chown new_owner <filename>
# changing the group to new_group (e.g. root) 
chown :new_group <filename>

# changing read and write permissions
# "chmod"
# useful information: https://www.cyberciti.biz/faq/unix-linux-bsd-chmod-numeric-permissions-notation-command/
# 4 = read
# 2 = write
# 1 = execute
# build the sum of these: e.g. only read --> 4; read+write=6, read+write+execute=7
# in most cases you can use 3 octal numbers to describe relevant stuff. First number for the owner, second for the group and third number for everyone else. 
# e.g. chmod 642 <filepath> 
# the owner can rw, the user can r and everyone else can write (stupid example :D)
# 
# Usefule numbers:
# 600 --> owner can rw, the rest has no rights
# 
