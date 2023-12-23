-- no of rides
SELECT
    rideable_type, 
COUNT
    (ride_id) AS no_of_user_types
FROM `premium-axis-403220.Cyclistic_bike_share_2022.2022_bike_share`
GROUP BY rideable_type
ORDER BY no_of_user_types DESC;

-- most patronized bike type
SELECT 
    rideable_type AS bike_type,
    member_casual AS user_type,
COUNT(ride_id) AS no_of_rides
FROM 
    `premium-axis-403220.Cyclistic_bike_share_2022.2022_bike_share`
GROUP BY rideable_type, member_casual
ORDER BY no_of_rides DESC;

-- average ride length

SELECT 
    member_casual AS user_type,
ROUND
    (AVG(ride_length), 2) AS avg_ride_length
FROM
    `premium-axis-403220.Cyclistic_bike_share_2022.2022_bike_share`
GROUP BY member_casual;

-- No of rides by the day of week

SELECT
    day_started as day_of_week,
    COUNT(day_started) AS no_of_rides_per_day,
    member_casual as user_type,
    rideable_type as bike_type

FROM
    `premium-axis-403220.Cyclistic_bike_share_2022.2022_bike_share`

GROUP BY member_casual, day_started,rideable_type;

-- max ride length by bike type and user type

SELECT
    max(ride_length) as max_ride_length,
    member_casual as user_type,
    rideable_type as bike_type

FROM
    `premium-axis-403220.Cyclistic_bike_share_2022.2022_bike_share`
    
GROUP BY member_casual,rideable_type;

-- no of rides monthly:


SELECT
    count(month_started) as no_of_rides_per_month,
    member_casual as user_type,
    rideable_type as bike_type
    
FROM
    `premium-axis-403220.Cyclistic_bike_share_2022.2022_bike_share`
    
GROUP BY member_casual,rideable_type;