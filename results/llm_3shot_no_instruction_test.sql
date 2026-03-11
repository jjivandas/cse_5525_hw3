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
WHERE city_1.city_name = 'Dallas'
AND city_2.city_name = 'Phoenix'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_airport = 'PHOENIX'
AND flight_stop_2.stop_airport = 'SLC'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 06:00:00' AND '2023-10-27 10:00:00'
AND from_airport = 'MILWAUKEE'
AND aircraft_code_sequence = '767';
SELECT DISTINCT airport_service.transport_type, airport_service.city_code
FROM airport_service
WHERE airport_service.city_code = 'DENVER'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 2 AND flight_leg_1.time_elapsed >= '09:00:00' AND flight_leg_2.day_number = 2 AND flight_leg_2.time_elapsed < '13:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON' AND(( flight_1.departure_time BETWEEN 0 AND 800 AND 1 = 1 ) AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 ) ) ) OR( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND(( flight_1.departure_time >= 2000 AND flight_1.departure_time <= 2200 ) AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 ) ) )
SELECT flight_id
FROM flight
WHERE departure_time >= '1700' AND departure_time <= '1900' AND from_airport = 'STL' AND to_airport = 'MIL' AND day_name = 'WEDNESDAY' AND month_number = 4;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'SEA' AND airport_service_2.city_code = 'SEA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND city_1.city_name = 'SAN DIEGO'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'SEA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 24 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'LGA' AND( flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN JOSE' AND flight_1.arrival_time = 2200 )
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_stop flight_stop_1 , airport_service airport_service_3 , city city_3 WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'DENVER' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.departure_time BETWEEN '2023-10-27 00:00:00' AND '2023-10-27 23:59:59'
AND flight_leg_2.arrival_time BETWEEN '2023-10-28 00:00:00' AND '2023-10-28 23:59:59'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 6 AND flight_stop_2.stop_days = 6
AND flight_1.airline_code = 'WA' AND flight_1.from_airport = 'WAI' AND flight_1.to_airport = 'BOS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
INNER JOIN date_day date_day ON flight_stop_1.stop_day = date_day.day_number
INNER JOIN date_day date_day_2 ON flight_stop_2.stop_day = date_day_2.day_number
WHERE date_day.day_name = 'saturday'
AND flight_stop_1.arrival_time >= '09:00:00'
AND flight_stop_2.arrival_time <= '17:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 , food_service food_service_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SEATTLE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHICAGO' AND(( flight_1.airline_code = 'CO' AND 1 = 1 ) AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND flight_1.meal_code = food_service_1.meal_code AND 1 = 1 ) ) )
SELECT flight_id
FROM flight
WHERE to_airport = 'BOS'
AND arrival_day = 'SATURDAY'
AND (
    (departure_day = 'SATURDAY' AND arrival_time < departure_time)
    OR (departure_day = 'SUNDAY' AND arrival_time >= departure_time)
);
SELECT flight_id, airline_code, flight_number, from_airport, to_airport, arrival_time, time_elapsed, flight_days, connections, fares.round_trip_cost
FROM flight
JOIN fare fares ON flight.flight_id = fares.flight_id
WHERE from_airport = 'CLEVELAND' AND to_airport = 'DALLAS' AND arrival_time < 1200;
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'WA' AND fare.to_airport = 'BO'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
WHERE fare_1.region = 'NORTH AMERICA' AND fare_1.destination = 'BOSTON' AND flight_1.day_name = 'SATURDAY'
SELECT fare.fare_id, fare.round_trip_cost, fare.fair_basis_code
FROM fare
JOIN flight flight ON fare.to_airport = flight.from_airport
JOIN airport airport_1 ON fare.from_airport = airport_1.airport_code
JOIN airport airport_2 ON fare.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'WASHINGTON' AND airport_2.city_name = 'MONTREAL'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN date_day date_day_1
ON fare_1.departure_time >= date_day_1.day_name = 'SATURDAY'
JOIN city city_1
ON fare_1.from_airport = city_1.city_name
JOIN city city_2
ON fare_1.to_airport = city_2.city_name
SELECT flight_fare.flight_id, fare_basis_code, fare_id, round_trip_cost
FROM flight_fare
JOIN fare_basis fare_basis
ON flight_fare.fare_basis_code = fare_basis.code
WHERE flight_fare.from_airport = 'WA' AND flight_fare.to_airport = 'TO' AND flight_fare.flight_days = 7 AND flight_fare.saturday_stay_required = 1;
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'WA' AND fare.to_airport = 'TO' AND fare.day = 'saturday'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days = 'SATURDAY' AND flight_stop_2.stop_days = 'SATURDAY' AND flight_stop_1.stop_airport = 'WA' AND flight_stop_2.stop_airport = 'BOS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
INNER JOIN flight flight_2 ON flight_2.flight_id = flight_stop_2.flight_id
WHERE flight_2.saturday_stay_required = 'YES'
AND flight_1.from_airport = 'BOS'
AND flight_1.to_airport = 'WAW'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1
ON flight_1.flight_id = flight_leg_1.leg_flight
JOIN airport airport_1
ON flight_leg_1.from_airport = airport_1.airport_code
JOIN days days_1
ON flight_leg_1.leg_day = days_1.days_code
WHERE flight_1.from_airport = 'MILW' AND flight_1.to_airport = 'DTW' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 17 )
SELECT DISTINCT flight_1.departure_time , flight_1.arrival_time FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DETROIT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'DETROIT' AND flight_leg_2.to_airport = 'TORONTO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'TORONTO' AND airport_2.city_name = 'MILWAUKEE'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'OAKLAND'
AND flight_1.departure_time = '2023-08-10 10:00:00'
SELECT flight_id
FROM flight
WHERE to_airport = 'OAKLAND'
AND arrival_time = (
    SELECT max(arrival_time)
    FROM flight
    WHERE to_airport = 'OAKLAND'
    AND day_name = 'WEDNESDAY'
);
SELECT flight_id
FROM flight
WHERE flight_days = 'WEDNESDAY'
AND flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'OAKLAND'
    AND to_airport = 'SLC'
    AND date_day = '2023-10-27'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_1.to_airport
