-- =====================================
-- CYBER SECURITY SQL ANALYSIS
-- =====================================

-- 1. Total Records

SELECT COUNT(*) AS total_records
FROM cyber_attacks;


-- 2. Attack Frequency Analysis

SELECT "Attack Type",
       COUNT(*) AS total_attacks
FROM cyber_attacks
GROUP BY "Attack Type"
ORDER BY total_attacks DESC;


-- 3. Threat Severity Analysis

SELECT "Severity Level",
       COUNT(*) AS total_attacks
FROM cyber_attacks
GROUP BY "Severity Level";


-- 4. Protocol Analysis

SELECT Protocol,
       COUNT(*) AS total_attacks
FROM cyber_attacks
GROUP BY Protocol;


-- 5. Source IP Threat Analysis

SELECT "Source IP Address",
       COUNT(*) AS attack_count
FROM cyber_attacks
GROUP BY "Source IP Address"
ORDER BY attack_count DESC
LIMIT 10;


-- 6. Destination IP Analysis

SELECT "Destination IP Address",
       COUNT(*) AS target_count
FROM cyber_attacks
GROUP BY "Destination IP Address"
ORDER BY target_count DESC
LIMIT 10;


-- 7. Network Segment Analysis

SELECT "Network Segment",
       COUNT(*) AS total_attacks
FROM cyber_attacks
GROUP BY "Network Segment";


-- 8. Geo-location Analysis

SELECT "Geo-location Data",
       COUNT(*) AS total_attacks
FROM cyber_attacks
GROUP BY "Geo-location Data"
ORDER BY total_attacks DESC
LIMIT 10;


-- 9. High Severity Threats

SELECT *
FROM cyber_attacks
WHERE "Severity Level" = 'High';


-- 10. Action Taken Analysis

SELECT "Action Taken",
       COUNT(*) AS total_actions
FROM cyber_attacks
GROUP BY "Action Taken";


-- 11. Traffic Type Analysis

SELECT "Traffic Type",
       COUNT(*) AS total_traffic
FROM cyber_attacks
GROUP BY "Traffic Type";


-- 12. Log Source Analysis

SELECT "Log Source",
       COUNT(*) AS total_logs
FROM cyber_attacks
GROUP BY "Log Source";