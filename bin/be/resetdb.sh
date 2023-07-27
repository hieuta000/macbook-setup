docker-compose down --volumes
yarn dev:services:start
yarn db:migrate:run
yarn db:seed