WHERE airport_service_1.city_name = 'TORONTO' AND airport_service_2.city_name = 'SAN DIEGO' AND flight_leg_1.stop_codes LIKE '%DTW%'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
AND flight_stop_1.stop_airport = 'STL'
AND flight_stop_2.stop_airport = 'CLT'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 08:00:00' AND '2023-10-27 09:00:00'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '08:00:00' AND '08:59:00'
AND from_airport = 'MILWAUKEE'
AND aircraft_code_sequence = '767';
SELECT DISTINCT airport_code, transport_type, city_code, ground_fare
FROM ground_service
WHERE airport_code = 'IND'
SELECT * FROM flight
WHERE departure_time = '2023-10-27 12:00:00' AND from_airport = 'IND' AND to_airport = 'CLE'
SELECT *
FROM flight
WHERE departure_time >= '2023-08-15 18:00:00' AND departure_time < '2023-08-16 00:00:00' AND from_airport = 'CLEVELAND' AND aircraft_code_sequence = '9V7'
SELECT * FROM flight_fare flight_fare_1
WHERE departure_airport = 'CLEVELAND'
AND flight_fare_1.round_trip_required = 1
AND flight_fare_1.departure_time BETWEEN 1900 AND 2300
AND flight_fare_1.from_airport = 'CLEVELAND'
AND flight_fare_1.to_airport = 'MILWAUKEE'
AND flight_fare_1.flight_days BETWEEN 5 AND 7;
SELECT * FROM flight_leg
WHERE flight_id IN (
    SELECT flight_id FROM flight
    WHERE departure_time BETWEEN '2023-10-27 19:00:00' AND '2023-10-27 23:00:00'
    AND from_airport = 'CLEVELAND'
    AND to_airport = 'MILWAUKEE'
)
SELECT *
FROM flight
WHERE departure_time >= '2023-10-23 19:00:00' AND departure_time < '2023-10-23 23:00:00' AND from_airport = 'CLEVELAND' AND to_airport = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.stop_airport = airport_1.airport_code
WHERE flight_1.from_airport = 'DENVER'
AND flight_1.to_airport = 'SLC'
AND dayofweek(flight_1.departure_time) = 1
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport_service.direction, airport_service.city_code, airport_service.miles_distant
FROM airport_service
WHERE airport_service.airport_code = 'DENVER'
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , airport airport_1 , airport_service airport_service_1 , city city_1 , city city_2 WHERE ground_service_1.airport_code = airport_1.airport_code AND airport_1.airport_code = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND ground_service_1.city_code = city_2.city_code AND city_2.city_name = 'DENVER'
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport_service.direction, airport_service.city_code, airport_service.miles_distant
FROM airport_service
WHERE airport_service.airport_code = 'SLC'
SELECT flight_id
FROM flight
WHERE departure_time >= '2023-10-27 19:00:00'
AND from_airport = 'SLC'
AND airline_flight = 'DL'
SELECT DISTINCT airport_service.airport_code, airport_service.direction, airport_service.city_code
FROM airport_service
WHERE airport_service.direction = 'Ground Transportation'
SELECT flight_id
FROM flight
WHERE departure_time >= 1800
AND from_airport = 'OAKL'
AND to_airport = 'SLC'
SELECT flight_1.flight_id, fare.fare_id
FROM flight flight_1
INNER JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE flight_1.departure_time < '09:00' AND flight_1.from_airport = 'OAKLAND' AND fare_1.round_trip_required = 'true'
SELECT flight_id, fare_id, from_airport, to_airport, fare_basis_code, round_trip_cost
FROM flight
WHERE departure_time BETWEEN '2023-10-27 08:00:00' AND '2023-10-27 08:00:00'
AND from_airport = 'OAKLAND'
AND to_airport = 'SLC'
SELECT flight_id, airline_flight
FROM flight
WHERE departure_time BETWEEN '08:00:00' AND '08:59:00' AND from_airport = 'OAKL'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 AND( flight_1.departure_time >= 1800 AND flight_1.departure_time <= 2359 ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 AND( flight_1.departure_time >= 0 AND flight_1.departure_time <= 1200 ) ) ) )
SELECT DISTINCT airport_1.airport_name, airport_1.airport_location
FROM airport airport_1
JOIN airport_service airport_service_1 ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name IN ('ARIZONA', 'CALIFORNIA');
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport
WHERE state_code IN ('CA', 'NV', 'AZ');
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHARLOTTE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK'
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport
WHERE country_name = 'USA' AND state_code IN ('CA', 'NV', 'AZ');
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days >= 2 AND flight_stop_2.stop_days >= 2
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE country_name = 'USA' AND state_code = 'CA';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_days = 'DAILY' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' )
SELECT flight_id
FROM flight
WHERE flight_days = 'WEDNESDAY'
AND arrival_time BETWEEN '2023-10-27 19:00:00' AND '2023-10-27 23:00:00'
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time < '06:00:00' AND day_name = 'Thursday' AND from_airport = 'OAKLAND'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'MONDAY' AND flight_leg_2.day_name = 'FRIDAY' AND flight_leg_1.arrival_time BETWEEN 1300 AND 1700
SELECT * FROM fare_basis fare_basis_1
WHERE fare_basis_code = 'TP'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'CLEVELAND' AND airport_2.city_name = 'DALLAS'
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time < 1200
AND from_airport = 'CLEVELAND'
AND to_airport = 'DALLAS'
SELECT DISTINCT aircraft.aircraft_code, aircraft.capacity
FROM aircraft
WHERE aircraft.departure_time < 1200
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'MEMPHIS'
AND flight_1.to_airport = 'SEAATTLE'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_1.stop_airport = flight_stop_2.stop_airport
JOIN flight flight_2 ON flight_stop_2.stop_airport = flight_2.from_airport
WHERE flight_1.from_airport = 'NSM' AND flight_2.to_airport = 'SEA'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1 ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport airport_1 ON airport_1.airport_code = flight_fare_1.from_airport
JOIN airport airport_2 ON airport_2.airport_code = flight_fare_1.to_airport
WHERE airport_1.city_name = 'Nashville' AND airport_2.city_name = 'Seattle'
SELECT flight_1.flight_id, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time, flight_1.flight_days, flight_1.connections, flight_1.arrival_delay, flight_1.distance
FROM flight flight_1
WHERE flight_1.from_airport = 'MILWAUKEE' AND flight_1.to_airport = 'TAMPA'
SELECT * FROM equipment_sequence
WHERE aircraft_code = 'UAL' AND (location = 'TAMPA' OR location = 'TAMPA INTERNATIONAL')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days day_1 ON flight_leg_1.leg_day = day_1.days_code
WHERE day_1.day_name = 'MONDAY'
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
WHERE city_1.city_name = 'OAKLAND'
AND city_2.city_name = 'SALT LAKE CITY'
SELECT DISTINCT flight_1.flight_id, flight_1.arrival_time, flight_1.departure_time
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'TORONTO' AND flight_1.to_airport = 'SAN DIEGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND city_1.city_name = 'TORONTO'
AND flight_stop_1.stop_day = 'SATURDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'TORONTO'
AND flight_leg_2.to_airport = 'SAN DIEGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CLEVELAND' AND flight_1.arrival_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = flight_1.from_airport
JOIN city city_1
ON city_1.city_code = airport_service_1.city_code
JOIN flight_stop flight_stop_1
ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_3
ON airport_service_3.airport_code = flight_stop_1.stop_airport
JOIN city city_3
ON city_3.city_code = airport_service_3.city_code
WHERE flight_1.from_airport = 'JFK' AND flight_1.to_airport = 'MIA'
SELECT fare_basis_code FROM fare_basis
WHERE fare_basis_code LIKE '%Qo%'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'MILWAUKEE'
AND airport_service_2.city_code = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DETROIT' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 24 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 )
SELECT fare_basis_code FROM fare_basis fare_basis_1
WHERE fare_basis_code LIKE '%F%'
SELECT fare_basis_code FROM fare WHERE fare_basis_code LIKE '%H%';
SELECT DISTINCT flight_1.departure_time , flight_1.arrival_time FROM flight flight_1 , flight_leg flight_leg_1 , flight flight_2 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_leg_1.leg_flight AND flight_leg_1.flight_id = flight_2.flight_id AND flight_2.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_2.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT * FROM fare_basis fare_basis_1
WHERE fare_basis_code = 'AP/57'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.arrival_airport
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.airline_code = 'AA'
AND flight_1.from_airport = 'INDIANAapolis'
AND flight_1.departure_time < '10:00:00'
SELECT flight_id
FROM flight
WHERE from_airport = 'BURBANK'
AND arrival_time < '1900'
AND flight_days = (
    SELECT MAX(flight_days)
    FROM flight
    WHERE from_airport = 'BURBANK'
    AND arrival_time >= '1900'
);
SELECT DISTINCT flight.flight_number, flight.arrival_time, flight.from_airport, flight.airline_flight, flight.to_airport
FROM flight
JOIN flight_leg flight_leg
ON flight.flight_id = flight_leg.flight_id
JOIN flight_stop flight_stop
ON flight_leg.stop_number = flight_stop.stop_number
JOIN airport airport
ON flight_stop.arrival_airport = airport.airport_code
WHERE airport.city_name = 'ORLANDO' AND airport.country_name = 'USA'
SELECT DISTINCT flight_1.departure_time FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'CO' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airline airline_service_1 ON airport_service_1.airline_code = airline_service_1.airline_code
WHERE airline_service_1.note = 'DELA' AND flight_1.from_airport = 'MONTREAL' AND flight_1.to_airport = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'ORLANDO' AND airport_service_2.city_name = 'MONTREAL'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 20 ) )
SELECT flight_id
FROM flight
WHERE to_airport = 'NEW YORK'
AND airline_flight = 'AMERICAN AIRLINES'
AND class_of_service = 'BUSINESS'
SELECT fare_basis_code FROM fare WHERE fare_basis_code LIKE '%bh%'
SELECT DISTINCT flight_id FROM flight flight_id, airport_service airport_service_1, city city_1, airport_service airport_service_2, city city_2
WHERE flight_id IN (
    SELECT flight_id FROM flight
    WHERE from_airport = 'MIA' AND to_airport = 'JFK'
)
SELECT fare_basis.fare_basis_code FROM fare_basis
WHERE fare_basis.fare_basis_code = 'BH';
SELECT fare_basis.fare_basis_code FROM fare_basis
WHERE fare_basis.fare_basis_code = 'BH'
SELECT fare_basis.fare_basis_code FROM fare_basis
WHERE fare_basis.fare_basis_code = 'BH';
SELECT fare_basis_code FROM fare_basis WHERE description = 'BH'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 11 AND date_day_1.day_number = 9 ) ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 11 AND date_day_1.day_number = 9 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'INDIANAPOLIS' AND flight_1.to_airport = 'MEMPHIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BURBANK'
AND flight_leg_2.to_airport = 'SEA'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'ORLANDO' AND flight_leg_2.to_airport = 'MONTREAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'AIR Canada'
AND flight_stop_2.arrival_airline = 'Air Canada'
AND flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'MONTREAL' AND flight_leg_2.to_airport = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'MONTREAL' AND airport_2.city_name = 'ORLANDO'
SELECT flight_1.flight_id, fare.round_trip_cost
FROM flight_1
INNER JOIN fare ON flight_1.flight_id = fare.flight_id
WHERE fare.round_trip_required = 1
ORDER BY fare.round_trip_cost ASC;
SELECT flight_1.flight_id, fare.round_trip_cost
FROM flight flight_1
INNER JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE fare_1.round_trip_required = 1
AND fare_1.from_airport = 'ORLANDO'
AND fare_1.to_airport = 'MONTREAL'
ORDER BY fare_1.round_trip_cost ASC;
SELECT flight_id
FROM flight
WHERE from_airport = 'KC'
AND destination = 'LAS'
AND fare_basis_code = 'economy'
SELECT flight_id
FROM flight
WHERE restriction_code = 'KCLT'
AND fare_basis_code = 'economy'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PETERSBURG' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHARLOTTE'
SELECT flight_id, airport_code, transport_type, city_code, ground_fare
FROM ground_service
WHERE airport_code IN (
    SELECT airport_code
    FROM airport
    WHERE city_name = 'LAS VEGAS'
)
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , city city_1 WHERE ground_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAS VEGAS'
SELECT flight_id
FROM flight
WHERE airline_code = 'LAS' AND (
    (from_airport = 'LAS' AND to_airport = 'BAL' AND arrival_time >= 1800)
    OR (from_airport = 'BAL' AND to_airport = 'LAS' AND arrival_time <= 1800)
);
SELECT flight_id
FROM flight
WHERE from_airport = 'LAS VEGAS'
AND to_airport = 'BALtimore'
AND fare_basis_code = 'economy'
SELECT flight_id
FROM flight
WHERE airline_code = 'BA'
AND (
    (from_airport = 'BALtimore' AND to_airport = 'KANSAS CITY')
    OR
    (from_airport = 'KANSAS CITY' AND to_airport = 'BALtimore')
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 30 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TACOMA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TORONTO'
SELECT airline_name
FROM airline
WHERE airline_code = 'US';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time BETWEEN 0 AND 1000
AND flight_1.from_airport = 'COLumbus'
AND flight_1.to_airport = 'CHICAGO'
AND flight_1.flight_days = 1
AND flight_1.departure_time < '10:00:00';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PAUL' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN JOSE' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_cost IS NOT NULL AND 1 = 1 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
AND flight_stop_1.stop_airport = 'STL'
AND flight_stop_2.stop_airport = 'DET'
SELECT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
JOIN flight_leg flight_leg_1
ON flight_1.flight_id = flight_leg_1.flight_id
JOIN date_day date_day_1
ON flight_leg_1.leg_date = date_day_1.day_number
WHERE date_day_1.day_name = 'WEDNESDAY'
AND flight_leg_1.leg_flight >= 19
AND flight_leg_1.leg_flight <= 21
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN '00:00:00' AND '10:00:00' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' ) )
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.round_trip_required = 'NO' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' ) AND fare_1.round_trip_required = 'NO' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.city_name
JOIN city city_2 ON flight_stop_2.departure_airport = city_2.city_name
WHERE flight_1.from_airport = city_1.city_name AND flight_1.to_airport = city_2.city_name AND flight_1.flight_days >= 1;
SELECT DISTINCT flight_id
FROM flight
WHERE to_airport = 'SAN JOSE' AND from_airport = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_stop flight_stop_1 , airport_service airport_service_3 , city city_3 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA' AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'PITTSBURGH' )
SELECT DISTINCT airport_service.airport_code, airport_service.city_code, ground_service.transport_type, ground_service.city_code
FROM airport_service
INNER JOIN ground_service
ON airport_service.airport_code = ground_service.airport_code
WHERE airport_service.city_code = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1
ON flight_1.flight_id = flight_leg_1.leg_flight
JOIN airport_service airport_service_1
ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN 1800 AND 2200
AND flight_1.to_airport = 'PHOENIX'
AND city_1.city_name = 'FORT WORTH'
SELECT DISTINCT airport_service.airport_code, airport_service.city_code, transportation.type
FROM airport_service
INNER JOIN airport ON airport_service.airport_code = airport.airport_code
INNER JOIN transportation ON airport_service.transportation_code = transportation.transportation_code
WHERE airport.city_name = 'Fort Worth'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE flight_1.from_airport = 'FORT WORTH' AND flight_1.to_airport = 'SAN JOSE'
SELECT flight_id
FROM flight
WHERE airline_flight = 'NYO'
AND restriction_code = 'FIRST_CLASS'
AND round_trip_required = 'YES'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN fare fare_1
ON fare_1.fare_basis_code = flight_fare_1.fare_basis_code
JOIN flight flight_2
ON flight_2.flight_id = flight_fare_1.flight_id
WHERE flight_1.from_airport = 'JFK'
AND flight_2.to_airport = 'MIA'
AND flight_fare_1.round_trip_required = 'YES'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN flight flight_2
ON flight_2.flight_id = flight_fare_1.flight_id
WHERE flight_1.from_airport = 'JFK'
AND flight_2.to_airport = 'MIA'
AND flight_fare_1.round_trip_required = 1
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1 ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport airport_1 ON airport_1.airport_code = flight_fare_1.from_airport
JOIN airport airport_2 ON airport_2.airport_code = flight_fare_1.to_airport
WHERE airport_1.city_name = 'MIA' AND airport_2.city_name = 'NYC' AND flight_fare_1.nonstop = 1;
SELECT flight_id
FROM flight
WHERE from_airport = 'INDIANAPOLIS'
AND arrival_time < '10:00:00'
AND (
    SELECT *
    FROM flight
    WHERE from_airport = 'INDIANAPOLIS'
    AND arrival_time >= '00:00:00'
    AND day_name = 'ANY'
)
SELECT fare_basis.description FROM fare_basis
WHERE fare_basis.code = 'F';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BURBANK' AND flight_leg_2.to_airport = 'TACOMA'
SELECT code_description.code
FROM code_description
JOIN fare fare_1
ON fare_1.fare_basis_code = code_description.code
WHERE fare_1.flight_id = 12345;
SELECT fare_basis.description
FROM fare_basis
WHERE fare_basis_code = 'H'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'MKE'
SELECT airline_code
FROM airline
WHERE airline_name LIKE '%s%';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'STL' AND flight_leg_2.to_airport = 'TORONTO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'TORONTO'
AND flight_leg_2.arrival_airport = 'ST. PETERSBURG'
SELECT DISTINCT fare_1.fare_id
FROM fare fare_1
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'TORONTO'
AND flight_1.to_airport = 'ST. PETERSBURG'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.distance = 0 AND flight_leg_2.distance = 0
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'CHICAGO' AND airport_2.city_name = 'SAN DIEGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.airport_code
JOIN city city_2 ON flight_stop_2.departure_airport = city_2.airport_code
WHERE city_1.city_name = 'CHICAGO' AND city_2.city_name = 'SAN DIEGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'KC' AND flight_leg_2.to_airport = 'DENVER'
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27' AND '2023-10-30'
AND from_airport = 'DENVER'
AND to_airport = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON airport_service_1.city_code = airport_service_2.city_code
WHERE airport_service_1.city_name = 'PHOENIX' AND airport_service_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAS VEGAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN DIEGO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 25 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN day day_1 ON flight_leg_1.leg_day = day_1.days_code
WHERE day_1.day_name = 'MONDAY'
AND flight_1.from_airport = 'CHICAGO'
AND flight_1.arrival_time BETWEEN '08:00:00' AND '12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'HOUSTON'
AND flight_leg_2.arrival_airport = 'SAN JOSE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.stop_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_1.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'HOUSTON' AND airport_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN date_day date_day_1 ON flight_leg_1.day_number = date_day_1.day_number
INNER JOIN time_interval time_interval_1 ON date_day_1.month_number = time_interval_1.month_number
INNER JOIN time_interval time_interval_2 ON date_day_1.day_number = time_interval_2.month_number
WHERE flight_1.from_airport = 'MILWAUKEE'
AND flight_1.arrival_time = '2023-10-27 19:00:00'
SELECT DISTINCT flight_id
FROM flight
WHERE flight_days = 'FRIDAY' AND departure_time BETWEEN '08:00:00' AND '17:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON'
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport.city_name
FROM airport_service
JOIN airport ON airport_service.airport_code = airport.airport_code
WHERE airport.city_name = 'NEW YORK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.stops = 0 AND( flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' AND( flight_1.arrival_time >= 1645 AND flight_1.arrival_time <= 1715 ) ) ) )
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport
WHERE city_name = 'NEW YORK'
SELECT DISTINCT airport_code FROM airport WHERE airport_location LIKE '%LA%'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TAMPA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHARLOTTE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 )
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport
WHERE airport_location LIKE '%LA%'
SELECT DISTINCT airport.airport_name
FROM airport
WHERE airport.city_name = 'LA';
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE airport_location LIKE '%Los%Angeles%'
SELECT DISTINCT flight_id FROM flight_leg flight_leg_1
WHERE flight_leg_1.leg_flight = 1
AND flight_leg_1.leg_number = 1
SELECT DISTINCT flight_1.flight_id, flight_1.departure_time, flight_1.arrival_time, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.airline_flight, airline_code, flight_1.meal_code, flight_1.departure_time
FROM flight_stop flight_stop_1
INNER JOIN flight flight_1
ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2
ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2 AND flight_stop_2.stop_days = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'NEW YORK'
AND airport_1.city_name = 'LOS ANGELES'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAGUNA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BURBANK' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 24 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'LOS ANGELES' AND airport_2.city_name = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'ONTARIO CALIFORNIA' AND airport_2.city_name = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.stop_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_1.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'ONTARIO'
AND airport_2.city_name = 'ORLANDO'
SELECT flight_1.flight_id, fare.fare_id, fare.round_trip_cost
FROM flight flight_1
INNER JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE fare_1.from_airport = 'IND' AND fare_1.to_airport = 'MEM' AND fare_1.day_name = 'MONDAY'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MAX(departure_time)
    FROM flight
    WHERE from_airport = 'INDIANAapolis'
    AND to_airport = 'MEMPHIS'
    AND day = 'MONDAY'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_flight = days_1.days_code
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_1.to_airport = airport_service_2.airport_code
WHERE days_1.day_name = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_day = 'SUNDAY'
AND flight_stop_2.stop_day = 'SUNDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_2.stop_days = 6 AND flight_stop_2.stop_time BETWEEN 1800 AND 2000
SELECT DISTINCT aircraft.aircraft_code, aircraft.aircraft_description
FROM flight flight
INNER JOIN equipment_sequence equipment ON flight.aircraft_code = equipment.aircraft_code
INNER JOIN aircraft aircraft ON equipment.aircraft_code = aircraft.aircraft_code
WHERE flight.from_airport = 'CHARLOTTE'
SELECT fare_basis.fare_basis_code
FROM fare_basis
WHERE fare_basis.fare_basis_code = 'Q';
SELECT flight_id
FROM flight
WHERE flight_id IN (
    SELECT flight_id
    FROM flight_fare
    WHERE fare_basis_code = 'Q'
    AND date_day = 'SATURDAY'
);
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.flight_id = flight_fare.flight_id
WHERE fare.from_airport = 'DETROIT' AND fare.to_airport = 'ST. PETERSBURG' AND fare.class_type = 'FIRST CLASS'
SELECT flight_fare.flight_id, fare_basis_code, round_trip_cost
FROM fare
JOIN flight_fare ON fare.flight_id = flight_fare.flight_id
JOIN flight ON flight.flight_id = flight_fare.flight_id
WHERE flight.from_airport = 'DETROIT' AND flight.to_airport = 'ST. PETERSBURG'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 1 AND flight_leg_1.time_elapsed BETWEEN 0 AND 1200
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 5 AND flight_leg_2.day_number = 5
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN city city_1 ON airport_1.city_code = city_1.city_code
WHERE flight_1.departure_time < '09:00:00' AND city_1.city_name = 'CINcinnati' AND city_2.city_name = 'TAMPA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1800 AND 2200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT flight_id
FROM flight
WHERE flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'TAMPA'
    AND arrival_time >= '15:00:00'
)
SELECT DISTINCT airline.airline_name
FROM airline
JOIN flight flight ON airline.airline_code = flight.airline_code
WHERE flight.from_airport = 'SEA' AND flight.to_airport = 'SLC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.airline_code = 'DAL' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SEATTLE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY'
SELECT c.compartment, c.class_type
FROM compartment_class c
JOIN flight_leg fl ON c.compartment = fl.compartment
JOIN flight f ON fl.flight_id = f.flight_id
WHERE f.from_airport = 'SEA' AND f.to_airport = 'SLC'
SELECT DISTINCT flight_1.flight_id, aircraft.aircraft_code, aircraft.aircraft_description
FROM flight flight_1
INNER JOIN aircraft aircraft ON flight_1.aircraft_code = aircraft.aircraft_code
WHERE flight_1.departure_time = (
    SELECT MIN( flight_1.departure_time )
    FROM flight flight_1
    INNER JOIN aircraft aircraft ON flight_1.aircraft_code = aircraft.aircraft_code
    WHERE flight_1.from_airport = 'SEA'
    AND aircraft.aircraft_type = '737'
);
SELECT DISTINCT airport_service.airport_code, airport_service.city_code, airport_service.direction, airport_service.minutes_distant
FROM airport_service
WHERE airport_service.city_code = 'BALTIMORE'
SELECT DISTINCT airport_service.airport_name, airport_service.city_code, airport_service.direction
FROM airport_service
WHERE airport_service.city_code = 'BALtimore'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN day day_1 ON flight_leg_1.leg_flight = day_1.days_code
JOIN airport airport_1 ON day_1.arrival_airport = airport_1.airport_code
WHERE day_1.day_name = 'FRIDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_1.to_airport
WHERE flight_1.departure_date = '1991-10-27'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time >= '2023-10-27 19:00:00' AND flight_leg_2.arrival_time = '2023-10-27 23:00:00'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'CLEVELAND'
AND flight_1.to_airport = 'MIAMI'
AND flight_leg_1.leg_day = 3
AND flight_leg_2.leg_day = 4
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'CLEVELAND'
AND fare.to_airport = 'MIA'
AND fare.round_trip_required = 'YES'
AND fare.departure_time >= '2023-10-27'
AND fare.departure_time < '2023-10-30'
SELECT DISTINCT restriction_1.restriction_code FROM restriction restriction_1 WHERE restriction_1.restriction_code = 'AP/80'
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.to_airport = 'MIA'
AND fare.departure_time = DATE_ADD(day, 1, DATE_SUB('2023-10-27', INTERVAL 1 DAY))
AND fare.round_trip_required = 1
SELECT flight_id
FROM flight
WHERE departure_day = 'SATURDAY' OR departure_day = 'SUNDAY'
AND airline_code = 'AMERICAN'
AND day_name = 'SATURDAY' OR day_name = 'SUNDAY'
SELECT flight_id
FROM flight
WHERE flight_day = 'WED' AND flight_time >= '19:00:00' AND airline_code = 'PHX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE flight_1.airline_code = 'AA' AND flight_1.from_airport = 'PHOENIX' AND flight_1.to_airport = 'MILWAUKEE' AND flight_leg_1.day_name = 'WEDNESDAY' AND flight_leg_2.day_name = 'WEDNESDAY' AND airport_1.city_name = 'PHOENIX' AND airport_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.airport_name = 'PHOENIX' AND airport_2.airport_name = 'MILWAUKEE' AND airline_code = 'AA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PHOENIX' AND airport_2.city_name = 'MILWAUKEE'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '06:00:00' AND '09:00:00' AND from_airport = 'CHICAGO' AND meal_code = 'MEAL'
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time BETWEEN '08:00' AND '12:00' AND meal_code IS NOT NULL
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1 ON fare_1.fare_id = flight_fare_1.fare_id
JOIN food_service food_service_1 ON food_service_1.meal_code = fare_1.meal_code
WHERE flight_1.from_airport = 'SEA' AND flight_1.to_airport = 'CHI' AND food_service_1.meal_description = 'Continental'
SELECT flight_id
FROM flight
WHERE to_airport = 'SEA'
AND flight_days = 'SATURDAY'
AND meal_code IN ('Continental Breakfast')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN food_service food_service_1 ON food_service_1.meal_code = flight_stop_1.meal_code
WHERE flight_stop_1.stop_days = 'SATURDAY'
AND flight_stop_1.arrival_time >= '06:00:00'
AND flight_stop_1.arrival_time < '12:00:00'
SELECT DISTINCT flight_1.flight_id, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time, meal_code
FROM flight_fare flight_fare_1
INNER JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
INNER JOIN food_service food_service_1
ON flight_fare_1.meal_code = food_service_1.meal_code
INNER JOIN city city_1
ON flight_fare_1.from_airport = city_1.city_name
INNER JOIN city city_2
ON flight_fare_1.to_airport = city_2.city_name
WHERE flight_fare_1.departure_time BETWEEN '06:00:00' AND '09:00:00' AND flight_fare_1.meal_code IS NOT NULL
SELECT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.stop_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_stop_2.stop_airport
WHERE flight_1.from_airport = 'CHICAGO'
AND flight_1.arrival_time >= '08:00:00'
AND flight_stop_1.stop_days = 'SATURDAY'
AND airport_service_1.city_name = 'MINneapolis'
SELECT flight_id
FROM flight
WHERE departure_day = 'saturday'
AND flight_day BETWEEN '08:00:00' AND '12:00:00'
AND meal_code IN ('CHI', 'MIN')
SELECT flight_1.flight_id, flight_1.arrival_time, meal_code
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN food_service food_service_1 ON food_service_1.meal_code = flight_leg_1.meal_code
WHERE food_service_1.meal_description IS NOT NULL
AND flight_1.from_airport = 'CHICAGO' AND flight_1.arrival_time >= '06:00:00' AND flight_1.arrival_time < '12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN flight flight_2
ON flight_2.flight_id = flight_fare_1.flight_id
WHERE flight_1.departure_time = '2023-10-27 00:00:00'
AND flight_2.arrival_time = '2023-10-27 23:59:00'
AND flight_1.from_airport = 'JFK'
AND flight_2.to_airport = 'LAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'MEMPH' AND flight_leg_2.to_airport = 'LAS VEGAS' AND flight_leg_1.leg_flight = 1
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.flight_id = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'NEWARK' AND to_airport = 'TAMPA' AND flight_date = '2023-11-27'
)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TAMPA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHARLOTTE' AND( flight_1.sunday_stay_required = 1 AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'CHARLOTTE' )
SELECT flight_id
FROM flight
WHERE to_airport = 'CHARLOTTE'
AND day_name = 'TUESDAY'
AND arrival_time BETWEEN 0900 AND 1200;
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_flight = days_1.days_code
WHERE days_1.day_name = 'MONDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.stop_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_1.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'Dallas'
AND airport_2.city_name = 'Houston'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'HOUSTON' AND flight_leg_2.to_airport = 'DALLAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , state state_1 , airport_service airport_service_2 , city city_2 , state state_2 , days days_1 , date_day date_day_1 WHERE flight_1.connections = 0 AND( flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PETERSBURG' AND city_1.state_code = state_1.state_code AND state_1.state_name = 'FLORIDA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TACOMA' AND city_2.state_code = state_2.state_code AND state_2.state_name = 'WASHINGTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 20 ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PHOENIX' AND airport_2.city_name = 'MILWAUKEE'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport_code = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'CHI' AND flight_1.to_airport = 'SEA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'CHICAGO' AND flight_leg_2.to_airport = 'SEATTLE' AND flight_leg_1.leg_flight = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN flight_stop flight_stop_1
ON fare_1.to_airport = flight_stop_1.stop_number
JOIN city city_1
ON flight_stop_1.stop_airport = city_1.city_name
WHERE flight_1.from_airport = 'SEA'
AND flight_1.to_airport = 'CHI'
AND fare_1.class_type = 'economy'
SELECT fare.fare_id
FROM fare
WHERE fare.to_airport = 'PITTSBURGH'
AND fare.restriction_code = 'NONSTOP'
AND fare.round_trip_cost <= 200;
SELECT fare.fare_id
FROM fare
JOIN fare_basis fare_basis
ON fare.fare_basis_code = fare_basis.fare_basis_code
WHERE fare.from_airport = 'PITTSBURGH'
AND fare.to_airport = 'ATLANTA'
AND fare.coach = 'COACH';
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'JFK'
AND flight_1.arrival_time >= '2023-10-27 10:00:00'
AND flight_1.arrival_time <= '2023-10-27 20:00:00'
SELECT flight_id
FROM flight
WHERE flight_days = 1
AND day_name = 'SUNDAY'
AND arrival_time >= '08:00:00'
AND arrival_time <= '12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN days days_1 ON flight_leg_1.leg_flight = days_1.days_code
INNER JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
INNER JOIN airport_service airport_service_2 ON flight_leg_1.to_airport = airport_service_2.airport_code
WHERE days_1.day_name = 'tuesday' AND airport_service_1.city_code = 'CHARLOTTE' AND airport_service_2.city_code = 'BALTIMORE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 , airport airport_2 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'BAL' AND flight_1.to_airport = airport_2.airport_code AND airport_2.airport_code = 'NYC' AND( flight_1.arrival_time <= 1200 AND( flight_1.flight_days = '2023-10-27' AND flight_1.arrival_time < flight_1.departure_time AND 1 = 1 ) )
SELECT flight_id
FROM flight
WHERE departure_time >= '1201:00:00'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-12-20 18:00:00' AND '2023-12-20 23:59:59'
SELECT flight_id
FROM flight
WHERE airline_code = 'IN'
AND from_airport = 'INDIANAapolis'
AND to_airport = 'ORLANDO'
AND date(departure_time) = date('1991-12-27')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'CLEVELAND'
AND airport_2.city_name = 'MIAMI'
AND flight_leg_1.arrival_time <= '16:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time >= '2023-10-27 18:00:00' AND flight_leg_2.arrival_time <= '2023-10-27 19:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_1.flight_id
WHERE flight_1.from_airport = 'NYC' AND flight_1.to_airport = 'LAS VEGAS' AND flight_1.day_name = 'SUNDAY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 25 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 , city city_1 , airport_service airport_service_1 , city city_2 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND ( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEW YORK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND( flight_1.arrival_time >= 1630 AND flight_1.arrival_time <= 1730 )
SELECT flight_id
FROM flight
WHERE departure_time = 'SUNDAY' AND (from_airport = 'MEMPHIS' AND to_airport = 'LAS VEGAS')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'SUNDAY' AND flight_leg_1.arrival_time >= 1700
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND ( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.flight_days = 'SATURDAY' AND flight_1.arrival_time BETWEEN 0 AND 1200 )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'CHICAGO'
AND flight_1.to_airport = 'LAS VEGAS'
AND date_day = 'SATURDAY'
AND time_elapsed BETWEEN 0 AND 10;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.to_airport = 'LOS ANGeles'
AND flight_leg_1.leg_flight = 2
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_1.stop_airport = flight_stop_2.stop_airport
WHERE flight_1.from_airport = 'MILWAUKEE'
AND flight_1.arrival_time = 'SATURDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1
ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'PHOENIX'
AND flight_1.to_airport = 'MILWAUKEE'
AND flight_1.sunday_stay_required = 'YES'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.arrival_time BETWEEN 1700 AND 2000
AND flight_stop_2.arrival_time BETWEEN 1700 AND 2000
SELECT COUNT(*) FROM flight_leg flight_leg
WHERE flight_leg.from_airport = 'ST PAUL'
AND flight_leg.leg_flight >= 1
SELECT DISTINCT flight_1.departure_time FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'CO' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT COUNT(*) FROM flight_fare flight_fare
WHERE from_airport = 'DUBLES' AND flight_fare.round_trip_required = 1;
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , city city_1 WHERE ground_service_1.city_code = city_1.city_code AND city_1.city_name = 'FORT WORTH'
SELECT DISTINCT flight_1.from_airport FROM flight flight_1 , airport airport_1 WHERE flight_1.airline_code = 'NW'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , days days_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_2 WHERE fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.basis_days = days_1.days_code AND days_1.day_name = 'SATURDAY' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND flight_1.flight_days = days_2.days_code AND days_2.day_name = 'SATURDAY' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE flight_leg_1.arrival_time > 1600
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'DALLAS' AND airport_2.city_name = 'SAN FRANCISCO'
SELECT flight_id
FROM flight
WHERE airline_flight = 'AA'
AND departure_time BETWEEN '07:00' AND '11:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'PHL' AND flight_leg_2.to_airport = 'DAL'
SELECT code, description
FROM code_description
WHERE code = 'D9S';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT * FROM fare_basis fare_basis_1
WHERE basic_type = 'D9S'
SELECT DISTINCT airport_code
FROM airport
WHERE airport_code IN (
  SELECT DISTINCT airport_code
  FROM flight
  WHERE airline_code = 'TOWER'
);
SELECT flight_1.flight_id, flight_1.flight_days, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time, flight_1.airline_flight, flight_1.meal_code
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_1.flight_id
WHERE flight_leg_1.from_airport = 'JFK' AND flight_leg_2.to_airport = 'ORL'
SELECT flight_1.flight_id, flight_1.airline_code, flight_1.flight_days, flight_1.departure_time, flight_1.from_airport, flight_1.to_airport, flight_1.class_of_service
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'KENNY' AND flight_1.to_airport = 'MIA' AND flight_1.class_of_service = 'FIRST CLASS' OR flight_1.class_of_service = 'COACH'
SELECT flight_1.flight_id, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time, flight_1.class_of_service
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_1.flight_id
WHERE flight_1.from_airport = 'JFK' AND flight_1.to_airport = 'MIA' AND flight_leg_1.class_of_service = 'FIRST CLASS' OR flight_leg_2.class_of_service = 'COACH'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , state state_1 , airport_service airport_service_2 , city city_2 , state state_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAMI' AND city_1.state_code = state_1.state_code AND state_1.state_name = 'FLORIDA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND city_2.state_code = state_2.state_code AND state_2.state_name = 'NEVADA' AND( flight_1.arrival_time < 1600 AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND not(( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) ) ) ) )
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'JFK'
AND flight_leg_2.arrival_airport = 'MIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_1.stop_airport = flight_stop_2.stop_airport
JOIN airport airport_1 ON flight_stop_1.stop_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.stop_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOS' AND airport_2.city_name = 'SLC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1
ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN flight_leg flight_leg_2
ON flight_leg_2.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1
ON flight_leg_1.from_airport = airport_service_1.airport_code
INNER JOIN airport airport_service_2
ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'BOS' AND airport_service_2.city_code = 'SLC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1 ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airline airline_1 ON airline_1.airline_code = fare_1.airline
WHERE airline_1.note = 'DELA' AND flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'SLC'
SELECT fare_id, fare_basis_code, round_trip_cost
FROM fare
WHERE to_airport = 'BOS' AND restriction_code = 'BW'
SELECT fare_basis.fare_basis_code, fare_basis.round_trip_cost
FROM fare_basis
JOIN flight_fare ON fare_basis.fare_basis_code = flight_fare.restriction_code
WHERE flight_fare.from_airport = 'BOS' AND flight_fare.to_airport = 'SLC'
ORDER BY fare_basis.round_trip_cost ASC;
SELECT flight_id, fare_basis_code, fare_id, from_airport, to_airport, round_trip_cost
FROM fare
WHERE from_airport = 'WA' AND to_airport = 'SLC'
ORDER BY round_trip_cost ASC;
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN fare_basis fare_basis ON fare.fare_basis_code = fare_basis.code
WHERE fare.from_airport = 'BWI' AND fare.to_airport = 'SLC'
ORDER BY fare.round_trip_cost ASC;
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
WHERE flight_1.from_airport = 'DETROIT'
AND flight_1.to_airport = 'LAS VEGAS'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
WHERE airport_service_1.city_code = 'BOS' AND airport_service_1.city_name = 'BOSTON'
AND flight_leg_1.arrival_time = (
    SELECT MIN(arrival_time)
    FROM flight_leg
    WHERE from_airport = airport_service_1.airport_code
    AND arrival_time > flight_leg_1.arrival_time
);
SELECT flight_id
FROM flight
WHERE from_airport = 'BOS'
AND arrival_time = (
    SELECT MIN( arrival_time )
    FROM flight
    WHERE from_airport = 'BOS'
    AND arrival_time > flight.arrival_time
);
SELECT flight_id
FROM flight
WHERE from_airport = 'BOS'
AND arrival_time = (
    SELECT MIN(arrival_time)
    FROM flight
    WHERE from_airport = 'BOS'
);
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'HOUSTON'
AND airport_service_1.time_zone_code = 'CST'
WHERE flight_1.arrival_time = (
    SELECT MIN( flight_1.arrival_time )
    FROM flight flight_1
    JOIN airport_service airport_service_1
    ON flight_1.from_airport = airport_service_1.airport_code
    AND airport_service_1.city_code = 'HOUSTON'
    AND airport_service_1.time_zone_code = 'CST'
);
SELECT flight_id
FROM flight
WHERE arrival_time = (
    SELECT MIN( arrival_time )
    FROM flight
    WHERE from_airport = 'HOUSTON'
    AND arrival_time > '2023-10-27 00:00:00'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'HOUSTON' AND airport_2.city_name = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
AND flight_stop_1.arrival_time >= '2023-08-27 06:30:00'
AND flight_stop_2.arrival_time <= '2023-08-27 18:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1800 AND 2200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NASHVILLE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 20 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' )
SELECT DISTINCT fare_basis_1.fare_basis_code FROM fare_basis fare_basis_1 WHERE fare_basis_1.fare_basis_code = 'FN'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA' AND(( flight_1.airline_code = 'DL' AND 1 = 1 ) AND( flight_1.flight_number = 296 AND( flight_1.airline_code = 'DL' AND 1 = 1 ) ) ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' )
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft_code = 'M80';
SELECT DISTINCT airline_code
FROM flight_fare flight_fare
WHERE departure_airport = 'DENVER'
GROUP BY airline_code
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
WHERE flight_1.from_airport = 'DENVER'
OR flight_1.to_airport = 'DENVER'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES' ) AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES'
SELECT flight_id
FROM flight
WHERE arrival_time BETWEEN '19:00:00' AND '21:00:00'
SELECT equipment_sequence.aircraft_code, equipment_sequence.aircraft_code_sequence
FROM equipment_sequence
WHERE aircraft_code = '73S'
SELECT flight_id, fare_id, from_airport, to_airport, flight_days, connections, arrival_time, time_elapsed, flight_number, meal_code, departure_time
FROM flight
WHERE flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE flight_days BETWEEN 7 AND 14
    AND arrival_time BETWEEN '2023-08-10 10:00:00' AND '2023-08-10 17:00:00'
);
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = '73S';
SELECT equipment_sequence.aircraft_code, equipment_sequence.capacity
FROM equipment_sequence
WHERE aircraft_code = '757';
SELECT COUNT(*) FROM flight_fare fare_1
WHERE fare_1.flight_id = (
    SELECT flight_id
    FROM flight
    WHERE airline_flight = 'UA'
    AND flight_days >= 757
)
SELECT COUNT(*) FROM flight_fare fare_1
WHERE aircraft_code = '757'
AND fare_basis_code = 'economy'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 18:00:00' AND '2023-10-27 21:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN date_day date_day_1 ON flight_leg_1.leg_date = date_day_1.day_number
WHERE date_day_1.day_name = 'FRIDAY'
AND flight_leg_1.arrival_time BETWEEN 1900 AND 2100;
SELECT flight_id
FROM flight
WHERE arrival_time BETWEEN '2023-10-27 19:00:00' AND '2023-10-27 20:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 2 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CINCINNATI' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 30 ) ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CINCINNATI' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 30 ) )
SELECT * FROM aircraft
WHERE aircraft_code = 'M80'
SELECT * FROM aircraft WHERE aircraft_code = 'M80';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , state state_1 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAMI' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' AND city_2.state_code = state_1.state_code AND state_1.state_code = 'DC' )
SELECT aircraft.aircraft_code, aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = 'M80';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = 'M80';
SELECT flight_id, flight_number, arrival_time, time_elapsed
FROM flight
WHERE departure_time BETWEEN 1900 AND 2100;
SELECT flight_id
FROM flight
WHERE arrival_time BETWEEN '18:00:00' AND '21:00:00'
SELECT flight_id, aircraft_code, flight_days, connections, arrival_time, time_elapsed
FROM flight
WHERE arrival_time BETWEEN '2023-10-27 18:00:00' AND '2023-10-27 21:00:00'
GROUP BY flight_id, aircraft_code, flight_days
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE day(flight_leg_1.day_number) = 1 AND time(flight_leg_1.arrival_time) BETWEEN 0800 AND 1200
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_day = days_1.days_code
WHERE days_1.day_name = 'MONDAY' AND flight_leg_1.leg_flight = 1
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
WHERE ground_service_1.city_code = 'MEMPHIS'
AND ground_service_1.transport_type = 'TAXI'
AND ground_service_1.arrival_time >= '08:42:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE day(flight_leg_1.day_number) = 1 AND day(flight_leg_2.day_number) = 1 AND (flight_leg_1.arrival_time > 2100 AND flight_leg_1.arrival_time <= 2300)
SELECT code, description
FROM code_description
WHERE code = 'CVG';
SELECT DISTINCT airport_code, transport_type, city_code, ground_fare
FROM ground_service
WHERE airport_code = 'LGD' AND destination = 'NYC'
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , airport airport_1 , airport_service airport_service_1 , city city_1 WHERE ground_service_1.airport_code = airport_1.airport_code AND airport_1.airport_code = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LGA' AND airport_service_2.city_code = 'NEW YORK' AND airport_service_2.city_name = 'NEW YORK CITY'
SELECT DISTINCT airport_service.airport_name, transport_type, city_code
FROM airport_service
JOIN airport airport_1
ON airport_service.airport_code = airport_1.airport_code
JOIN airport airport_2
ON airport_service.airport_code = airport_2.airport_code
WHERE airport_1.city_name = 'LGA' AND airport_2.city_name = 'NEW YORK CITY'
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
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN city city_1 ON airport_1.city_code = city_1.city_code
WHERE flight_leg_1.day_number BETWEEN 1 AND 5
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 2 AND flight_leg_2.leg_flight = 3 AND flight_leg_1.arrival_time >= 1900 AND flight_leg_2.arrival_time = 2200
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport_service.direction, airport_service.city_code, airport_service.miles_distant
FROM airport_service
WHERE airport_service.airport_code = 'BNA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 1
AND flight_leg_2.leg_flight = 2
AND flight_leg_1.arrival_time BETWEEN 1300 AND 1900
SELECT COUNT(*) FROM flight_fare flight_fare
WHERE airline_code = 'ACA' AND destination = 'BURBANK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BURBANK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ANYWHERE' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airline airline_1
ON flight_1.from_airport = airline_1.airport_code
WHERE airline_1.airline_name = 'ALASKA'
SELECT airline_1.airline_name
FROM airline airline_1
INNER JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
INNER JOIN flight_leg flight_leg_1
ON flight_1.flight_id = flight_leg_1.flight_id
INNER JOIN days days_1
ON flight_leg_1.leg_day = days_1.days_code
INNER JOIN date_day date_day_1
ON days_1.days_code = date_day_1.days_code
WHERE flight_1.from_airport = 'BOS'
SELECT DISTINCT flight_id
FROM flight
WHERE airline_flight = 'ALASKA AIRLINES'
AND arrival_time >= '2023-10-27 10:00:00'
AND arrival_time <= '2023-10-27 20:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN equipment_sequence equipment_sequence_1 ON flight_1.aircraft_code = equipment_sequence_1.aircraft_code
JOIN airport airport_service_1 ON equipment_sequence_1.aircraft_code = airport_service_1.aircraft_code
WHERE airport_service_1.city_code = 'BURBANK'
SELECT DISTINCT flight_id, airline_code, aircraft_code, flight_days, connections
FROM flight
WHERE airline_code IN (
    SELECT airline_code
    FROM airline
    WHERE country_name = 'USA'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.departure_airport = 'SEA'
SELECT flight_id
FROM flight
WHERE departure_time < '12:00:00'
SELECT fare_basis.fare_basis_code, fare_basis.price
FROM fare_basis
WHERE fare_basis.season = 'SUMMER'
AND fare_basis.class_type = 'economy'
AND fare_basis.distance_miles >= 1000
ORDER BY fare_basis.price ASC;
SELECT flight_id
FROM flight
WHERE departure_time = '06:00:00' AND city_name = 'LOS ANGELES'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '08:00:00' AND '10:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'NEWARK'
AND flight_1.flight_days = days_1.days_code
AND days_1.day_name = date_day_1.day_name
AND date_day_1.year = 1991
AND date_day_1.month_number = 3
AND date_day_1.day_number = 15;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time = ( SELECT MAX( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEWARK' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES' AND flight_1.advance_purchase = 1 ) )
SELECT flight_id
FROM flight
WHERE departure_day = 'SUNDAY'
AND from_airport = 'MONTREAL'
AND to_airport = 'SAN DIEGO'
SELECT flight.flight_id, flight.flight_number, flight.arrival_time, flight.from_airport, flight.airline_flight, flight.stops, flight.flight_days, flight.connections, flight.arrival_time
FROM flight
WHERE flight.departure_date = '2023-10-27' AND flight.from_airport = 'SAN_DIEGO' AND flight.to_airport = 'INDIANA' AND flight.departure_time >= '17:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'INDIANAapolis'
AND airport_service_1.city_name = 'Toronto'
WHERE flight_1.flight_days = 1
SELECT flight_id
FROM flight
WHERE to_airport = 'TORONTO'
AND aircraft_code_sequence = '777'
AND flight_days = '2023-10-27'
AND ( flight_hours >= 7 AND flight_hours < 12 );
SELECT flight_id
FROM flight
WHERE from_airport = 'CINcinnati'
AND airline_code = 'AM'
AND arrival_time >= '1400'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 AND flight_1.departure_time > 800 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'KANSAS CITY'
AND flight_1.to_airport = 'CHICAGO'
AND flight_1.departure_time >= '2023-10-27'
AND flight_1.departure_time <= '2023-10-30'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'LONG BEACH' AND airport_2.city_name = 'ST. LOUIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
AND flight_stop_1.stop_airport = 'MEMPHIS'
AND flight_stop_2.stop_airport = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_time < 1200
AND flight_stop_2.arrival_time > 1800
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'US' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 22 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 )
SELECT EXISTS(SELECT 1 FROM taxi_service WHERE airport_code = 'ONTARIO' AND date >= '2023-07-20' AND time >= '18:00') AS has_taxi_service;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'TAMPA' AND airport_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'MILW'
AND airport_service_2.city_code = 'SEA'
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'LGD'
AND destination = 'SJO'
AND airline_code = 'UA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.flight_days = 'MONDAY' AND flight_1.from_airport = 'CHARLOTTE' AND flight_1.to_airport = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 2 AND flight_leg_1.month_number = 2 AND flight_leg_2.day_number = 2
SELECT flight_id
FROM flight
WHERE departure_day = 'THURSDAY'
AND flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE departure_day = 'THURSDAY'
    AND from_airport = 'ST. PAUL'
    AND to_airport = 'ST. LOUIS'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.arrival_airport
