ACCESS_TOKEN=$(curl -s 'http://localhost:3000/dev/oauth2/token' \
          -u "m2m-client-test-fb96df88-36d2-4c43-bf62-da9e741fe3c1:jVPq5VmjhkV0gbaCGwaFFB3oASduwTZwkKtdtpAz8AiJNWdQ" \
          --data-raw 'grant_type=client_credentials' | jq -r '.access_token')
echo $ACCESS_TOKEN
curl --no-progress-meter 'http://localhost:3000/v2/admin/health' -H "Authorization: Bearer $ACCESS_TOKEN" | jq '.'

