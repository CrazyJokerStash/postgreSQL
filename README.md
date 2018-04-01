To save your bdd, clone this repo in a directory, go in this directory then run : <br>`sh save.sh <name of the database to save> <user name> <host ip> <host port> <file where to save>`<br>
<br>
To restore your bdd from a file : <br>
`sh restore.sh <name of the database to restore> <user name> <host ip> <host port> <file from wich to save>`
<br>You must must login with a root user.<br>
Errors are not catched<br>
You must provide absolute path<br>
To remove old backups, run : `sh remove.sh`
