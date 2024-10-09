--How many results do we have per part and shop?

SELECT part_id, supplier_id, COUNT(*) as total_results
FROM sonar_results
GROUP BY part_id , supplier_id
ORDER BY total_results DESC;


--Here total_results shows which part-supplier combinations have the most results.