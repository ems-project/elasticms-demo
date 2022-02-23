# elasticms-demo
A default elasticms local setup using docker-compose

## Prerequisites

You need [Docker Desktop](https://www.docker.com/get-started) or docker-compose (or an alternative as Podman)
 
The following ports must be available:
 - 8888: Traefik UI
 - 80: Web HTTP
 - 443: Web HTTPS

## Install steps

Open a terminal and run the following commands:
- `npm install`: install NPM dependencies
  - or `./npm.sh install`
- `npm run prod`: Build the frontend assets (js, css, ...)
  - or `./npm.sh run prod`
- `docker-compose up -d`: Start the docker container (in daemon mode)

Go to [minio](http://minio.localhost/login) and login with those credentials:
- user: accesskey
- password: secretkey
  And create a `demo` bucket.

Go back to your console:
- `./create-admin.sh` (or `create-admin.cmd` under Windows)
- `./bootstrap.sh` (or `bootstrap.cmd` under Windows)

Check the [preview](http://demo-preview.localhost/slideshow/toto)

You can now login with your just defined password and the user `demo` in [elasticms](http://demo-admin.localhost/dashboard).

## Commands

Every script bellow exist as `.cmd` and as `.sh` file.

- `bootstrap`: Create (or update) elasticms from the local config files (push everything)
- `create-admin`: Create a `demo` user with ADMIN and API rights 
- `demo-admin`: Run the elasticms's Symfony console 
- `demo-preview`: Run the skeleton's Symfony console in preview context
- `demo-live`: Run the skeleton's Symfony console in live context
- `doc`: Shortcut to docker-compose
- `npm`: Run a npm console (in a docker run container)
- `update-local-configs`: Update the local config files from elasticms (pull everything)

## Troubleshooting

### FAQ

- The labels are not translated in the skeleton: clear the cache for the corresponding skeleton i.e. `demo-preview cache:clear`

### Useful commands

- `doc ps` : List containers
- `doc logs -f` : View output from containers

### Useful links

 - [Traefik](http://localhost:8888) : An HTTP reverse proxy
 - [mailhog](http://mailhog.localhost) : A Mail catcher
 - [kibana](http://kibana.localhost) : A dev tools to query elasticsearch
 - [elasticsearch](http://es.localhost/_cluster/health) : The search engine, Verify that the status is `green`
 - [minio](http://minio.localhost) : A S3 like storage service 
