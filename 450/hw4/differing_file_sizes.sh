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

VIRGINIA='54.84.21.227'
OREGON='54.213.83.180'
CALIFORNIA='54.193.35.191'
IRELAND='54.194.234.13'
SINGAPORE='54.251.177.165'
TOKYO='54.199.136.22'
SAOPAULO='54.207.17.177'

CLIENT=./client
#################################################################################################
echo $HR
echo SENDING MEDIUM MESSAGES TO HOSTS
#################################################################################################
echo 1 > $FN 	# Send a file
echo $SMALL >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA
echo $HR
$CLIENT $VIRGINIA < $FN
echo $HR
echo SENDING TO OREGON
echo $HR
$CLIENT $OREGON < $FN
echo $HR
echo SENDING TO CALIFORNIA
echo $HR
$CLIENT $CALIFORNIA < $FN
echo $HR
echo SENDING TO SINGAPORE
echo $HR
$CLIENT $SINGAPORE < $FN
echo $HR
echo SENDING TO TOKYO
echo $HR
$CLIENT $TOKYO < $FN
echo $HR
echo SENDING TO SAOPAULO
echo $HR
$CLIENT $SAOPAULO < $FN

#################################################################################################
echo $HR
echo SENDING MEDIUM MESSAGES TO HOSTS
#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA
echo $HR
$CLIENT $VIRGINIA < $FN
echo $HR
echo SENDING TO OREGON
echo $HR
$CLIENT $OREGON < $FN
echo $HR
echo SENDING TO CALIFORNIA
echo $HR
$CLIENT $CALIFORNIA < $FN
echo $HR
echo SENDING TO SINGAPORE
echo $HR
$CLIENT $SINGAPORE < $FN
echo $HR
echo SENDING TO TOKYO
echo $HR
$CLIENT $TOKYO < $FN
echo $HR
echo SENDING TO SAOPAULO
echo $HR
$CLIENT $SAOPAULO < $FN

#################################################################################################
echo $HR
echo SENDING BIG MESSAGES TO HOSTS
#################################################################################################
echo 1 > $FN 	# Send a file
echo $BIG >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA
echo $HR
$CLIENT $VIRGINIA < $FN
echo $HR
echo SENDING TO OREGON
echo $HR
$CLIENT $OREGON < $FN
echo $HR
echo SENDING TO CALIFORNIA
echo $HR
$CLIENT $CALIFORNIA < $FN
echo $HR
echo SENDING TO SINGAPORE
echo $HR
$CLIENT $SINGAPORE < $FN
echo $HR
echo SENDING TO TOKYO
echo $HR
$CLIENT $TOKYO < $FN
echo $HR
echo SENDING TO SAOPAULO
echo $HR
$CLIENT $SAOPAULO < $FN


#################################################################################################
echo $HR
echo SENDING MESSAGES TO HOSTS THROUGH RELAY
#################################################################################################
echo 1 > $FN 	# Send a file
echo $MED >> $FN
echo 2 >> $FN

echo $HR
echo SENDING TO VIRGINIA THROUGH VIRGINIA
echo $HR
$CLIENT $VIRGINIA $SERVERPORT $VIRGINIA $RELAYPORT < $FN
echo $HR
echo SENDING TO OREGON THROUGH VIRGINIA
echo $HR
$CLIENT $OREGON $SERVERPORT $VIRGINIA $RELAYPORT < $FN
echo $HR
echo SENDING TO CALIFORNIA THROUGH VIRGINIA
echo $HR
$CLIENT $CALIFORNIA $SERVERPORT $VIRGINIA $RELAYPORT < $FN
echo $HR
echo SENDING TO SINGAPORE THROUGH VIRGINIA
echo $HR
$CLIENT $SINGAPORE $SERVERPORT $VIRGINIA $RELAYPORT < $FN
echo $HR
echo SENDING TO TOKYO THROUGH VIRGINIA
echo $HR
$CLIENT $TOKYO $SERVERPORT $VIRGINIA $RELAYPORT < $FN
echo $HR
echo SENDING TO SAOPAULO THROUGH VIRGINIA
echo $HR
$CLIENT $SAOPAULO $SERVERPORT $VIRGINIA $RELAYPORT < $FN

rm $FN
