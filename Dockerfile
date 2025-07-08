# Use the official Apache HTTP Server image from Docker Hub
FROM httpd:2.4-alpine

# Set the working directory to /usr/local/apache2/htdocs
WORKDIR /usr/local/apache2/htdocs/ 

# Copy your web application files into the container (replace with your app files)
# If your website files are in the current directory, use this command:
COPY . /usr/local/apache2/htdocs/

# Expose port 80 to allow web traffic
EXPOSE 80

# Run Apache in the foreground
CMD ["httpd-foreground"]
