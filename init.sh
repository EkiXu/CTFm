#!/bin/bash

DB_PASSWORD=$(strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 32 | tr -d '\n')
REDIS_PASSWORD=$(strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 32 | tr -d '\n')
SECRET_KEY=$(strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 32 | tr -d '\n')

echo -n $DB_PASSWORD > "./secrets/DB_PASSWORD"
echo -n $REDIS_PASSWORD > "./secrets/REDIS_PASSWORD"
echo -n $SECRET_KEY > "./secrets/SECRET_KEY"