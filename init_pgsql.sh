#/bin/bash
docker-compose exec -e PGUSER=postgres -e PGPASSWORD=adminpg -T postgres psql -c "CREATE USER $1 WITH ENCRYPTED PASSWORD '$1';"
docker-compose exec -e PGUSER=postgres -e PGPASSWORD=adminpg -T postgres psql -c "CREATE DATABASE $1 WITH OWNER $1;"
docker-compose exec -e PGUSER=postgres -e PGPASSWORD=adminpg -T postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE $1 TO $1;"
docker-compose exec -e PGUSER=postgres -e PGPASSWORD=adminpg -e PGDATABASE=$1 -T postgres psql -c "ALTER SCHEMA public OWNER TO $1;"