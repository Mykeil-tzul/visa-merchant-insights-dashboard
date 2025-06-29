-- Conversion Rate by Job Title

SELECT 
  job,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) AS conversions,
  ROUND(100.0 * SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS conversion_rate_pct
FROM bank_data
GROUP BY job
ORDER BY conversion_rate_pct DESC;
