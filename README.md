# Kibos

Kibos is an event-driven knowledge system architectured around with a Knowledge Graph. It provides streamlined data ingestion, storage, knowledge capitalization abilities and analysis tools tailored for Cultural Heritage Building information management

Kibos is the knowledge system supporting the [Astragale Project](https://github.com/prj-astragale)


> \[!WARNING]
>
> Please be aware that Kibos is currently under active development.

<details>
<summary><kbd>Table of contents</kbd></summary>

#### TOC

- [🔦 Project Summary](#-project-summary)
- [✨ Feature Overview](#-feature-overview)
- [👋🏻 Getting Started](#-getting-started)
- [⌨️ Usage](#️-usage)

####
</details>

## 🔦 Project Summary
*Kibos* is an event-driven knowledge management system designed to support the complex data requirements of Cultural Heritage (CH) buildings. The system uses [Apache Kafka](https://kafka.apache.org/) as a message broker to facilitate real-time data processing within a layered application architecture, exposed via a gateway API. By integrating Semantic Web technologies, *Kibos* manages a knowledge graph in RDF format, enabling effective ingestion, storage, and retrieval of diverse data sources—such as material and alteration surveys, 3D and structural models, and mechanical simulations. This approach ensures robust data integration and supports enhanced analysis and management of CH buildings in their maintenance and conservation phases.


## ✨ Features Overview
*--- WIP ---*

+ Semantic Stack Compliant
  + using the [SPARQL 1.1 Graph Store HTTP Protocol](https://www.w3.org/TR/sparql11-http-rdf-update/) for Knowledge Graph Update 
  + OWL Ontologies, SKOS thesauris and RDF Data
+ Open-Source *Data Lake* with the S3-compatible [Minio](https://min.io/) Object Store 

## 👋🏻 Getting Started
*--- WIP ---*

### Versions
*Kibos* supports two main deployment configurations:

- **head**, contains essential components—data storage, post-processing, and publication layers—for a minimal yet functional showcase deployment.
- **full**, deploys the entire Kibos stack.

### Build
*--- WIP ---*

### Starting and Stopping Containers
To launch the *Kibos* system, select your preferred version (`head` or `full`) and run:
```sh
sh deploy-kibos_<version> up -d
```

Stop the Kibos stack with:
```sh
sh deploy-kibos_<version> stop -d
```

For targeted control, you can manage individual parts of the stack directly with *Docker Compose*. Example:
```sh
docker-compose -f dc.<service>.yml up -d
```

### (Optional) Seeding Sample Data
Populate your instance with sample data using pre-configured seeding scripts:
- **basic** (`sh seed_data_basic`), Adds RDF survey data for the *Fort l'Ecluze de Léaz* and the *Flying Buttress of Notre-Dame de Paris*.
- *(coming soon)* **uc11**
- *(coming soon)* **uc12**

# ⌨️ Usage

<!--



### Built with
+ Docker containers: [Docker-Compose](https://docs.docker.com/compose/)
+ Lightweight RDF Store: [Oxigraph](https://github.com/oxigraph/oxigraph)
+ API and Data Gateway: [Inlake](https://git-xen.lmgc.univ-montp2.fr/gros/inlake) 
+ Reverse proxying : Traefik




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




-->