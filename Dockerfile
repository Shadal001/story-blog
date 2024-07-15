# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package repository and install apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Expose port 80
EXPOSE 80

# Start the Apache service
CMD ["apachectl", "-D", "FOREGROUND"]
