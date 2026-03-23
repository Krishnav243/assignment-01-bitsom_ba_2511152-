// OP1
db.products.insertMany([...]);

// OP2
db.products.find({ category: "Electronics", price: { $gt: 20000 } });

// OP3
db.products.find({ category: "Groceries", expiry_date: { $lt: "2025-01-01" } });

// OP4
db.products.updateOne(
  { name: "iPhone 14" },
  { $set: { discount_percent: 10 } }
);

// OP5
db.products.createIndex({ category: 1 });
