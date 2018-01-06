# DMN
Crée un Vhost pour Nginx

# Version
-  1.0 (Beta)

# Dépendence / Installation

Dépend de W3M pour son bon fonctionnement (Debian / Ubuntu)
```
https://raw.githubusercontent.com/BryanRahmani/DMN/master/vhost.sh
chmod 777 vhost.sh
apt-get install w3m
nano ~/.bashrc
alias dmn='/votre chemin/vhost.sh'
source ~/.bashrc

```



# Mode d'emploi

Crée un vhost 
```
dmn add example.com
```

Rattacher un nom de domaine alias au nom de domaine parent
```
dmn alias monalias.com example.com
```

Supprimer le nom de domaine/alias
```
dmn del example.com
```

