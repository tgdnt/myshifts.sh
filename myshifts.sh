#!/bin/bash

source .myshifts.config # Import your variables

startdate="$1" # Pick up date
shift
days=0

# Loop through args and create events
while [ $1 ] ; do # for as many times you add a timestamp
	[ $1 != "off" ] && $khal new -a $calendar $(date -j -v+"$days"d -f "%m/%d" "+$dateformat" $startdate) $1 $shiftlength $eventname
	let days++
	shift # get next day's start time
done

[ $sync == 1 ] && $vdirsyncer sync # If sync is on, perform sync

# Print days
$khal list $(date -j -f "%m/%d" "+$dateformat" $startdate) "$days"d

exit 0
