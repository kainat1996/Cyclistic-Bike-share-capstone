-- i used union all query to combine all the tables first
SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM 
  `premium-axis-403220.Cyclistic_bike_share_2022.202201_trip_data` 
  
UNION ALL

SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM 
  `premium-axis-403220.Cyclistic_bike_share_2022.202202_trip_data` 

UNION ALL

SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM `premium-axis-403220.Cyclistic_bike_share_2022.202203_trip_data` 

UNION ALL

SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
   
FROM 
  `premium-axis-403220.Cyclistic_bike_share_2022.202204_trip_data`

UNION ALL

SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM `premium-axis-403220.Cyclistic_bike_share_2022.202205_bike_share` 
  
UNION ALL
  
SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM 
  `premium-axis-403220.Cyclistic_bike_share_2022.202206_bike_share` 

UNION ALL

SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM 
  `premium-axis-403220.Cyclistic_bike_share_2022.202207_bike_share` 
  
UNION ALL

SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM 
  `premium-axis-403220.Cyclistic_bike_share_2022.202208_bike_share`

UNION ALL

SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM `premium-axis-403220.Cyclistic_bike_share_2022.202209_bike_share` 

UNION ALL

  SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM `premium-axis-403220.Cyclistic_bike_share_2022.202210_bike_share`

UNION ALL

  SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM 
  `premium-axis-403220.Cyclistic_bike_share_2022.202211_bike_share`

UNION ALL

SELECT ride_id,
  rideable_type,
  started_at,
  ended_at,
  member_casual
FROM 
  `premium-axis-403220.Cyclistic_bike_share_2022.202212_bike_share` 