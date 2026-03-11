SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'PHOENIX'
AND city_2.city_name = 'SALT LAKE CITY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time >= '2023-10-27 06:00:00'
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.city_code = 'DENVER';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'DENVER'
AND flight_1.to_airport = 'STL'
AND day(flight_1.date) = 2
AND time(flight_1.departure_time) BETWEEN '08:00:00' AND '10:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON' AND(( flight_1.departure_time BETWEEN 0 AND 800 AND 1 = 1 ) AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 ) ) ) OR( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND(( flight_1.departure_time >= 2000 AND flight_1.departure_time <= 2200 ) AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 ) ) )
SELECT flight_id
FROM flight
WHERE departure_time = '17:00' AND from_airport = 'STL' AND to_airport = 'MIL' AND day_name = 'WEDNESDAY' AND (day_number = 15 OR day_number = 16);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 1 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'YX' AND( flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' OR flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN DIEGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 24 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'LGA' AND( flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN JOSE' AND flight_1.arrival_time = 2200 )
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_stop flight_stop_1 , airport_service airport_service_3 , city city_3 WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'DENVER' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_date BETWEEN '2023-10-27' AND '2023-10-30'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_schedule flight_schedule_1
ON flight_schedule_1.flight_id = flight_1.flight_id
WHERE flight_schedule_1.day_of_week = 6
AND flight_schedule_1.departure_time >= 1600
AND flight_schedule_1.departure_time <= 2000;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , food_service food_service_1 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , food_service food_service_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' AND flight_1.meal_code = food_service_1.meal_code AND 1 = 1 ) ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' AND flight_1.meal_code = food_service_1.meal_code AND 1 = 1 ) )
SELECT fare_1.fare_id
FROM fare fare_1
JOIN flight flight_1
ON fare_1.flight_id = flight_1.flight_id
WHERE flight_1.from_airport = 'WA'
AND flight_1.to_airport = 'TO'
AND day(flight_1.date) = 6
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'BOS'
AND flight_1.to_airport = 'WA'
AND dayofweek(flight_1.departure_time) = 6
SELECT * FROM flight flight_1
WHERE flight_1.from_airport = 'CLEVELAND' AND flight_1.to_airport = 'DALLAS' AND flight_1.departure_time < 1200;
SELECT flight_1.flight_id, flight_1.fare
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_stop_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'WA' AND airport_service_2.city_code = 'BO'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
WHERE flight_fare_1.date BETWEEN '2023-06-01' AND '2023-06-07'
AND flight_fare_1.from_city = 'WASHINGTON'
AND flight_fare_1.to_city = 'BOSTON'
SELECT flight_1.flight_id, flight_1.fare
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'WASHINGTON'
AND city_2.city_name = 'MONTREAL'
SELECT flight_id, fare
FROM flight
WHERE departure_date = '2023-06-06' AND departure_time >= 1800 AND departure_time <= 2200
SELECT flight_1.flight_id, flight_1.fare
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
WHERE flight_fare_1.departure_date = '1991-07-26' AND flight_fare_1.to_destination = 'TORONTO'
SELECT fare
FROM flight
WHERE from_airport = 'WA' AND to_airport = 'TO' AND flight_date = '2023-08-13'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_schedule flight_schedule_1
ON flight_schedule_1.flight_id = flight_1.flight_id
JOIN schedule schedule_1
ON flight_schedule_1.schedule_id = schedule_1.schedule_id
WHERE schedule_1.day = 'SATURDAY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_days = 'SATURDAY' AND ( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_days = 1
AND (flight_1.from_airport = 'MILW' AND flight_1.to_airport = 'DTW')
SELECT DISTINCT flight_1.departure_time , flight_1.arrival_time FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DETROIT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN 1000 AND 1600
SELECT *
FROM flight
WHERE from_airport = 'TOR' AND to_airport = 'MIL'
SELECT flight_id
FROM flight
WHERE from_airport = 'OAKLAND'
AND to_airport = 'SLC'
AND flight_date = '2023-08-14'
SELECT flight_id
FROM flight
WHERE to_airport = 'OAKLAND'
AND departure_date = '2023-10-27'
ORDER BY flight_id DESC
LIMIT 1;
SELECT flight_id
FROM flight
WHERE from_airport = 'OAKLAND'
AND to_airport = 'SLC'
AND date = '2023-10-27'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE EXISTS (
    SELECT *
    FROM airport_service airport_service_2
    WHERE airport_service_2.city_code = 'DTW' AND airport_service_2.city_name = 'SAN DIEGO'
    AND flight_1.from_airport = airport_service_2.airport_code
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN 0 AND 1200
SELECT flight_id
FROM flight
WHERE from_airport = 'MILW'
AND to_airport = 'IND'
AND departure_time <= '2023-10-27 09:00:00'
SELECT flight_id
FROM flight
WHERE from_airport = 'MILWAUKEE'
AND departure_time < '08:00:00'
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.airport_code = 'IND'
SELECT * FROM flight
WHERE from_airport = 'INDIANAPOLIS'
AND to_airport = ' CLEVELAND'
AND departure_time = '12:00:00'
SELECT *
FROM flight
WHERE departure_time >= '2023-08-20 18:00:00' AND departure_time < '2023-08-20 20:00:00' AND from_airport = 'CLEVELAND' AND to_airport = 'MILWAUKEE'
SELECT *
FROM flight
WHERE departure_time BETWEEN '19:00:00' AND '23:00:00'
AND from_airport = 'CLEVELAND'
AND to_airport = 'MILWAUKEE'
AND flight_days BETWEEN 5 AND 7
SELECT * FROM flight flight_1
WHERE departure_time BETWEEN '2023-10-27 19:00:00' AND '2023-10-27 23:00:00' AND from_airport = 'CLEVELAND' AND to_airport = 'MILWAUKEE'
SELECT *
FROM flight
WHERE from_airport = 'CLEVELAND'
AND to_airport = 'MILWAUKEE'
AND flight_date >= '2023-10-26'
AND flight_time >= 1900;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'DENVER'
AND flight_1.to_airport = 'SLC'
AND flight_1.flight_day = 'MONDAY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MAX( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' )
SELECT flight_1.flight_id, airline_1.airline_name
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE flight_1.flight_days = 'MONDAY' AND flight_1.departure_time > '19:00'
SELECT DISTINCT ground_transportation.ground_transportation_id
FROM ground_transportation
WHERE airport_code = 'SLC'
SELECT flight_id
FROM flight
WHERE from_airport = 'SLC'
AND to_airport = 'PHOENIX'
AND departure_time >= '2023-10-27 19:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHOENIX'
SELECT flight_id
FROM flight
WHERE departure_time >= 1800
AND departure_time <= 2359
AND from_airport = 'OAKL'
AND to_airport = 'SLC'
SELECT flight_id, fare
FROM flight
WHERE departure_time < '09:00' AND (
    FROM_airport = 'OAKLAND' AND TO_airport = 'SLC'
);
SELECT flight_id, fare_id, one_direction_cost
FROM flight
WHERE from_airport = 'OAKLAND'
AND day = 'THURSDAY'
AND time <= 08:00
SELECT flight_id, airline_code
FROM flight
WHERE departure_time < '8:00 AM' AND origin = 'OAKL' AND destination = 'SLC'
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time < 0 AND flight_1.from_airport = 'OAKLAND' AND flight_1.to_airport = 'SALT LAKE CITY' AND flight_1.flight_days <= 3;
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE state IN ('ARIZONA', 'NEVADA')
OR state IN ('CALIFORNIA');
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE city_state = 'CA' OR city_state = 'NV' OR city_state = 'AR';
SELECT DISTINCT airport_code FROM airport;
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE city_name = 'CALIFORNIA';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN 0 AND 1200
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHARLOTTE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE'
SELECT DISTINCT airport_code, airport_name
FROM airport;
SELECT DISTINCT flight_id
FROM flight
WHERE day = 'WEDNESDAY'
AND date BETWEEN '2023-10-27' AND '2023-10-29'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.departure_time < '06:00:00' AND flight_1.departure_time BETWEEN '00:00:00' AND '04:00:00' AND flight_1.origin = 'OAKLAND' AND flight_1.destination = 'SLC'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE departure_time BETWEEN 1400 AND 1800
AND flight_1.from_airport = 'STL'
AND flight_1.to_airport = 'CLT'
SELECT * FROM terminological_phrase;
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'CLEVELAND'
AND flight_1.to_airport = 'DALAS'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1
WHERE flight_1.departure_time < 1200 AND ( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CLEVELAND' )
SELECT DISTINCT flight_1.flight_id, flight_1.aircraft_type
FROM flight flight_1
WHERE flight_1.departure_time BETWEEN 0 AND 1200
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 ))
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN 1200 AND 1800
AND (flight_1.from_airport = 'MEMPH' AND airport_service_1.city_code = 'MEMPH' AND city_1.city_name = ' memphis')
AND (flight_1.to_airport = 'SEA' AND airport_service_2.city_code = 'SEA' AND city_2.city_name = 'seattle'
SELECT * FROM flight flight_1
WHERE flight_1.from_airport = 'NSH' AND flight_1.to_airport = 'SEA'
SELECT *
FROM flight
WHERE from_airport = 'NSM'
AND to_airport = 'SEA'
SELECT flight_1.flight_id, flight_1.flight_date, flight_1.departure_time, flight_1.arrival_time, airport_service airport_service_1.airport_code, airport_service airport_service_1.city_code, airport_service airport_service_2.airport_code, airport_service airport_service_2.city_code
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'MILWAUKEE' AND flight_1.to_airport = 'TAMPA'
SELECT * FROM car_rental car_rental_1
WHERE city = 'TAMPA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'STL' AND flight_1.to_airport = 'MIL' AND date(flight_1.departure_date) = date('today')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'OAKLAND'
WHERE flight_1.to_airport = 'SLC'
SELECT DISTINCT flight_1.flight_id, flight_1.arrival_time, flight_1.departure_time
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_city = 'TORONTO'
AND flight_1.to_city = 'SAN DIEGO'
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , city city_1 WHERE ground_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE from_airport = 'TORONTO'
AND to_airport = 'SAN_DIEGO'
SELECT DISTINCT flight_1.flight_id, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE (flight_1.from_airport = 'ST. PETERSBURG' AND flight_1.to_airport = 'CHARLOTTE')
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CLEVELAND' AND flight_1.arrival_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'JFK'
AND flight_1.to_airport = 'MIA'
AND flight_1.direction = 'outbound'
SELECT DISTINCT fare_code
FROM flight_fare
WHERE fare_code LIKE '%Q%';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'MILWAUKEE'
AND flight_1.to_airport = 'ORLANDO'
SELECT DISTINCT airline_code.abbreviation
FROM airline_code
WHERE airline_code.country_code = 'US';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 )
SELECT fare_class FROM fare_codes fare_codes
WHERE fare_class = 'F'
SELECT DISTINCT fare_code
FROM flight_fare
WHERE fare_code LIKE '%H%';
SELECT fare_code
FROM fare
WHERE fare_id = (
    SELECT MAX(fare_id)
    FROM fare
    WHERE one_direction_cost < (
        SELECT MIN( fare_id )
        FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
        WHERE fare_1.fare_id = flight_fare_1.fare_id
        AND flight_fare_1.flight_id = flight_1.flight_id
        AND flight_1.from_airport = airport_service_1.airport_code
        AND airport_service_1.city_code = city_1.city_code
        AND city_1.city_name = 'DENVER'
    )
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.airline_code = 'AP' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'APM'
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.airline_code = 'UA'
AND flight_1.departure_time < '10:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_fare_1.arrival_time < '7:00' AND flight_fare_1.flight_id NOT IN (
    SELECT flight_id
    FROM flight
    JOIN flight_fare
    ON flight_fare.flight_id = flight.flight_id
    JOIN airport_service
    ON flight.from_airport = airport_service.airport_code
    JOIN city
    ON airport_service.city_code = city.city_code
    WHERE city.city_name = 'SEATTLE'
);
SELECT DISTINCT flight_fare.fare_id
FROM flight_fare
JOIN flight flight ON flight_fare.flight_id = flight.flight_id
JOIN airport airport_1 ON flight.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'ORLANDO' AND airport_2.city_name = 'MONTREAL'
SELECT DISTINCT flight_1.departure_time FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'CO' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_2
ON flight_stop_1.stop_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.to_airport = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'ORLANDO' AND city_2.city_name = 'MONTREAL';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 20 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time >= 1200
AND flight_1.departure_time <= 1800
AND (flight_1.class = 'economy' OR flight_1.class = 'business')
SELECT DISTINCT fare_code
FROM flight_fare
WHERE fare_code LIKE '%BH%';
SELECT DISTINCT flight_id FROM flight flight_1
WHERE flight_1.from_airport = 'MIA' AND flight_1.to_airport = 'JFK'
SELECT DISTINCT fare_code
FROM flight_fare
WHERE fare_code LIKE '%bh%'
SELECT DISTINCT fare_code
FROM flight
WHERE fare_code LIKE '%bh%'
SELECT DISTINCT fare_code
FROM flight flight_1
WHERE fare_code LIKE '%BH%';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND flight_1.departure_time > 1600 )
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'MILWAUKEE'
AND flight_1.to_airport = 'ORLANDO'
AND flight_1.departure_time >= '18:00:00'
AND flight_1.flight_days = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.fare = 415
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_routes flight_routes_1
ON flight_routes_1.flight_id = flight_1.flight_id
JOIN airports airport_service_1
ON flight_routes_1.origin_airport_code = airport_service_1.airport_code
JOIN airports airport_service_2
ON flight_routes_1.destination_airport_code = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'ORLANDO'
AND airport_service_2.city_code = 'MONTREAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.nonstop = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE (flight_1.departure_date BETWEEN '2023-10-27' AND '2023-10-30')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'MONTREAL'
AND airport_service_2.city_code = 'ORLANDO'
SELECT flight_id, price
FROM flight
WHERE from_airport = 'MONTREAL'
AND to_airport = 'ORLANDO'
AND price = (
    SELECT MIN(price)
    FROM flight
    WHERE from_airport = 'MONTREAL'
    AND to_airport = 'ORLANDO'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PETERSBURG' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TORONTO' AND flight_1.arrival_time < 1200 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'KANSAS CITY'
AND city_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_class = 'economy'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PETERSBURG' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHARLOTTE'
SELECT flight_id, airport_code, city_code, flight_date, departure_time, arrival_time
FROM flight
WHERE from_airport = 'LAS VEGAS'
AND (to_airport = 'LAS VEGAS' OR to_airport = 'PHOENIX')
AND flight_date BETWEEN '2023-07-01' AND '2023-07-31';
SELECT DISTINCT ground_service.transport_type
FROM ground_service
WHERE city_code = 'LAS'
SELECT flight_id
FROM flight
WHERE from_airport = 'LAS'
AND to_airport = 'BAL'
AND class_type = 'ECONOMY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAS VEGAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALtimore'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'BALtimore'
AND city_2.city_name = 'KANSAS CITY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 30 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TACOMA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TORONTO'
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , airport airport_1 , airport_service airport_service_1 , city city_1 , city city_2 WHERE ground_service_1.airport_code = airport_1.airport_code AND airport_1.airport_code = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND ground_service_1.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time < 1000
AND flight_1.from_airport = 'COLUMBUS'
AND flight_1.to_airport = 'CHICAGO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PAUL' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN JOSE' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_cost IS NOT NULL AND 1 = 1 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST PETERSBURG' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DETROIT' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 25 )
SELECT * FROM flight flight_1
WHERE flight_1.flight_id = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'MILWAUKEE'
    AND flight_date = '2023-10-27'
    AND flight_time >= 19
    AND day = 'WEDNESDAY'
)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 10 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND flight_1.day_name = 'DAILY' )
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.round_trip_required = 'NO' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' ) AND fare_1.round_trip_required = 'NO' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN JOSE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHOENIX'
SELECT DISTINCT flight_id
FROM flight
WHERE to_airport = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_stop flight_stop_1 , airport_service airport_service_3 , city city_3 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA' AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'PITTSBURGH' )
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description, ground_transportation.price
FROM ground_transportation
WHERE ground_transportation.pickup_location = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'FORT WORTH'
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.pickup_location = 'FORT WORTH INTERNATIONAL AIRPORT'
AND ground_transportation.dropoff_location = 'FORT WORTH METROPOLITAN AREA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'FORT WORTH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN JOSE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 25 )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight flight_2 ON flight_1.to_airport = flight_2.from_airport
WHERE flight_1.origin = 'NEW_YORK' AND flight_2.destination = 'MIAMI'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN fare_basis fare_basis_1
ON fare_basis_1.fare_basis_code = flight_fare_1.fare_basis_code
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = flight_fare_1.from_airport
JOIN airport_service airport_service_2
ON airport_service_2.airport_code = flight_fare_1.to_airport
WHERE flight_fare_1.class_type = 'FIRST'
AND flight_fare_1.origin = 'NEW_YORK'
AND flight_fare_1.destination = 'MIAMI'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN flight flight_2
ON flight_2.flight_id = flight_fare_1.flight_id
WHERE flight_fare_1.origin = 'NYC'
AND flight_fare_1.destination = 'MIA'
AND flight_fare_1.nonstop = 1;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_routes flight_routes_1 ON flight_routes_1.flight_id = flight_1.flight_id
JOIN airports airport_1 ON flight_routes_1.from_airport = airport_1.airport_code
JOIN airports airport_2 ON flight_routes_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'MIA' AND airport_2.city_name = 'NYC' AND flight_routes_1.nonstop = 1;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'INDIANAPOLIS'
AND flight_1.departure_time < '10:00:00'
SELECT DISTINCT fare_code FROM flight_fare fare_code;
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'BURBANK'
AND to_airport = 'TACOMA'
AND date >= '2023-10-27'
AND date <= '2023-10-30'
SELECT DISTINCT ap58 FROM airport WHERE ap58 = 'AP58';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON'
SELECT DISTINCT airline_name
FROM flight
WHERE airline_name LIKE '%ANA%'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'MKE'
SELECT DISTINCT flight_1.airline
FROM flight flight_1
WHERE airline LIKE '%s%';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'ST. PETERSBURG'
AND airport_service_2.city_code = 'TORONTO'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TORONTO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. PETERSBURG'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_fare_1.to_airport = airport_service_2.airport_code
WHERE flight_fare_1.origin = 'TORONTO'
AND flight_fare_1.destination = 'ST. PETERSBURG'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TORONTO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. PETERSBURG' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN city city_1
ON airport_1.city_code = city_1.city_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
JOIN city city_2
ON airport_2.city_code = city_2.city_code
WHERE city_1.city_name = 'CHICAGO' AND city_2.city_name = 'SAN DIEGO'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'CHI'
AND flight_1.to_airport = 'SAN'
SELECT DISTINCT flight_id FROM flight flight_1 , airport airport_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'KC' AND flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'DENVER'
AND flight_1.to_airport = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_city = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAS VEGAS' AND flight_1.arrival_city = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN DIEGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'CHICAGO'
AND date(flight_1.scheduled_departure_time) BETWEEN '08:00:00' AND '12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time > 1800
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.departure_time BETWEEN 0 AND 1800
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN JOSE' AND day(flight_1.date) = 3;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE day = 'friday'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS'
AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON'
SELECT DISTINCT airport_code, city_name, distance
FROM airport
WHERE city_name = 'NEW YORK'
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE city_name = 'NEW YORK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NASHVILLE' )
SELECT DISTINCT airport_code FROM airport;
SELECT DISTINCT airport_code, airport_name, city_code, city_name
FROM airport;
SELECT DISTINCT airport_service.airport_code, airport_service.city_code, airport_service.city_name
FROM airport_service
WHERE city_name = 'LA'
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE city_name = 'LA';
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE city_name = 'Los Angeles';
SELECT DISTINCT flight_id FROM flight;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ONTARIO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ONTARIO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' )
SELECT * FROM flight flight_1
WHERE from_airport = 'JFK'
AND to_airport = 'LAX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_days = 1
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'ONTARIO CALIFORNIA' AND city_2.city_name = 'ORLANDO'
SELECT DISTINCT flight_id, from_airport, to_airport, departure_time, arrival_time
FROM flight
WHERE from_state = 'ONTARIO' AND to_state = 'ORLANDO'
SELECT flight_id, airline_code, from_airport, to_airport, fare
FROM flight
WHERE from_airport = 'IND' AND to_airport = 'MEM' AND day = 'MONDAY'
SELECT flight_id
FROM flight
WHERE departure_date = '2023-10-27'
  AND from_airport = 'INDIANAAPOLIS'
  AND to_airport = 'MEMPHIS'
  AND day(departure_date) = 1;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MIAMI' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight flight_2
