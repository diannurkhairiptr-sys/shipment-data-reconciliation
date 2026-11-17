-- 01_create_tables.sql
-- Fictional portfolio tables. Run in a schema where you have CREATE TABLE permission.

CREATE TABLE SHIPMENT_SOURCE (
    DELIVERY_NUMBER VARCHAR2(30),
    COLLI_COUNT     NUMBER,
    SOURCE_QTY      NUMBER
);

CREATE TABLE SHIPMENT_DATABASE (
    SHIPMENT_ID  VARCHAR2(30),
    CARTON_ID    VARCHAR2(30),
    DATABASE_QTY NUMBER
);
