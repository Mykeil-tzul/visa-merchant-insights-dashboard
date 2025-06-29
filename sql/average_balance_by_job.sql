-- Average Account Balance by Job Title

SELECT 
  job,
  ROUND(AVG(balance), 2) AS avg_balance,
  COUNT(*) AS total_customers
FROM bank_data
GROUP BY job
ORDER BY avg_balance DESC;
