--How many results do we have per customer?

SELECT c.name, COUNT(sr._id) AS total_results
FROM sonar_results sr
JOIN sonar_runs srn ON sr.sonar_run_id = srn._id
JOIN clients c ON srn.client_id = c._id
GROUP BY c.name
ORDER BY total_results ASC;


--This query counts the total number of results associated with each customer in the clients table.
