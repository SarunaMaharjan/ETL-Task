--How did prices per part develop over time?


SELECT part_id, date, price_norm
FROM sonar_results sr
JOIN sonar_runs srn ON sr.sonar_run_id = srn._id
ORDER BY part_id, date;