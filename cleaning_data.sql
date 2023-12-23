SELECT *
FROM
    `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022`;

-- at fist i am going to remove the duplicate from the data, for that i check all the columns and remove the duplicate from them:
SELECT 
    ride_id
FROM 
    `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022`
GROUP BY 
    ride_id
HAVING COUNT(*) > 1;

DELETE FROM `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022` 
WHERE ride_id
 IN (
    SELECT ride_id
    FROM `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022`
    GROUP BY ride_id
    HAVING COUNT(*) > 1
);

--check if the started_at is less than ended_at AND remove the data

SELECT * 
FROM 
    `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022` 
WHERE  
    ended_at<started_at;


DELETE FROM `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022`
WHERE
    ended_at<started_at;

-- check for null values
SELECT *
FROM 
    `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022`
WHERE ride_id IS NULL;

SELECT *
FROM 
    `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022`
WHERE started_at IS NULL;

SELECT *
FROM 
    `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022`
WHERE ended_at IS NULL;

SELECT *
FROM 
    `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022`
WHERE member_casual IS NULL;

-- member_casual types
SELECT *
FROM 
    `premium-axis-403220.Cyclistic_bike_share_2022.trip_data_2022`
WHERE member_casual IS NULL;



-- I created “started_day”, “ended_day”, “started_time” & “ended_time” columns and populated them with data from the “started_at” & “ended_at” colums

SELECT 
    ride_id,
    rideable_type, 
    DATE(started_at) AS started_at, 
    TIME(started_at) as started_time, 
    DATE(ended_at) as ended_at, 
    TIME(ended_at) as ended_time, 
    member_casual  
FROM 
`premium-axis-403220.Cyclistic_bike_share_2022.2022_bike_share`;


-- found ride_length in secs
SELECT *, 
    TIME_DIFF(ended_time, started_time, second) as ride_length
FROM
     `premium-axis-403220.Cyclistic_bike_share_2022.Trip_data_2022`