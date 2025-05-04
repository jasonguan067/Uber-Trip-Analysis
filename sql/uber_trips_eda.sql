SELECT * from uber_data.uber_trips_cleaned LIMIT 10

--total bookings
SELECT COUNT(trip_id) as trip_count
FROM uber_data.uber_trips_cleaned

--total booking value
SELECT ROUND(SUM(fare_amount) + SUM(surge_fee),2) as total_booking_value
FROM uber_data.uber_trips_cleaned

--average booking value
SELECT ROUND(AVG(fare_amount + surge_fee),2) as avg_booking_value
FROM uber_data.uber_trips_cleaned

--total trip distance
SELECT ROUND(SUM(trip_distance),2) as total_trip_distance
FROM uber_data.uber_trips_cleaned

--average trip distance
SELECT ROUND(AVG(trip_distance),2) as total_trip_distance
FROM uber_data.uber_trips_cleaned

--average trip time
SELECT AVG(dropoff_time - pickup_time) as avg_trip_time
FROM uber_data.uber_trips_cleaned

--most frequent pickup spot
SELECT pickup_location, COUNT(*) as frequency
FROM uber_data.uber_trips_cleaned
GROUP BY pickup_location
ORDER BY frequency DESC
LIMIT 1

--top 5 frequent pickup spot
SELECT pickup_location, COUNT(*) as frequency
FROM uber_data.uber_trips_cleaned
GROUP BY pickup_location
ORDER BY frequency DESC
LIMIT 5

--most frequent dropoff spot
SELECT dropoff_location, COUNT(*) as frequency
FROM uber_data.uber_trips_cleaned
GROUP BY dropoff_location
ORDER BY frequency DESC
LIMIT 1

--top 5 frequent dropoff spot
SELECT dropoff_location, COUNT(*) as frequency
FROM uber_data.uber_trips_cleaned
GROUP BY dropoff_location
ORDER BY frequency DESC
LIMIT 5

--farthest trip
SELECT pickup_location, dropoff_location, MAX(trip_distance) as max_trip_distance
FROM uber_data.uber_trips_cleaned
GROUP BY pickup_location, dropoff_location
ORDER BY max_trip_distance DESC

--most common trip
SELECT pickup_location, dropoff_location, COUNT(*) as num_of_trips
FROM uber_data.uber_trips_cleaned
GROUP BY pickup_location, dropoff_location
ORDER BY num_of_trips DESC

--most preferred vehicle for location
SELECT pickup_location, vehicle, COUNT(vehicle) as vehicle_count
FROM uber_data.uber_trips_cleaned
GROUP BY pickup_location, vehicle
ORDER BY vehicle_count desc

--vehicle by longest/shortest trips & count
SELECT vehicle, AVG(dropoff_time-pickup_time) as avg_time, COUNT(*) as frequency
FROM uber_data.uber_trips_cleaned
GROUP BY vehicle

--payment type
SELECT payment_type, COUNT(*)
FROM uber_data.uber_trips_cleaned
GROUP BY payment_type

--payment type by vehicle 
SELECT vehicle, payment_type, COUNT(*) as trip_count
FROM uber_data.uber_trips_cleaned
GROUP BY vehicle, payment_type
ORDER BY vehicle, trip_count DESC

--pickups by hour
SELECT HOUR(pickup_time) as hour, COUNT(*)
FROM uber_data.uber_trips_cleaned
GROUP BY HOUR(pickup_time)
ORDER BY hour;

--top revenue generating locations or vehicle type
SELECT pickup_city,  vehicle, ROUND(SUM(fare_amount) + SUM(surge_fee), 2) as revenue
FROM uber_data.uber_trips_cleaned
GROUP BY pickup_city, vehicle
order by revenue desc

--fares by day/night
SELECT 
  CASE 
    WHEN HOUR(pickup_time) BETWEEN 6 AND 17 THEN 'Day' ELSE 'Night'
  END AS day_or_night,
  COUNT(*) AS total_trips,
  ROUND(AVG(fare_amount), 2) AS avg_fare,
  ROUND(AVG(surge_fee), 2) AS avg_surge
FROM uber_data.uber_trips_cleaned
GROUP BY 
  CASE 
    WHEN HOUR(pickup_time) BETWEEN 6 AND 17 THEN 'Day'
    ELSE 'Night'
  END
ORDER BY day_or_night;

--avg passenger per ride
SELECT vehicle, AVG(passenger_count) as p_count
FROM uber_data.uber_trips_cleaned
group by vehicle
order by p_count desc
