WITH oldest_youngest AS (
    SELECT 'OLDEST' AS TYPE, NAME, BIRTHDAY
    FROM worker
    WHERE BIRTHDAY = (
        SELECT MAX(BIRTHDAY)
        FROM worker
    )
    UNION ALL
    SELECT 'YOUNGEST' AS TYPE, NAME, BIRTHDAY
    FROM worker
    WHERE BIRTHDAY = (
        SELECT MIN(BIRTHDAY)
        FROM worker
    )
)
SELECT *
FROM oldest_youngest;