#!/bin/bash

SYSLOG_MASTER='10.10.0.15'
SYSLOG_PORT='514'

while [ true ]; do
	###########################################################################################
	# Uso di logger senza aver configurato il demone rsyslog locale
	# in modo da inoltrare i messaggi di log direttamente al MASTER $RSYSLOG_MASTER
	logger --id --stderr --server $SYSLOG_MASTER -P $SYSLOG_PORT -T -p user.info -t TEST "This is a test message: "`date +"%Y-%m-%d %H:%M:%S"`

	###########################################################################################
	# E' possibile dopo aver configurato i demone rsyslog locale anche dire a docker,
	# attraverso lo switch della riga di comando "--log-driver syslog" di ridirigere lo stderr
        # del container all'rsyslog locale all'host ottenendo lo stesso effetto.
	### echo "Questo è un messaggio di test: "`date +"%Y-%m-%d %H:%M:%S"`
	sleep 60
done
