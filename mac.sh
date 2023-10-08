#!/bin/bash

docker compose up -d

sleep 5s

curl https://downloads.mongodb.com/compass/mongosh-2.0.1-darwin-arm64.zip --output mongosh.zip
unzip -o mongosh.zip

mv mongosh-2.0.1-darwin-arm64/bin/* ./

chmod +x mongosh
./mongosh $1 --username $2 --password $3 --file organization_permission.js --file organization.js --file role.js --file member.js --file invitation_code.js