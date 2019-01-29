#!/bin/bash

curl "http://localhost:4741/jobs" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
