db = db.getSiblingDB("cuplan");

db.invitation_code.createIndex({ "code": 1 }, { unique: true });