#!/usr/bin/env bash

# Spin up docker
docker compose up -d

# If we have compiled assets, then this script has been ran at least once, therefore we shall skip these setup steps
if [ ! -f ./plugins/jaxwilko/game/assets/client.js ]; then
    # Run composer install
    docker compose exec -u www-data web composer install

    # Run mix build
    docker compose exec -u www-data web npm i

    # Generate app-key
    docker compose exec -u www-data web php artisan key:generate

    # Create db file
    touch storage/database.sqlite

    # Migrate database
    docker compose exec -u www-data web php artisan migrate

    # Overwrite admin password
    docker compose exec -u www-data web php artisan winter:passwd admin admin

    # Compile game assets
    docker compose exec -u www-data web php artisan mix:compile -f -p jaxwilko.game

    # Publish images to application media to allow for user overwriting
    docker compose exec -u www-data web php artisan game:publish
fi

# Run game
docker compose exec -u www-data web php artisan game:serve -f -m demo
