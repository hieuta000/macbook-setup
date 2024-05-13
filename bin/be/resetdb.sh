docker-compose down --volumes
yarn dev:services:start
yarn db:migrate:run
yarn db:seed

#ts-node ./scripts/dev/hieu-seed-db.ts
#yarn script:run-in-build ./scripts/prod/create-collection.ts --tokenAddress rGqAtMGjDFpKvwaVyhQ25h9ZvD4P2XtHCF --name HieuTest --description HieuTest --depositFeePercent 100 --serviceFeePercent 5 serviceFeeFloorValue 2 --maxPurchasePriceLimit 100
#yarn script:run-in-build ./scripts/prod/create-collection.ts --tokenAddress 0xc66C4c4E49f3c1410F90EC172B362E80B4a60d8B --name HieuPolyTest --description HieuPolyTest --depositFeePercent 100 --serviceFeePercent 5 serviceFeeFloorValue 2 --maxPurchasePriceLimit 100
#yarn script:run-in-build ./scripts/prod/create-collection-info.ts --tokenAddress 0xc66C4c4E49f3c1410F90EC172B362E80B4a60d8B --network polygon_testnet --imageUrl https://marketplace.supermojo.com/image/drops/polygon-mint-test/sm_polygon_logo.png
