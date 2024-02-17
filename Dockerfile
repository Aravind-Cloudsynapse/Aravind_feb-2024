# Use the official NGINX image as the base image
FROM nginx:latest

# Remove default NGINX configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom NGINX configuration file to the container
COPY default /etc/nginx/conf.d/

# Copy your Java application WAR file to the NGINX default HTML directory
COPY webapp.war /usr/share/nginx/html/

# Expose port 80 to allow external access to the NGINX server
EXPOSE 80

