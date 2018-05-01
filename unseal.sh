#!/bin/bash
service vault start
sleep 1s
curl \
    --request POST \
    --data '{"key": "4JyBpC4gIJlFvNBAc3KidqZSiMOHO7ZGxF1524n1cKIa"}' \
    http://localhost:8200/v1/sys/unseal

curl \
    --request POST \
    --data '{"key": "HS67iEjWupmYw4yDCDWaH8fED5d5+sxK72kEtYjWODZn"}' \
    http://localhost:8200/v1/sys/unseal

curl \
    --request POST \
    --data '{"key": "koaz87y0NOsQefyoyIWsNd03eOGe6u+L6ySO4L5rwfBG"}' \
    http://localhost:8200/v1/sys/unseal

tail -f /opt/vault/vault-store/vault.log
