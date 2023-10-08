db = db.getSiblingDB("cuplan");

db.member.createIndex({ "user_id": 1, "organization_id": 1 }, { unique: true });