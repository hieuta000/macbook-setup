docker-compose down --volumes
docker compose up -d
sleep 2
yarn prisma migrate dev
yarn workspace @web7/server db-seed

