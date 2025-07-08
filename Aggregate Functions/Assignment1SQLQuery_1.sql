-- 1
SELECT 
    reservation_status, 
    COUNT(*) AS total_bookings
FROM 
    Booking
WHERE 
    arrive_year = 2017 
    AND arrive_month = 'August'
GROUP BY 
    reservation_status;

-- 2
SELECT 
    market_segment, 
    COUNT(*) AS total_room_type_changes
FROM 
    Booking
WHERE 
    arrive_year = 2016 
    AND arrive_month = 'June'
    AND reserved_room_type != assigned_room_type
GROUP BY 
    market_segment
ORDER BY 
    total_room_type_changes DESC;

-- 3
SELECT 
    market_segment, 
    AVG(daily_rate) AS average_daily_rate, 
    MAX(lead_time) AS max_lead_time, 
    COUNT(*) AS cancellations
FROM 
    Booking
WHERE 
    arrive_year = 2017 
    AND arrive_month IN ('January', 'February', 'March')
    AND reservation_status = 'Canceled'
GROUP BY 
    market_segment;

-- 4
SELECT 
    assigned_room_type, 
    COUNT(*) AS total_bookings
FROM 
    Booking
WHERE 
    arrive_year = 2017 
    AND weekend_nights > week_nights
GROUP BY 
    assigned_room_type
ORDER BY 
    total_bookings DESC;


