/* Get database size (lists size of all databases) */
SELECT
    table_schema "ts_32111919",
    ROUND(SUM( data_length + index_length) / 1024 / 1024, 2) AS "Size (MB)"
FROM
    information_schema.TABLES
GROUP BY table_schema;


/* Get Table size (lists size of all tables inside of the database, change the table_schema = "" name below if you have changed it) */
SELECT table_name AS "Table",
ROUND(((data_length + index_length) / 1024), 2) AS "Size (KB)"
FROM information_schema.TABLES
WHERE table_schema = "ts_32111919"
ORDER BY (data_length + index_length) DESC;