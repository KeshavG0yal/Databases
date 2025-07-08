-- Question 4
WITH CityCharityCounts AS (
    SELECT l.city, COUNT(*) as charity_count
    FROM Locations l
    JOIN Charities c ON l.location_id = c.location_id
    GROUP BY l.city
    HAVING COUNT(*) >= 20
),
RankedCharities AS (
    SELECT 
        l.city,
        c.charity_name,
        cp.total_contributions,
        ROW_NUMBER() OVER (
            PARTITION BY l.city 
            ORDER BY cp.total_contributions DESC
        ) as original_rank,
        LEAD(c.charity_name) OVER (
            PARTITION BY l.city 
            ORDER BY cp.total_contributions DESC
        ) as next_charity_name
    FROM Charities c
    JOIN Locations l ON c.location_id = l.location_id
    JOIN CharityPerformance cp ON c.charity_id = cp.charity_id
    JOIN CityCharityCounts ccc ON l.city = ccc.city
),
CorrectedRankings AS (
    SELECT 
        city,
        charity_name,
        original_rank,
        CASE 
            WHEN original_rank > 1 
                AND (charity_name LIKE '%Community%' OR charity_name LIKE '%Communities%')
                THEN original_rank - 1
            WHEN (next_charity_name LIKE '%Community%' OR next_charity_name LIKE '%Communities%')
                AND original_rank < (
                    SELECT COUNT(*) 
                    FROM Charities c2 
                    JOIN Locations l2 ON c2.location_id = l2.location_id
                    WHERE l2.city = RankedCharities.city
                )
                THEN original_rank + 1
            ELSE original_rank
        END as corrected_rank
    FROM RankedCharities
)
SELECT 
    city,
    charity_name,
    original_rank as original_charity_rank,
    corrected_rank as corrected_charity_rank
FROM CorrectedRankings
ORDER BY city, corrected_rank;


-- Question 5
SELECT 
    c.charity_name,
    'Education' AS focus_area,
    wt.work_type,
    cp.overall_score,
    FORMAT(cp.total_contributions, 'C', 'en-US') AS total_contributions_formatted
FROM Charities c
JOIN SubCategories sc ON c.sub_category_id = sc.sub_category_id
JOIN Categories cat ON sc.category_id = cat.category_id
JOIN WorkType wt ON c.work_type_id = wt.work_type_id
JOIN CharityPerformance cp ON c.charity_id = cp.charity_id
WHERE 
    cat.category_name = 'Education and Health'
    AND sc.sub_category = 'Education'
    AND cp.overall_score >= 90.00
    AND cp.total_contributions >= 5000000

UNION

SELECT 
    c.charity_name,
    'Environment' AS focus_area,
    wt.work_type,
    cp.overall_score,
    FORMAT(cp.total_contributions, 'C', 'en-US') AS total_contributions_formatted
FROM Charities c
JOIN SubCategories sc ON c.sub_category_id = sc.sub_category_id
JOIN Categories cat ON sc.category_id = cat.category_id
JOIN WorkType wt ON c.work_type_id = wt.work_type_id
JOIN CharityPerformance cp ON c.charity_id = cp.charity_id
WHERE 
    cat.category_name = 'Animals and Environment'
    AND sc.sub_category = 'Environment'
    AND cp.overall_score >= 95.00
    AND cp.total_contributions >= 1000000

ORDER BY focus_area, total_contributions_formatted DESC;


-- Question 6
WITH RankedCharities AS (
    SELECT 
        wt.work_type,
        c.charity_name,
        l.city,
        cp.total_contributions,
        DENSE_RANK() OVER (
            PARTITION BY wt.work_type 
            ORDER BY cp.total_contributions DESC
        ) as charity_rank
    FROM WorkType wt
    JOIN Charities c ON wt.work_type_id = c.work_type_id
    JOIN Locations l ON c.location_id = l.location_id
    JOIN CharityPerformance cp ON c.charity_id = cp.charity_id
)
SELECT 
    work_type,
    charity_name,
    city,
    total_contributions,
    charity_rank
FROM RankedCharities
WHERE charity_rank <= 5
ORDER BY work_type, charity_rank;


-- Question 7
WITH CityStats AS (
    SELECT 
        l.city,
        COUNT(c.charity_id) as num_charities,
        SUM(cp.total_contributions) as total_funds,
        SUM(cp.total_contributions) / COUNT(c.charity_id) as avg_funds_per_charity,
        SUM(cp.total_contributions) / 
            (SELECT SUM(total_contributions) FROM CharityPerformance) * 100 as percent_share
    FROM Locations l
    LEFT JOIN Charities c ON l.location_id = c.location_id
    LEFT JOIN CharityPerformance cp ON c.charity_id = cp.charity_id
    GROUP BY l.city
),
BucketedStats AS (
    SELECT 
        city,
        num_charities,
        total_funds,
        avg_funds_per_charity,
        percent_share,
        NTILE(100) OVER (ORDER BY total_funds DESC) as bucket_rank
    FROM CityStats
)
SELECT 
    city,
    num_charities as number_of_charities,
    total_funds,
    ROUND(avg_funds_per_charity, 2) as average_funds_per_charity,
    ROUND(percent_share, 2) as percentage_share_of_total_funds
FROM BucketedStats
WHERE bucket_rank <= 2
ORDER BY total_funds DESC, num_charities DESC;