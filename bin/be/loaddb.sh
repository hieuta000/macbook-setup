docker-compose down --volumes
yarn dev:services:start
sleep 2
psql postgresql://smuser:smpassword@localhost:54322/supermojo -f $1
