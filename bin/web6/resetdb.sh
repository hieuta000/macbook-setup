docker-compose down --volumes
docker compose up -d
sleep 2
yarn prisma migrate dev
yarn workspace @web6/server db-seed
ts-node ./packages/server/scripts/dev/dev-local-wallet-ev.ts     --encryptedPrivateKey $DANGER_ENCRYPTED_ETH_PRIVATE_KEY     --password $DANGER_WALLET_PW     --network eth_goerli     --type supermojo-acquisition

