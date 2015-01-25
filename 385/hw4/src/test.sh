#!/bin/bash

MYOUTPUT="tempMyOutput.txt"
FINDOUTPUT="tempFindOutput.txt"

MYFIND="/home/wcmonty/Projects/385/hw4/src/findIt"

testIt() {
    printf "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n"
    printf "Testing: findIt $ARGS | sort\n"
    read -p "Press [ENTER] to continue"
    $MYFIND $ARGS | sort > $MYOUTPUT
    /usr/bin/find $ARGS | sort > $FINDOUTPUT

    colordiff $MYOUTPUT $FINDOUTPUT
}

ARGS=" -not -type f -print"
$MYFIND $ARGS > $MYOUTPUT
find $ARGS > $FINDOUTPUT
colordiff $MYOUTPUT $FINDOUTPUT
read -p "blah:"

ARGS="/home/wcmonty -access read -print"


ARGS="/home/wcmonty -largest file"
$MYFIND $ARGS

ARGS="/home/wcmonty -smallest file"
$MYFIND $ARGS

ARGS="/run -sparse -print"
$MYFIND $ARGS | sort > $MYOUTPUT
/usr/bin/find /run -printf "%S\t%p\n" | gawk '{if ($1 < 1.0 && $1 > 0) print $2}' | sort > $FINDOUTPUT
colordiff $MYOUTPUT $FINDOUTPUT

ARGS="/dev -type b -print"
testIt

ARGS="/dev -type c -print"
testIt

ARGS="/home/wcmonty -type d -print"
testIt

ARGS="/dev -type p -print"
testIt

ARGS="/home/wcmonty -type f -print"
testIt

ARGS="/home/wcmonty -type l -print"
testIt

ARGS="/home/wcmonty -type s -print"
testIt

ARGS="-print"
testIt

ARGS="/home/wcmonty -print"
testIt

ARGS="/home/wcmonty -size 2M -print"
testIt

ARGS="/home/wcmonty -size +2M -print"
testIt

ARGS="/home/wcmonty -size -2M -print"
testIt

ARGS="/home/wcmonty -size 512k -print"
testIt

ARGS="/home/wcmonty -size +512k -print"
testIt

ARGS="/home/wcmonty -size -512k -print"
testIt

ARGS="/home/wcmonty -size 512 -print"
testIt

ARGS="/home/wcmonty -size +512 -print"
testIt

ARGS="/home/wcmonty -size -512 -print"
testIt

ARGS="/home/wcmonty -size +512 -print"
testIt

ARGS="/home/wcmonty -size -512 -print"
testIt

ARGS="/home/wcmonty -uid $UID -print"
testIt

ARGS="/home/wcmonty -uid 0 -print"
testIt

ARGS="/home/wcmonty -atime -1 -print"
testIt

ARGS="/home/wcmonty -atime +1 -print"
testIt

ARGS="/home/wcmonty -atime 10 -print"
testIt

ARGS="/home/wcmonty -amin -10 -print"
testIt

ARGS="/home/wcmonty -amin +10 -print"
testIt

ARGS="/home/wcmonty -amin 10 -print"
testIt

ARGS="/home/wcmonty -ctime -1 -print"
testIt

ARGS="/home/wcmonty -ctime +1 -print"
testIt

ARGS="/home/wcmonty -ctime 1 -print"
testIt

ARGS="/home/wcmonty -cmin -10 -print"
testIt

ARGS="/home/wcmonty -cmin +10 -print"
testIt

ARGS="/home/wcmonty -cmin 10 -print"
testIt

ARGS="/home/wcmonty -mtime -1 -print"
testIt

ARGS="/home/wcmonty -mtime +1 -print"
testIt

ARGS="/home/wcmonty -mtime 1 -print"
testIt

ARGS="/home/wcmonty -mmin -10 -print"
testIt

ARGS="/home/wcmonty -mmin +10 -print"
testIt

ARGS="/home/wcmonty -mmin 10 -print"
testIt
