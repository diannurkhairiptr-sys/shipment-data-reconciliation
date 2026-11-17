# Shipment Data Reconciliation (Oracle SQL)

## Project overview
A small Oracle SQL portfolio project that compares shipment data from a source file staging table with records stored in a shipment database table.

The query aggregates carton/colli counts and quantities, matches records using a shipment ID, calculates differences, and labels each delivery as `MATCH`, `MISMATCH`, or `NOT FOUND`.

> **Data notice:** All table names and rows in this project are fictional and created for portfolio demonstration. They do not contain company or production data.

> **Execution notice:** The expected result shown in `docs/expected_output.csv` and `docs/expected_output.png` is calculated from the sample rows for illustration. It has **not** been captured from an Oracle execution.

## Project structure
- `sql/01_create_tables.sql` — create the sample tables.
- `sql/02_insert_sample_data.sql` — insert fictional sample rows.
- `sql/03_reconciliation_query.sql` — compare source and database records.
- `sql/04_validation_queries.sql` — optional queries to inspect the sample data.
- `docs/expected_output.csv` — expected result based on the sample data.
- `docs/expected_output.png` — readable preview of the expected result.

## How to use
1. Open an Oracle schema where you have permission to create tables.
2. Run `sql/01_create_tables.sql`.
3. Run `sql/02_insert_sample_data.sql`.
4. Run `sql/03_reconciliation_query.sql`.
5. Compare the query result with `docs/expected_output.csv`.

## Logic
1. Group source rows by delivery number.
2. Derive the shipment ID from the first character and last eight characters of the delivery number.
3. Aggregate database rows by shipment ID.
4. Compare the source and database carton counts and quantities.
5. Return a status:
   - `MATCH`: both carton count and quantity match.
   - `MISMATCH`: a database record exists, but one or more values differ.
   - `NOT FOUND`: no matching shipment ID exists in the database table.

## Skills demonstrated
- Oracle SQL
- Common Table Expressions (CTEs)
- `SUBSTR`
- `SUM`
- `COUNT(DISTINCT ...)`
- `LEFT JOIN`
- `NVL`
- `CASE`
- Data validation and reconciliation
