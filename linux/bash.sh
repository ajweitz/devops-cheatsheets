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
echo hello world # prints hello world
echo -n hello world # prints hello world without adding \n at the end
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
somecommand | grep -v someword # show all lines that DON'T math someword
somecommand | grep -E 'this|that' # show all lines that match 'this' OR 'that'

# awk
# printing rows
ps | awk '{print $2}' # print 2nd row of output of ps
awk -F : '{print $1}' /etc/passwd # print the 1st row of /etc/passwd, using : as a delimeter
df -h | awk '{print $1"\t"$2}' # print 1st and 2nd row from 'df -h' and seperate the rows with \t (Tab)

# sed
# find and replace
sed 's/this/withthat/' <somefile.txt # replace first occurence of 'this' with 'withthat' on every line
sed 's/this/withthat/g' <somefile.txt # replace every occurence of 'this' with 'withthat'
#print specific lines
ll | sed -n '7p;8q' # print line 7, 8q is optional, it tell sed to not process beyond line 8
ll | sed -n '20,40p;41q' # print lines 20-40
ll | sed -n '/sometext/q;p' # print all lines and discard everything from when it matches "sometext"

# xargs
ll | xargs # print all lines in one line
ll | xargs -I {} somecommand {} # for each line in ll as {}, run somecommand on it. (for {} in ll).

# head/tail
#head
ll | head # show the first few lines of ll
head /var/log/syslog # show first few lines of a given file
#tail
ll | tail # show the last few lines of ll
tail /var/log/syslog # show last few lines of a given file
ll | tail -n +2 # print everything except the first line

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
ll | sort -k 3 # sort based on 3rd column
ll | sort -k 5 -h # -h will make the sort based on numeric values. Can be also written as sort -hk 5

# uniq (find unique lines)
uniq file.txt # show only the unique lines in a file
uniq -c file.txt # show only the unique lines. Add a counter for each of the occurences of a line
uniq -u file.txt # show only the lines that appear once
uniq -d file.txt # show only the duplicated lines

# wc (count lines/words/bytes in a file)
wc file.txt # count the number of words in a file
wc -l file.txt # count the number of lines in a file
wc -c file.txt # count the number of bytes in a file

# base64
echo -n some string | base64 # encode some string to base64
echo -n c29tZSBzdHJpbmc= | base64 -d # decode base64


#############
# PERMISSIONS
#############

# chmod
chmod 744 file.txt # set rwx (owner) rw- (group) rw- (other users) permissions to the file.txt
chmod ug+w # add w (write) permissions to g (group) and u (other users)
sudo chmod u+s myfile # add S permission to u (other users). More info on S can be found in README.md
sudo chmod 4755 myfile # set permissions with S in numerical format
sudo chmod g+s myfile # add S permission to g (group).
sudo chmod 2755 myfile # set permissions with S (for group) in numerical format
sudo chmod +t mydir # adding sticky bit permission. More info on S can be found in README.md
sudo chmod 1755 mydir # set permissions with sticky bit included in numerical format

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

# user mod
usermod -a -G somegroup someusername # adding a user to a group


############
# NETWORKING
############

# wget 

# curl
curl example.com # GET request to example.com, will return the body.
curl -i example.com # GET request, returns header+body
curl -I example.com # retruns header only
curl -O example.com/somefile.zip # download the file somefile.zip
curl -d somedata example.com/somePostReqUrl # send a POST request with "somedata" in the body
curl -X PUT example.com/somePutUrl # specify an HTTP method, in this case PUT
curl -H "Content-Type: application/json" example.com # specify a header
curl -L google.com # follow a redirect

# netstat
netstat # show all the active connections and open ports (bi-directional, TCP+UDP)
netstat -l # show all the ports we listen to
netstat -lt # show all the TCP ports we listen to
netstat -lu # show all the UDP ports we listen to
netstat -p # show propgrams that are using these ports
netstat -plt # show all the TCP ports we listen to and what programs are using them
netstat -ap # show all active connections for programs

# traceroute
traceroute google.com -I # print the network path to a given host

# nmap
nmap -p 1-65535 -T4 -A -v someHost # Test what TCP post are reachable on the target host

# nc (Netcat)
nc -zv google.com 80 # test connection to a server with specific port
nc -v -z -w 3 google.com 80 &> /dev/null && echo "Online" || echo "Offline" # test connection to a port with a timeout of 3 seconds. will print online/offline.

# telnet
telnet google.com 80 # test connection to a server with specific port

# tcpdump

