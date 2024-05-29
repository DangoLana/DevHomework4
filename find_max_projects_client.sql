WITH project_counts AS (
    SELECT CLIENT_ID, COUNT(*) AS num_projects
    FROM project
    GROUP BY CLIENT_ID
)
SELECT c.NAME AS client_name
FROM client c
JOIN project_counts pc ON c.ID = pc.CLIENT_ID
WHERE pc.num_projects = (
    SELECT MAX(num_projects)
    FROM project_counts
);