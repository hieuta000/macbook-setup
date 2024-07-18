docker-compose down --volumes
yarn dev:services:start
sleep 2
yarn db:migrate:run
yarn db:seed

#ts-node ./scripts/dev/hieu-seed-db.ts
