Use upi_fraud_project;
SELECT COUNT(*)
FROM fraud_dataset;
CREATE TABLE fraud_cleaned AS
SELECT
    transaction_id,
    user_id,
    amount,
    timestamp,
    location,
    transaction_type,
    unusual_device_flag,
    unusual_ip_flag,
    unusual_location_flag,
    transaction_velocity,
    failed_transaction_count,
    otp_request_frequency,
    handle_similarity_score,
    authentication_attempts,
    is_fraud
FROM fraud_dataset;

--TOTAL TRANSACTIONS--
SELECT COUNT(*) AS total_transactions
FROM fraud_cleaned;

--TOTAL FRAUD TRANSACTIONS--
SELECT COUNT(*) AS fraud_transactions
FROM fraud_cleaned
WHERE is_fraud = 1;

--TOTAL LEGIT TRANSACTIONS--
SELECT COUNT(*) AS legitimate_transactions
FROM fraud_cleaned
WHERE is_fraud = 0;

--FRAUD PERCENTAGE--
SELECT 
ROUND(
SUM(is_fraud) * 100.0 / COUNT(*),
2
) AS fraud_percentage
FROM fraud_cleaned;

--TOTAL FRAUD AMOUNT--
SELECT
ROUND(SUM(AMOUNT),2) AS total_fraud_amount
FROM fraud_cleaned
WHERE is_fraud=1;

--Average Fraud Amount--
SELECT AVG(amount) AS avg_fraud_amount
FROM fraud_cleaned
WHERE is_fraud=1;

--TOP HIGH-RISK TRANSACTION TYPES--
SELECT transaction_type,
COUNT(*) AS fraud_cases
FROM fraud_cleaned
WHERE is_fraud=1
GROUP BY transaction_type
ORDER BY fraud_cases DESC;

--SQL FRAUD SCORE QUERY--
SELECT *,
(
CASE WHEN unusual_device_flag = 1 THEN 20 ELSE 0 END +
CASE WHEN unusual_ip_flag = 1 THEN 20 ELSE 0 END +
CASE WHEN amount > 5000 THEN 20 ELSE 0 END +
CASE WHEN failed_transaction_count > 3 THEN 15 ELSE 0 END +
CASE WHEN transaction_velocity > 5 THEN 10 ELSE 0 END 
) AS fraud_score
FROM fraud_cleaned
ORDER by fraud_score DESC;

--RAPID TRANSACTION ANALYSIS--
SELECT user_id,
COUNT(*) AS transaction_count
FROM fraud_cleaned
GROUP BY user_id
HAVING transaction_count > 10
ORDER BY transaction_count DESC;
