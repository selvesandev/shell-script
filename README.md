# Shell Scripting.

#### Create a shell file and give execute permission

```
touch myscript.sh && chmod +x myscript.sh
```


#### Create a shabang (Sharp and Bang)

```
#! /bin/bash

```


#### Print Command
```
echo Hello World
```

#### Variable
* Uppercase by convention
* Letters, Numbers, Underscore

```
NAME="Brad"

parent_dir="/backups/mysql"
defaults_file="/etc/mysql/backup.cnf"
todays_dir="${parent_dir}/$(date +%a)"
log_file="${todays_dir}/backup-progress.log"
encryption_key_file="${parent_dir}/encryption_key"
now="$(date +%m-%d-%Y_%H-%M-%S)"
processors="$(nproc --all)"

```

#### User Input

```
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meed you! "
```

#### Conditional

**If Else**
```
if [ "$NAME" == "Selvesan" ]
then
    echo "You are Selvesan!! Welcome"
else
    echo "You are not selvesan!! GO AWAY"
fi
```

**Else If**

```
 if [ "$NAME" == "Brad" ]
 then
   echo "Your name is Brad"
 elif [ "$NAME" == "Jack" ]
 then
   echo "Your name is Jack"
 else
   echo "Your name is NOT Brad or Jack"
 fi

```


#### Comparisons
* `val1 -eq val2` Returns true if the values are equal
* `val1 -ne val2` Returns true if the values are not equal
* `val1 -gt val2` Returns true if val1 is greater than val2
* `val1 -ge val2` Returns true if val1 is greater than or equal to val2
* `val1 -lt val2` Returns true if val1 is less than val2
* `val1 -le val2` Returns true if val1 is less than or equal to val2

```
NUM1=31
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi
```


#### File Conditions

* `-d file`   True if the file is a directory
*  `-e file`   True if the file exists (note that this is not particularly portable, thus -f is generally used)
*  `-f file`   True if the provided string is a file
*  `-g file`   True if the group id is set on a file
*  `-r file`   True if the file is readable
*  `-s file`   True if the file has a non-zero size
*  `-u`    True if the user id is set on a file
*  `-w`    True if the file is writable
*  `-x`    True if the file is an executable

```
FILE="test.txt"
if [ -e "$FILE" ]
then
    echo "$FILE exists"
else
    echo "$FILE does NOT exist"
fi

```



#### Switch Case

```
 read -p "Are you 21 or over? Y/N " ANSWER
 case "$ANSWER" in 
   [yY] | [yY][eE][sS])
     echo "You can have a beer :)"
     ;;
   [nN] | [nN][oO])
     echo "Sorry, no drinking"
     ;;
   *)
     echo "Please enter y/yes or n/no"
     ;;
 esac
```
**Note** Should be ended by `;;` and check the user's input as `small "n" or capital "N" or "y" or "Y" or "Yes" or "No"`


#### Loop
**Loop through each person**
```
NAMES="Brad Kevin Alice Mark"

for NAME in $NAMES
do
 echo "Hello $NAME"
done
 
```

#### Loop to rename a file

```
 FILES=$(ls *.txt)
 NEW="new"
 for FILE in $FILES
   do
     echo "Renaming $FILE to new-$FILE"
     mv $FILE $NEW-$FILE
 done
```

#### Loop through a file one by one

```
 LINE=1
 while read -r CURRENT_LINE
   do
     echo "$LINE: $CURRENT_LINE"
     ((LINE++))
 done < "./new-1.txt"
```


#### Functions

```
 function greet() {
   echo "Hello, I am $1 and I am $2"
 }
 greet "Brad" "36"
```

#### Create Folder and write to a file.
```
    mkdir hello
    touch "hello/world.txt"
    echo "Hello World" >> "hello/world.txt"
    echo "Created hello/world.txt"
```

#### Colors in Shell
A script can use escape sequences to produce colored text on the terminal.

> reset = 0, black = 30, red = 31, green = 32, yellow = 33, blue = 34, magenta = 35, cyan = 36, and white = 37

```
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'
Yellow=$'\e[33m'
Cyn=$'\e[1;36m'
End=$'\e[0m'

blink=$'\e[5m'
bold=$'\e[1m'
underline=$'\e[4m'
standout=$'\e[7m'
```

#### Remove/Create/Move/Copy File

```
rm -rf ../folder/path
```

```
mkdir ../account
```



```
cp -rf dist/css/ ../account/public/css
```


#### Pass Data to Shell Script

You can access passed arguments with $n where n is the argument number

```
echo $1
echo $2
echo $3

./argument.sh hello there hey 
 
 //prints hello there hey


```


### Make a file Executable

```
chmod +x /tmp/{backup,extract,prepare}-mysql.sh
```


### Download A File
```
curl -LO https://raw.githubusercontent.com/do-community/ubuntu-1604-mysql-backup/master/backup-mysql.sh
```


### Shell Script in Linux (Shortcut)
Create your `.sh` scripting file in `/usr/locan/bin` directory and give it a executable permission `eg: chmod +x file_name.sh` to execute the file from anywhere as `file_name.sh`.




### COMPRESS & UNCOMPRESS FOLDER
compress
```
tar -zcvf archive-name.tar.gz directory-name
```

uncompress
```
tar -zxvf prog-1-jan-2005.tar.gz -C /tmp
```
