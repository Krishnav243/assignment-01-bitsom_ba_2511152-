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
