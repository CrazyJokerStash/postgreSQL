# postgreSQL

Pour utiliser notre programme, merci de bien vouloir suivre les différentes étapes.

Nous allons utiliser l'OS d'Ubuntu. </br>

En premier lieu, installer postgresql

$ sudo apt-get update </br>
$ sudo apt-get install postgresql postgresql-contrib

Afin de vous connecter en utilisateur :

$ sudo -i -u postgres

Pour quitter le mode utilisateur :

$ exit

Pour créer un nouvel utilisateur (Après être connecté) :

$ createuser --interactive

PostgreSQL va vous demandez de nommer l'utilisateur, et de l'éléver au rang de super utlisateur (répondre par y/n).

Pour créer une nouvelle base de données :

$ createdb <nom_de_la_base>

Exemple : createdb appli_web

Pour ajouter le nouvel utilisateur (afin de pouvoir faire un sudo -u -i appli_web)
Attention à ne PAS le faire en tant qu'utilisateur postgres !

$ sudo adduser appli_web

Maintenant, vous pouvez vous connecter avec :

$ sudo -u -i appli_web

# pgAdmin

Pour installer pgAdmin4

$ sudo apt-get install virtualenv python3-pip libpq-dev python3-dev

$ cd </br>
$ virtualenv -p python3 pgadmin4</br>
$ cd pgadmin4</br>
$ source bin/activate</br>

$ pip3 install https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v2.1/pip/pgadmin4-2.1-py2.py3-none-any.whl

Editer le fichier : 

nano lib/python3.x/site-packages/pgadmin4/config_local.py

Avec : 

import os
DATA_DIR = os.path.realpath(os.path.expanduser(u'~/.pgadmin/'))
LOG_FILE = os.path.join(DATA_DIR, 'pgadmin4.log')
SQLITE_PATH = os.path.join(DATA_DIR, 'pgadmin4.db')
SESSION_DB_PATH = os.path.join(DATA_DIR, 'sessions')
STORAGE_DIR = os.path.join(DATA_DIR, 'storage')
SERVER_MODE = False

Run :

python3 lib/python3.x/site-packages/pgadmin4/pgAdmin4.py

Pour y acceder, saisir l'ip de ubuntu + :5050 (le port) ou alors http://localhost:5050

# Installer et configurer Apache2
