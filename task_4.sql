USE alx_book_store;
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_DEFAULT,
    COLUMN_KEY,
    EXTRA
FROM
    information_schema.COLUMNS
WHERE
    TABLE_SCHEMA = 'alx_book_store' AND
    TABlE_NAME = 'Books'

