jq '.servers[0].url = $newVal' --arg newVal 'https://api.skyfire.xyz' tsoa/swagger.json > tsoa/swagger-readme.com.json
