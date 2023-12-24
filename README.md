# KIBOS Lite
<!-- What it is ? -->


<!-- Motivation -->


### Features

### Built with
+ Docker containers: [Docker-Compose](https://docs.docker.com/compose/)
+ Lightweight RDF Store: [Oxigraph](https://github.com/oxigraph/oxigraph)
+ API and Data Gateway: [Inlake](https://git-xen.lmgc.univ-montp2.fr/gros/inlake) 
+ Reverse proxying : Traefik

### Status



## Deploying
Deploy of KIBOSLite in _localhost_ with a single shell script : Start the docker stack with `sh deploy-kiboslite up -d` and stop with `sh deploy-kiboslite down`.



Provide data from _Astragale_ to the RDF Store using the SPARQL Store API or load the demonstration data `sh load_data_demo.sh`

## Use
+ `traefik.localhost`: the reverse proxy dashboard
+ `oxigraph.localhost`: the RDF Graph YASGUI endpoint
+ `inlake.localhost/api`: the REST API endpoint 

### Oxigraph
Get the demo data using SPARQL SELECT on the query endpoint (default: `http://oxigraph.localhost/query`)
```
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
SELECT DISTINCT * WHERE {
  GRAPH ?g {
  ?s ?pred ?o .
  }
} LIMIT 100
```

Clear the demo data using SPARQL CLEAR GRAPH on the update endpoint (default: `http://oxigraph.localhost/update`):
```
PREFIX astragraph: <http://astragale.cnrs.fr/graphs/>
PREFIX astratheso: <http://astragale.cnrs.fr/graphs/th/>
# CLEAR GRAPH astratheso:th21_icomos ;
CLEAR GRAPH astragraph:agraphe

```


### Inlake
Inlake details at : [Inlake](https://git-xen.lmgc.univ-montp2.fr/gros/inlake)
Documentation of the api at : `inlake.localhost/docs` (actually default openAPI documentation generated from nonexistent PythonDocstring e.e)

WIP of a nicer Markdown based documentation (will be loaded in a MKDocs later)
Routes:
+ All builtworks:`http://inlake.localhost/api/builtworks`
+ All geometries of a builtwork: `http://inlake.localhost/api/builtworks/{bw_id}/geometries` (ie. with demo data: `http://inlake.localhost/api/builtworks/3458035f/geometries`)


## Test
See Kibos UC10 testing round.
See Biglake tests.


## Roadmap
_...wip..._


## Versions
+ **0.1**
    + **0.1**: First version of KIBOSLite, forked from KIBOS v0.44




    