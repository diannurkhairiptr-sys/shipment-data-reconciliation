# Data dictionary

| Table | Column | Description |
|---|---|---|
| SHIPMENT_SOURCE | DELIVERY_NUMBER | Fictional delivery reference from the source |
| SHIPMENT_SOURCE | COLLI_COUNT | Number of colli represented by the source row |
| SHIPMENT_SOURCE | SOURCE_QTY | Quantity reported by the source |
| SHIPMENT_DATABASE | SHIPMENT_ID | Shipment identifier used to match records |
| SHIPMENT_DATABASE | CARTON_ID | Fictional carton identifier |
| SHIPMENT_DATABASE | DATABASE_QTY | Quantity recorded in the database |

## Notes
- The sample source has two rows per delivery, each contributing one colli.
- `COUNT(DISTINCT CARTON_ID)` counts unique cartons in the database.
- `NVL(..., 0)` displays zero database values when no matching shipment exists.
- For `NOT FOUND`, the difference columns show source totals minus zero; the status column distinguishes missing records from a normal quantity mismatch.