ON flight_2.to_airport = flight_1.from_airport
JOIN airport_service airport_service_2
ON flight_2.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'MIA'
AND flight_2.day = 'SUNDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE day_name = 'SATURDAY'
AND date_day = 24
AND time_hour BETWEEN 1800 AND 2200;
SELECT DISTINCT flight_1.flight_id, flight_1.aircraft_type
FROM flight flight_1
WHERE flight_1.from_airport = 'CHARLOTTE'
SELECT fare_class
FROM flight_fare
WHERE fare_code = 'Q';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_schedule flight_schedule_1
ON flight_schedule_1.flight_id = flight_1.flight_id
JOIN fare_rules fare_rules_1
ON fare_rules_1.flight_id = flight_1.flight_id
WHERE fare_rules_1.fare_basis_code = 'Q'
SELECT flight_id, fare
FROM flight
WHERE airline_code = 'UA'
AND from_city = 'DETROIT'
AND to_city = 'ST. PETERSBURG'
AND class = 'FIRST CLASS'
SELECT DISTINCT flight_1.flight_id, flight_1.fare, flight_1.flight_days, flight_1.from_airport, flight_1.to_airport, airport_service airport_service_1, airport_service airport_service_2
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.origin = 'DETROIT' AND flight_1.destination = 'ST. PETERSBURG'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.airline_code = 'PIT' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 2
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.flight_date = '2023-07-05'
SELECT DISTINCT flight_id
FROM flight
WHERE flight_time < '09:00:00'
AND from_airport = 'CINcinnati'
AND to_airport = 'TAMPA'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND ( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CINcinnati' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TAMPA' )
SELECT flight_id
FROM flight
WHERE from_airport = 'TAMPA'
AND to_airport = 'CINcinnati'
AND time >= '18:00:00'
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport = 'SEA'
AND to_airport = 'SLC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.origin = 'SEA' AND flight_1.destination = 'SLC'
SELECT DISTINCT flight_1.flight_id, flight_1.seating_capacity
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.flight_from = 'SEA' AND flight_1.flight_to = 'SLC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.aircraft_type = '737'
AND flight_1.departure_time = (
    SELECT MIN( flight_1.departure_time )
    FROM flight flight_1
    JOIN airport_service airport_service_1
    ON flight_1.from_airport = airport_service_1.airport_code
    JOIN airport_service airport_service_2
    ON flight_1.to_airport = airport_service_2.airport_code
    WHERE flight_1.aircraft_type = '737'
    AND flight_1.departure_time < flight_1.arrival_time
);
SELECT DISTINCT transportation.transportation_id, transportation.description
FROM transportation
WHERE transportation.city_name = 'BALTIMORE'
SELECT DISTINCT transportation_id, transportation_type, origin_city, destination_city, transportation_cost
FROM transportation
WHERE origin_city = 'BALtimore'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.flight_date = '2023-10-27' AND flight_1.from_airport = 'BALtimore' AND flight_1.to_airport = 'SAN FRANCISCO' AND (flight_1.day_of_week = 5 OR flight_1.day_of_week = 6);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'LAX'
AND flight_1.to_airport = 'PITTSBURGH'
AND flight_1.departure_time = '2023-10-27 19:00:00';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND flight_1.departure_time < 800 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , airport_service airport_service_3 , city city_3 , flight_stop flight_stop_1 , airport_service airport_service_4 , city city_4 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND(( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'FORT WORTH' ) AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_4.airport_code AND airport_service_4.city_code = city_4.city_code AND city_4.city_name = 'PHILADELPHIA' )
SELECT flight_1.fare
FROM flight flight_1
JOIN flight_fare flight_fare ON flight_fare.flight_id = flight_1.flight_id
WHERE flight_fare.departure_date = '2023-10-27' AND flight_fare.origin = 'CLEVELAND' AND flight_fare.destination = 'MIA'
SELECT DISTINCT restriction_1.restriction_code FROM restriction restriction_1 WHERE restriction_1.restriction_code = 'AP/80'
SELECT fare
FROM flight
WHERE from_airport = 'MIA'
AND to_airport = 'CLE'
AND day = 'NEXT SUNDAY'
SELECT flight_id
FROM flight
WHERE departure_day = 'SATURDAY' OR departure_day = 'SUNDAY'
AND airline_name = 'AMERICAN AIRLINES'
AND from_airport = 'MILW'
AND to_airport = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.airline_code = 'DL' AND flight_1.departure_time = '2023-10-27 19:00:00' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND airport_service_1.city_code = 'MILW' AND airport_service_2.city_code = 'MILW'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.airline_code = 'AA'
AND flight_1.from_airport = 'PHOENIX'
AND flight_1.to_airport = 'MILWAUKEE'
AND flight_1.flight_day = 'WED'
AND flight_1.departure_time >= '09:00:00'
AND flight_1.departure_time <= '17:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airline airline_1
ON flight_1.airline_code = airline_1.airline_code
WHERE flight_1.from_airport = 'PHOENIX'
AND flight_1.to_airport = 'MILWAUKEE'
AND airline_1.airline_name = 'AMERICAN AIRLINES'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'PHOENIX' AND city_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_schedule flight_schedule_1
ON flight_schedule_1.flight_id = flight_1.flight_id
JOIN airport airport_1
ON flight_schedule_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_schedule_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'CHICAGO'
AND airport_2.city_name = 'SEATTLE'
AND flight_schedule_1.departure_time < '06:00:00'
SELECT DISTINCT flight_id
FROM flight flight
WHERE departure_time BETWEEN '0800' AND '1200'
AND (
    FROM airport airport_1
    JOIN flight_stop flight_stop ON flight_stop.flight_id = flight.flight_id
    JOIN airport airport_2 ON flight_stop.to_airport = airport_2.airport_code
    WHERE airport_1.city_name = 'CHICAGO'
    AND airport_2.city_name = 'SEATTLE'
    AND meal = 'YES'
);
SELECT DISTINCT flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN meal meal_1
ON meal_1.flight_id = flight_fare_1.flight_id
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = flight_fare_1.from_airport
JOIN city city_1
ON city_1.city_code = airport_service_1.city_code
WHERE flight_1.from_airport = 'SEA' AND flight_1.to_airport = 'CHI' AND meal_1.meal_type = 'CONTINENTAL';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1
ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight flight_2
ON flight_2.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_2.to_airport = airport_service_2.airport_code
WHERE flight_1.departure_time BETWEEN '2023-06-01 08:00:00' AND '2023-06-01 12:00:00'
AND flight_2.meal_type = 'Continental'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight flight_2
ON flight_2.flight_id = flight_1.parent_flight_id
JOIN airport_service airport_service_2
ON flight_2.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time >= 600 AND flight_1.departure_time <= 900
AND city_1.city_name = 'CHICAGO' AND city_2.city_name = 'SEATTLE'
AND (flight_1.meal_service = 'YES' AND dayofweek(flight_1.departure_time) = 6)
SELECT DISTINCT flight_1.flight_id, flight_1.airline_code, flight_1.from_airport, flight_1.to_airport, flight_fare.fare_id, fare.round_trip_required, fare.one_direction_cost
FROM flight flight_1
INNER JOIN flight_fare flight_fare
ON flight_fare.flight_id = flight_1.flight_id
INNER JOIN fare fare
ON fare.fare_id = flight_fare.fare_id
WHERE flight_1.from_airport = 'ORD' AND flight_1.to_airport = 'SEA' AND( flight_1.day = 'SAT' AND flight_1.time >= '06:00' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.date = '2023-10-27' AND flight_1.time >= '09:00' AND flight_1.meal_option = 'MEAL'
SELECT flight_id
FROM flight
WHERE flight_date = '2023-10-27'
  AND flight_time BETWEEN '08:00:00' AND '12:00:00'
  AND meal_served = 'YES'
  AND from_city = 'CHICAGO'
  AND to_city = 'MINneapolis'
SELECT DISTINCT flight_1.arrival_time FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.departure_time = 755 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEW YORK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 10 AND date_day_1.day_number = 26;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'MEMPH'
AND flight_1.to_airport = 'LASV'
AND flight_1.nonstop = 1;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.flight_date = '2023-11-25' AND flight_1.from_airport = 'JFK' AND flight_1.to_airport = 'TAMPA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TAMPA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHARLOTTE'
SELECT flight_id
FROM flight flight_1
WHERE flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'CHARLOTTE'
    AND to_airport = 'BALtimore'
    AND day = 'TUESDAY'
    AND time = '09:00'
)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALtimore' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND flight_1.flight_time >= 800 AND flight_1.flight_time <= 1200 )
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.flight_number = '1234'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time BETWEEN 0 AND 1200
AND flight_1.from_airport = 'MKE'
AND flight_1.to_airport = 'PHX'
AND flight_1.flight_days = 1
AND days.day_name = 'SATURDAY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1800 AND 2200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NASHVILLE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 20 ) )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN '2023-04-01 10:00:00' AND '2023-04-01 12:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.continent = 'CONTAINENTAL';
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'SEA'
  AND to_airport = 'CHI'
  AND flight_class = 'CON'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SEATTLE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER' )
