#!/bin/bash #

#Print the current working directory.
pwd
#List names of all the files in the current directory, one file per line.
pwd
#01-take.txt
#02-the.txt
#03-command.txt
#04-challenge.txt

#There is a file named access.log in the current directory. Print the contents.
cat access.log
#163.56.115.58 - - [09/Jan/2017:22:29:57 +0100] "GET /posts/2/display HTTP/1.0" 200 3240
75.113.188.234 - - [09/Jan/2017:22:30:43 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 1116
69.16.40.148 - - [09/Jan/2017:22:34:33 +0100] "GET /pages/create HTTP/1.0" 500 3471
225.219.54.140 - - [09/Jan/2017:22:35:30 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 500 2477
207.243.19.2 - - [09/Jan/2017:22:38:03 +0100] "GET /bar/create HTTP/1.0" 200 1116
199.37.62.156 - - [09/Jan/2017:22:42:18 +0100] "GET /posts/1/display HTTP/1.0" 200 2477
55.74.240.123 - - [09/Jan/2017:22:44:25 +0100] "POST /posts/1/display HTTP/1.0" 200 3471
251.111.109.143 - - [09/Jan/2017:22:49:02 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 2477
101.163.230.250 - - [09/Jan/2017:22:52:31 +0100] "DELETE /posts/2/display HTTP/1.0" 404 2477
200.19.168.148 - - [09/Jan/2017:22:57:11 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 3471

#Print the last 5 lines of "access.log".
tail -5 access.log
199.37.62.156 - - [09/Jan/2017:22:42:18 +0100] "GET /posts/1/display HTTP/1.0" 200 2477
55.74.240.123 - - [09/Jan/2017:22:44:25 +0100] "POST /posts/1/display HTTP/1.0" 200 3471
251.111.109.143 - - [09/Jan/2017:22:49:02 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 24771
01.163.230.250 - - [09/Jan/2017:22:52:31 +0100] "DELETE /posts/2/display HTTP/1.0" 404 2477
200.19.168.148 - - [09/Jan/2017:22:57:11 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 3471

#Create an empty file named take-the-command-challenge in the current working directory.
touch take-the-command-challenge 

#Create a directory named tmp/files in the current working directory
mkdir -vp tmp/files
#mkdir: created directory 'tmp'mkdir: 
#created directory 'tmp/files'

#Copy the file named take-the-command-challenge to the directory tmp/files
cp take-the-command-challenge tmp/files/

#Move the file named take-the-command-challenge to the directory tmp/files
Mov take-the-command-challenge tmp/files/ 

#A symbolic link is a type of file that is a reference to another file.

Create a symbolic link named take-the-command-challenge that points to the file tmp/files/take-the-command-challenge.
ln tmp/files/take-the-command-challenge -s

rm -R * .*
#rm: refusing to remove '.' or '..' directory: skipping '.'
#rm: refusing to remove '.' or '..' directory: skipping '..'

#There are files in this challenge with different file extensions. Remove all files with the .doc extension recursively in the current working directory.
find -name "*.doc" -delete

#There is a file named access.log in the current working directory. Print all lines in this file that contains the string "GET".
grep -F GET access.log 
#163.56.115.58 - - [09/Jan/2017:22:29:57 +0100] "GET /posts/2/display HTTP/1.0" 200 3240
#75.113.188.234 - - [09/Jan/2017:22:30:43 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 1116
#69.16.40.148 - - [09/Jan/2017:22:34:33 +0100] "GET /pages/create HTTP/1.0" 500 3471
#225.219.54.140 - - [09/Jan/2017:22:35:30 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 500 2477
#207.243.19.2 - - [09/Jan/2017:22:38:03 +0100] "GET /bar/create HTTP/1.0" 200 1116
#199.37.62.156 - - [09/Jan/2017:22:42:18 +0100] "GET /posts/1/display HTTP/1.0" 200 2477
#251.111.109.143 - - [09/Jan/2017:22:49:02 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 2477
#200.19.168.148 - - [09/Jan/2017:22:57:11 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 3471

#Print all files in the current directory, one per line (not the path, just the filename) that contain the string "500".
grep -lr 500 
#access.log.1 
#access.log

#Print the relative file paths, one path per line for all filenames that start with "access.log" in the current directory.
find . -name "*access.log"*
./access.log.1
./access.log
./access.log.2

#Print all matching lines (without the filename or the file path) in all files under the current directory that start with "access.log" that contain the string "500".

#Note that there are no files named access.log in the current directory, you will need to search recursively.
grep -h 500 **/access.log
69.16.40.148 - - [09/Jan/2017:22:34:33 +0100] "GET /pages/create HTTP/1.0" 500 3471
225.219.54.140 - - [09/Jan/2017:22:35:30 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 500 2477
2.71.250.27 - - [09/Jan/2017:22:41:26 +0100] "GET /pages/create HTTP/1.0" 500 2477

#Extract all IP addresses from files that start with "access.log" printing one IP address per line.
grep -ohr ^[0-9.]* **/access.log*

#Count the number of files in the current working directory. Print the number of files as a single integer.
163.56.115.58
75.113.188.234
69.16.40.148
225.219.54.140
207.243.19.2
199.37.62.156
55.74.240.123
251.111.109.143
101.163.230.250
200.19.168.148
108.68.174.15
17.2.20.139
28.151.137.59
199.150.241.179
2.71.250.27
17.137.186.194
151.84.119.34
4.180.204.195
9.230.96.54
157.143.233.21

ls -l wc -l 

#Print the contents of access.log sorted.
sort access.log
#101.163.230.250 - - [09/Jan/2017:22:52:31 +0100] "DELETE /posts/2/display HTTP/1.0" 404 2477
#163.56.115.58 - - [09/Jan/2017:22:29:57 +0100] "GET /posts/2/display HTTP/1.0" 200 3240
#199.37.62.156 - - [09/Jan/2017:22:42:18 +0100] "GET /posts/1/display HTTP/1.0" 200 2477
#200.19.168.148 - - [09/Jan/2017:22:57:11 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 3471
#207.243.19.2 - - [09/Jan/2017:22:38:03 +0100] "GET /bar/create HTTP/1.0" 200 1116
#225.219.54.140 - - [09/Jan/2017:22:35:30 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 500 2477
#251.111.109.143 - - [09/Jan/2017:22:49:02 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 2477
#55.74.240.123 - - [09/Jan/2017:22:44:25 +0100] "POST /posts/1/display HTTP/1.0" 200 3471
#69.16.40.148 - - [09/Jan/2017:22:34:33 +0100] "GET /pages/create HTTP/1.0" 500 3471
#75.113.188.234 - - [09/Jan/2017:22:30:43 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 1116

grep -c GET access.log

#The file split-me.txt contains a list of numbers separated by a ; character.

#Split the numbers on the ; character, one number per line.

sed 's.;.\n.g' split-me.txt

#Print the numbers 1 to 100 separated by spaces.
echo $(for i in {1..100};do echo $i;done)
#1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100

#This challenge has text files (with a .txt extension) that contain the phrase "challenges are difficult". Delete this phrase from all text files recursively.

#Note that some files are in subdirectories so you will need to search for them.

sed -i "challenges are difficult" **/*.txt

#The file sum-me.txt has a list of numbers, one per line. Print the sum of these numbers.
cat sum-me.txt|paste -sd+ |bc 


#Print all files in the current directory recursively without the leading directory path.

find * -type f -printf '%f\n'
corporis.xl
sanimi.doc
odit.doc
beatae.flac
error.doc
libero.xls
necessitatibus.doc
totam

#Rename all files removing the extension from them in the current directory recursively.
rm -r /*
aompletar txt

#The files in this challenge contain spaces. List all of the files (filenames only) in the current directory but replace all spaces with a '.' character.
find * | tr ' ' '.' 



bin
bin/dostuff.sh
terraform
terraform/main.tf
terraform/modulesterraform/modules/virtual_machine
terraform/modules/virtual_machine/outputs.tf
terraform/modules/virtual_machine/main.tf
terraform/modules/vpnterraform/modules/vpn/
templatesterraform/modules/vpn/templates/config.template
terraform/modules/vpn/main.tf
terraform/modules/vpn/filesterraform/modules/vpn/files/bootstrap.sh
terraform/modules/load_balancerterraform/modules/load_balancer/main.tf

#In this challenge there are some directories containing files with different extensions. Print all directories, one per line without duplicates that contain one or more files with a ".tf" extension.
find | grep .tf |xargs -n1 dirname |uniq


./terraform./
terraform/modules/virtual_machine./
terraform/modules/vpn./
terraform/modules/load_balancer
#There are a mix of files in this directory that start with letters and numbers. Print the filenames (just the filenames) of all files that start with a number recursively in the current directory.
find -type f -printf "%f\n" | grep ^[0-9]

25Brandon Mcdonald
639Charles Ferguson
04Carrie Alexander
778Holly Archer
3maxime.mp
3477Thomas Pierce MD
511Tammy Welch
974Michael Bowman
757Robert Marquez
540Katherine Jones
132Rebecca Rubio
335John Joseph
737Jeffrey Davis
42Robert Hill
78Michelle Spencer
436Teresa Owens
99blanditiis.avi
48Thomas Allen
670James Jacobs
388Andrew Carter
293Linda Bennett
402Nancy Henson
593Brett Martin
682Terri Jones

##Print the 25th line of the file faces.txt
sed -n 25p faces.txt

~~~~~~~~~~~~~~~~~~~~~
In the future
Environmental destruction will be the norm
No longer can it be said that
My peers and I care about this earth
It will be evident that
My generation is apathetic and lethargic
It is foolish to presume that
There is hope
~~~~~~~~~~~~~~~~~~~~~
-Jonathan Reed "The Lost Generation"

#Print the lines of the file reverse-me.txt in this directory in reverse line order so that the last line is printed first and the first line is printed last.
cat reverse-me.txt |tac


Jonathan Reed "The Lost Generation"
~~~~~~~~~~~~~~~~~~~~~
There is hopeIt is foolish to presume that
My generation is apathetic and lethargic
It will be evident that
My peers and I care about this earth
No longer can it be said thatEnvironmental destruction will be the norm
In the future~~~~~~~~~~~~~~~~~~~~~

#Print the file faces.txt, but only print the first instance of each duplicate line, even if the duplicates don't appear next to each other.

#Note that order matters so don't sort the lines before removing duplicates.
cat * | sort | uniq 

#The file random-numbers.txt contains a list of 100 random integers. Print the number of unique prime numbers contained in the file.


( ﾟヮﾟ)
(^̮^)
(¬_¬)
(° ͜ʖ °)
(ʘ‿ʘ)
(͡° ͜ʖ ͡°)
(ಠ_ಠ)
(ಠ‿ಠ)
(ಠ⌣ಠ
	(◕‿◕)
	(︺︹︺)
	(；一_一)
	¯\(°_o)
	/¯¯\_
	(ツ)_/
	¯ʘ‿ʘ٩◔̯◔۶ಠ_ಠಠಠ⌣ಠ)
ಠ‿ಠಠ⌣ಠ⊙﹏⊙◔̯◔
♥‿♥ヽ
༼ຈل͜ຈ༽ﾉ

sort -nu random-numbers.txt|factor|grep -cP ": \d+$"

#access.log.1 and access.log.2 are http server logs.

#Print the IP addresses common to both files, one per line.
cat access.log.1 access.log.2 | cut -d " " -f1 | sort | uniq -d


108.68.174.15
17.137.186.19
42.71.250.27
28.151.137.59
#Print all matching lines (without the filename or the file path) in all files under the current directory that start with "access.log", where the next line contains the string "404".

#Note that you will need to search recursively.

awk '/404/{print a}{a=$0} ' **/access.log*



251.111.109.143 - - [09/Jan/2017:22:49:02 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 2477
17.137.186.194 - - [09/Jan/2017:22:43:17 +0100] "GET /pages/create HTTP/1.0" 200 1116
89.148.148.238 - - [09/Jan/2017:22:33:09 +0100] "GET /posts/1/display HTTP/1.0" 502 2477
138.212.253.84 - - [09/Jan/2017:22:53:54 +0100] "GET /posts/foo?appID=xxxx HTTP/1.0" 200 3471
#Print all files with a .bin extension in the current directory that are different than the file named base.bin.
diff *.bin --to-file base.bin|cut -f3 -d" "

#There is a file: ./.../ /. .the flag.txt

#Show its contents on the screen.

test2.bin
test4.bin
test5.bin
test7.bin

cat ./.../*/'. .the flag.txt'

#How many lines contain tab characters in the file named file-with-tabs.txt in the current directory.
grep -c $'\t' file-with-tabs.txt

#There are files in this challenge with different file extensions.

#Remove all files without the .txt and .exe extensions recursively in the current working directory.

find -type f ! -regex '.*\(exe\|txt\)$' -delete

#There are some files in this directory that start with a dash in the filename. Remove those files.
rm ./-*

#There are two files in this directory, ps-ef1 and ps-ef2. Print the contents of both files sorted by PID and delete repeated lines.
sort -nk2 p*|uniq

#In the current directory there is a file called netstat.out. Print all the IPv4 listening ports sorted from the higher to lower
cat netstat.out | grep LISTEN |grep -v tcp6 | grep -oP '\:\K\d+'

#Your first challenge is to print "hello world" on the terminal in a single command.

#Hint: There are many ways to print text on the command line, one way is with the 'echo' command. Try it below and good luck!
111
80
8080
1234
22
1723
1244
9090
45922
1254
