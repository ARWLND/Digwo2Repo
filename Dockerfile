# Gebruik een basisimage, bijvoorbeeld Nginx voor een statische website
FROM nginx:alpine

# Kopieer de inhoud van de html directory naar de standaard Nginx public directory
COPY html /usr/share/nginx/html

# Maak een buildtime.txt bestand aan met de huidige tijd
RUN date > /usr/share/nginx/html/buildtime.txt

# Expose poort 81
EXPOSE 81

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]