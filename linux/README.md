## Good Resources for Learning 
- https://linuxjourney.com/

## Linux Directory Layout


### Commonly Used Files
- `/etc/passwd` - provides information about users
- `/etc/shadow` - information about user password, the passwords are encrypted


## Files and Permissions
When you run `ll` you are going to see a list of files/directories with something like this `drwxr-xr-x` in the beggining of each line.

The first letter means the file type.  
### File Types
- `-` : regular file
- `d` : directory
- `c` : character device file
- `b` : block device file
- `s` : local socket file
- `p` : named pipe
- `l` : symbolic link

The next part would be the permissions.
### Permission Types
- `r` : read - digit 4
- `w` : write - digit 2
- `x` : execute - digit 1
- `-` : empty

And the permissions are divided into 3 sections:
1. owner
2. group
3. other users

So by analyzing `drwxr-xr-x` we can see that it's:
1. `d` - directory
2. `rwx` - **Read, Write, Execute** permissions given to **owner**
3. `r-x` - **Read, Execute** permissions given to **group**
4. `r-x` - **Read, Execute** permissions given to **other users**

These permissions can be also written as `733`, because:  
`rwx` (4+2+1) = 7  
`r-x` (4+0+1) = 3  
`r-x` (4+0+1) = 3  