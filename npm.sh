#/bin/bash
docker run --rm -it -v $PWD:/opt/src --workdir /opt/src elasticms/base-php-dev npm $@
