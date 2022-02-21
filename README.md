# elasticms-demo
A default elasticms local setup using docker-compose

## Prerequisites

You need [Docker Desktop](https://www.docker.com/get-started) or docker-compose (or alternative like Podman)
 
The following ports must be available:
 - 8888: Traefik UI
 - 80: Web HTTP
 - 443: Web HTTPS

Optionally you can also install [NodeJS and NPM](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm). 


## Install steps

Open a terminal and run the following commands:
- `npm install`: install NPM dependencies
  - or `npm.sh install` or `npm.cmd install` 
- `npm run prod`: Build the frontend assets (js, css, ...)
  - or `npm.sh run prod` or `npm.cmd run prod`
- `docker-compose up -d`: Start the docker container

Go to [minio](http://minio.localhost/login) and login with those credentials:
- user: accesskey
- password: secretkey
  And create a `demo` bucket.

Go back to your console:
- `./create-admin.sh` (or `create-admin.cmd` under Windows)
- `./bootstrap.sh` (or `bootstrap.cmd` under Windows)

Check the [preview](http://demo-preview.localhost/slideshow/toto)

You can now login with your just defined password and the user `demo` in [elasticms](http://demo-admin.localhost/dashboard).

## Troubleshooting

### Check local services

 - [Traefik](http://localhost:8888) 
 - [mailhog](http://mailhog.localhost) 
 - [kibana](http://kibana.localhost) 
 - [elasticsearch](http://es.localhost/_cluster/health): Verify that the status is `green`
