#!/bin/bash

while [ true ]; do
	###########################################################################################
        # Per syslog
        # Per priorità vedere https://www.tutorialspoint.com/unix/unix-system-logging.htm
	#logger --id --stderr -p user.info -t TEST "Questo è un messaggio di test: "`date +"%Y-%m-%d %H:%M:%S"`
        #logger --id --stderr -p user.alert -t ALERT "Questo è un messaggio di allarme: "`date +"%Y-%m-%d %H:%M:%S"`
        
	###########################################################################################
	# E' possibile dopo aver configurato i demone rsyslog locale anche dire a docker, attraverso lo switch della riga di comando "--log-driver syslog" di ridirigere lo stderr
        # del container all'rsyslog locale all'host ottenendo lo stesso effetto.
	echo -e "${DATETIME} : PID $$ : INFO : Questo è un messaggio di test"
	echo "This is stdout"
	echo "This is stderr" 1>&2
	echo "Questo è un messaggio di test: "`date +"%Y-%m-%d %H:%M:%S"`
	sleep 60
      
        #"1") echo "$D ERROR An error is usually an exception that has been caught and not handled."
        #"2") echo "$D INFO This is less important than debug log and is often used to provide context in the current task."
        #"3") echo "$D WARN A warning that should be ignored is usually at this level and should be actionable."
        #"4") echo "$D DEBUG This is a debug log that shows a log that can be ignored."
done
