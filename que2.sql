--How many results do we have per country? 

SELECT s.country, COUNT(sr._id) as total_results
FROM sonar_results sr
JOIN suppliers s ON sr.supplier_id = s._id
GROUP BY s.country
ORDER BY total_results ASC;

