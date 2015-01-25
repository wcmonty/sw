#!/bin/sh

make all
#################################################################################################
HR='+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo $HR
echo "Test Run at: `date`"
echo $HR


#################################################################################################
FN="temp.txt"
BIG="diver.raw"
MED="new.jpg"
SMALL="test.txt"

SERVERPORT='54323'
RELAYPORT='54322'

# This should be changed depending on EC2 !!!
MYSERVER='54.86.58.150'

VIRGINIA='54.84.21.227'
OREGON='54.213.83.180'
CALIFORNIA='54.193.35.191'
IRELAND='54.194.234.13'
SINGAPORE='54.251.177.165'
TOKYO='54.199.136.22'
SAOPAULO='54.207.17.177'


#################################################################################################
CHANCE=0
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN


#################################################################################################
CHANCE=1
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN


#################################################################################################
CHANCE=2
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN

#################################################################################################
CHANCE=3
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN

#################################################################################################
CHANCE=4
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN

#################################################################################################
CHANCE=5
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN

#################################################################################################
CHANCE=6
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN

#################################################################################################
CHANCE=7
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN

#################################################################################################
CHANCE=8
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN

#################################################################################################
CHANCE=9
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN

#################################################################################################
CHANCE=10
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY WITH CHANCE = $CHANCE

#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
./myClient $MYSERVER $SERVERPORT $VIRGINIA $RELAYPORT $CHANCE < $FN

rm $FN
