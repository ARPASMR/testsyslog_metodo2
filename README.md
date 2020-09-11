Per far sì che vengano riportati i log prodotti dal container verso la gestione centralizzata dei log di Gagliardo nonchè al sistema LogAnalizer (http://10.10.0.15/loganalyzer/index.php) è possibile configurare il container avviandolo con l'opzione:

--log-driver syslog --log-opt syslog-address=tcp://10.10.0.15:514

per cui tutti gli stdout e stderr generati dai processi (in questo caso dal processo bash esempio riportato in *docker-entrypoint.sh*) verranno inviati al syslog di Gagliardo.

__NB1!__ Per configurazione tramite UCP vedere *Immagine1.png*.

__NB2!__: A differenza di quanto si riesce a generare con il metodo riportato nel repository ARPASMR/testsyslog in questo caso non si riescono a generare livelli di severità diversi da:
- INFO (stdout)
- ERR (stderr)

Si veda *Immagine2.png*.
