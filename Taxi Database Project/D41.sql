/*
QUERY: Driver Workload

Result Summary:
This query evaluates driver workload by calculating total rides, hours worked, earnings, 
and average ride duration per driver, alongside their ratings and service affiliation.
*/

WITH DriverWorkload AS (
    SELECT 
        d.DriverID,
        pts.Name AS ServiceName,
        pd.Location,
        COUNT(r.RideID) AS TotalRides,
        SUM(DATEDIFF(MINUTE, r.StartTime, r.EndTime)) / 60.0 AS TotalHoursWorked,
        SUM(r.Price) AS TotalEarnings,
        AVG(DATEDIFF(MINUTE, r.StartTime, r.EndTime)) / 60.0 AS AvgRideDurationHours,
        AVG(r.Price / NULLIF(DATEDIFF(MINUTE, r.StartTime, r.EndTime) / 60.0, 0)) AS EarningsPerHour,
        AVG(d.Rating) AS AvgDriverRating
    FROM Driver d
    JOIN PrivateTransportationService pts ON d.ServiceID = pts.ServiceID
    JOIN Ride r ON d.DriverID = r.DriverID
    JOIN PriceData pd ON pts.ServiceID = pd.ServiceID
    WHERE r.StartTime IS NOT NULL AND r.EndTime IS NOT NULL
    GROUP BY d.DriverID, pts.Name, pd.Location
),

VehicleUsage AS (
    SELECT 
        d.DriverID,
        COUNT(DISTINCT dv.VehicleID) AS VehiclesUsed,
        STRING_AGG(v.Make + ' ' + v.Model, ', ') AS VehicleList
    FROM Driver d
    JOIN DriverVehicle dv ON d.DriverID = dv.DriverID
    JOIN Vehicle v ON dv.VehicleID = v.VehicleID
    GROUP BY d.DriverID
)

SELECT TOP 20
    dw.DriverID,
    dw.ServiceName,
    dw.Location,
    dw.TotalRides,
    dw.TotalHoursWorked,
    dw.TotalEarnings,
    dw.AvgRideDurationHours,
    dw.EarningsPerHour,
    dw.AvgDriverRating,
    vu.VehiclesUsed,
    vu.VehicleList,
    CASE 
        WHEN dw.TotalHoursWorked > 60 THEN 'High'
        WHEN dw.TotalHoursWorked BETWEEN 40 AND 60 THEN 'Moderate'
        ELSE 'Low'
    END AS WorkloadCategory
FROM DriverWorkload dw
JOIN VehicleUsage vu ON dw.DriverID = vu.DriverID
WHERE dw.TotalRides >= 5
ORDER BY dw.TotalHoursWorked DESC, dw.TotalEarnings DESC;