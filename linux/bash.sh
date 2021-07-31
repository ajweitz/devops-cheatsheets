#########
# GENERAL
#########
history # show all previous commands
clear # clear terminal
pwd # show current directory
env # show environment variables
date # gives you current datetime

# watch
watch date # runs the command every 2 seconds and tracks the output. Useful when you want to track changes of a process

############
# NAVIGATION
############
# cd
cd .. # go back one level
cd - # go to previous dir

# ls
ls -R # list all the files in the sub-directories as well
ls -a # show the hidden files
ls -al # list the files and directories with detailed information like the permissions, size, owner, etc.

# touch
touch somefile.txt # create empty somefile.txt file

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

###################
# TEXT MANIPULATION
###################

# redirecting stdout and stderr
echo hello world > file.txt # redirecting stdout of echo to the file.txt
echo hello world >> file.txt # appending stdout of echo to the file.txt
ls /fake/dir 2 > file.txt # redirecting stderr of ls to the file.txt
ls /fake/dir > file.txt 2>&1 # redirecting both stdout and stderr of ls to the file.txt
ls /fake/dir &> file.txt # shorter way of doing the above
ls /fake/dir 2> /dev/null # redirect stderr to null pointer (this will simply not show stderr in the console)

# grep (finding occurences of strings in files)
 grep someword file.txt # find all the lines that have someword
 ll | grep someword # find all the lines that have someword
 someerror 2> >(grep someword) # redirect stder to grep
 grep someword -i file.txt # find all the lines that have someword, and ignore case (can be SOMEWORD, SoMeWORD, etc...)

# awk

# sed

# head/tail
#head
ll | head # show the first few lines of ll
head /var/log/syslog # show first few lines of a given file
#tail
ll | tail # show the last few lines of ll
tail /var/log/syslog # show first few lines of a given file
tail /var/log/syslog # open and follow changes in file as they happen live

# diff (compare 2 files)
diff file1 file2

# cut (get fixed amount of characters from every line of text)
ll | cut -c 1 # will get the 1st character of every line of the command ll
ll | cut -c 2-4 # will get the 2nd, 3rd and 4th character of every line of the command ll
ll | cut -f 2 -d ' ' # will get the 2nd element of every line, using whitespace as a delimeter

# paste (combining multiple lines into one)
paste -s file.txt # combine all lines in files into one, seperated by TAB
paste -s file.txt -d ';' # combine all lines in files into one, seperated by ;
ll | paste -s -d ' ' # combine all lines from ll command into one, seperated by whitespace

# sort (sort lines)
sort file1.txt # sort lines in a file
ll | sort  # sort lines from output
sort -r file.txt # sort and reverse lines in file

# uniq (find unique lines)
uniq file.txt # show only the unique lines in a file
uniq -c file.txt # show only the unique lines. Add a counter for each of the occurences of a line
uniq -u file.txt # show only the lines that appear once
uniq -d file.txt # show only the duplicated lines

# wc (count lines/words/bytes in a file)
wc file.txt # count the number of words in a file
wc -l file.txt # count the number of lines in a file
wc -c file.txt # count the number of bytes in a file

#############
# PERMISSIONS
#############
# chmod
chmod 744 file.txt # set rwx (owner) rw- (group) rw- (other users) permissions to the file.txt

# chown
sudo chown someuser file.txt # set owner to a file
sudo chown someuser:somegroup file.text # set owner + owner group to a file
# chgrp
sudo chgrp somegroup file.txt # set owner group to a file

# useradd (Adding a user)
sudo useradd someuser

# userdel (Deleting a user)
sudo del someuser

# changing a user password
passwd someuser

############
# NETWORKING
############

# wget 

# netstat

################
# OS INFORMATION
################

# ps
ps # show user's processes
ps a  # show processes by other users as well
ps ax # show all processes, including daemons
ps aux # show all processes, with additional details

# top
top # show all processes in real time, task manager style

# du (check space of a particular file or folder)

# df (check disk space)

# uname

###########
# SCRIPTING
###########
# vars
x=$(echo "hello world") # assign output of echo command to var x
echo hello $(echo "world") # command inside $() will be executed and substituted with the output it generates. The output of this will be: hello world

# loops
cat file.txt | while read line; do echo $line; done # basically: for line in file.txt. iterating through each line of output (one-liner)

# || OR
command1 || command2 || command3 # Will execute commands in order, only if previous command FAILED. will return 0 if at least 1 command was successful

# && AND
command1 && command2 && command3 # Will execute commands in order, only if previous was succesful