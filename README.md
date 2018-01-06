# DMN
Crée un Vhost pour Nginx

# Version
-  1.0 (Beta)

# Dépendence

Dépend de W3M pour son bon fonctionnement (Debian / Ubuntu)
```
apt-get install w3m
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

