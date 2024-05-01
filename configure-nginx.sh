#!/bin/bash

# Update apt cache.
sudo apt-get update

# Install Nginx.
sudo apt-get install -y nginx

# Set the home page.
echo "
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to nginx on $(hostname)!</title>
    </head>
    <body>
        <h1>Welcome to nginx on $(hostname)!</h1>
        <p>
            1f you see this page, the nginx web server is successfully installed and
            working. Further configuration is required.
        </p>
        <p>
            For online documentation and support please refer to <a href="https://nginx.org">nginx.org</a>.
        </p>
        <p>
            Commercial support is available at <a href="https://nginx.com">nginx.com</a>.
        </p>
        <p>
            Thank you for using nginx.
        </p>
    </body>
</html>" | sudo tee -a /var/www/html/index.html