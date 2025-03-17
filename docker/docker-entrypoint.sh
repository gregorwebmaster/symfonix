#!/bin/bash

# Check if Symfony project exists
if [ ! -f "composer.json" ]; then
    echo "Creating new Symfony project..."
    if [ "$SYMFONY_TYPE" = "webapp" ]; then
        symfony new . --webapp --no-git
    else
        symfony new . --no-git
    fi
    composer install
fi

# Start Symfony server
symfony server:start --no-tls --port=8000 --allow-http