JOIN city city_1 ON city_1.city_name = airport_service_1.city_name
WHERE flight_1.from_airport = 'STL' AND flight_1.to_airport = 'CLT' AND flight_1.flight_days = 'friday'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
INNER JOIN airport airport_2 ON flight_stop_1.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOSTON'
AND airport_2.city_name = 'ORLANDO'
AND airport_1.state_code = 'MA'
AND airport_2.state_code = 'FL'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MAX(departure_time)
    FROM flight
    WHERE from_airport = 'BURBANK'
    AND to_airport = 'MILWAUKEE'
    AND day(departure_time) = day(NOW())
    AND week(departure_time) = week(NOW())
)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. LOUIS' AND( flight_1.flight_days = '2023-10-27' AND flight_1.arrival_time >= 2300 AND flight_1.arrival_time <= 0000 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time = '2023-10-27 18:00:00'
AND flight_leg_2.departure_time = '2023-10-27 16:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time = 'TUESDAY' AND flight_1.from_airport = 'STL' AND flight_1.to_airport = 'BUR'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '00:00:00' AND '18:00:00' AND arrival_time < '18:00:00' AND (
    (flight.from_airport = 'SLC' AND flight.arrival_airport = 'ARK' AND flight.flight_days = '6' AND flight.arrival_time BETWEEN '17:00:00' AND '18:00:00')
    OR (flight.from_airport = 'SLC' AND flight.arrival_airport = 'ORD' AND flight.flight_days = '6' AND flight.arrival_time BETWEEN '15:00:00' AND '18:00:00')
)
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'CINcinnati'
AND flight_1.to_airport = 'Newark Airport'
AND flight_1.arrival_time < '21:00'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time >= '17:00:00' AND flight_leg_1.arrival_time <= '18:00:00'
AND flight_leg_2.arrival_time >= '17:00:00' AND flight_leg_2.arrival_time <= '18:00:00'
AND flight_1.airline_code = 'AA'
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
WHERE flight_1.flight_days = days_1.days_code
AND days_1.day_name = date_day_1.day_name
AND date_day_1.year = 1991
AND city_1.city_name = 'MEMPHIS'
AND city_2.city_name = 'TACOMA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'CINcinnati'
AND flight_1.departure_time >= '18:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'SJC' AND flight_leg_2.to_airport = 'HOU'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_1.stop_number = flight_stop_2.stop_number
WHERE flight_1.from_airport = 'HOUSTON' AND flight_1.to_airport = 'MEMPHIS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CINcinnati' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 2 )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'NEWARK' AND airport_2.city_name = 'NASHVILLE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1
ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1
ON flight_leg_1.from_airport = airport_service_1.airport_code
INNER JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
INNER JOIN airport airport_service_2
ON flight_leg_1.to_airport = airport_service_2.airport_code
INNER JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'ONTARIO'
AND flight_1.to_airport = 'WESTCHESTER'
AND flight_leg_1.stop_days = 1
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
WHERE city_1.city_name = 'LOS ANGELES' AND city_2.city_name = 'CHARLOTTE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'AA' AND flight_stop_2.arrival_airline = 'UA' AND flight_stop_1.stop_days >= 1;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'NEWARK' AND airport_2.city_name = 'LOS ANGELES'
SELECT DISTINCT flight_id
FROM flight
WHERE airline_code = 'AA'
AND from_airport = 'CINcinnati'
AND to_airport = 'BURBANK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHICAGO' AND flight_1.flight_days = 'DAILY' AND ( flight_1.airline_code = 'KB' OR flight_1.airline_code = 'KF' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.arrival_time >= '2023-06-17 12:00:00'
AND flight_stop_2.stop_days = 1
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHICAGO' AND flight_1.flight_days = '2023-06-16' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN city city_1 ON airport_1.airport_code = city_1.city_code
WHERE flight_1.from_airport = 'CHICAGO'
AND flight_1.to_airport = 'KANSAS CITY'
AND date(flight_leg_1.leg_date) = '2023-06-17'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'BURBANK' AND airport_service_2.city_code = 'MILWAUKEE'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 14:00:00' AND '2023-10-27 18:00:00' AND saturday_stay_required = 1
AND flight_id NOT IN (
    SELECT flight_id
    FROM flight
    WHERE departure_time BETWEEN '2023-10-27 00:00:00' AND '2023-10-27 12:00:00'
    AND from_airport = 'CINcinnati' AND to_airport = 'NEW YORK'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
INNER JOIN flight flight_2 ON flight_2.flight_id = flight_stop_2.to_flight_id
WHERE flight_2.arrival_time <= 1800
AND flight_stop_1.stop_days = 6
AND flight_stop_2.arrival_time < 1800
SELECT flight_id
FROM flight
WHERE airline_code = 'AA'
AND arrival_time >= '17:00:00'
AND from_airport = 'MIA'
AND to_airport = 'ORD'
SELECT flight_id
FROM flight
WHERE departure_time >= '2023-10-27' AND departure_time <= '2023-10-30' AND from_airport = 'KCSA' AND to_airport = 'CHI'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.arrival_airport_code = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_leg_2.departure_airport_code = airport_service_2.airport_code
WHERE flight_1.from_airport = 'KC' AND flight_1.to_airport = 'CHI' AND flight_1.flight_days = 'WEDNESDAY' AND flight_1.arrival_time = '2023-05-26 19:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
INNER JOIN airport airport_service_2 ON flight_stop_1.departure_airport = airport_service_2.airport_code
INNER JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
INNER JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'MEMPHIS'
AND airport_service_2.city_code = 'TACOMA'
AND flight_1.stop_days = 1
AND flight_1.arrival_time BETWEEN '09:00:00' AND '17:00:00'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_1.flight_id = flight_leg_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_day = days_1.days_code
WHERE days_1.day_name = 'MONDAY' AND flight_leg_1.leg_flight = 1
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_stop_2.flight_id
WHERE flight_1.from_airport = 'PHOENIX' AND flight_1.arrival_time = 'MONDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_1.stop_airport = flight_stop_2.stop_airport
WHERE flight_1.from_airport = 'DETROIT'
AND flight_1.arrival_time = 'TUESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_leg_2.flight_id
WHERE flight_2.from_airport = 'CINcinnati' AND flight_2.arrival_time = 'MONDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'WEDNESDAY'
AND flight_leg_2.day_name = 'HOUSTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'HOUSTON'
AND flight_1.to_airport = 'MEMPHIS'
AND flight_1.flight_days = 'FRIDAY'
SELECT flight_id
FROM flight
WHERE flight_days = 1
AND arrival_time >= '2023-10-27 10:00:00'
AND from_airport = 'MEMPH'
AND to_airport = 'CINcinnati'
AND saturday_stay_required = 1;
SELECT flight_id
FROM flight
WHERE airline_flight = 'AMERICAN' AND departure_time BETWEEN '2023-10-27 18:30:00' AND '2023-10-27 21:00:00'
SELECT *
FROM flight
WHERE departure_time BETWEEN '2023-06-10 00:00:00' AND '2023-06-10 23:59:59';
SELECT flight_fare.flight_id
FROM flight_fare
JOIN fare fare_1
ON fare_1.fare_id = flight_fare.fare_id
JOIN flight flight_1
ON flight_1.flight_id = fare_1.flight_id
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = fare_1.from_airport
JOIN city city_1
ON city_1.city_code = airport_service_1.city_code
WHERE city_1.city_name = 'BURBANK'
AND city_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BURBANK' AND airport_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'MILWAUKEE' AND airport_2.city_name = 'ST. LOUIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_service_2 ON flight_leg_1.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'ST. LOUIS' AND city_2.city_name = 'BURBANK'
SELECT DISTINCT airline.airline_name
FROM flight flight
JOIN airline airline_1
ON flight.airline_code = airline_1.airline_code
JOIN airport airport_1
ON flight.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight.to_airport = airport_2.airport_code
WHERE (
    (flight.from_airport = 'BURBANK' AND flight.to_airport = 'MILWAUKEE' AND flight.airline_code = 'MILW')
    OR (flight.from_airport = 'MILWAUKEE' AND flight.to_airport = 'ST. LOUIS' AND flight.airline_code = 'STL')
    OR (flight.from_airport = 'ST. LOUIS' AND flight.to_airport = 'BURBANK' AND flight.airline_code = 'MILW')
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
INNER JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
INNER JOIN airport airport_service_2 ON airport_service_1.city_code = airport_service_2.city_code
INNER JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
INNER JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'BURBANK'
AND flight_1.to_airport = 'MILWAUKEE'
AND flight_stop_1.stop_airport = 'STL'
SELECT flight_1.flight_id, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.flight_days
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2 AND flight_stop_2.stop_days = 1
SELECT flight_id, fare_id, from_airport, to_airport, flight_days, connections
FROM flight_fare
WHERE to_airport = 'SLC' AND from_airport = 'WCS'
SELECT DISTINCT airport_code FROM airport WHERE airport_location LIKE '%WESTCHESTER COUNTY%'
SELECT flight_id
FROM flight
WHERE to_airport = 'JFK'
AND departure_time BETWEEN '2023-10-27 18:00:00' AND '2023-10-27 22:00:00'
AND airline_code = 'UA'
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport
WHERE airport_location LIKE '%New% York%'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.city_code
JOIN date_day date_day_1 ON flight_stop_1.arrival_date = date_day_1.day_number
WHERE date_day_1.day_name = 'Saturday'
AND flight_stop_1.arrival_time <= 1800
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_2
ON flight_stop_1.stop_number = flight_stop_2.stop_number
WHERE flight_1.to_airport IN (
    SELECT DISTINCT airport_code
    FROM airport
    WHERE city_name = 'NEW YORK CITY'
)
SELECT flight_id
FROM flight
WHERE airline_code = 'AA' AND from_airport = 'MIA' AND to_airport = 'CHI'
SELECT flight_id, fare_id, from_airport, to_airport, fare_basis_code, round_trip_cost
FROM flight_fare
WHERE from_airport = 'KCSA' AND to_airport = 'CHI'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.airport_code
JOIN city city_2 ON flight_stop_1.departure_airport = city_2.airport_code
WHERE flight_1.departure_time BETWEEN 0 AND 1200
AND (flight_1.from_airport = 'MEMPHIS' AND city_1.city_name = 'MEMPHIS')
AND (flight_1.to_airport = 'TACOMA' AND city_2.city_name = 'TACOMA');
