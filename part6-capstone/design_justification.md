## Storage Systems

In this architecture, multiple storage systems are used to handle different types of data and workloads. A relational database such as MySQL is used for OLTP operations, including storing patient records, appointments, and transactional data. This ensures strong consistency and reliability, which is critical in healthcare systems.

A Data Lake is used to store raw data such as ICU monitoring data, logs, and unstructured data. It provides scalability and flexibility to store large volumes of data in different formats.

A Data Warehouse is used for analytical processing and reporting. It stores cleaned and structured data, enabling efficient queries for generating monthly reports such as bed occupancy and department-wise costs.

A Vector Database is used for semantic search over patient history. It allows doctors to query patient data using natural language and retrieve relevant information based on meaning rather than exact keywords.

## OLTP vs OLAP Boundary

The OLTP system handles real-time transactional data such as patient admissions, treatments, and updates to medical records. This data is stored in the relational database.

The OLAP system begins when data is extracted from the OLTP system and loaded into the Data Warehouse through ETL processes. The Data Warehouse is used for analytical queries and reporting.

Thus, the boundary lies at the ETL layer, where transactional data is transformed and moved into analytical systems.

## Trade-offs

One significant trade-off in this architecture is between consistency and scalability. While healthcare systems require strong consistency for accurate patient data, handling large-scale data such as real-time vitals and logs requires scalable systems.

This trade-off is mitigated by using a hybrid architecture. Critical data is stored in the relational database to ensure consistency, while scalable systems like Data Lakes handle large volumes of less critical data.

This approach balances reliability with performance and scalability.
