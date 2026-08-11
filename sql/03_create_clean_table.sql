
-- 1. Standardize column names if needed
-- Example: rename "time_taken(min)" to "time_taken_minutes"
ALTER TABLE food_delivery_orders_raw
RENAME COLUMN time_taken_min TO time_taken_minutes;

-- 2. Remove '(min)' text from time_taken_minutes
UPDATE food_delivery_orders_raw
SET time_taken_minutes = REPLACE(time_taken_minutes, '(min) ', '')
WHERE time_taken_minutes LIKE '(min)%';

-- 3. Convert NaN values in multiple_deliveries to NULL
UPDATE food_delivery_orders_raw
SET multiple_deliveries = NULL
WHERE multiple_deliveries ILIKE 'NaN';

-- 4. Trim extra spaces from text fields
UPDATE food_delivery_orders_raw
SET city = TRIM(city),
    festival = TRIM(festival),
    weatherconditions = TRIM(weatherconditions),
    road_traffic_density = TRIM(road_traffic_density);

-- 5. Remove duplicate rows based on ID
DELETE FROM food_delivery_orders_raw
WHERE ctid NOT IN (
    SELECT MIN(ctid)
    FROM food_delivery_orders_raw
    GROUP BY id
);

-- 6. Verify cleaning
SELECT * FROM food_delivery_orders_raw LIMIT 10;


CREATE TABLE food_delivery_orders (
    id VARCHAR(20) PRIMARY KEY,
    delivery_person_id VARCHAR(30),
    delivery_person_age INT,
    delivery_person_ratings NUMERIC(3,2),
    restaurant_latitude NUMERIC(10,6),
    restaurant_longitude NUMERIC(10,6),
    delivery_location_latitude NUMERIC(10,6),
    delivery_location_longitude NUMERIC(10,6),
    order_date DATE,
    time_ordered TIME,
    time_order_picked TIME,
    weatherconditions VARCHAR(50),
    road_traffic_density VARCHAR(30),
    vehicle_condition INT,
    type_of_order VARCHAR(30),
    type_of_vehicle VARCHAR(30),
    multiple_deliveries INT,
    festival VARCHAR(10),
    city VARCHAR(30),
    time_taken_minutes INT
);
SELECT * FROM food_delivery_orders_raw LIMIT 10;
