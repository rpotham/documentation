#!/bin/sh

api_key="<DATADOG_API_KEY>"
app_key="<DATADOG_APPLICATION_KEY>"

curl -X PATCH \
-H "Content-Type: application/json" \
-H "DD-API-KEY: ${api_key}" \
-H "DD-APPLICATION-KEY: ${app_key}" \
-d '{
    "name": "renamed-example-channel",
    "display": {
      "message": true
    }
}' \
"https://api.datadoghq.com/api/v1/integration/slack/configuration/accounts/exampleteam/channels/example-channel"