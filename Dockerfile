# Use the official NGINX image as the base image
FROM nginx:latest

# Copy the custom NGINX configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your Java application WAR file to the NGINX default HTML directory
COPY your-application.war /usr/share/nginx/html/

# Expose port 80 to allow external access to the NGINX server
EXPOSE 80
