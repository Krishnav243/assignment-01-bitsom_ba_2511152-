## Anomaly Analysis

### 1. Insert Anomaly
In the `orders_flat.csv` table, we cannot insert a new customer unless they place an order.

For example:
- Columns: `customer_id`, `customer_name`, `order_id`
- If a new customer exists but has no `order_id`, the row cannot be inserted.

This causes difficulty in storing customer-only data.

---

### 2. Update Anomaly
Customer data is repeated across multiple rows.

Example:
- `customer_id = CUST048` appears in multiple rows  
  (e.g., ORD2011, ORD2014, ORD2069, ORD2070)

If we need to update the customer’s city or name:
- We must update all rows where `customer_id = CUST048`
- Missing even one row leads to inconsistent data

Columns involved:
- `customer_id`, `customer_name`, `city`

---

### 3. Delete Anomaly
Deleting an order may remove important customer information.

Example:
- If we delete row with `order_id = ORD2001`  
  (customer_id = CUST028)

Then:
- We may lose all information about that customer if no other orders exist

Columns involved:
- `order_id`, `customer_id`, `customer_name`

## Normalization Justification

Keeping all data in a single table (orders_flat.csv) leads to redundancy and anomalies. For example, the same customer (e.g., customer_id = CUST048) appears in multiple rows for different orders such as ORD2011 and ORD2014. This causes repeated storage of customer details like name and city.

This design leads to update anomalies because if the customer’s city changes, we must update multiple rows. Missing one update will result in inconsistent data.

It also causes delete anomalies. For instance, if we delete an order like ORD2001, we may lose all information about the customer (CUST028) if no other orders exist.

To solve this, the data is normalized into separate tables such as customers, orders, and products. Each table stores only relevant information, and relationships are maintained using foreign keys.

This ensures data consistency, reduces redundancy, and improves scalability of the database system.
