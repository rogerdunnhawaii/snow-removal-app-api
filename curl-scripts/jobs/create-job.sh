#!/bin/bash

curl "http://localhost:4741/jobs" \
  --include \
  --request POST \
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
