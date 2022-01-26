-- 'Question 3:'
SELECT
CAST(tpep_pickup_datetime AS DATE) as "day",
COUNT(1)
FROM yellow_taxi_data_2 t
GROUP by
CAST(tpep_pickup_datetime AS DATE)
ORDER by "day" ASC
-- 'Question 4:'
SELECT
CAST(tpep_pickup_datetime AS DATE) as "day",
tip_amount as "tips"
FROM yellow_taxi_data_2 t
ORDER by "tips" DESC
-- 'Question:5"
--'1) get ID of Central park deom the taxi zone data table
    SELECT "LocationID"
    FROM
    taxi_zone_data
    WHERE
    "Zone"= 'Central Park';
 --'2) find most popular destination: (answer ID :236 , count: 2234)
 SELECT "PULocationID" as "src","DOLocationID" as "dest",
COUNT(1)
    FROM
    yellow_taxi_data_2
    WHERE
    "PULocationID"= 43
	GROUP BY "src", "dest"
	ORDER By count DESC
 --'2) find which destanition hads ID :236 ( answer: Upper East Side North)
 SELECT "Zone"
    FROM
    taxi_zone_data
    WHERE
    "LocationID"= 236;
-- Question 6:
-- 1) get the pair with highest average fare (answer: 4/265	1128.5)
SELECT "PULocationID" as "src","DOLocationID" as "dest", AVG(fare_Amount) as avg_fare
    FROM
    yellow_taxi_data_2

	GROUP BY "src", "dest"
	ORDER By avg_fare DESC
-- 2) get the names corresponding to the IDS 4/265 (answer "Alphabet City"/ NULL)
SELECT "Zone"
    FROM
    taxi_zone_data
    WHERE
    "LocationID"= 4 OR "LocationID"= 265