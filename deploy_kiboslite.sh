#!/bin/bash

if [ $# -eq 0 ]; then
    echo 'Must provide the action of docker-compose as input'
    echo 'Usually : up -d or down'
    exit
fi

echo "Provisionning local stack with services :
0) Traefik Reverse-Proxying
2) RDF Databasese Oxigraph
4) Inlake
"

ACTION="$*"

echo "Starting all docker compose"
docker-compose -f "dc.traefik.yml"      \
               -f "dc.rdfgraphoxigraph.yml"   \
               -f "dc.inlake.yml"       \
               ${ACTION}

exit
