SELECT Class, COUNT(*) AS transactions, 
ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 3) AS percentage 
FROM creditcard_deduped 
GROUP BY Class;

PRAGMA table_info(creditcard_deduped);

SELECT 
	hour_of_day, 
		COUNT(*) AS total_txns, 
		SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) AS fraud_txns, 
		ROUND( 100.0 * SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) / COUNT(*), 2 ) AS fraud_rate_pct 
FROM creditcard_deduped 
GROUP BY hour_of_day 
ORDER BY hour_of_day;

SELECT 
	amount_band, 
		COUNT(*) AS total_txns, 
		SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) AS fraud_txns, 
		ROUND( 100.0 * SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) / COUNT(*), 2 ) AS fraud_rate_pct 
FROM creditcard_deduped 
GROUP BY amount_band 
ORDER BY fraud_rate_pct DESC;

SELECT 
	Class, 
		ROUND(AVG(Amount), 2) AS avg_amount, 
		ROUND(MIN(Amount), 2) AS min_amount, 
		ROUND(MAX(Amount), 2) AS max_amount
	FROM creditcard_deduped
	GROUP BY Class;
	
SELECT 
	Class, 
		ROUND(SUM(Amount), 2) AS total_amount, 
		ROUND( 100.0 * SUM(Amount) / SUM(SUM(Amount)) OVER (), 2 ) AS amount_share_pct 
	FROM creditcard_deduped 
	GROUP BY Class;
	
SELECT
    amount_band,
    COUNT(*) AS total_txns,
    ROUND(
        100.0 * COUNT(*) / SUM(COUNT(*)) OVER (),
        2
    ) AS volume_pct,
    ROUND(
        100.0 * SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS fraud_rate_pct
FROM creditcard_deduped
GROUP BY amount_band;
