jq '.servers[0].url = $newVal' --arg newVal 'https://be2.sandbox-skyfire.com' tsoa/swagger.json > tsoa/swagger-readme.com.json
