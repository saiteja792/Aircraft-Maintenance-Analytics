SELECT * FROM public.flight_operations
LIMIT 100

DROP TABLE IF EXISTS flight_operations;

SELECT COUNT(*) AS total_rows
FROM flight_operations;

--Total Flights
SELECT COUNT(*) AS total_flights
FROM flight_operations;

--Flight Status Distribution

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'flight_operations'
ORDER BY ordinal_position;

SELECT
    "FLIGHT_STATUS",
    COUNT(*) AS flights
FROM flight_operations
GROUP BY "FLIGHT_STATUS"
ORDER BY flights DESC;

--Delay Category Distribution
SELECT
    "DELAY_CATEGORY",
    COUNT(*) AS flights
FROM flight_operations
GROUP BY "DELAY_CATEGORY"
ORDER BY flights DESC;

--Average Arrival Delay by Airline
SELECT
    "OP_CARRIER",
    ROUND(AVG("ARR_DELAY")::numeric, 2) AS avg_arrival_delay
FROM flight_operations
WHERE "ARR_DELAY" IS NOT NULL
GROUP BY "OP_CARRIER"
ORDER BY avg_arrival_delay DESC;

--Top 10 Delayed Airports
SELECT
    "ORIGIN",
    ROUND(AVG("DEP_DELAY")::numeric, 2) AS avg_departure_delay
FROM flight_operations
WHERE "DEP_DELAY" IS NOT NULL
GROUP BY "ORIGIN"
ORDER BY avg_departure_delay DESC
LIMIT 10;

SELECT
    "FLIGHT_STATUS",
    COUNT(*) AS flights
FROM flight_operations
GROUP BY "FLIGHT_STATUS"
ORDER BY flights DESC;

--KPI Query
SELECT
    COUNT(*) AS total_flights,
    SUM(CASE WHEN "FLIGHT_STATUS" = 'On Time' THEN 1 ELSE 0 END) AS on_time,
    SUM(CASE WHEN "FLIGHT_STATUS" = 'Delayed' THEN 1 ELSE 0 END) AS delayed,
    SUM(CASE WHEN "FLIGHT_STATUS" = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled,
    SUM(CASE WHEN "FLIGHT_STATUS" = 'Diverted' THEN 1 ELSE 0 END) AS diverted
FROM flight_operations;

--Average Arrival Delay by Airline
SELECT
    "OP_CARRIER",
    ROUND(AVG("ARR_DELAY")::numeric,2) AS avg_arrival_delay
FROM flight_operations
WHERE "ARR_DELAY" IS NOT NULL
GROUP BY "OP_CARRIER"
ORDER BY avg_arrival_delay DESC;

--Top 10 Airports with Highest Average Departure Delays
SELECT
    "ORIGIN",
    ROUND(AVG("DEP_DELAY")::numeric,2) AS avg_departure_delay
FROM flight_operations
WHERE "DEP_DELAY" IS NOT NULL
GROUP BY "ORIGIN"
ORDER BY avg_departure_delay DESC
LIMIT 10;

--Delay Cause Analysis
SELECT
    ROUND(SUM("CARRIER_DELAY")::numeric,0) AS carrier_delay,
    ROUND(SUM("WEATHER_DELAY")::numeric,0) AS weather_delay,
    ROUND(SUM("NAS_DELAY")::numeric,0) AS nas_delay,
    ROUND(SUM("SECURITY_DELAY")::numeric,0) AS security_delay,
    ROUND(SUM("LATE_AIRCRAFT_DELAY")::numeric,0) AS late_aircraft_delay
FROM flight_operations;

--Monthly Delay Trend
SELECT
    "MONTH",
    ROUND(AVG("ARR_DELAY")::numeric,2) AS avg_delay
FROM flight_operations
WHERE "ARR_DELAY" IS NOT NULL
GROUP BY "MONTH"
ORDER BY "MONTH";

--Delay Category Distribution
SELECT
    "DELAY_CATEGORY",
    COUNT(*) AS flights
FROM flight_operations
GROUP BY "DELAY_CATEGORY"
ORDER BY flights DESC;

---Best Performing Airlines
SELECT
    "OP_CARRIER",
    ROUND(AVG("ARR_DELAY")::numeric,2) AS avg_delay
FROM flight_operations
WHERE "ARR_DELAY" IS NOT NULL
GROUP BY "OP_CARRIER"
ORDER BY avg_delay ASC
LIMIT 10;












