## Good Resources for Learning 
- https://linuxjourney.com/

## Linux Directory Layout
- `/proc` - process information, you will see currently running processes as folders

### Commonly Used Files
- `/etc/passwd` - provides information about users
- `/etc/shadow` - information about user password, the passwords are encrypted

## Processes

### Signals
In Linux, when killing a process, you send a signal to the process.  
All the signals below can be sent with the `kill` command, an example would be: `kill -SIGSTOP 123` where 123 is the pid of the process.  
- `SIGHUP` - Send to the process when you close the terminal running it.
- `SIGINT` - Sent when you press `Ctrl+C`. The process will attempt to shutdown gracefully.
- `SIGTERM` - Can be sent with: `kill <proccespid>`. The process will attempt to shutdown gracefully.
- `SIGKILL` - Can be sent with: `kill -9 <proccespid>` or. Kill the process right away, The kill will be handled by the kernel.
- `SIGSTOP` - the usual behaviour is to pause that process in its current state. The process will only resume execution if it is sent the `SIGCONT` signal.
- `SIGCONT` - Continue a process that was stopped with `SIGSTOP`.

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
### Special Permission Types
- `S` : When a non-owner user will run the program, it will as if the owner is running it (will be either in owner or group section)
- `t` : sticky bit. This can be added to directories, it means that everyone are allowed to to read/write files, but not delete.

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