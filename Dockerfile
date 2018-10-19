FROM nginx
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
RUN apt-get update && apt-get install -y certbot