# Sera

A quick and easy dockerfile to setup an unsealed vault. 

## Getting Started

This script will setup an initialized vault server on your local work station. The unseal keys and root token have already been created and can be found in 'unseal.txt'.
For more information about vault, see https://www.vaultproject.io/ .

## Setup

Build the docker image. Run using 'docker run -d -p 8200:8200 imageNameHere'

Check that vault is running and unsealed : 'curl     http://127.0.0.1:8200/v1/sys/seal-status'