# scp
scp somefile.txt username@remotehost/remote/directory # copy a file to remote host
scp username@remotehost.com:/remote/directory/somefile.txt /local/directory # copy a file from remote host
scp -r somedir username@remotehost.com:/remote/directory # copy a directory to remote host

# rsync
rsync -r /some/dir /another/dir # synchronize 2 directories (copy from /some/dir to /another/dir only the files that are missing)
rsync -zvrh /some/dir /another/dir # sync 2 directories (h - human readable, v - verbose, z - compressed, r - recursive)
rsync -r somedir username@remotehost.com:/remote/directory # sync a directory to remote host
rsync -r username@remotehost.com:/remote/directory /local/directory # sync a directory from remote host

# dig (DNS lookup utility)
dig example.com # shows DNS information about resolving the given domain name

# arp
arp -n # view ARP cache

# ip
ip -s -s neigh flush all # clear ARP cache

########
# SYSTEM
########

# ps
ps # show user's processes
ps a  # show processes by other users as well
ps ax # show all processes, including daemons
ps aux # show all processes, with additional details
ps -eo pid,ppid,ni,comm # show process information with niceness

# kill
kill 123 # kill a process based on pid. Will send a SIGTERM (kill gracefully)
kill 123 -9 # kill the process right away, will send a SIGKILL (force kill)
kill %1 # kill a background job, look in JOBS section for more info about jobs

# top
top # show all processes in real time, task manager style
top -p 123 # track process with pid 123

# free
free # shows information about memory and swap
free -h # shows the info in human readable form

# du 
du -h # show disk usage of all folders in the current directory (including hidden)
du -hs * # show disk usage of all non-hidden folders in the current directory

# df
df -h # check disk usage of different partitions (disk size)
df -i # check how many inodes are available on the system (if you have many small files, you can run out of inodes before running out of space).

# ln
ln -s somefile.txt linktosomefile.txt # create a symbolic link (linktosomefile.txt -> somefile.txt)
ln somefile.txt linktosomefile.txt # create a hard link (this will create an inode link, original file could be renamed or deleted and the link will be kept)

# systemctl
systemctl --type=service # list all services and their state
systemctl status someservice.service # show information about the service
sudo systemctl start someservice.service # start the service
sudo systemctl stop someservice.service # stop the service
sudo systemctl restart someservice.service # restart the service
sudo systemctl enable someservice.service # automatically start on boot
sudo systemctl disable someservice.service # disable start on boot

# uname
uname # print the kernel name
uname -n # print hostname
uname -o # print the OS
uname -r # print the kernal release

# uptime
uptime # show you the time that the OS is running for and the load on the CPUs (per 1, 5 and 15 minutes. To convert to %, you need to divide load/CPU_AMOUNT)

# iostat
iostat # shows information about disk usage and CPUs.

# vmstat
vmstat # information about memory

# nice
# niceness values are from -20 to 19
nice -n 20 somecommand # run a command with low priority (low niceness)
sudo nice -20 somecommand # run a command with high priority (high niceness), only allowed by root

# renice
renice 20 -p 123 # change the priority (niceness) to low, for a process based on pid
sudo renice -20 -p 123 # change the priority (niceness) to high

# shutdown
shutdown now # shutdown right away
shutdown -h +2 # shutdown in 2 minutes

# reboot
reboot # restart


######
# JOBS (running a process in the background)
######

# &
somecommand & # Running process in the background, in a job
# jobs
jobs # show jobs you run in the background
# fg 
fg # bring back a job under your control
fg %2 # bring back a specific job (based on id of what jobs command shows you)


###########
# PACKAGING
###########

# yum (Redhat/CentOS)
yum install somepackage # Install a package
yum erase somepackage # delete a package
yum update # update all installed packages
yum info somepackage # info about a package

# apt (Debian/Ubuntu)
apt install somepackage # Install a package
apt remove somepackage # delete a package
apt update; apt upgrade # update all installed packages
apt show somepackage # info about a package

# rpm (Redhat/CentOS)
rpm -i somepackage.rpm # install a package (without dependencies)
rpm -e somepackage.rpm # uninstall a package
rpm -qa # list installed packages

# dpkg (Debian/Ubuntu)
dpkg -i somepackage.deb # install a package (without dependencies)
dpkg -r somepackage.deb # uninstall a package
dpkg -l # list installed packages

# tar
tar cvf sometarfile.tar somefileA somefileB # create a tar file
tar cvf sometarfile.tar *.txt # create a tar from all the *.txt files
tar xvf sometarfile.tar # extract a tar file
tar czf sometarfile.tar.gz somefileA somefileB # create a tar file compressed with gunzip
tar xzf sometarfile.tar.gz # uncompress gunzip, then extract the tar


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