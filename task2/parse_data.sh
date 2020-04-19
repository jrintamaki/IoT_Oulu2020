#!/bin/sh

Help()
{
   # Display Help
    echo "Provide three inputs: "
    echo "1. Input dataset"
    echo "2. List of sensors"
    echo "3. Output file (empty)"
    echo
    echo "Options:"
    echo "-m modify id file to be appropriate"
    echo "-p parse unecessary data from dataset"
    exit
}

Parse()
{
    # Parse original dataset
    echo "Parsing data"
    tmpfile=$(mktemp /tmp/abc-script.XXXXXX)
    cat $FILE1 > $tmpfile
    cut -d, -f1,2,7 $tmpfile > $FILE1
    rm "$tmpfile"
}

Modify()
{
    # Modify id file
    echo "Modifying id:s"
    tmpfile=$(mktemp /tmp/abc-script.XXXXXX)
    tr '[:upper:]' '[:lower:]' < $FILE2 > $tmpfile
    sed 's/\(..\)\(..\)\(..\)\(..\)\(..\)\(..\)\(..\)\(..\)/\1-\2-\3-\4-\5-\6-\7-\8/' $tmpfile > $FILE2
    rm "$tmpfile"

}

#Flag variables for parameters
P=0
M=0

#Get options
while [ -n "$1" ]; do
   case $1 in
      -h) Help ;;
      -p) P=1 ;;

      -m) M=1 ;;

      --)
		shift # The double dash which separates options from parameters

		break
		;; # Exit the loop using break command

      *) echo "Option $1 not recognized" ;;
   esac

   shift

done

#Get parameters
FILE1=$1
FILE2=$2
FILE3=$3

#Check if parameters are used
if [ $P -gt 0 ]
then
    Parse
fi

if [ $M -gt 0 ]
then
    Modify
fi


i=0

#Read id:s and put them to variable
echo "Grepping"
while IFS= read -r line; do
    if [ $i -gt 0 ]
    then
        VAR1="$VAR1\|$line"
    else
	VAR1="$line"
    fi

    i=$((i+1))
done < $FILE2

#Grep lines from dataset according to id:s
grep "$VAR1" $FILE1 >> $FILE3
