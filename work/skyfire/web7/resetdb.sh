docker-compose down -v postgres-dev
docker compose up -d postgres-dev
sleep 2
yarn prisma migrate dev
yarn workspace @web7/server db-seed

