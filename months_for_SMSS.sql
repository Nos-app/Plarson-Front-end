WITH Months AS (
    SELECT 1 AS month_number
    UNION ALL
    SELECT month_number + 1
    FROM Months
    WHERE month_number < 12
)
SELECT 
    month_number AS Month,
    DAY(EOMONTH(DATEFROMPARTS(YEAR(GETDATE()), month_number, 1))) AS Days
FROM Months
OPTION (MAXRECURSION 12);