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
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.departure_time >= '2023-10-27 06:00:00' AND flight_leg_2.arrival_time <= '2023-10-27 12:00:00'
SELECT DISTINCT airport_service.transport_type, airport_service.city_code
FROM airport_service
WHERE airport_service.city_code = 'DENVER'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 2 AND flight_leg_1.time_elapsed >= '09:00:00' AND flight_leg_2.day_number = 2 AND flight_leg_2.time_elapsed < '12:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON' AND(( flight_1.departure_time BETWEEN 0 AND 800 AND 1 = 1 ) AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 ) ) ) OR( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND(( flight_1.departure_time >= 2000 AND flight_1.departure_time <= 2200 ) AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 ) ) )
SELECT flight_id
FROM flight
WHERE departure_time >= '1700' AND departure_time <= '1900' AND from_airport = 'STL' AND to_airport = 'MIL' AND day_name = 'WEDNESDAY' AND month_number = 4;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'WA' AND flight_1.to_airport = 'SE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'ATL' AND airport_service_2.city_code = 'SEA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.stop_airport
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND city_1.city_name = 'SAN DIEGO'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'SEA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'DENVER'
AND flight_1.departure_time BETWEEN 0 AND 1200
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'LGA' AND( flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN JOSE' AND flight_1.arrival_time = 2200 )
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_stop flight_stop_1 , airport_service airport_service_3 , city city_3 WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'DENVER' )
SELECT DISTINCT flight_1.flight_id, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN '2023-10-27' AND '2023-10-30'
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
INNER JOIN date_day date_day ON flight_stop_1.stop_date = date_day.day_number
INNER JOIN date_day date_day_2 ON flight_stop_2.stop_date = date_day_2.day_number
WHERE date_day.day_name = 'saturday'
AND flight_stop_1.arrival_flight_number = 12345
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 , food_service food_service_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SEATTLE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHICAGO' AND(( flight_1.airline_code = 'CO' AND 1 = 1 ) AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND flight_1.meal_code = food_service_1.meal_code AND 1 = 1 ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.airport_code
JOIN city city_2 ON flight_stop_2.departure_airport = city_2.airport_code
WHERE city_1.city_name = 'BOSTON' AND city_2.city_name = 'WASHINGTON' AND flight_stop_1.stop_days = 1 AND flight_stop_2.stop_days = 1 AND flight_stop_1.arrival_time >= '2023-07-07 16:00:00' AND flight_stop_2.departure_time <= '2023-07-07 17:00:00'
SELECT flight_id, airline_flight, flight_days, connections, arrival_time, time_elapsed
FROM flight
WHERE from_airport = 'CLEVELAND'
AND to_airport = 'DALLAS'
AND departure_time < 1200;
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'WA' AND fare.to_airport = 'BO'
SELECT flight_fare.flight_id
FROM flight_fare
WHERE flight_fare.from_airport = 'WA' AND flight_fare.to_airport = 'BOS' AND flight_fare.saturday_stay_required = 'YES'
SELECT fare.fare_id, fare.round_trip_cost, fare.fair_basis_code
FROM fare
JOIN flight_fare flight_fare ON fare.to_airport = flight_fare.from_airport
JOIN flight flight ON flight_fare.flight_id = flight.flight_id
JOIN airport_service airport_service ON flight.from_airport = airport_service.airport_code
JOIN city city ON airport_service.city_code = city.city_code
WHERE city.city_name = 'WASHINGTON' AND city.city_name = 'MONTREAL'
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'WA' AND fare.to_airport = 'MTL' AND fare.day_name = 'SATURDAY'
SELECT flight_fare.fare_id, flight_fare.round_trip_cost, flight_fare.fair_basis_code
FROM flight_fare
WHERE flight_fare.from_airport = 'WA' AND flight_fare.to_airport = 'TO' AND flight_fare.saturday_stay_required = 1;
SELECT fare.fare_basis_code, fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'WA' AND fare.to_airport = 'TO' AND fare.date = '2023-10-27'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_day = 'SATURDAY' AND flight_stop_2.stop_day = 'SATURDAY' AND flight_stop_1.stop_airport = 'WAI' AND flight_stop_2.stop_airport = 'BOS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_day = 'SATURDAY' AND flight_stop_2.stop_day = 'SATURDAY' AND flight_stop_1.arrival_airline = 'XYZ' AND flight_stop_2.arrival_airline = 'ABC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1
ON flight_1.flight_id = flight_leg_1.leg_flight
JOIN airport airport_1
ON flight_leg_1.from_airport = airport_1.airport_code
JOIN days days_1
ON flight_leg_1.leg_day = days_1.days_code
WHERE flight_1.from_airport = 'MILW' AND flight_1.to_airport = 'DTW' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = 'FRIDAY' )
SELECT DISTINCT flight_1.departure_time , flight_1.arrival_time FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DETROIT'
SELECT DISTINCT flight_1.flight_id, flight_1.arrival_time
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.departure_airline = 'Delta' AND flight_stop_2.arrival_airline = 'Toronto'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'TORONTO' AND airport_2.city_name = 'MILWAUKEE'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'OAKLAND' AND airport_2.city_name = 'SALT LAKE CITY' AND flight_leg_1.day_name = 'THURSDAY'
SELECT flight_id
FROM flight
WHERE to_airport = 'OAKLAND'
AND arrival_time = (
    SELECT max(arrival_time)
    FROM flight
    WHERE to_airport = 'OAKLAND'
    AND day_name = 'WEDNESDAY'
);
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_day = days_1.days_code
WHERE days_1.day_name = 'WEDNESDAY' AND flight_leg_1.leg_flight = 1;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.city_code
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.arrival_airport
INNER JOIN city city_2 ON airport_service_1.departure_airport = city_2.city_code
WHERE city_1.city_name = 'TORONTO' AND city_2.city_name = 'SAN DIEGO' AND flight_stop_1.stop_days = 1;
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
AND from_airport = 'MILWAUKEE'
AND aircraft_code_sequence = '767';
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '08:00:00' AND '08:59:00'
AND from_airport = 'MILWAUKEE'
SELECT DISTINCT airport_code, transport_type, city_code
FROM ground_service
WHERE airport_code = 'INDIANA'
SELECT * FROM flight
WHERE departure_time = '2023-10-27 12:00:00' AND from_airport = 'IND' AND to_airport = 'CLE'
SELECT *
FROM flight
WHERE departure_time >= '2023-08-20 18:00:00'
AND from_airport = 'CLEVELAND'
AND aircraft_code_sequence = '9V7'
SELECT * FROM flight_fare flight_fare
WHERE departure_airport = 'CLEVELAND'
AND flight_days BETWEEN 20231027 AND 20231028
AND flight_time >= 1900
SELECT flight_id, flight_number, airline_flight, airline_code, from_airport, to_airport, arrival_time, time_elapsed, flight_days
FROM flight
WHERE departure_time >= 1800 AND departure_time < 2300 AND from_airport = 'CLEVELAND' AND to_airport = 'MILWAUKEE' AND day = 'WEDNESDAY'
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
SELECT flight_1.flight_id, airline_1.airline_name, flight_1.from_airport, flight_1.to_airport, flight_1.flight_days, flight_1.arrival_time
FROM flight flight_1
INNER JOIN airline airline_1
ON flight_1.airline_code = airline_1.airline_code
WHERE flight_1.from_airport = 'DENVER'
AND flight_1.to_airport = 'SLC'
AND flight_1.departure_time >= '19:00'
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport_service.direction, airport_service.city_code, airport_service.miles_distant
FROM airport_service
WHERE airport_service.airport_code = 'SLC'
SELECT flight_id
FROM flight
WHERE departure_time >= '2023-10-27 19:00:00'
AND from_airport = 'SLC'
AND airline_flight = 'DL'
SELECT DISTINCT airport_service.airport_name, airport_service.city_code
FROM airport_service
WHERE airport_service.direction = 'Ground Transportation' AND airport_service.airport_code = 'PHX'
SELECT flight_id
FROM flight
WHERE departure_time >= 1800
AND from_airport = 'OAKL'
AND to_airport = 'SLC'
SELECT flight_1.flight_id, fare_1.fare_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE flight_1.departure_time < '09:00' AND flight_1.from_airport = 'OAKLAND' AND fare_1.round_trip_required = 'true'
SELECT flight_id, fare_id, from_airport, to_airport, flight_days, connections, arrival_time, time_elapsed
FROM flight
WHERE departure_time BETWEEN '2023-10-27 08:00:00' AND '2023-10-27 08:00:00' AND from_airport = 'OAKLAND' AND to_airport = 'SLC'
SELECT DISTINCT flight_1.flight_id, flight_1.airline_code
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.stop_airport = airport_1.airport_code
JOIN city city_1 ON airport_1.city_code = city_1.city_code
WHERE flight_1.departure_time < '08:00:00' AND flight_1.from_airport = 'OAKL'
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time < '08:00:00' AND flight_1.from_airport = 'OAKLAND' AND flight_1.to_airport = 'SALT LAKE CITY'
SELECT DISTINCT airport_1.airport_name, airport_1.airport_location
FROM airport airport_1
JOIN airport_service airport_service_1 ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name IN ('ARIZONA', 'CALIFORNIA');
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE state_code IN ('CA', 'NV', 'AZ');
SELECT DISTINCT airport_code FROM airport;
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport
WHERE state_code = 'CA';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days >= 2 AND flight_stop_2.stop_days >= 2
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHARLOTTE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE'
SELECT DISTINCT airport_service.airport_name, airport_service.airport_location
FROM airport_service
ORDER BY airport_name;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'WEDNESDAY'
AND flight_leg_1.arrival_time BETWEEN '19:00:00' AND '23:00:00'
AND flight_leg_2.arrival_time BETWEEN '19:00:00' AND '23:00:00'
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
WHERE flight_leg_1.from_airport = 'CLEVELAND' AND flight_leg_2.to_airport = 'DALAS'
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time < 1200
AND from_airport = 'CLEVELAND'
AND to_airport = 'DALLAS'
SELECT DISTINCT aircraft.aircraft_code, aircraft.wing_span
FROM aircraft
WHERE aircraft.departure_time < 1200
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_stop_2.flight_id
WHERE flight_1.from_airport = 'MEMPHIS'
AND flight_2.to_airport = 'SEAATTLE'
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
WHERE airport_1.city_name = ' nashville' AND airport_2.city_name = 'seattle'
SELECT flight_1.flight_id, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time, flight_1.flight_days, flight_1.connections, flight_1.arrival_delay
FROM flight flight_1
WHERE flight_1.from_airport = 'MILWAUKEE' AND flight_1.to_airport = 'TAMPA'
SELECT * FROM equipment_sequence
WHERE aircraft_code = 'UAL'
AND airport_code = 'TAMPA'
AND transport_type = 'RENTAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN day day_1 ON flight_leg_1.leg_flight = day_1.days_code
WHERE day_1.day_name = 'SATURDAY'
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
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'TORONTO' AND airport_2.city_name = 'SAN DIEGO'
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
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'CAL' AND flight_stop_2.arrival_airline = 'SAN'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CLEVELAND' AND flight_1.arrival_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
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
SELECT code_description FROM fare_basis WHERE code = 'Qo'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'MILWAUKEE'
AND airport_service_2.city_code = 'ORLANDO'
SELECT code_description.description FROM code_description
WHERE code_description.code = 'US';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 )
SELECT fare_basis_code FROM fare_basis fare_basis_1
WHERE fare_basis_code IN ('F','C')
SELECT fare_basis.fare_basis_code FROM fare_basis
WHERE fare_basis.fare_basis_code = 'H'
SELECT DISTINCT flight_1.departure_time , flight_1.arrival_time FROM flight flight_1 , flight_leg flight_leg_1 , flight flight_2 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_leg_1.leg_flight AND flight_leg_1.flight_id = flight_2.flight_id AND flight_2.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_2.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT * FROM fare_basis fare_basis_1
WHERE restriction_code = 'AP/57'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.arrival_airport
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.airline_code = 'AA'
AND flight_1.from_airport = 'INDIANAapolis'
AND flight_1.departure_time < '10:00:00'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_1.flight_id = flight_fare_1.flight_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_fare_1.one_direction_cost = 'NO'
AND flight_fare_1.arrival_time < '19:00:00'
AND city_1.city_name = 'SEATTLE'
SELECT DISTINCT flight.flight_number, flight.arrival_time, flight.from_airport, flight.airline_flight, flight.to_airport
FROM flight
JOIN flight_leg flight_leg
ON flight.flight_id = flight_leg.flight_id
JOIN flight_stop flight_stop
ON flight_leg.stop_number = flight_stop.stop_number
JOIN airport airport
ON flight_stop.arrival_airport = airport.airport_code
WHERE flight.from_airport = 'ORL' AND flight.to_airport = 'MTL'
SELECT DISTINCT flight_1.departure_time FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'CO' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'MONTREAL'
AND flight_1.to_airport = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.stop_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_stop_2.stop_airport
WHERE airport_service_1.city_name = 'ORLANDO' AND airport_service_2.city_name = 'MONTREAL'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 20 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare fare_1 ON flight_1.flight_id = fare_1.flight_id
JOIN fare fare_2 ON fare_1.fare_id = fare_2.fare_id
WHERE fare_2.to_airport = 'MIA' AND fare_2.class_type = 'BUSINESS'
SELECT fare_basis_code FROM fare_basis WHERE code = 'BH';
SELECT DISTINCT flight_id FROM flight flight_id
WHERE to_airport = 'MIA' AND arrival_time >= '2023-10-27 19:00:00' AND arrival_time <= '2023-10-27 20:00:00'
SELECT code_description FROM fare_basis WHERE code = 'BH' ;
SELECT fare_basis.description
FROM fare_basis
WHERE fare_basis_code = 'BH'
SELECT fare_basis.fare_basis_code FROM fare_basis
WHERE fare_basis.fare_basis_code = 'BH';
SELECT fare_basis.fare_basis_code FROM fare_basis
WHERE fare_basis.fare_basis_code = 'BH'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time >= '19:00:00' AND flight_leg_1.arrival_time < '23:00:00' AND flight_leg_2.day_name = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'INDIANAPOLIS' AND airport_2.city_name = 'MEMPHIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BURBANK'
AND flight_leg_2.to_airport = 'SEA'
AND flight_leg_1.fare = 415;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'ORLANDO' AND airport_service_2.city_name = 'MONTREAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'MONTREAL' AND flight_leg_2.to_airport = 'ORLANDO' AND flight_leg_1.leg_number = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'MONTREAL' AND flight_leg_2.to_airport = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'MONTREAL' AND flight_leg_2.to_airport = 'ORLANDO'
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
ORDER BY fare_1.round_trip_cost ASC;
SELECT flight_id
FROM flight
WHERE from_airport = 'KC'
AND destination = 'LAS'
AND fare_basis_code = 'economy'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN fare_basis fare_basis_1
ON fare_1.fare_basis_code = fare_basis_1.code
WHERE fare_basis_1.basis_days >= 5
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PETERSBURG' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHARLOTTE'
SELECT flight_id, airport_code, transport_type, city_code, ground_fare
FROM ground_service
WHERE airport_code IN (
    SELECT airport_code
    FROM airport
    WHERE city_name = 'LAS VEGAS'
)
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , city city_1 WHERE ground_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAS VEGAS'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
WHERE fare_1.fare_basis_code = 'economy'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN flight_leg flight_leg_1
ON fare_1.flight_id = flight_leg_1.flight_id
JOIN compartment_class compartment_class_1
ON flight_leg_1.compartment_class = compartment_class_1.compartment
WHERE flight_1.from_airport = 'LAS VEGAS'
AND flight_1.to_airport = 'BALtimore'
AND compartment_class_1.class_type = 'economy'
SELECT flight_id, fare_id, from_airport, to_airport, fare_basis_code
FROM flight_fare
WHERE destination_city = 'BALtimore' AND origin_city = 'KANSAS CITY' AND class_type = 'economy'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 30 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TACOMA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TORONTO'
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , airport airport_1 , airport_service airport_service_1 , city city_1 , city city_2 WHERE ground_service_1.airport_code = airport_1.airport_code AND airport_1.airport_code = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND ground_service_1.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time < 1000 AND flight_1.from_airport = 'COLumbus' AND flight_1.to_airport = 'CHICAGO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PAUL' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN JOSE' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_cost IS NOT NULL AND 1 = 1 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
AND flight_stop_1.stop_airport = 'STL'
AND flight_stop_2.stop_airport = 'DET'
SELECT * FROM flight_leg
WHERE flight_id IN (
    SELECT flight_id FROM flight
    WHERE from_airport = 'MILWAUKEE'
    AND to_airport = 'ORLANDO'
    AND day_name = 'WEDNESDAY'
    AND time_elapsed >= 1800
)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN '00:00:00' AND '10:00:00' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 28 ) )
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.round_trip_required = 'NO' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' ) AND fare_1.round_trip_required = 'NO' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
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
WHERE city_1.city_name = 'SAN JOSE' AND city_2.city_name = 'PHOENIX'
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
JOIN airport airport_service_2
ON flight_leg_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'PHOENIX'
AND airport_service_2.city_code = 'FORT WORTH'
SELECT DISTINCT ground_service.transport_type, airport_service.airport_code, airport_service.city_code
FROM ground_service
INNER JOIN airport_service
ON ground_service.airport_code = airport_service.airport_code
WHERE airport_service.city_code = 'FWP'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'FORT WORTH' AND airport_2.city_name = 'SAN JOSE'
SELECT flight_id
FROM flight
WHERE airline_flight = 'NYO'
AND from_airport = 'JFK'
AND class_of_service = 'FIRST'
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
JOIN flight_fare fare_1 ON flight_1.flight_id = fare_1.flight_id
JOIN fare fare_2 ON fare_1.fare_id = fare_2.fare_id
WHERE fare_2.round_trip_required = 1
AND fare_2.from_airport = 'MIA'
AND fare_2.to_airport = 'NYC'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'INDIANAPOLIS'
AND airport_service_2.city_name = 'MEMPHIS'
AND flight_leg_1.departure_time < '10:00:00'
SELECT code_description FROM fare_basis WHERE code = 'F';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BURBANK' AND flight_leg_2.to_airport = 'TACOMA'
SELECT code_description
FROM code_description
WHERE code = 'AP58';
SELECT fare_basis.description
FROM fare_basis
WHERE fare_basis_code = 'H'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'MKE'
SELECT airline.airline_name
FROM airline
JOIN flight flight ON airline.airline_code = flight.airline_code
WHERE flight.airline_name LIKE 's%';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'STL' AND flight_leg_2.to_airport = 'TORONTO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_1.flight_id = flight_leg_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_1.leg_number = flight_leg_2.leg_number
WHERE flight_leg_1.arrival_airline = 'AIR' AND flight_leg_2.arrival_airline = 'PSA' AND flight_leg_1.arrival_time >= 1200
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_1.flight_id = flight_leg_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_1.leg_number = flight_leg_2.leg_number
WHERE flight_leg_1.arrival_airport = 'YYZ'
AND flight_leg_2.arrival_airport = 'STL'
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
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.airport_code
JOIN city city_2 ON flight_stop_2.departure_airport = city_2.airport_code
WHERE city_1.city_name = 'CHICAGO' AND city_2.city_name = 'SAN DIEGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'KCY' AND flight_leg_2.to_airport = 'DEN'
SELECT DISTINCT flight_id
FROM flight
WHERE departure_airport = 'DENVER'
AND arrival_airport = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON airport_service_1.airport_code = airport_service_2.airport_code
WHERE airport_service_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAS VEGAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN DIEGO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 24 )
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
AND flight_leg_2.to_airport = 'SAN JOSE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.stop_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_1.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'HOUSTON' AND airport_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_leg_2.to_flight
WHERE flight_2.flight_day = 'WEDNESDAY'
SELECT DISTINCT flight_id
FROM flight
WHERE flight_day = 'FRIDAY' AND flight_stop IN (
    SELECT stop_number
    FROM flight_stop
    WHERE stop_day = 'FRIDAY'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON'
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport.city_name
FROM airport_service
JOIN airport ON airport_service.airport_code = airport.airport_code
WHERE airport.city_name = 'NEW YORK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.stops = 0 AND( flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' AND( flight_1.arrival_time >= 1645 AND flight_1.arrival_time <= 1715 ) ) ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NASHVILLE' )
SELECT DISTINCT airport_code FROM airport WHERE airport_location LIKE '%LA%' OR airport_name LIKE '%LA%';
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport;
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE airport_location LIKE '%LA%'
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE city_name = 'LA';
SELECT DISTINCT airport_code, airport_name
FROM airport
WHERE airport_location LIKE '%LA%'
SELECT DISTINCT flight_1.flight_id, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time, flight_1.duration, flight_1.airline_flight, airline_code, flight_1.meal_code
FROM flight_leg flight_leg
JOIN flight flight_1 ON flight_leg.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_leg.to_airport = airport_service_2.airport_code
SELECT DISTINCT flight_1.flight_id, flight_1.from_airport, flight_1.to_airport, flight_1.flight_days, flight_1.arrival_time, flight_1.time_elapsed
FROM flight_stop flight_stop_1
INNER JOIN flight flight_1
ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1
ON flight_stop_1.stop_airport = airport_service_1.airport_code
INNER JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'LA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'NEW YORK'
AND airport_1.city_name = 'LOS ANGELES'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAGUNA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BURBANK' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 15 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_airport = 'LAX'
AND flight_stop_2.stop_airport = 'ORD'
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
SELECT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE fare_1.from_airport = 'IND'
AND fare_1.to_airport = 'MEM'
AND fare_1.departure_time = '2023-11-20 10:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 1 AND flight_leg_2.day_number = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE flight_1.from_airport = 'MEMPH' AND flight_1.to_airport = 'MIAMI' AND flight_leg_1.day_name = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.city_name
JOIN city city_2 ON flight_stop_2.departure_airport = city_2.city_name
WHERE flight_stop_1.stop_day = 'SUNDAY' AND city_1.city_name = 'MIA' AND city_2.city_name = 'INDIANAAPOLIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_2.stop_days = 6 AND flight_stop_2.stop_time BETWEEN 1800 AND 2000
SELECT DISTINCT aircraft.aircraft_code, aircraft.aircraft_description
FROM flight flight
INNER JOIN aircraft aircraft ON flight.aircraft_code = aircraft.aircraft_code
WHERE flight.from_airport = 'CLT'
SELECT fare_basis.fare_basis_code
FROM fare_basis
WHERE fare_basis.fare_basis_code = 'Q';
SELECT flight_id
FROM flight
WHERE flight_id IN (
    SELECT flight_id
    FROM flight_fare
    WHERE fare_basis_code = 'Q'
    AND arrival_day = 'SATURDAY'
);
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.flight_id = flight_fare.flight_id
WHERE fare.from_airport = 'DETROIT' AND fare.to_airport = 'ST. PETERSBURG' AND fare.class_type = 'FIRST CLASS'
SELECT fare.to_airport, fare.restriction_code, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.flight_id = flight_fare.flight_id
WHERE fare.from_airport = 'DETROIT' AND fare.to_airport = 'ST. PETERSBURG' AND fare.round_trip_required = 1;
SELECT DISTINCT flight_1.flight_id
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
WHERE flight_leg_1.arrival_time < '09:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'CINcinnati' AND airport_2.city_name = 'TAMPA' AND flight_1.departure_time < 1200;
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
JOIN flight flight ON airline.airline_code = flight.airline_flight
WHERE flight.from_airport = 'SEA' AND flight.to_airport = 'SLC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.airline_code = 'DAL' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SEATTLE'
AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY'
SELECT flight_id, aircraft_code, capacity
FROM flight_leg
WHERE flight_id IN (
  SELECT flight_id
  FROM flight
  WHERE airline_code = 'DAL'
  AND from_airport = 'SEA'
  AND to_airport = 'SLC'
)
SELECT DISTINCT flight_1.flight_id, aircraft.aircraft_code, aircraft.aircraft_description
FROM flight flight_1
INNER JOIN aircraft aircraft ON flight_1.aircraft_code = aircraft.aircraft_code
WHERE flight_1.departure_time = (
    SELECT MIN( flight_1.departure_time )
    FROM flight flight_1
    INNER JOIN aircraft aircraft ON flight_1.aircraft_code = aircraft.aircraft_code
    WHERE flight_1.from_airport = 'SEA' AND aircraft.aircraft_type = '737'
);
SELECT DISTINCT airport_service.airport_code, airport_service.direction, airport_service.city_code, airport_service.minutes_distant
FROM airport_service
WHERE airport_service.city_code = 'BALTIMORE'
SELECT DISTINCT airport_service.airport_code, airport_service.city_code, transport_type, minutes_distant
FROM airport_service
WHERE airport_service.city_code = 'BALtimore'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'FRIDAY'
AND flight_leg_2.arrival_time >= DATE_ADD(flight_leg_1.arrival_time, INTERVAL 9 HOUR)
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE flight_1.departure_date = '1991-10-27'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time = '2023-10-27 19:00:00'
AND flight_leg_2.arrival_time = '2023-10-27 22:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare fare_1 ON flight_1.flight_id = fare_1.flight_id
JOIN flight flight_2 ON fare_1.round_trip_cost = fare_2.round_trip_cost
WHERE flight_1.from_airport = 'CLEVELAND'
AND flight_2.to_airport = 'MIAMI'
AND flight_1.flight_days = '2023-10-27'
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'CLEVELAND'
  AND fare.to_airport = 'MIA'
  AND fare.round_trip_required = 'YES'
  AND fare.departure_time >= '2023-10-27'
  AND fare.departure_time < '2023-10-30'
