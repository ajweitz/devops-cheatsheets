# General Commands
history # show all previous commands
clear # clear terminal
pwd # show current directory


# cd
cd .. # go back one level
cd - # go to previous dir

# ls
ls -R # list all the files in the sub-directories as well
ls -a # show the hidden files
ls -al # list the files and directories with detailed information like the permissions, size, owner, etc.

# cp
cp filename.txt /home/myuser # copy filename.txt to /home/myuser
cp *.txt /home/myser # copy all matching *.txt files to /home/myuser
cp -r ./ /home/myser # copy all files from current directory to /home/myuser

# mv
mv filename.txt newfilename.txt # rename file

# mkdir
mkdir foo # create directory foo
mkdir -p foo/bar/some/more/dirs # create dir+subdirs

# rm
rm filename.txt # remove file
rm -rf exampledir # remove a directory without promting for confirmation

# redirecting stdout and stderr
echo hello world > file.txt # redirecting stdout of echo to the file.txt
echo hello world >> file.txt # appending stdout of echo to the file.txt
ls /fake/dir 2 > file.txt # redirecting stderr of ls to the file.txt
ls /fake/dir > file.txt 2>&1 # redirecting both stdout and stderr of ls to the file.txt
ls /fake/dir &> file.txt # shorter way of doing the above
ls /fake/dir 2> /dev/null # redirect stderr to null pointer (this will simply not show stderr in the console)

# find
find /home/ -name notes.txt # find files in /home/
find . -name notes.txt # find files in the current directory use, 
find -type d -name myDir # look for directories

# grep

# awk

# sed

# du (check spack of a particular file or folder)

# df (check disk space)

# diff (compare 2 files)
diff file1 file2

# chmod

# chown

# wget 

# uname

# history

# netstat

# ps


## Bash Scripting
# vars
x=$(echo "hello world") # assign output of echo command to var x
