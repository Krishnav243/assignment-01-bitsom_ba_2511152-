## ETL Decisions

### Decision 1 – Date Standardization
Problem: The dataset had inconsistent date formats.
Solution: All dates were converted to a standard format (YYYY-MM-DD) to ensure consistency in queries.

### Decision 2 – Handling NULL Values
Problem: Some rows had missing values.
Solution: Missing values were either removed or replaced with default values to maintain data integrity.

### Decision 3 – Category Standardization
Problem: Categories had inconsistent casing (e.g., electronics, Electronics).
Solution: Converted all values to uppercase to maintain uniformity.
