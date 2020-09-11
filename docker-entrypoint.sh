#!/bin/bash

while [ true ]; do

	echo "Questo e' un messaggio di test generato dal container ARPASMR/testsyslog_metodo2: "`date +"%Y-%m-%d %H:%M:%S"`
	echo "This is stdout"			#1 - stdout
	echo "This is stderr" 1>&2  		#2 - stderr

        #D=`date -Iseconds`
        #echo "$D - ERROR -- An error is usually an exception that has been caught and not handled." >&2
        #echo "$D - INFO -- This is less important than debug log and is often used to provide context in the current task." >&1

        ## Per WARNING e DEBUG non ci sono livelli di severità impostabili con un semplice 'echo'
        #echo "$D - WARN -- A warning that should be ignored is usually at this level and should be actionable."
        #echo "$D - DEBUG -- This is a debug log that shows a log that can be ignored."
	
	sleep 60
done
