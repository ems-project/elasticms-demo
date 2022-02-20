#/bin/bash
docker-compose exec -e PGUSER=$1 -e PGPASSWORD=$1 -T postgres psql --file=/opt/samples/$2
