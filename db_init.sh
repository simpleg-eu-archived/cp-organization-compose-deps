#!/bin/bash

if [ ! -f ./mongosh ]; then
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        curl https://downloads.mongodb.com/compass/mongosh-2.0.1-linux-x64.tgz --output mongosh.tgz
        tar -zxvf mongosh.tgz

        mv mongosh-2.0.1-linux-x64/bin/* ./
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        curl https://downloads.mongodb.com/compass/mongosh-2.0.1-darwin-arm64.zip --output mongosh.zip
        unzip -o mongosh.zip

        mv mongosh-2.0.1-darwin-arm64/bin/* ./
    fi
fi

sleep 1

chmod +x mongosh
./mongosh $CP_ORGANIZATION_MONGODB_CONNECTION_URI --username $CP_ORGANIZATION_MONGODB_USERNAME --password $CP_ORGANIZATION_MONGODB_PASSWORD --file drop.js --file organization_permission.js --file organization.js --file role.js --file member.js --file invitation_code.js