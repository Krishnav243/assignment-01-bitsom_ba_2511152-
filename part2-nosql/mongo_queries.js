// OP1: insertMany() — insert all 3 documents from sample_documents.json
db.products.insertMany([
  {
    name: "iPhone 14",
    category: "Electronics",
    price: 70000,
    brand: "Apple",
    specs: {
      warranty: "1 year",
      battery: "3200mAh",
      storage: "128GB"
    },
    ratings: [5, 4, 5, 5]
  },
  {
    name: "Men's T-Shirt",
    category: "Clothing",
    price: 999,
    brand: "Nike",
    sizes: ["S", "M", "L", "XL"],
    material: "Cotton",
    colors: ["Black", "White", "Blue"]
  },
  {
    name: "Milk",
    category: "Groceries",
    price: 60,
    brand: "Amul",
    expiry_date: ISODate("2024-12-01"),
    nutrition: {
      fat: "3.5%",
      protein: "3.2g"
    }
  }
]);


// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});


// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: ISODate("2025-01-01") }
});


// OP4: updateOne() — add a "discount_percent" field to a specific product
db.products.updateOne(
  { name: "iPhone 14" },
  { $set: { discount_percent: 10 } }
);


// OP5: createIndex() — create an index on category field and explain why
db.products.createIndex({ category: 1 });
