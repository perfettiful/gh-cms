#!/bin/sh

echo ${GITHUB_TOKEN}

curl -H "Accept: application/vnd.github.everest-preview+json" \
    -H "Authorization: token \"${GITHUB_TOKEN}" \
    --request POST \
    --data '{"event_type": "do-something", "client_payload": { "text": "a title"}}' \
    https://api.github.com/repos/perfettiful/gh-cms/dispatches