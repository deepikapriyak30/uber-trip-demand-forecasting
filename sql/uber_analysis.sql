/* ============================================================
   UBER DAILY DEMAND ANALYSIS - SQL SCRIPT
   Dataset: Uber-Jan-Feb-FOIL.csv (Daily aggregated Uber trips)
   Author: Deepika
   Purpose: Create table, load data, run analysis queries
   ============================================================ */

-- 1. TABLE CREATION
CREATE Database uber_trip_db;

USE uber_trip_db;

CREATE TABLE uber_daily_stats (
    dispatching_base_number VARCHAR(10),
    trip_date VARCHAR(20),
    active_vehicles INT,
    trips INT
);

/* ------------------------------
   2. DATA LOADING
   ------------------------------

   Note: Data was imported using MySQL Workbench 
         "Table Data Import Wizard" due to date formatting.
   ------------------------------ */

-- 3. ANALYSIS QUERIES
SELECT * FROM uber_daily_stats;

-- 3.1 Total trips per base
SELECT dispatching_base_number, SUM(trips) AS total_trips
FROM uber_daily_stats
GROUP BY dispatching_base_number
ORDER BY total_trips DESC;

-- 3.2 Average trips per day
SELECT AVG(trips) AS avg_daily_trips
FROM uber_daily_stats;

-- 3.3 Trips by date (trend)
SELECT trip_date, SUM(trips) AS total_trips
FROM uber_daily_stats
GROUP BY trip_date
ORDER BY trip_date;

-- 3.4 Efficiency: Trips per vehicle
SELECT 
    dispatching_base_number,
    ROUND(SUM(trips) / SUM(active_vehicles), 2) AS trips_per_vehicle
FROM uber_daily_stats
GROUP BY dispatching_base_number
ORDER BY trips_per_vehicle DESC;

-- 3.5 Weekday vs Weekend trips
SELECT 
    DAYNAME(STR_TO_DATE(trip_date, '%c/%e/%Y')) AS weekday,
    AVG(trips) AS avg_trips
FROM uber_daily_stats
GROUP BY weekday
ORDER BY avg_trips DESC;