SELECT *
FROM flight
WHERE departure_time BETWEEN '2023-10-27 12:00:00' AND '2023-10-27 18:00:00' AND from_airport = 'MIA' AND to_airport = 'CLE'
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.to_airport = 'MIA'
AND fare.departure_time = DATE_ADD(day, 1, DATE('2023-10-27'))
AND fare.from_airport = 'CLE'
AND fare.round_trip_required = 1
SELECT flight_id
FROM flight
WHERE departure_day = 'SATURDAY' OR departure_day = 'SUNDAY'
AND airline_code = 'AMERICAN'
AND ( flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE departure_day = 'SATURDAY'
    AND airline_code = 'AMERICAN'
)
OR flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE departure_day = 'SUNDAY'
    AND airline_code = 'AMERICAN'
)
SELECT flight_id
FROM flight
WHERE flight_day = 'WED' AND flight_time >= '19:00:00' AND airline_code = 'PHX' AND flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE flight_day = 'WED' AND flight_time >= '19:00:00' AND airline_code = 'PHX'
    AND stop_days = 1
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE flight_1.airline_code = 'AA' AND flight_1.flight_days = 'WED' AND flight_1.from_airport = 'PHOENIX' AND flight_1.to_airport = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PHOENIX' AND airport_2.city_name = 'MILWAUKEE' AND airline_code = 'AA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_airport = 'PHOENIX'
AND flight_stop_2.stop_airport = 'MILWAUKEE'
SELECT flight_id, meal_code
FROM flight
WHERE departure_time BETWEEN '06:00:00' AND '09:00:00' AND from_airport = 'CHICAGO' AND meal_code IS NOT NULL;
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time BETWEEN '08:00:00' AND '12:00:00' AND meal_code IS NOT NULL
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1 ON fare_1.fare_id = flight_fare_1.fare_id
JOIN food_service food_service_1 ON food_service_1.meal_code = fare_1.meal_code
WHERE flight_1.from_airport = 'SEA' AND flight_1.to_airport = 'CHI' AND food_service_1.meal_description = 'Continental'
SELECT flight_id, fare_basis_code, meal_code
FROM flight
JOIN flight_fare fare ON fare.flight_id = flight.flight_id
JOIN food_service food ON fare.meal_code = food.meal_code
WHERE flight.from_airport = 'SEA' AND flight.arrival_time >= '2023-06-01 09:00:00' AND food.meal_code IS NOT NULL
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN food_service food_service_1 ON food_service_1.meal_code = flight_stop_1.meal_code
WHERE flight_stop_1.stop_days = 'SATURDAY'
AND flight_stop_1.arrival_time BETWEEN 0600 AND 0900
AND flight_1.airline_code = 'CO'
SELECT DISTINCT flight_1.flight_id, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time, meal_code
FROM flight_fare flight_fare_1
INNER JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_1
ON flight_fare_1.flight_id = flight_stop_1.flight_id
INNER JOIN city city_1
ON flight_stop_1.stop_airport = city_1.city_name
INNER JOIN city city_2
ON flight_stop_1.arrival_airport = city_2.city_name
WHERE flight_fare_1.meal_code IS NOT NULL
AND flight_fare_1.departure_time BETWEEN '06:00:00' AND '09:00:00'
AND city_1.city_name = 'CHICAGO'
AND city_2.city_name = 'SEATTLE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
INNER JOIN food_service food_service_1 ON food_service_1.meal_code = flight_stop_1.meal_code
INNER JOIN food_service food_service_2 ON food_service_2.meal_code = flight_stop_2.meal_code
WHERE flight_stop_1.stop_day = 'SATURDAY' AND flight_stop_1.stop_time BETWEEN '08:00:00' AND '12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_stop_2.flight_id
JOIN food_service food_service ON food_service.meal_code = flight_2.meal_code
WHERE flight_2.arrival_time BETWEEN '08:00:00' AND '12:00:00'
AND food_service.meal_description = 'CHICAGO' AND flight_2.from_airport = 'MKE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN food_service food_service_1 ON food_service_1.meal_code = flight_stop_1.meal_code
WHERE flight_stop_1.stop_days = 'SATURDAY'
AND flight_stop_1.stop_airport = 'ORD'
AND food_service_1.meal_description IS NOT NULL;
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
WHERE flight_leg_1.from_airport = 'MEMPH' AND flight_leg_2.to_airport = 'LAS VEGAS' AND flight_leg_1.duration = 0
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.flight_day = 'FRIDAY' AND flight_1.from_airport = 'NEWARK' AND flight_1.to_airport = 'TAMPA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TAMPA' AND flight_1.arrival_time = 'SUNDAY' AND flight_stop_1.stop_days = 1
SELECT flight_id
FROM flight
WHERE from_airport = 'CLT'
AND day_name = 'TUESDAY'
AND arrival_time BETWEEN '08:00:00' AND '10:00:00'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'BALtimore'
AND airport_service_1.city_name = 'BALtimore'
WHERE flight_1.arrival_time BETWEEN 0900 AND 1200;
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'HOUSTON' AND flight_leg_2.to_airport = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_day = 'SATURDAY' AND flight_stop_2.stop_day = 'PHOENIX' AND flight_stop_1.arrival_time > 1200;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PHOENIX' AND airport_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'ORD' AND flight_leg_2.to_airport = 'SEA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_airport = 'ORD' AND flight_stop_2.stop_airport = 'SEA' AND flight_stop_1.stop_days = 1;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.departure_airline = 'SEA'
AND flight_stop_2.arrival_airline = 'CHI'
AND flight_stop_1.stop_days = 1
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
AND fare.coach = 'YES'
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'JFK'
AND flight_1.to_airport = 'TAMPA'
AND day(flight_1.departure_time) = 5
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN day day_1 ON flight_leg_1.leg_flight = day_1.days_code
JOIN airport airport_1 ON day_1.arrival_airport = airport_1.airport_code
WHERE day_1.day_name = 'SUNDAY' AND airport_1.city_name = 'TAMPA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 2 AND flight_leg_2.day_number = 7 AND flight_leg_1.arrival_time >= '12:00:00' AND flight_leg_2.arrival_time <= '18:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 , airport airport_2 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'BAL' AND flight_1.to_airport = airport_2.airport_code AND airport_2.airport_code = 'NYC' AND( flight_1.arrival_time <= 1200 AND( flight_1.flight_days = '2023-10-27' AND flight_1.arrival_time < flight_1.departure_time AND 1 = 1 ) )
SELECT flight_id
FROM flight
WHERE departure_time >= '1201:00:00'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-12-20 18:00:00' AND '2023-12-20 23:59:59'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' AND date_day = '1991-12-27'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_time <= '16:00:00'
AND flight_stop_2.arrival_time >= '14:00:00'
AND flight_stop_1.stop_days = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time = 'SUNDAY' AND flight_leg_2.departure_time = '18:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_1.flight_id
WHERE flight_1.from_airport = 'NYC' AND flight_1.to_airport = 'LAS VEGAS' AND flight_leg_1.day_name = 'SUNDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'NYC'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'LAS'
AND flight_1.sunday_stay_required = 1;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'SUNDAY' AND flight_leg_2.day_name = 'SUNDAY'
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
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days = 2 AND flight_stop_2.stop_days = 1 AND flight_stop_1.stop_time >= '09:00:00' AND flight_stop_2.stop_time <= '12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_stop_2.flight_id
WHERE flight_2.arrival_time = '2023-08-14 19:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_1.stop_airport = flight_stop_2.stop_airport
WHERE flight_1.from_airport = 'MILWAUKEE'
AND flight_1.arrival_time = 'SATURDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1
ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.arrival_time = 'SUNDAY' AND flight_1.from_airport = 'PHOENIX' AND flight_1.to_airport = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.arrival_time BETWEEN 1700 AND 2000
AND flight_stop_2.arrival_time BETWEEN 1700 AND 2000
SELECT COUNT(*)
FROM flight
WHERE from_airport = 'STL'
AND flight_days >= 1
AND destination IN ('DENVER', 'MSP', 'SLC', 'SEA', 'LAX', 'SWA', 'ORD', 'IAH')
SELECT DISTINCT flight_1.departure_time FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'CO' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT COUNT(*) FROM flight_fare flight_fare
WHERE from_airport = 'DUBLES' AND flight_fare.flight_id IS NOT NULL;
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , city city_1 WHERE ground_service_1.city_code = city_1.city_code AND city_1.city_name = 'FORT WORTH'
SELECT DISTINCT flight_1.from_airport FROM flight flight_1 , airport airport_1 WHERE flight_1.airline_code = 'NW' AND flight_1.from_airport = airport_1.airport_code;
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , days days_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_2 WHERE fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.basis_days = days_1.days_code AND days_1.day_name = 'SATURDAY' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND flight_1.flight_days = days_2.days_code AND days_2.day_name = 'SATURDAY' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE flight_leg_1.arrival_time >= 1600
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND( flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.flight_days >= 7 )
SELECT flight_id
FROM flight
WHERE airline_flight = 'AA'
AND departure_time BETWEEN '07:00' AND '11:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'PHL' AND flight_leg_2.to_airport = 'DAL'
SELECT code
FROM code_description
WHERE description = 'D9S'
SELECT * FROM aircraft WHERE aircraft_code = 'D9S';
SELECT * FROM fare_basis WHERE basis_days = 90;
SELECT DISTINCT airport_code
FROM airport
WHERE airport_code IN (
  SELECT DISTINCT airport_code
  FROM flight
  WHERE airline_flight = 'Tower Air'
);
SELECT flight_1.flight_id, flight_1.flight_days, flight_1.connections, flight_1.arrival_time, flight_1.airline_flight, flight_1.airline_code
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_leg_2.flight_id
WHERE (flight_1.from_airport = 'JFK' AND flight_2.to_airport = 'ORL')
AND (flight_1.class_type = 'FIRST' OR flight_1.class_type = 'COACH')
SELECT flight_1.flight_id, flight_1.airline_code, flight_1.flight_days, flight_1.departure_time, flight_1.from_airport, flight_1.to_airport, flight_1.class_of_service
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'KENNY' AND flight_1.to_airport = 'MIA' AND flight_1.class_of_service = 'FIRST CLASS' OR flight_1.class_of_service = 'COACH'
SELECT flight_1.flight_id, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time, flight_1.class_type
FROM flight_1
WHERE flight_1.from_airport = 'JFK' AND flight_1.to_airport = 'MIA' AND flight_1.class_type = 'FIRST CLASS' OR flight_1.class_type = 'COACH';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , state state_1 , airport_service airport_service_2 , city city_2 , state state_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAMI' AND city_1.state_code = state_1.state_code AND state_1.state_name = 'FLORIDA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND city_2.state_code = state_2.state_code AND state_2.state_name = 'NEVADA' AND( flight_1.arrival_time < 1600 AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND not(( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) ) ) ) )
SELECT * FROM food_service food_service
WHERE food_service.meal_code = 'SNACKS' AND food_service.stop_days = 1;
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
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE airport_service_1.city_name = 'BOSTON'
AND airport_service_2.city_name = 'SALT LAKE CITY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1 ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airline airline_1 ON airline_1.airline_code = fare_1.airline
WHERE airline_1.note = 'DELA' AND flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'SLC'
SELECT fare.fare_id, fare.round_trip_cost, fare.fair_basis_code
FROM fare
WHERE fare.from_airport = 'BOS' AND fare.to_airport = 'DCA'
SELECT fare_basis.fare_basis_code, fare_basis.price
FROM fare_basis
JOIN flight_fare ON fare_basis.fare_basis_code = flight_fare.restriction_code
WHERE flight_fare.from_airport = 'BOS' AND flight_fare.to_airport = 'SLC'
ORDER BY fare_basis.price ASC;
SELECT flight_id, fare_basis_code, fare_id, from_airport, to_airport, round_trip_cost
FROM fare
WHERE from_airport = 'WA' AND to_airport = 'SLC'
ORDER BY round_trip_cost ASC;
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'BWI' AND fare.to_airport = 'SLC' AND fare.round_trip_required = 'true'
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
JOIN airport airport_1 ON flight_leg_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'BOSTON'
AND airport_1.country_name = 'USA'
AND flight_leg_1.arrival_time = (
    SELECT MIN(arrival_time)
    FROM flight_leg
    WHERE arrival_airport = airport_1.airport_code
    AND arrival_time >= DATE_SUB(NOW(), INTERVAL 1 DAY)
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
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN date_day date_day_1 ON flight_leg_1.leg_flight = date_day_1.day_number
WHERE date_day_1.day_name = 'MONDAY' AND flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'DCA'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'HOUSTON'
AND airport_service_1.city_name = 'HOUSTON'
WHERE flight_1.arrival_time = (
    SELECT MIN( flight_1.arrival_time )
    FROM flight flight_1
    JOIN airport_service airport_service_1
    ON flight_1.from_airport = airport_service_1.airport_code
    AND airport_service_1.city_code = 'HOUSTON'
    AND airport_service_1.city_name = 'HOUSTON'
);
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
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
AND flight_stop_1.arrival_time >= '2023-09-01 10:00:00'
AND flight_stop_2.arrival_time <= '2023-09-01 20:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE flight_1.departure_time BETWEEN 1800 AND 2200
AND (flight_1.from_airport = airport_1.airport_code AND airport_1.city_name = 'HOUSTON'
AND flight_1.to_airport = airport_2.airport_code AND airport_2.city_name = 'ORLANDO')
SELECT DISTINCT flight_id FROM flight flight_1
WHERE flight_1.departure_time BETWEEN 1900 AND 2100
SELECT DISTINCT fare_basis_1.fare_basis_code FROM fare_basis fare_basis_1 WHERE fare_basis_1.fare_basis_code = 'FN'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT equipment_sequence.aircraft_code, equipment_sequence.aircraft_code_sequence
FROM equipment_sequence
WHERE aircraft_code = '72S'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' )
SELECT equipment_sequence.aircraft_code, equipment_sequence.aircraft_code_sequence
FROM equipment_sequence
WHERE equipment_sequence.aircraft_code = 'M80'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHILADELPHIA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
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
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = '73S';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_cost =( SELECT MIN( fare_1.round_trip_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' )
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
SELECT capacity FROM aircraft WHERE aircraft_code = '757';
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 18:00:00' AND '2023-10-27 21:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN date_day date_day_1 ON flight_leg_1.day_number = date_day_1.day_number
WHERE date_day_1.day_name = 'FRIDAY'
AND flight_leg_1.arrival_time BETWEEN 1900 AND 2100;
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 19:00:00' AND '2023-10-27 20:00:00'
AND arrival_time BETWEEN '2023-10-27 20:00:00' AND '2023-10-27 21:00:00'
SELECT equipment_sequence.aircraft_code, equipment_sequence.aircraft_code_sequence
FROM equipment_sequence
WHERE aircraft_code = '757'
SELECT DISTINCT aircraft.aircraft_code, aircraft.capacity, aircraft.wing_span, aircraft.engines, aircraft.aircraft_description, aircraft.basic_type, aircraft.weight, aircraft.pressurized, aircraft.length, aircraft.propulsion, aircraft.pay_load, aircraft.cruising_speed, aircraft.range_miles, aircraft.wide_body, aircraft.manufacturer
FROM aircraft
WHERE aircraft.aircraft_code = 'M80';
SELECT * FROM aircraft
WHERE aircraft_code = 'M80'
SELECT * FROM aircraft WHERE aircraft_code = 'M80';
SELECT aircraft.aircraft_code, aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = '733';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = 'M80';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = 'M80';
SELECT flight_id, arrival_time, departure_time
FROM flight
WHERE departure_time BETWEEN 1900 AND 2100;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'DENVER'
AND flight_leg_1.arrival_time BETWEEN '18:00:00' AND '21:00:00'
SELECT flight_id, aircraft_code, flight_days, connections
FROM flight
WHERE arrival_time BETWEEN '2023-10-27 18:00:00' AND '2023-10-27 20:00:00'
GROUP BY flight_id, aircraft_code, flight_days, connections
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'MONDAY' AND flight_leg_1.arrival_time >= 0 AND flight_leg_2.arrival_time <= 1200
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.stop_airport
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'NSM' AND flight_1.day_name = 'MONDAY' AND (flight_leg_1.leg_flight = 1 OR flight_leg_1.leg_flight = 2)
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
WHERE day(flight_leg_1.day_number) = 1 AND month(flight_leg_1.month_number) = 1 AND day_name(flight_leg_1.day_name) = 'MONDAY' AND flight_leg_1.arrival_time > 2100
SELECT code, description
FROM code_description
WHERE code = 'CVG';
SELECT DISTINCT ground_service.transport_type, la_guidair.airport_code, la_guidair.city_code
FROM ground_service
JOIN airport la_guidair
ON la_guidair.airport_code = ground_service.airport_code
WHERE la_guidair.city_code = 'LGA' AND la_guidair.direction = 'NYC'
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
WHERE city_1.city_name = 'MEMPHIS'
AND city_1.state_code = 'MS'
AND flight_leg_1.leg_flight = 1
AND (flight_leg_1.leg_time BETWEEN '08:00:00' AND '12:00:00')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 2
AND flight_leg_2.leg_flight = 3
AND flight_leg_1.departure_time >= 1900
AND flight_leg_2.departure_time >= 1900
AND flight_leg_1.from_airport = 'JFK'
AND flight_leg_2.from_airport = 'JFK'
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport_service.direction, airport_service.city_code, airport_service.miles_distant
FROM airport_service
WHERE airport_service.airport_code = 'BNA'
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
WHERE flight_1.departure_time BETWEEN 1300 AND 1900
AND flight_1.stops = 0
SELECT COUNT(*) FROM flight_fare flight_fare
WHERE airline_code = 'ACA' AND from_airport = 'ANC' AND to_airport = 'BUR'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BURBANK'
AND flight_leg_2.to_airport = 'ANYWHERE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airline airline_1
ON flight_1.from_airport = airline_1.airport_code
WHERE airline_1.city_name = 'BURBANK'
SELECT airline_1.airline_name
FROM airline airline_1
INNER JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
INNER JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
INNER JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
INNER JOIN airport airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
INNER JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.arrival_time >= 1730 AND flight_1.arrival_time <= 1830;
SELECT DISTINCT flight_id
FROM flight
WHERE airline_flight = 'ALASKA AIRLINES'
AND arrival_time >= '2023-10-27 10:00:00'
AND arrival_time <= '2023-10-27 20:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN equipment_sequence equipment_sequence_1 ON flight_1.aircraft_code = equipment_sequence_1.aircraft_code
JOIN airport airport_service_1 ON equipment_sequence_1.aircraft_code_sequence = airport_service_1.aircraft_code_sequence
WHERE airport_service_1.airport_code = 'BURBANK'
SELECT DISTINCT flight_1.flight_id, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.airline_flight
FROM flight_1
JOIN airline airline_1 ON flight_1.airline_code = airline_1.airline_code;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
WHERE flight_stop_1.stop_airport = 'SEA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'INDIANAPOLIS'
AND flight_1.departure_time < '12:00:00'
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'CHARLOTTE' AND fare.to_airport = 'LAS VEGAS'
ORDER BY fare.round_trip_cost ASC;
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
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.departure_time BETWEEN 0600 AND 1200
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'JFK'
AND flight_1.departure_time >= '19:00:00'
SELECT flight_id
FROM flight
WHERE flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'MONTREAL'
    AND to_airport = 'SAN DIEGO'
    AND departure_date = '2023-10-27'
);
SELECT flight.flight_id, flight.flight_number, flight.arrival_time, flight.from_airport, flight.airline_flight, flight.stops, flight.flight_days, flight.connections, flight.arrival_time
FROM flight
WHERE flight.departure_date = '2023-10-27' AND flight.from_airport = 'SAN_DIEGO' AND flight.to_airport = 'INDIANA' AND flight.departure_time >= '17:00'
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
AND (flight_hours BETWEEN 6 AND 10)
SELECT flight_id
FROM flight
WHERE from_airport = 'CINcinnati'
AND airline_flight = 'AMERICAN'
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
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'LAS VEGAS' AND airport_2.city_name = 'ONTARIO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN flight_stop flight_stop_2 ON flight_stop_1.stop_number = flight_stop_2.stop_number
JOIN airport_service airport_service_2 ON flight_stop_2.stop_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.airline_code = 'ONTARIO' AND flight_1.to_airport = 'MEMPHIS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 )
SELECT EXISTS(SELECT 1 FROM taxi_service WHERE airport_code = 'ONTARIO' AND date >= '2023-07-20' AND time >= '18:00') AS has_taxi_service;
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
WHERE flight_1.from_airport = 'TAMPA' AND flight_1.to_airport = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'MILW'
AND airport_service_2.city_code = 'SEA'
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 WHERE airline_1.airline_code = 'UA'
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
AND from_airport = 'ST. PAUL'
AND flight_day = 4;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time BETWEEN '1991-06-25 10:00:00' AND '1991-06-25 23:59:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
INNER JOIN airport airport_2 ON flight_stop_1.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOSTON'
AND airport_2.city_name = 'ORLANDO'
AND airport_1.city_name = 'NEW YORK'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MAX(departure_time)
    FROM flight
    WHERE from_airport = 'BURBANK'
    AND day = 'MONDAY'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. LOUIS' AND( flight_1.flight_days = '2023-10-27' AND flight_1.arrival_time >= 2200 AND flight_1.arrival_time <= 2300 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_1.flight_id
WHERE flight_leg_1.arrival_time = '2023-10-27 18:00:00'
AND flight_leg_2.departure_time = '2023-10-27 16:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time = 'tuesday' AND flight_1.from_airport = 'STL' AND flight_1.to_airport = 'BUR'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN DATE_ADD(NOW(), INTERVAL 1 DAY) AND '2023-06-05 18:00:00'
AND flight_1.arrival_time < '2023-06-06 06:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN 0 AND 1800
AND( flight_1.to_airport = 'JFK' OR flight_1.to_airport = 'EWR' )
AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number <= 5 )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'MIA'
AND flight_1.airline_code = 'AA'
AND flight_1.arrival_time >= '17:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_days = 1
AND city_1.city_name = 'MEMPHIS'
AND city_2.city_name = 'TACOMA'
AND flight_1.departure_time = '2023-07-15 19:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'CINcinnati'
AND flight_1.arrival_time > '18:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.distance = 0 AND flight_leg_2.distance = 0;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_1.stop_number = flight_stop_2.stop_number
WHERE flight_1.from_airport = 'HOUSTON'
AND flight_stop_1.stop_airport = 'MEMPHIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE (flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = 'MEMPHIS')
AND (flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = 'CINcinnati')
AND flight_1.flight_days = 'Wednesdays'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'NEWARK' AND airport_2.city_name = 'NASHVILLE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN city city_1 ON flight_stop_1.stop_airport = city_1.airport_code
INNER JOIN city city_2 ON flight_stop_1.arrival_airport = city_2.airport_code
WHERE flight_1.from_airport = 'ONTARIO'
AND flight_1.to_airport = 'WESTCHESTER'
AND flight_stop_1.stop_days = 1
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
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.city_name = 'CHARLOTTE'
AND flight_stop_2.city_name = 'NEWARK'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'NEWARK' AND airport_2.city_name = 'LOS ANGELES'
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
WHERE flight_1.airline_code = 'AA'
AND city_1.city_name = 'CINcinnati'
AND city_2.city_name = 'BURBANK'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE flight_1.flight_days = 'DAILY' AND airport_1.city_name = 'KANSAS CITY' AND airport_2.city_name = 'CHICAGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.airport_code
JOIN city city_2 ON flight_stop_2.departure_airport = city_2.airport_code
WHERE city_1.city_name = 'CHICAGO' AND city_2.city_name = 'KANSAS CITY' AND flight_stop_1.arrival_date >= '2023-06-17'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHICAGO' AND flight_1.flight_days = '2023-06-16' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN city city_1 ON airport_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'CHICAGO'
AND flight_1.to_airport = 'KANSAS CITY'
AND date(flight_leg_1.leg_date) = '2023-06-17'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'Burbank' AND airport_2.city_name = 'Milwaukee'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 14:00:00' AND '2023-10-27 18:00:00' AND saturday_stay_required = 1
AND flight_id NOT IN (
    SELECT flight_id
    FROM flight
    WHERE departure_time BETWEEN '2023-10-27 00:00:00' AND '2023-10-27 12:00:00'
    AND from_airport = 'CINcinnati'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_stop_2.to_flight_id
WHERE flight_2.arrival_time <= 1800
AND flight_stop_1.stop_days = 6
AND flight_stop_2.arrival_time < 1800
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'CHICAGO'
AND flight_1.arrival_time >= '17:00:00'
SELECT flight_id
FROM flight
WHERE departure_time >= '2023-10-27' AND departure_time <= '2023-10-30' AND from_airport = 'KCSA' AND to_airport = 'CHI'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport_code = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_2.departure_airport_code = airport_service_2.airport_code
WHERE flight_1.from_airport = 'KCSA'
AND flight_1.to_airport = 'CHI'
AND flight_1.flight_days = 'WEDNESDAY'
AND flight_stop_1.arrival_time >= '2023-05-26 19:00:00'
AND flight_stop_2.departure_time <= '2023-05-26 21:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'LOS ANGELES' AND airport_2.city_name = 'TAMACO'
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
WHERE flight_2.arrival_date = '2023-10-27' AND flight_2.arrival_time = 1900
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
WHERE departure_day = 'SUNDAY'
AND from_airport = 'MEMPHIS'
AND arrival_airport = 'CINcinnati'
SELECT flight_id
FROM flight
WHERE airline_flight = 'AMERICAN' AND departure_time BETWEEN '2023-10-27 18:30:00' AND '2023-10-27 21:00:00'
SELECT * FROM flight flight_1
WHERE flight_1.departure_time BETWEEN '2023-06-10 00:00:00' AND '2023-06-10 23:59:59' AND flight_1.from_airport = 'BURBANK' AND flight_1.to_airport = 'TACOMA'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = flight_fare_1.from_airport
JOIN city city_1
ON city_1.city_code = airport_service_1.city_code
WHERE flight_1.from_airport = 'BURBANK'
AND flight_1.to_airport = 'MILWAUKEE'
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
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'ST. LOUIS' AND airport_2.city_name = 'BURBANK'
SELECT DISTINCT airline
FROM flight
WHERE from_airport = 'BURBANK' AND (to_airport = 'MILWAUKEE' OR to_airport = 'MILWAUKEE') AND (from_airport = 'ST. LOUIS' OR from_airport = 'ST. LOUIS')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
INNER JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
INNER JOIN airport airport_service_2 ON airport_service_1.city_code = airport_service_2.city_code
INNER JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
INNER JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'BURBANK'
AND flight_1.to_airport = 'MILWAUKEE'
AND flight_stop_1.stop_days = 1
SELECT flight_1.flight_id, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.flight_days
FROM flight flight_1
WHERE flight_1.from_airport = 'JFK'
AND flight_1.to_airport = 'WC'
SELECT flight_id, fare_id, from_airport, to_airport, flight_days, connections
FROM flight
WHERE to_airport = 'SLC' AND from_airport = 'WCS'
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport
WHERE airport_location LIKE '%WESTCHESTER COUNTY%'
SELECT *
FROM flight
WHERE to_airport = 'CINcinnati'
AND departure_time = '2023-10-27'
AND airline_code = 'UA'
AND EXISTS (
    SELECT 1
    FROM flight_stop flight_stop
    WHERE flight_stop.arrival_flight_number = flight.flight_id
);
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport
WHERE airport_location LIKE '%New% York%'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.city_name
JOIN date_day date_day_1 ON flight_stop_1.arrival_date = date_day_1.day_number
WHERE date_day_1.day_name = 'Saturday'
AND flight_stop_1.arrival_time <= 1800
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
WHERE flight_1.flight_days BETWEEN 1 AND 7
SELECT flight_id
FROM flight
WHERE airline_code = 'AA' AND from_airport = 'MIA' AND to_airport = 'ORD'
SELECT flight_id, fare_id, from_airport, to_airport, fare_basis_code, round_trip_cost
FROM flight_fare
WHERE from_airport = 'KCSA' AND to_airport = 'CHI'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_1.from_airport = 'MEMPH' AND flight_1.to_airport = 'TACOMA'
