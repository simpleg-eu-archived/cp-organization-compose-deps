#!/bin/bash

sudo docker compose up -d

sleep 5s

curl https://downloads.mongodb.com/compass/mongosh-1.10.6-linux-x64.tgz --output mongosh.tgz
tar -zxvf mongosh.tgz

mv mongosh-1.10.6-linux-x64/bin/* ./

chmod +x mongosh
./mongosh $1 --username $2 --password $3 --file organization_permission.js --file organization.js --file role.js --file member.js --file invitation_code.js