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
