WITH RECURSIVE Months AS (
    SELECT 1 AS month_number
    UNION ALL
    SELECT month_number + 1
    FROM Months
    WHERE month_number < 12
)
SELECT 
    month_number AS Month,
    DAY(LAST_DAY(CONCAT(YEAR(CURDATE()), '-', month_number, '-01'))) AS Days
FROM Months;