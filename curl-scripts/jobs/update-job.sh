#!/bin/bash

curl "http://localhost:4741/jobs/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "job": {
      "Customer": "'"${CUSTOMER}"'",
      "Worker": "'"${WORKER}"'",
      "Price": "'"${PRICE}"'",
      "Address": "'"${ADDRESS}"'",
      "Date": "'"${DATE}"'",
      "Time": "'"${TIME}"'",
      "status": "'"${STATUS}"'"
    }
  }'

echo
