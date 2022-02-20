#/bin/bash
docker-compose exec -e PGUSER=$1 -e PGPASSWORD=$1 -T postgres psql $1 -c "ALTER SCHEMA public RENAME TO $2;"
docker-compose exec -e PGUSER=$1 -e PGPASSWORD=$1 -T postgres psql $1  -c "ALTER USER $1 SET search_path TO $2;"
