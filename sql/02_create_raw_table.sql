CREATE TABLE food_delivery_orders_raw (
    ID TEXT,
    Delivery_person_ID TEXT,
    Delivery_person_Age TEXT,
    Delivery_person_Ratings TEXT,
    Restaurant_latitude TEXT,
    Restaurant_longitude TEXT,
    Delivery_location_latitude TEXT,
    Delivery_location_longitude TEXT,
    Order_Date TEXT,
    Time_Ordered TEXT,
    Time_Order_picked TEXT,
    Weatherconditions TEXT,
    Road_traffic_density TEXT,
    Vehicle_condition TEXT,
    Type_of_order TEXT,
    Type_of_vehicle TEXT,
    multiple_deliveries TEXT,
    Festival TEXT,
    City TEXT,
    time_taken_min TEXT
);
SELECT * FROM food_delivery_orders_raw LIMIT 5;


