/*
QUERY: Passenger Ride Pattern and Satisfaction

Result Summary:
This query analyzes passenger ride frequency, spending habits, preferred services, 
and satisfaction scores to identify high-value passengers and service performance from the passenger perspective.
*/

WITH PassengerActivity AS (
    SELECT 
        p.PassengerID,
        pts.Name AS ServiceName,
        pd.Location,
        COUNT(r.RideID) AS TotalRides,
        SUM(r.Price) AS TotalSpent,
        AVG(r.Price) AS AvgRideCost,
        MIN(r.StartTime) AS FirstRideDate,
        MAX(r.StartTime) AS LastRideDate,
        DATEDIFF(DAY, MIN(r.StartTime), MAX(r.StartTime)) AS ActivitySpanDays,
        p.Preferences AS PassengerPreferences
    FROM Passenger p
    JOIN Ride r ON p.PassengerID = r.PassengerID
    JOIN Driver d ON r.DriverID = d.DriverID
    JOIN PrivateTransportationService pts ON d.ServiceID = pts.ServiceID
    JOIN PriceData pd ON pts.ServiceID = pd.ServiceID
    GROUP BY p.PassengerID, pts.Name, pd.Location, p.Preferences
),

SatisfactionMetrics AS (
    SELECT 
        r.PassengerID,
        AVG(ra.Score) AS AvgSatisfactionScore,
        COUNT(ra.RatingID) AS RatingCount
    FROM Ride r
    LEFT JOIN Rating ra ON r.PassengerID = ra.PassengerID AND r.DriverID = ra.DriverID
    GROUP BY r.PassengerID
)

SELECT TOP 20
    pa.PassengerID,
    pa.ServiceName,
    pa.Location,
    pa.TotalRides,
    pa.TotalSpent,
    pa.AvgRideCost,
    pa.FirstRideDate,
    pa.LastRideDate,
    pa.ActivitySpanDays,
    pa.PassengerPreferences,
    sm.AvgSatisfactionScore,
    sm.RatingCount,
    CASE 
        WHEN pa.TotalRides > 20 THEN 'Frequent'
        WHEN pa.TotalRides BETWEEN 5 AND 20 THEN 'Regular'
        ELSE 'Occasional'
    END AS RiderCategory
FROM PassengerActivity pa
JOIN SatisfactionMetrics sm ON pa.PassengerID = sm.PassengerID
WHERE pa.TotalRides >= 3
ORDER BY pa.TotalSpent DESC, pa.TotalRides DESC;