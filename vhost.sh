#!/bin/bash


case $1 in
     "add")
       filename=$2
       f=${filename//./}
       w3m -dump "http://92.222.250.120/nginx.php?domaine=$2&alias=$2" > /etc/nginx/conf.d/$f.conf
       mkdir /var/www/$2
       service nginx restart
       echo '
   $$$$$$$\  $$\      $$\ $$\   $$\
   $$  __$$\ $$$\    $$$ |$$$\  $$ |
   $$ |  $$ |$$$$\  $$$$ |$$$$\ $$ |
   $$ |  $$ |$$\$$\$$ $$ |$$ $$\$$ |
   $$ |  $$ |$$ \$$$  $$ |$$ \$$$$ |
   $$ |  $$ |$$ |\$  /$$ |$$ |\$$$ |
   $$$$$$$  |$$ | \_/ $$ |$$ | \$$ |
   \_______/ \__|     \__|\__|  \__|

   Version 1.1 (Beta) by Bryan RAHMANI'
       echo  "------------------------------------------"
       echo -e   "       \033[32m INFORMATION NOM DE DOMAINE\033[0m         "
       echo  "------------------------------------------"
       echo  ""
       echo  "          Nom de domaine:" $2
       echo  "Fichier de configuration: /etc/nginx/conf.d/$f.conf"
       echo  "   Répertoire du domaine: /var/www/$2/"
       echo  ""
       echo  "[OK] Nginx"
       echo  "[OK] PHP5-FPM"
       echo  "------------------------------------------"
          ;;
     "alias")
       filename=$2
       f=${filename//./}
       w3m -dump "http://92.222.250.120/nginx.php?domaine=$3&alias=$2" > /etc/nginx/conf.d/$f.conf
       echo '
   $$$$$$$\  $$\      $$\ $$\   $$\
   $$  __$$\ $$$\    $$$ |$$$\  $$ |
   $$ |  $$ |$$$$\  $$$$ |$$$$\ $$ |
   $$ |  $$ |$$\$$\$$ $$ |$$ $$\$$ |
   $$ |  $$ |$$ \$$$  $$ |$$ \$$$$ |
   $$ |  $$ |$$ |\$  /$$ |$$ |\$$$ |
   $$$$$$$  |$$ | \_/ $$ |$$ | \$$ |
   \_______/ \__|     \__|\__|  \__|

   Version 1.1 (Beta) by Bryan RAHMANI'
       echo  "------------------------------------------"
       echo -e   "     \033[32mINFORMATION NOM DE DOMAINE ALIAS\033[0m     "
       echo  "------------------------------------------"
       echo  ""
       echo  "    Nom de domaine Alias: $2"
       echo  "Fichier de configuration: /etc/nginx/conf.d/$f.conf"
       echo  "   Répertoire du domaine: /var/www/$3/"
       echo  ""
       echo  "[OK] Nginx"
       echo  "[OK] PHP5-FPM"
       echo  "------------------------------------------"
          ;;
      "del")
        filename=$2
  		  f=${filename//./}
  			rm /etc/nginx/conf.d/$f.conf
  			rm -r /var/www/$2
  			service nginx restart
        echo '
    $$$$$$$\  $$\      $$\ $$\   $$\
    $$  __$$\ $$$\    $$$ |$$$\  $$ |
    $$ |  $$ |$$$$\  $$$$ |$$$$\ $$ |
    $$ |  $$ |$$\$$\$$ $$ |$$ $$\$$ |
    $$ |  $$ |$$ \$$$  $$ |$$ \$$$$ |
    $$ |  $$ |$$ |\$  /$$ |$$ |\$$$ |
    $$$$$$$  |$$ | \_/ $$ |$$ | \$$ |
    \_______/ \__|     \__|\__|  \__|

    Version 1.0 (Beta) by Bryan RAHMANI'
        echo  "------------------------------------------"
        echo -e "    \033[31m SUPPRESSION NOM DE DOMAINE\033[0m"
        echo  "------------------------------------------"
        echo  ""
        echo  "        Nom de domaine supprimer: $2"
        echo  "Fichier de configuration effacer: /etc/nginx/conf.d/$f.conf"
        echo  "   Répertoire du domaine effacer: /var/www/$2/"
        echo  ""
        echo  "[OK] Nginx"
        echo  "[OK] PHP5-FPM"
        echo  "------------------------------------------"
          ;;
      *)
      echo '
$$$$$$$\  $$\      $$\ $$\   $$\
$$  __$$\ $$$\    $$$ |$$$\  $$ |
$$ |  $$ |$$$$\  $$$$ |$$$$\ $$ |
$$ |  $$ |$$\$$\$$ $$ |$$ $$\$$ |
$$ |  $$ |$$ \$$$  $$ |$$ \$$$$ |
$$ |  $$ |$$ |\$  /$$ |$$ |\$$$ |
$$$$$$$  |$$ | \_/ $$ |$$ | \$$ |
\_______/ \__|     \__|\__|  \__|

Version 1.0 (Beta) by Bryan RAHMANI

Les commandes possibles

Crée un Vhost pour votre nom de domaine
  Commande: add (nom de domaine)

Rattacher un nom de domaine alias au parent
  Commande: alias (nom de domaine alias) (Nom de domaine parent)

Supprimer le nom de domaine
  Commande: del (nom de domaine)
'
          ;;
esac
