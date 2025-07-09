# Utilise l'image officielle Nginx comme base
FROM nginx:stable-alpine

# Copie ton fichier index.html dans le répertoire par défaut de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expose le port 80, c'est le port par défaut de Nginx
EXPOSE 80

# Commande par défaut pour démarrer Nginx (déjà incluse dans l'image de base)
CMD ["nginx", "-g", "daemon off;"]
