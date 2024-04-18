#!/bin/bash

# Script to create an EC2 instance with a simple HTTP web server

# Update packages
sudo yum update -y

# Install Apache
sudo yum install httpd -y

# Start Apache
sudo systemctl start httpd
sudo systemctl enable httpd

# Create index.html file
echo "<h1>Hello World from $(hostname -f)</h1>" | sudo tee /var/www/html/index.html

# Create a directory for the server with custom HTML content
sudo mkdir -p /var/www/html/app
cat << EOF | sudo tee /var/www/html/app/index.html
<DOCTYPE html>
<html>
    <head>
        <title>My App</title>
    </head>
    <body>
        <h1>My App</h1>
        <p>This is my app.</p>
    </body>
</html>
EOF

