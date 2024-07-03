jq '.servers[0].url = $newVal' --arg newVal 'https://sky-services-api-qa.onrender.com' tsoa/swagger.json > tsoa/swagger-readme.com.json
