#!/bin/bash

set -x

REPO_URL="https://uiqla3miqxfdedpsjwoqbazlvowk5m6x3ixekglzngyuaplab5tq@dev.azure.com/karanahuja079/karanahuja079/_git/karanahuja079"

git clone "$REPO_URL" /tmp/krepo

cd /tmp/krepo

sed -i "s|image: kazureregistry.azurecr.io/$2:$3|g k8s-specifications/$1-deployment.yaml"

git add .

git commit -m "update kubernetes manifest"

git push

rm -rf /tmp/krepo