#!/usr/bin/env bash
for i in {1..100}
do
    curl -H 'Content-Type: application/json' -u 'admin:admin' localhost:15454/sale \
    -d "{\"itemId\":\"$i\",\"quantity\": 0, \"saleDate\":\"20221028T220909.999\",\"unitPrice\":23.99,\"sellerID\":\"S-$i\"}"
done