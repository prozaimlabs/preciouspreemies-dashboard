#!/usr/bin/env bash

# Build variables.
export ENVIRONMENT=production

# Deployment variables.
export SERVER_HOST=164.92.207.125
export SERVER_DIR=/var/www/zubairabubakar.co/projects/preciouspreemies 
export SERVER_USER=zubair


# Build app.
echo "Building the production build for the app...."
    npm run build --scripts-prepend-node-path &&
    echo "Production build for the app built!" &&
    echo "Uploading files to web server..." &&
    scp -i ~/.ssh/digitalOcean_private_server -r out/** $SERVER_USER@$SERVER_HOST:$SERVER_DIR &&
    echo "Uploaded files to web server!"    