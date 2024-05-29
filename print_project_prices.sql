WITH project_duration AS (
    SELECT
        p.ID AS PROJECT_ID,
        p.CLIENT_ID,
        p.START_DATE,
        p.FINISH_DATE,
        EXTRACT(MONTH FROM AGE(p.FINISH_DATE, p.START_DATE)) AS DURATION_MONTHS
    FROM project p
),
project_costs AS (
    SELECT
        pw.PROJECT_ID,
        SUM(w.SALARY * pd.DURATION_MONTHS) AS PROJECT_COST
    FROM project_worker pw
    JOIN worker w ON pw.WORKER_ID = w.ID
    JOIN project_duration pd ON pw.PROJECT_ID = pd.PROJECT_ID
    GROUP BY pw.PROJECT_ID
)
SELECT
    p.ID AS PROJECT_ID,
    c.NAME AS CLIENT_NAME,
    pc.PROJECT_COST
FROM project p
JOIN client c ON p.CLIENT_ID = c.ID
JOIN project_costs pc ON p.ID = pc.PROJECT_ID
ORDER BY pc.PROJECT_COST DESC;