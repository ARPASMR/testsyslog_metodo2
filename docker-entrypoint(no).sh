#!/bin/bash
##########################################################################################
# Settando --log-driver syslog --log-opt syslog-address=tcp://10.10.0.15:514 non sembra funzionare scrivere -logger ma solo gli echo
while [ true ]; do
        # Per priorità vedere https://www.tutorialspoint.com/unix/unix-system-logging.htm
	      logger --id --stderr -p user.info -t TEST "Questo è un messaggio di test: "`date +"%Y-%m-%d %H:%M:%S"`
        logger --id --stderr -p user.alert -t ALERT "Questo è un messaggio di allarme: "`date +"%Y-%m-%d %H:%M:%S"`
        
	###########################################################################################
	sleep 60
done
