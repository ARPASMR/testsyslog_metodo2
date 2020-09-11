#!/bin/bash

while [ true ]; do
	###########################################################################################
        # Per syslog
        # Per priorità vedere https://www.tutorialspoint.com/unix/unix-system-logging.htm
	#logger --id --stderr -p user.info -t TEST "Questo è un messaggio di test: "`date +"%Y-%m-%d %H:%M:%S"`
        #logger --id --stderr -p user.alert -t ALERT "Questo è un messaggio di allarme: "`date +"%Y-%m-%d %H:%M:%S"`
	#/usr/bin/logger [ -i ] [ -f file ] [ -p priority ] [ -t tag ] [ message ].
        
	###########################################################################################
	# E' possibile dopo aver configurato i demone rsyslog locale anche dire a docker, attraverso lo switch della riga di comando "--log-driver syslog" di ridirigere lo stderr
        # del container all'rsyslog locale all'host ottenendo lo stesso effetto.
	echo "Questo e' un messaggio di test generato dal container ARPASMR/testsyslog_metodo2: "`date +"%Y-%m-%d %H:%M:%S"`
	echo "This is stdout"
	echo "This is stderr" 1>&2
	#echo "This is WARNING message" 1>&3
	#echo "This is DEBUG message" 1>&4
	/usr/bin/logger -p user.info -t TEST "prova"`date +"%Y-%m-%d %H:%M:%S"`


	sleep 60
        #echo "$D ERROR An error is usually an exception that has been caught and not handled."
        #echo "$D INFO This is less important than debug log and is often used to provide context in the current task."
        #echo "$D WARN A warning that should be ignored is usually at this level and should be actionable."
        #echo "$D DEBUG This is a debug log that shows a log that can be ignored."
done
