// OP1
db.products.insertMany([]);

// OP2
db.products.find({ category: "Electronics", price: { $gt: 20000 } });

// OP3
db.products.find({ category: "Groceries" });

// OP4
db.products.updateOne(
  { name: "Laptop" },
  { $set: { discount_percent: 10 } }
);

// OP5
db.products.createIndex({ category: 1 });
