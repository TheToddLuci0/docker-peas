#!/usr/bin/env bash

set -ex

apt-get update
apt-get install curl
curl -L https://github.com/peass-ng/PEASS-ng/releases/latest/download/linpeas.sh -o linpeas.sh
chmod +x linpeas.sh

if [[ $SKIP_PEAS == "true" ]] ; then
        echo "Skipping execution...."
else
        ./linpeas.sh -o cloud 
fi