SELECT fare_1.fare_id
FROM fare fare_1
JOIN fare_basis fare_basis_1
ON fare_1.fare_basis_code = fare_basis_1.fare_basis_code
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_fare_1.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'PITTSBURGH' AND flight_1.to_airport = 'ATLANTA'
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'JFK'
AND flight_1.to_airport = 'TAMPA'
AND day(flight_1.departure_date) = 5
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'TAMPA'
AND flight_1.to_airport = 'CHARLOTTE'
AND DATE(flight_1.departure_date) = 'SUNDAY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHARLOTTE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 2
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 , airport airport_2 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'BAL' AND flight_1.to_airport = airport_2.airport_code AND airport_2.airport_code = 'NYC'
SELECT *
FROM flight
WHERE departure_time >= '12:01:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'HOUSTON'
AND flight_1.to_airport = 'DALLAS'
AND flight_1.departure_time < '23:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.arrival_time <= '17:00' AND flight_1.city_name = 'CLEVELAND' AND flight_1.city_code = 'CLE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAM' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CLEVELAND' AND day = 'SUNDAY' AND time = 'AFTERNOON'
SELECT DISTINCT fare_basis_1.fare_basis_code FROM fare_basis fare_basis_1 WHERE fare_basis_1.fare_basis_code = 'B' AND fare_basis_1.booking_class = 'BUSINESS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 25 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 , city city_1 , airport_service airport_service_1 , city city_2 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEW YORK' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND( flight_1.arrival_time >= 1630 AND flight_1.arrival_time <= 1730 ) )
SELECT flight_id
FROM flight
WHERE from_airport = 'MEMPH'
AND to_airport = 'LASV'
AND flight_day = 'SUNDAY'
AND flight_time >= '18:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'NYC'
AND flight_1.to_airport = 'LAS'
AND day(flight_1.departure_time) = 7
AND time(flight_1.departure_time) BETWEEN 1800 AND 2000;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND ( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.flight_days = 'SATURDAY' AND flight_1.departure_time BETWEEN 0 AND 1200 )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'CHI'
AND flight_1.flight_days = 1
WHERE flight_1.to_airport = 'LAS VEGAS'
AND flight_1.flight_time = 'SATURDAY'
AND date_format(flight_1.date_day, '%Y-%m-%d') = '1991-07-26'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGeles' AND flight_1.departure_time >= 1900 AND flight_1.departure_time < 2100;
SELECT DISTINCT flight_id FROM flight flight_1
WHERE flight_1.from_airport = 'MILWAUKEE'
AND flight_1.to_airport = 'PHOENIX'
AND flight_1.day = 'SATURDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1
ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_stop_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'PHOENIX'
AND flight_1.to_airport = 'MILWAUKEE'
AND dayofweek(flight_1.flight_date) = 7
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'BALtimore'
WHERE flight_1.arrival_time BETWEEN 1700 AND 2000;
SELECT COUNT(*) FROM flight flight_1
WHERE from_airport = 'STL'
AND flight_days >= 1
AND date_day BETWEEN '2023-10-27' AND '2023-10-30'
SELECT COUNT(*) FROM flight flight_1
WHERE flight_1.origin IN ( 'WA' , 'KS' , 'MT' , 'ID' , 'OR' )
SELECT COUNT(*) FROM flight
WHERE from_airport = 'DUBLES'
AND arrival_time >= '2023-06-01'
AND arrival_time <= '2023-06-30';
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , city city_1 WHERE ground_service_1.city_code = city_1.city_code AND city_1.city_name = 'FORT WORTH'
SELECT DISTINCT city FROM flight_stop flight_stop_1 , airport airport_service_1 , city city_1
WHERE flight_stop_1.stop_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code
SELECT DISTINCT flight_1.from_city, flight_1.to_city
FROM flight flight_1
WHERE flight_1.flight_days BETWEEN 1 AND 5
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time > 1700
AND flight_1.connecting = 'YES'
AND airport_service_1.city_name = 'DALLAS'
AND airport_service_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND( flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.flight_days >= 7 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_schedule flight_schedule_1
ON flight_schedule_1.flight_id = flight_1.flight_id
WHERE flight_schedule_1.departure_time BETWEEN 0800 AND 1200
AND flight_schedule_1.origin = 'PHL'
AND flight_schedule_1.destination = 'DAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE from_airport = 'PHL' AND to_airport = 'DAL'
SELECT DISTINCT flight_1.flight_id, flight_1.departure_time, flight_1.arrival_time, flight_1.flight_duration, flight_1.from_airport, flight_1.to_airport, airport_service.airport_code, airport_service.city_code, airport_service.city_name
FROM flight flight_1
INNER JOIN airport_service airport_service ON flight_1.from_airport = airport_service.airport_code
INNER JOIN city city ON airport_service.city_code = city.city_code
ORDER BY flight_1.departure_time;
SELECT flight_1.flight_id, flight_1.plane_type
FROM flight flight_1
WHERE flight_1.flight_id = (
    SELECT flight_id
    FROM flight
    WHERE plane_type = 'D9S'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.flight_days = 'D9S'
SELECT DISTINCT airport_service.airport_code, airport_service.city_code
FROM airport_service
WHERE airport_service.city_name = 'TOWER AIR';
SELECT flight_1.flight_id, flight_1.flight_class, flight_1.departure_time, flight_1.arrival_time
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
WHERE (flight_1.departure_time BETWEEN '2023-06-15 09:00:00' AND '2023-06-15 21:00:00')
AND (flight_1.departure_time BETWEEN '2023-06-15 09:00:00' AND '2023-06-15 21:00:00')
AND (flight_1.flight_class IN ('FIRST CLASS', 'COACH'));
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1
ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'KENNY' AND flight_1.to_airport = 'MIA'
SELECT flight_1.flight_id, flight_1.flight_class, flight_1.departure_time, flight_1.arrival_time
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'JFK' AND airport_2.city_name = 'MIA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , state state_1 , airport_service airport_service_2 , city city_2 , state state_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAMI' AND city_1.state_code = state_1.state_code AND state_1.state_name = 'FLORIDA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND city_2.state_code = state_2.state_code AND state_2.state_name = 'NEVADA' AND( flight_1.arrival_time < 1600 AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND not(( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) ) ) ) )
SELECT * FROM flight_fare flight_fare_1
WHERE flight_fare_1.flight_id = (
    SELECT fare_id FROM fare fare
    WHERE fare.fare_basis_code = fare_basis_1.fare_basis_code
    AND fare.class_type = 'FIRST'
    AND fare.fare_id = flight_fare_1.fare_id
);
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'JFK'
AND to_airport = 'MIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_2
ON flight_stop_1.stop_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.airline_code = 'DL'
AND flight_1.from_airport = 'BOS'
AND flight_1.to_airport = 'SLC'
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'BOS'
AND to_airport = 'SLC'
AND airline_name = 'DELTA AIRLINES'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time > 1800
SELECT flight_1.flight_id, flight_1.fare
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
WHERE flight_fare_1.origin = 'BOS' AND flight_fare_1.destination = 'DCA'
SELECT flight_1.flight_id, MIN(flight_1.fare) AS min_fare
FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY' )
GROUP BY flight_1.flight_id;
SELECT flight_id, from_airport, to_airport, flight_price
FROM flight
WHERE departure_city = 'WASHINGTON DC' AND destination_city = 'SALT LAKE CITY'
ORDER BY flight_price ASC;
SELECT flight_1.flight_id, MIN(flight_1.fare) AS lowest_fare
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'BWI' AND airport_service_2.city_code = 'SLC'
GROUP BY flight_1.flight_id;
SELECT fare_1.fare_id
FROM fare fare_1
JOIN fare_basis fare_basis_1
ON fare_1.fare_basis_code = fare_basis_1.fare_basis_code
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE fare_1.round_trip_cost IS NOT NULL
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'BOSTON'
AND flight_1.arrival_time >= '2023-06-10 00:00:00'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'BOS' AND to_airport = 'DCA'
);
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.arrival_time = (
    SELECT MIN(arrival_time)
    FROM flight
    JOIN airport_service airport_service_2
    ON flight.to_airport = airport_service_2.airport_code
    JOIN city city_2
    ON airport_service_2.city_code = city_2.city_code
    WHERE city_1.city_name = 'BOSTON' AND city_2.city_name = 'WASHINGTON DC'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport airport_1
WHERE flight_1.arrival_time =( SELECT MIN( flight_1.arrival_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport airport_1
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND( flight_1.to_airport = airport_1.airport_code AND airport_1.airport_code = 'ORLANDO' AND flight_1.arrival_delay <= 0 )
SELECT flight_id
FROM flight
WHERE from_airport = 'HOUSTON'
AND arrival_time = (
    SELECT MIN( arrival_time )
    FROM flight
    WHERE from_airport = 'HOUSTON'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE flight_1.departure_time = (SELECT MAX( flight_1.departure_time )
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE flight_1.from_airport = 'HOU'
AND flight_1.to_airport = 'ORD'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1800 AND 2200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NASHVILLE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 20 ) )
SELECT DISTINCT flight_id FROM flight flight_1
WHERE flight_1.departure_time BETWEEN 1800 AND 1900;
SELECT DISTINCT fare_basis_1.fare_basis_code FROM fare_basis fare_basis_1 WHERE fare_basis_1.fare_basis_code = 'FN'
SELECT DISTINCT seating_capacity FROM aircraft WHERE aircraft_type = '72S';
SELECT DISTINCT aircraft.aircraft_id, aircraft.aircraft_capacity
FROM aircraft
WHERE aircraft.aircraft_type = '72S';
SELECT DISTINCT aircraft.aircraft_id, aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_type = 'M80';
SELECT DISTINCT aircraft_type.aircraft_type_id, aircraft_type.aircraft_type_name, seating_capacity
FROM aircraft_type
WHERE aircraft_type.aircraft_type_name = 'M80';
SELECT DISTINCT m80.m80_capacity
FROM m80
WHERE m80.m80_type = 'M80';
SELECT DISTINCT airline_name
FROM airline
WHERE airport_code IN (
    SELECT DISTINCT to_airport
    FROM flight
    WHERE departure_airport = 'DENVER'
);
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
WHERE flight_1.from_airport = 'DENVER'
OR flight_1.to_airport = 'DENVER'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES' ) AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES'
SELECT flight_id
FROM flight
WHERE flight_time BETWEEN 1980 AND 2100;
SELECT capacity
FROM aircraft
WHERE aircraft_type = '73s';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_cost =( SELECT MIN( fare_1.round_trip_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' )
SELECT DISTINCT aircraft.aircraft_id, aircraft.aircraft_capacity
FROM aircraft
WHERE aircraft.aircraft_type = '73S';
SELECT DISTINCT aircraft_1.aircraft_code, aircraft_1.seating_capacity
FROM aircraft aircraft_1
WHERE aircraft_1.aircraft_code = '757';
SELECT COUNT(*) FROM flight flight_1
WHERE flight_1.flight_type = '757'
SELECT COUNT(*) FROM flight_info WHERE aircraft_type = '757';
SELECT flight_id
FROM flight
WHERE from_airport = 'DENVER'
AND day = DATE(NOW())
AND hour BETWEEN 18 AND 21;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE from_airport = 'DENVER'
AND arrival_time BETWEEN 1800 AND 2100;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_schedule flight_schedule_1 ON flight_schedule_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_schedule_1.from_airport = airport_1.airport_code
WHERE flight_schedule_1.arrival_time BETWEEN '2023-10-27 19:00:00' AND '2023-10-27 20:00:00'
SELECT flight_1.flight_id, flight_1.seating_capacity
FROM flight flight_1
WHERE flight_1.flight_id = (
  SELECT flight_id
  FROM flight
  WHERE from_airport = 'UAL' AND to_airport = 'LAX' AND flight_date = '2023-10-27'
);
SELECT DISTINCT aircraft.aircraft_name, aircraft.registration_number
FROM aircraft
WHERE aircraft.aircraft_type = 'M80'
SELECT * FROM aircraft WHERE aircraft_type = 'M80';
SELECT DISTINCT aircraft_type.aircraft_type_id, aircraft_type.aircraft_type_name
FROM aircraft_type
WHERE aircraft_type.aircraft_type_name = 'M80';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , state state_1 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAMI' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' AND city_2.state_code = state_1.state_code AND state_1.state_code = 'DC' )
SELECT DISTINCT m80.capacity
FROM m80
WHERE m80.aircraft_code = 'M80';
SELECT DISTINCT restriction_1.restriction_code FROM restriction restriction_1 WHERE restriction_1.restriction_code = 'AP/80'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN 1900 AND 2100;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.arrival_time BETWEEN '8:00:00' AND '21:00:00'
SELECT *
FROM flight
WHERE flight_date BETWEEN '2023-08-08' AND '2023-08-09'
AND flight_time BETWEEN 18 AND 21;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NASHVILLE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' AND( flight_1.day_of_week = 1 AND( flight_1.arrival_time >= 0 AND flight_1.arrival_time <= 1000 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE day = 'MONDAY'
AND hour = 0
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
WHERE ground_service_1.arrival_time = (
    SELECT MIN( ground_service_1.arrival_time )
    FROM ground_service ground_service_1
    WHERE ground_service_1.arrival_time >= '08:42:00'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight_fare flight_fare_1
ON flight_1.flight_id = flight_fare_1.flight_id
JOIN fare fare_1
ON flight_fare_1.fare_id = fare_1.fare_id
WHERE day(flight_1.departure_date) = 1
AND month(flight_1.departure_date) = 1
AND weekday(flight_1.departure_date) = 2
SELECT DISTINCT cvg.*
FROM city c
JOIN city_type ct ON c.city_type_id = ct.city_type_id
WHERE c.city_name = 'CHICAGO'
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.pickup_airport = 'LGD' AND ground_transportation.dropoff_airport = 'NYC'
SELECT DISTINCT ground_service.transport_type
FROM ground_service
JOIN airport airport_1
ON ground_service.airport_code = airport_1.airport_code
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight flight_1
ON airport_service_1.airport_code = flight_1.from_airport
WHERE flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'NYC'
SELECT DISTINCT ground_trans.ground_trans_id, ground_trans.trip_id, ground_trans.origin_city, ground_trans.destination_city, ground_trans.departure_time, ground_trans.arrival_time
FROM ground_trans
WHERE origin_city = 'LGIA' AND destination_city = 'NEW YORK'
SELECT DISTINCT ground_service.transport_type
FROM ground_service
JOIN airport airport_1
ON ground_service.airport_code = airport_1.airport_code
JOIN city city_1
ON airport_1.city_code = city_1.city_code
WHERE airport_1.airport_code = 'EWR'
AND city_1.city_name = 'NEW YORK CITY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'MEMPHIS'
AND city_1.state_code = 'MS'
AND flight_1.departure_time >= '08:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , state state_1 WHERE flight_1.departure_time BETWEEN 1800 AND 2200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TACOMA' AND city_2.state_code = state_1.state_code AND state_1.state_name = 'WASHINGTON' )
SELECT DISTINCT ground_trans.ground_trans_id, ground_trans.description, ground_trans.price
FROM ground_trans
WHERE ground_trans.pickup_airport = 'BNA' AND ground_trans.dropoff_airport = 'HSV'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 1300 AND 1900 AND( flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CINcinnati' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHARLOTTE' ) ) )
SELECT COUNT(*) FROM flight flight_1
WHERE airline_code = 'ACA' AND from_airport = 'BURBANK'
SELECT DISTINCT flight_id FROM flight flight_1 
WHERE flight_1.from_airport = 'BURBANK' AND flight_1.to_airport LIKE '%';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
WHERE airport_service_1.city_code = 'BURBANK'
SELECT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
WHERE flight_1.from_airport = 'BOS'
AND flight_1.to_airport = 'DCA'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'ALASKA AIRLINES'
AND flight_1.arrival_airport = 'BURBANK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BURBANK' AND flight_1.flight_date = '2023-10-26'
SELECT DISTINCT flight_id, airline_code, flight_date, departure_time, arrival_time
FROM flight
WHERE airline_code = 'ALK';
SELECT DISTINCT flight_id FROM flight flight_1
WHERE flight_1.departure_airport = 'SEA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'INDIANAPOLIS'
AND flight_1.scheduled_departure_time < '12:00:00'
SELECT flight_id, fare
FROM flight
WHERE from_city = 'CHARLOTTE' AND to_city = 'LAS VEGAS' AND fare < 200;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time = '06:00:00'
SELECT flight_id
FROM flight
WHERE from_airport = 'CHARLOTTE'
AND date_day = '08-07-1991'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEWARK' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 1
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN '19:00:00' AND '23:00:00' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEWARK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES'
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_date = '2023-10-27' AND flight_1.departure_time >= 7 AND flight_1.from_airport = 'MONTREAL' AND flight_1.to_airport = 'SAN DIEGO'
SELECT *
FROM flight
WHERE departure_date = '2023-10-27'
  AND departure_time BETWEEN 17:00:00 AND 19:00:00
  AND origin_city = 'SAN DIEGO'
  AND destination_city = 'INDIANAapolis'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , airport_service airport_service_3 , city city_3 , days days_1 , date_day date_day_1 WHERE flight_1.stops = 0 AND(( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEW YORK' OR flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' ) AND( flight_1.to_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'LAS VEGAS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.flight_days = 'FR' AND flight_1.departure_time BETWEEN '08:00:00' AND '12:00:00' AND flight_1.from_airport = 'TORONTO' AND flight_1.to_airport = 'MONTREAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN 0 AND 1200
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 AND flight_1.departure_time > 800 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE to_airport = 'KANSAS CITY'
AND flight_days = 'WEDNESDAY'
AND flight_return = 'THURSDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'LONG BEACH' AND city_2.city_name = 'ST. LOUIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'MEMPHIS'
AND flight_1.to_airport = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAS VEGAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ONTARIO' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ONTARIO' AND flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ONTARIO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time >= ( SELECT MAX( flight_1.departure_time ) FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'MILWAUKEE' AND city_2.city_name = 'SEATTLE'
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 WHERE airline_1.airline_code = 'UA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'OAKLAND' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND( flight_1.departure_time BETWEEN 1200 AND 1800 AND 1 = 1 ) ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT *
FROM flight
WHERE flight_date = '2023-10-27'
AND flight_time = '18:00'
AND from_airport = 'ST. PAUL'
AND to_airport = 'ST. LOUIS';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'CHARLOTTE' AND flight_1.flight_days = days_1.days_code AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 25
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'BOSTON'
AND city_2.city_name = 'ORLANDO'
AND city_1.city_name LIKE 'BOS%'
AND city_2.city_name LIKE 'ORL%';
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MAX( departure_time )
    FROM flight
    WHERE from_airport = 'BURBANK'
    AND to_airport = 'MILWAUKEE'
    AND departure_time < '2023-10-27 00:00:00'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. LOUIS' AND( flight_1.flight_days = 1 AND flight_1.departure_time >= 2300 AND flight_1.departure_time <= 0 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.time_elapsed = (SELECT MIN( flight_1.time_elapsed ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. LOUIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BURBANK' AND flight_1.departure_time = 'TUESDAY' AND EXTRACT(HOUR FROM flight_1.departure_time) >= 17 AND EXTRACT(HOUR FROM flight_1.departure_time) < 19;
SELECT DISTINCT airport_1.airport_code FROM airport airport_1 WHERE airport_1.airport_code = 'EWR'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-04-06 14:00:00' AND '2023-04-06 18:00:00'
AND from_airport = 'SLC'
AND to_airport = 'ARK'
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'CINcinnati'
AND flight_1.to_airport = 'Newark Airport'
AND flight_1.flight_days = days_1.days_code
AND days_1.day_name = 'Saturday'
AND flight_1.departure_time < 0
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight flight_2
ON flight_2.to_airport = airport_service_2.airport_code
JOIN airport_service airport_service_2
ON flight_2.to_airport = airport_service_2.airport_code
WHERE flight_1.airline_code = 'AA'
AND flight_1.arrival_time >= '17:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TACOMA' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 10 AND date_day_1.day_number = 1 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.flight_time > 1800
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.nonstop = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE NOT EXISTS (
    SELECT 1
    FROM flight
    WHERE from_airport = flight_1.from_airport AND to_airport = flight_1.to_airport AND date >= flight_1.date
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_stop flight_stop_1 , airport_service airport_service_3 , city city_3 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TAMPA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND( flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 26 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'NEWARK' AND city_2.city_name = 'NASHVILLE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_days = 1
AND city_1.city_name = 'ONTARIO'
AND city_2.city_name = 'WESTCHESTER'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'CHARLOTTE'
AND city_2.city_name = 'NEWARK'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time > 1200
AND flight_1.arrival_time < 2200;
SELECT DISTINCT flight_id
FROM flight
WHERE airline_code = 'AA'
AND from_airport = 'CINcinnati'
AND to_airport = 'BURBANK'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_date = '2023-06-16'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'KANSAS CITY' AND( flight_1.flight_date = '2023-06-17' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.connections > 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHICAGO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 16 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON airport_service_1.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'CHICAGO'
AND flight_1.to_airport = 'KANSAS CITY'
AND flight_stop_1.date = '2023-06-17'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BURBANK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE'
SELECT flight_id
FROM flight
WHERE from_airport = 'CINcinnati'
AND to_airport = 'NEW YORK'
AND date = '2023-10-27'
AND time < '18:00'
-- This query returns all of the Delta flights from Salt Lake City to New York next Saturday that arrive before 6pm.
SELECT DISTINCT flight_id
FROM flight
WHERE airline_code = 'DAL'
AND departure_date = DATE_ADD(next_day(CURRENT_DATE()), INTERVAL 1 DAY)
AND arrival_time < 1800;
SELECT flight_id
FROM flight
WHERE airline_code = 'AA'
AND flight_from = 'MIA'
AND flight_to = 'ORD'
AND arrival_time BETWEEN '17:00:00' AND '18:00:00'
SELECT *
FROM flight flight_1
WHERE from_airport = 'KCSA'
AND to_airport = 'CHI'
AND departure_date = '2023-10-27'
SELECT flight_id
FROM flight
WHERE flight_days = 20231026 AND flight_from_airport = 'KC' AND flight_to_airport = 'CHI' AND flight_time = '2023-10-26 19:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.stop_cities = 'LOS ANGELES'
SELECT * FROM flight flight_1
WHERE flight_1.from_airport = 'SAN DIEGO'
AND flight_1.to_airport = 'PHOENIX'
AND day(flight_1.departure_date) = 1
AND time(flight_1.departure_time) = '08:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_2 , fare fare_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND( flight_1.flight_id = flight_fare_2.flight_id AND flight_fare_2.fare_id = fare_2.fare_id AND fare_2.round_trip_cost < 1100 AND flight_1.departure_time > 1200 ) ) AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_cost < 1100
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time = (
    SELECT MIN( flight_1.departure_time )
    FROM flight flight_1
    WHERE flight_1.from_airport = 'CINcinnati' AND flight_1.to_airport = 'SAN JOSE'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN JOSE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = 'WEDNESDAY' ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_2
ON flight_stop_1.stop_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_date = '2023-07-10' AND flight_1.from_airport = 'HOUSTON' AND flight_1.to_airport = 'MEMPHIS'
SELECT flight_id
FROM flight
WHERE departure_date = '2023-10-27' AND departure_time = '12:00:00' AND from_airport = 'MEMPH' AND to_airport = 'CINcinnati'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.departure_time = '2023-10-27 18:30' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEWARK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NASHVILLE'
SELECT * FROM flight flight_1
WHERE flight_1.departure_time BETWEEN 0 AND 1200
AND ( flight_1.from_airport = 'BURBANK' AND flight_1.to_airport = 'TACOMA'
AND flight_1.flight_date = '2023-06-10' );
SELECT *
FROM flight flight_1
WHERE from_airport = 'BURBANK'
AND to_airport = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE from_airport = 'BURBANK'
AND to_airport = 'MILWAUKEE';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE flight_1.flight_days = 1
AND airport_1.city_name = 'MILWAUKEE'
AND airport_2.city_name = 'ST. LOUIS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. LOUIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BURBANK' AND( flight_1.departure_time >= 1400 AND flight_1.departure_time <= 1500 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE (
    (flight_1.from_airport = 'BURBANK' AND flight_1.to_airport = 'MILWAUKEE' AND flight_1.to_city = 'MILWAUKEE')
    OR (flight_1.from_airport = 'MILWAUKEE' AND flight_1.to_airport = 'ST. LOUIS' AND flight_1.to_city = 'BURBANK')
)
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'BURBANK'
AND flight_1.to_airport = 'MILWAUKEE'
AND flight_1.stop_airport = 'ST. LOUIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE flight_1.departure_time BETWEEN 1000 AND 1600
SELECT flight_id
FROM flight
WHERE from_airport = 'SLC'
AND to_airport = 'WCS'
SELECT DISTINCT airport_code FROM airport WHERE airport_city LIKE '%WESTCHESTER COUNTY%'
SELECT *
FROM flight
WHERE from_airport = 'CINcinnati'
AND to_airport = 'New York City'
AND date(departure_time) = date('next saturday', current_date)
SELECT DISTINCT airport_service.airport_code
FROM airport_service
WHERE airport_service.city_name IN ('NEW YORK', 'NEW JERSEY', 'LONG ISLAND', 'BROOKLYN', 'STATEN ISLAND', 'QUEENS', 'BROOKLYN', 'MANHATTAN', 'YONK', 'ALBANY', 'BUFFALO', 'SYRACUSE', 'ITHACA', 'ALBANY', 'SARASOTA', 'STATEN ISLAND', 'NEW YORK');
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE (flight_1.arrival_time >= DATE_ADD(NOW(), INTERVAL 1 DAY) AND flight_1.arrival_time < DATE_ADD(NOW(), INTERVAL 6 DAY))
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_days BETWEEN 1 AND 7
AND city_1.city_name = 'CINcinnati'
AND city_2.city_name IN ('NEW YORK CITY', 'BROOKLYN', 'QUEENS', 'STATEN ISLAND', 'LONG ISLAND', 'MANHATTAN', 'BROOKLYN', 'MIDTOWN', 'JERSEY CITY');
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.airline_code = 'AA' AND city_1.city_name = 'MIA' AND city_2.city_name = 'CHICAGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN '2023-10-27 12:00:00' AND '2023-10-27 20:00:00'
SELECT flight_id
FROM flight flight_1
WHERE departure_time BETWEEN 0 AND 1200
AND (
    flight_1.from_airport = 'MEMPH'
    AND flight_1.to_airport = 'TACOMA'
);
