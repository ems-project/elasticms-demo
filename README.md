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

Before continuing, check that all services have been correctly started by running `docker-compose ps`. All services must be in `Up` state or in `Up (healthy)` state. 

Go to [minio](http://minio.localhost/login) and login with those credentials:
- user: accesskey
- password: secretkey
  And create a `demo` bucket.

Go back to your console:
- `./create-users.sh` (or `create-users.cmd` under Windows)
  - A `demo` admin user is created with the email and the password that you provide
- `./bootstrap.sh` (or `bootstrap.cmd` under Windows)

Check the [preview](http://demo-preview.localhost) and the [live](http://demo-live.localhost)

You can now login with your just defined password (with the`./create-users.sh` script) and the username `demo` in [elasticms](http://demo-admin.localhost/dashboard).

## Jobs

## User

Some default user are created by the `./create-users.sh` script:
- author: can edit web documents
- publisher: can edit and publish web documents in live
- webmaster: can edit and publish all kind of documents


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
- I do not see form submissions in the elasticms mini-CRM: Please update the auth-key in the form config 
- Updates in the webpack/npm application (`/src`) are not taken into account with the `npm run watch` command: In some cases docker-compose doesn't allow npm to be notified on file changes. You should, or use the `npm run dev` command eachtime that you need. Or use a local installation of npm.

### Useful commands

- `doc ps` : List containers
- `doc logs -f` : View output from containers

### Useful links

 - [Traefik](http://localhost:8888) : An HTTP reverse proxy
 - [mailhog](http://mailhog.localhost) : A Mail catcher
 - [kibana](http://kibana.localhost) : A dev tools to query elasticsearch
 - [elasticsearch](http://es.localhost/_cluster/health) : The search engine, Verify that the status is `green`
 - [minio](http://minio.localhost) : A S3 like storage service 
 - [elasticms](http://demo-admin.localhost/) : elasticms
 - [elasticms debug](http://demo-admin-dev.localhost/) : elasticms in Symfony debug mode
 - Test the website:
   - [preview](http://demo-preview.localhost/) : skeleton with preview's contents 
   - [live](http://demo-live.localhost/) : skeleton with preview's contents
 - Develop the website:
   - [preview debug](http://demo-preview-dev.localhost/) : skeleton with preview's contents in symfony debug mode
   - [live debug](http://demo-live-dev.localhost/) : skeleton with preview's contents in symfony debug mode
 - Debug issue with varnish:
   - [preview nocache](http://demo-preview-nocache.localhost/) : skeleton with preview's contents without cache (varnish is by passed)
   - [preview debug nocache](http://demo-preview-nocache-dev.localhost/) : skeleton with preview's contents in symfony debug mode without cache (varnish is by passed)
   - [live nocache](http://demo-live-nocache.localhost/) : skeleton with preview's contents without cache (varnish is by passed)
   - [live debug nocache](http://demo-live-nocache-dev.localhost/) : skeleton with preview's contents in symfony debug mode without cache (varnish is by passed) 
