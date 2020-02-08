#! /bin/bash

 FILE="test.txt"
 if [ -e "$FILE" ]
 then
   echo "$FILE exists"
 else
   echo "$FILE does NOT exist"
 fi



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



 FILES=$(ls *.txt)
 NEW="new"
 for FILE in $FILES
   do
     echo "Renaming $FILE to new-$FILE"
     mv $FILE $NEW-$FILE
 done




