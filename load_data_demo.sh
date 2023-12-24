#!/bin/bash

echo "Provisionning two datasets as quads:
+ http://astragale.cnrs.fr/graphs/agraphe, as a **Data** graph
+ http://astragale.cnrs.fr/graphs/th/th21_icomos, as a **Thesaurus** graph
"

curl -vvvf -X POST -H 'Content-Type:application/n-quads' -T ./data/agraphe.nq http://127.0.0.1:7878/store
# curl -vvvf -X POST -H 'Content-Type:application/n-quads' -T ./data/icomos.nq http://127.0.0.1:7878/store
curl -vvvf -X POST -H 'Content-Type:application/n-quads' -T ./data/th_all.nq http://127.0.0.1:7878/store

echo check upload at http://localhost:7878/