--How did prices per part develop over time?


SELECT part_id, date, price_norm
FROM sonar_results sr
JOIN sonar_runs srn ON sr.sonar_run_id = srn._id  --to get the date associated with each sonar run
ORDER BY part_id, date;

--This is the analysis of how prices have changed over time for each part.