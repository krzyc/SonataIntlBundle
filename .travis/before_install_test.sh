#!/usr/bin/env bash
set -ev

PHP_INI_DIR="$HOME/.phpenv/versions/$(phpenv version-name)/etc/conf.d/"
TRAVIS_INI_FILE="$PHP_INI_DIR/travis.ini"
echo "memory_limit=3072M" >> "$TRAVIS_INI_FILE"


sed --in-place "s/\"dev-master\":/\"dev-${TRAVIS_COMMIT}\":/" composer.json

    if [ "$SYMFONY" != "" ]; then composer require "symfony/symfony:$SYMFONY" --no-update; fi;
        if [ "$SONATA_USER" != "" ]; then composer require "sonata-project/user-bundle:$SONATA_USER" --no-update; fi;
    