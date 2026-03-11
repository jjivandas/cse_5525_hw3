SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'tomorrow' AND flight_leg_2.from_airport = 'DENVER' AND flight_leg_2.to_airport = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number BETWEEN 13 AND 17 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'BALtimore'
AND flight_1.arrival_time < '09:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'PHOENIX'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_1.to_airport
INNER JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
INNER JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN 0 AND 800
AND (
    flight_leg_1.leg_flight = 1
    OR flight_leg_1.leg_flight = 2
)
SELECT DISTINCT airport_1.airport_location
FROM airport airport_1
WHERE airport_1.city_name = 'DENVER'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BOS' AND flight_leg_2.to_airport = 'SFO' AND flight_leg_1.stop_days = 0
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = flight_1.from_airport
JOIN city city_1
ON city_1.city_name = flight_1.from_airport
JOIN airport_service airport_service_2
ON airport_service_2.airport_code = flight_1.to_airport
JOIN city city_2
ON city_2.city_name = 'ATLANTA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.departure_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = 'BALtimore'
AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = 'ATLANTA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'JFK' AND flight_leg_2.to_airport = 'TAMPA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'ATLANTA' AND airport_2.city_name = 'BALtimore'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'DAL'
AND flight_leg_2.arrival_airport = 'BOS'
AND flight_leg_1.fare = 415;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE flight_1.from_airport = 'HOUSTON'
AND flight_1.to_airport = 'MILWAUKEE'
AND flight_1.day = 'FRIDAY'
AND flight_1.airline = 'AMERICAN AIRLINES'
SELECT *
FROM flight
WHERE airline_code = 'UA'
AND from_airport = 'BOS'
AND to_airport = 'DEN'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'DENVER' AND airport_2.city_name = 'PHILADELPHIA'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'DENVER' AND to_airport = 'BOS'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'SFO' AND flight_1.to_airport = 'BOS' AND date(flight_1.departure_time) = '2023-08-08'
SELECT *
FROM flight
WHERE from_airport = 'OAKLAND'
AND arrival_time = '17:00:00'
AND to_airport = 'PHILADELPHIA'
AND arrival_time = '19:00:00';
SELECT fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.to_airport = flight_fare.from_airport
WHERE fare.from_airport = 'DALAS'
AND fare.round_trip_required = 1
ORDER BY fare.round_trip_cost ASC;
SELECT flight_1.flight_id, flight_1.departure_time
FROM flight flight_1
WHERE departure_time BETWEEN '08:00:00' AND '08:59:00'
SELECT flight_id, COUNT(stop_days) AS max_stops
FROM flight
WHERE from_airport = 'BOS'
AND arrival_time >= '1500'
GROUP BY flight_id
ORDER BY max_stops DESC
LIMIT 10;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PHILADELPHIA' AND airport_2.city_name = 'DALLAS'
SELECT flight_id
FROM flight
WHERE from_airport = 'PHL'
AND arrival_time >= 1600
AND arrival_time < 1800
SELECT flight_1.flight_id, fare.fare_id, fare.round_trip_cost
FROM flight flight_1
INNER JOIN fare fare ON fare.to_airport = flight_1.from_airport
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_1.from_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = fare.from_airport
WHERE date(flight_1.departure_time) = '2023-10-27' AND time(flight_1.departure_time) = '09:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'PITTSBURGH'
AND flight_1.to_airport = 'BALtimore'
AND flight_leg_1.arrival_time < '10:00:00'
AND flight_leg_2.arrival_time < '10:00:00'
AND dayofweek(flight_leg_1.arrival_time) = 4
SELECT *
FROM flight
WHERE departure_time BETWEEN '10:00:00' AND '15:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'DALLAS' AND airport_service_2.city_name = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'SAN FRANCISCO' AND airport_service_2.city_name = 'PITTSBURGH' AND day(flight_leg_1.departure_time) = 2 AND month(flight_leg_1.departure_time) = 9
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare_join
ON fare.flight_id = flight_fare_join.flight_id
WHERE fare.flight_id = 415
AND fare.from_airport = 'ORD'
AND fare.arrival_time = '2023-10-27 20:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOS' AND airport_2.city_name = 'SFO' AND flight_1.airline_code = 'AA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN 0600 AND 1000
AND( flight_1.from_airport = 'PHL' AND city_1.city_name = 'PHILADELPHIA' AND flight_1.to_airport = 'PIT' AND city_2.city_name = 'PITTSBURGH' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'PITTSBURGH' AND flight_leg_2.to_airport = 'PHILADELPHIA'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN 430 AND 530
AND (from_airport = 'PHL' AND to_airport = 'PIT')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE airport_service_1.city_name = 'DETROIT' AND airport_service_2.city_name = 'CHICAGO'
SELECT *
FROM flight
WHERE from_airport = 'BALtimore'
AND to_airport = 'PHILladelphia'
SELECT flight_id, airline_flight, airline_code, from_airport, to_airport, flight_days, connections, arrival_time, time_elapsed, fare_id, fare_basis_code
FROM flight
WHERE from_airport = 'BOS' AND to_airport = 'DEN' AND flight_days = 1;
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.departure_time >= '07:00' AND flight_leg_1.arrival_time <= '10:00'
SELECT flight_id
FROM flight
WHERE from_airport = 'PHL'
AND to_airport = 'DEN'
AND flight_days = 1
AND arrival_time >= '2023-07-27 12:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND flight_1.arrival_time > 5;
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'UA201' AND fare.to_airport = 'DENVER'
SELECT flight_id
FROM flight
WHERE flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'IND' AND to_airport = 'ORD' AND date(departure_time) = '2023-12-27'
);
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 16:00:00' AND '2023-10-27 20:00:00' AND flight_id IN (
  SELECT flight_id
  FROM flight
  WHERE departure_time BETWEEN '2023-10-27 16:00:00' AND '2023-10-27 20:00:00'
  AND airline_code = 'UA'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TORONTO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND flight_1.flight_days = (SELECT days_code FROM days WHERE day_name = 'FRIDAY' AND month_number = 10)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' )
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '1700' AND '1900'
AND from_airport = 'DENVER'
AND to_airport = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'DENVER' AND airport_2.city_name = 'BALtimore'
SELECT *
FROM flight_leg flight_leg
JOIN flight flight ON flight_leg.flight_id = flight.flight_id
JOIN airport_service airport_service_1 ON flight.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight.to_airport = airport_service_2.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight.from_airport = 'DALLAS'
AND flight.to_airport = 'PITTSBURGH'
SELECT *
FROM ground_service
WHERE airport_code = 'PHL'
AND day_name = 'WEDNESDAY'
AND time_elapsed BETWEEN 0 AND 600;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'ORD' AND flight_leg_2.to_airport = 'KSC'
SELECT ground_service_1.transport_type
FROM ground_service ground_service_1
WHERE ground_service_1.city_code = 'OAKLAND'
SELECT flight.flight_id, flight.arrival_time, flight.flight_number, flight.from_airport, flight.airline_flight
FROM flight
JOIN flight_stop ON flight.flight_id = flight_stop.flight_id
JOIN city ON flight_stop.arrival_airport = city.airport_code
WHERE flight.from_airport = 'DENVER' AND flight.to_airport = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'SAN FRANCISCO' AND airport_2.city_name = 'PITTSBURGH'
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN flight f ON fare.to_airport = f.to_airport
WHERE f.flight_id = 19
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BOS'
AND flight_leg_2.to_airport = 'DEN'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'SAN FRANCISCO' AND airport_service_2.city_name = 'PITTSBURGH'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare fare_1 ON flight_1.fare_id = fare_1.fare_id
JOIN airport_service airport_service_1 ON fare_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'BOSTON' AND city_2.city_name = 'DENVER'
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
JOIN flight_fare flight_fare ON fare.flight_id = flight_fare.flight_id
JOIN flight flight ON flight_fare.flight_id = flight.flight_id
JOIN airport airport_from ON flight.from_airport = airport_from.airport_code
JOIN airport airport_to ON flight.to_airport = airport_to.airport_code
WHERE airport_from.city_name = 'SAN FRANCISCO' AND airport_to.city_name = 'DENVER' AND airline_code = 'UA'
SELECT flight_fare.fare_id, fare_basis.description
FROM flight_fare
JOIN fare_basis
ON flight_fare.fare_basis_code = fare_basis.code
WHERE flight_fare.from_airport = 'DAL' AND flight_fare.to_airport = 'BOS' AND date(flight_fare.departure_time) = date('tomorrow')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PHILADELPHIA' AND airport_2.city_name = 'DALLAS' AND flight_1.flight_days = 1
SELECT DISTINCT aircraft.aircraft_code
FROM aircraft
JOIN flight_leg flight_leg
ON aircraft.aircraft_code = flight_leg.aircraft_code
WHERE flight_leg.from_airport = 'BOS' AND flight_leg.to_airport = 'SFO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOSTON' AND airport_2.city_name = 'DENVER'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'BOS' AND to_airport = 'ATL' AND flight_days = 1
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
WHERE airport_service_1.city_code = 'CLT'
AND flight_1.departure_time BETWEEN 1300 AND 1500;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN date_day date_day_1
ON city_1.city_name = 'SALT LAKE CITY'
WHERE flight_1.arrival_time <= '18:00:00'
SELECT *
FROM flight
WHERE departure_time >= '2023-12-16' AND departure_time < '2023-12-17'
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
JOIN flight_fare flight_fare ON fare.flight_id = flight_fare.flight_id
JOIN flight flight ON flight_fare.flight_id = flight.flight_id
JOIN airport_service airport_service ON flight.from_airport = airport_service.airport_code
JOIN city city ON airport_service.city_code = city.city_code
WHERE city.city_name = 'Dallas' AND city.country_name = 'Texas'
AND flight.class_of_service = 'First'
SELECT fare.fare_id, fare.round_trip_cost, fare.fair_basis_code
FROM fare
JOIN flight flight ON fare.to_airport = flight.to_airport
WHERE flight.airline_code = 'DAL' AND flight.from_airport = 'DAL' AND flight.flight_days = 1
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time = '2023-10-27' AND airline_flight = 'US' AND from_airport = 'CLEVELAND' AND to_airport = 'MIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.departure_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = 'DAL'
AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = 'PHI'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'LAS VEGAS'
AND flight_leg_2.to_airport = 'NEW YORK'
AND flight_leg_1.class_of_service = 'NONSTOP'
SELECT airline.airline_name, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.fare_id = flight_fare.fare_id
JOIN flight flight
ON flight_fare.flight_id = flight.flight_id
JOIN airline
ON flight.airline_flight = airline.airline_code
WHERE flight.from_airport = 'BOS' AND flight.to_airport = 'WAI'
SELECT code_description.description FROM code_description
WHERE code_description.code = 'IAH'
SELECT flight_id
FROM flight
WHERE departure_time = '7:00 PM'
AND from_airport = 'ATL'
AND arrival_airport = 'BAL'
SELECT flight_id
FROM flight
WHERE from_airport = 'PHL'
AND to_airport = 'DAL'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN 1200 AND 1800
AND from_airport = 'PHL'
AND to_airport = 'DEN'
AND flight_days = 1
AND date_day = '2023-08-27'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'MONTREAL' AND airport_2.city_name = 'CHARLOTTE'
SELECT COUNT(*)
FROM flight
WHERE departure_time BETWEEN '2023-08-18' AND '2023-08-18'
AND (airline_code = 'UA' OR airline_code = 'US')
AND (from_airport = 'SFO' AND to_airport = 'PHI')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BOS' AND flight_leg_2.to_airport = 'PIT'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , food_service food_service_1 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN DIEGO' AND flight_1.meal_code = food_service_1.meal_code AND food_service_1.meal_description = 'DINNER' ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
AND flight_stop_1.arrival_time >= '2023-10-27 00:00:00'
AND flight_stop_2.arrival_time <= '2023-10-27 23:59:00'
SELECT * FROM flight_fare fare_1
JOIN flight flight_1
ON fare_1.flight_id = flight_1.flight_id
WHERE fare_1.from_airport = 'DENVER'
AND fare_1.to_airport = 'PITTSBURGH'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND( flight_1.departure_time = 0 OR flight_1.departure_time = 1 ) )
SELECT flight_id
FROM flight
WHERE from_airport = 'ATL' AND flight_days = '2023-09-05' AND arrival_time = (SELECT MAX(arrival_time) FROM flight WHERE from_airport = 'ATL' AND flight_days = '2023-09-05');
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 3 AND(( flight_1.arrival_time < flight_1.departure_time AND 1 = 1 ) AND flight_1.arrival_time < 1200 ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 4 AND flight_1.arrival_time < 1200 ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BOS' AND flight_leg_1.day_name = 'WEDNESDAY' AND flight_leg_2.to_airport = 'DENVER'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_city = city_1.city_name
JOIN city city_2 ON flight_stop_1.departure_city = city_2.city_name
WHERE flight_1.departure_time BETWEEN '2023-10-27 10:00:00' AND '2023-10-27 23:59:00'
AND flight_1.from_airport = 'PITTSBURGH'
AND flight_1.to_airport = 'SAN FRANCISCO'
SELECT DISTINCT airport_1.airport_code, airport_1.airport_name, airport_1.airport_location
FROM airport airport_1
INNER JOIN ground_service ground_service_1
ON airport_1.airport_code = ground_service_1.airport_code
INNER JOIN city city_1
ON ground_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'BOSTON'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time >= '2023-07-27 16:00:00'
AND flight_1.arrival_time <= '2023-07-27 17:00:00'
AND flight_1.to_airport = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1
ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'DENVER'
AND city_1.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_1.stop_airport = flight_stop_2.stop_airport
WHERE flight_1.from_airport = 'DFW' AND flight_stop_1.stop_airport = 'DAL' AND flight_stop_2.stop_airport = 'BOS'
SELECT aircraft.aircraft_code, aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = 'CO1209';
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 00:00:00' AND '2023-10-27 12:00:00'
AND from_airport = 'DENVER'
AND aircraft_code_sequence = '767'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'ATLANTA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'SAN FRANCISCO'
AND airport_service_2.city_name = 'BOSTON'
SELECT COUNT(*) FROM flight
WHERE airline_code = 'UA' AND destination = 'SFO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'HOUSTON' AND airport_2.city_name = 'MEMPHIS' AND day(flight_leg_1.departure_date) = 2 AND time(flight_leg_1.departure_time) BETWEEN '08:00:00' AND '12:00:00'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE fare_1.round_trip_cost < 200
SELECT ground_service.transport_type, ground_service.city_code, ground_service.cost
FROM ground_service
WHERE airport_code = 'PITTSBURGH'
AND ( ground_service.transport_type = 'TAXI' OR ground_service.transport_type = 'UBER' )
SELECT flight_id, airline_flight, airline_code, flight_days, connections, arrival_time, time_elapsed, flight_number, from_airport, to_airport, meal_code, departure_time
FROM flight
WHERE to_airport = 'SFO' AND from_airport = 'PIT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.stop_airport
JOIN city city_1 ON city_1.city_code = airport_service_1.city_code
WHERE flight_1.departure_time = '2023-10-27 08:00:00'
AND flight_leg_1.day_number = 1
AND flight_stop_1.stop_days = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 1
AND flight_leg_2.leg_flight = 2
SELECT flight_fare.flight_id, flight_fare.fare_id, flight_fare.round_trip_cost, flight_fare.airline_code
FROM flight_fare
WHERE flight_fare.from_airport = 'BOS'
AND flight_fare.to_airport = 'ATL'
AND flight_fare.departure_time > 1700;
SELECT DISTINCT flight.flight_number, flight.arrival_time, flight.from_airport, flight.airline_flight, flight.stops, flight.flight_days, flight.connections, flight.arrival_time
FROM flight
JOIN flight_stop flight_stop ON flight.flight_id = flight_stop.flight_id
JOIN city city ON flight_stop.arrival_airport = city.airport_code
WHERE city.city_name = 'BALtimore'
SELECT code FROM code_description WHERE description LIKE '%FF%'
SELECT DISTINCT aircraft.aircraft_code, aircraft.aircraft_description
FROM aircraft
JOIN flight flight ON aircraft.aircraft_code = flight.aircraft_code
WHERE flight.from_airport = 'DENVER' AND flight.to_airport = 'SFO' AND flight.departure_time < 1000
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1 ON fare_1.fare_id = flight_fare_1.fare_id
JOIN city city_1 ON city_1.city_name = 'PHILADELPHIA'
JOIN city city_2 ON city_2.city_name = 'DALLAS'
WHERE (flight_1.from_airport = city_1.city_code AND city_1.city_name = 'PHILADELPHIA' AND flight_1.to_airport = city_2.city_code AND city_2.city_name = 'DALLAS')
SELECT fare.fare_id
FROM fare
JOIN flight_fare flight_fare ON fare.to_airport = flight_fare.from_airport
JOIN flight flight ON flight_fare.flight_id = flight.flight_id
WHERE flight.from_airport = 'BOS' AND flight.to_airport = 'SFO' AND flight.class_of_service = 'FIRST'
SELECT fare.round_trip_cost
FROM fare
JOIN fare_basis fare_basis ON fare.fare_basis_code = fare_basis.code
WHERE fare.from_airport = 'BOS' AND fare.to_airport = 'DEN'
AND fare_basis.season = 'SUMMER'
AND fare_basis.discount = 0
ORDER BY fare.round_trip_cost ASC;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'BALtimore'
AND airport_service_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1 ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_fare_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_fare_1.to_airport
WHERE flight_1.departure_time BETWEEN 1200 AND 1800
AND (flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE'
AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_airport = 'ATL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'Philadelphia' AND airport_2.city_name = 'Dallas'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
AND flight_stop_1.arrival_time BETWEEN '2023-10-27 14:00:00' AND '2023-10-27 16:00:00'
AND flight_stop_2.arrival_time BETWEEN '2023-10-27 14:00:00' AND '2023-10-27 16:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PITTSBURGH' AND airport_2.city_name = 'SAN FRANCISCO'
ORDER BY flight_1.flight_id ASC;
SELECT *
FROM flight
WHERE departure_time BETWEEN '12:00:00' AND '17:00:00'
SELECT DISTINCT fare_basis.fare_basis_code, fare_basis.description
FROM fare_basis
WHERE fare_basis.season = 'Summer' AND fare_basis.class_type = 'Economy'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
JOIN date_day date_day_1
ON days_1.days_code = date_day_1.days_code
WHERE flight_1.to_airport = 'PITTSBURGH'
AND flight_1.arrival_time < '1700'
AND flight_1.flight_days = days_1.days_code
AND date_day_1.day_name = 'tuesday'
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport_service.direction, airport_service.city_code, airport_service.miles_distant
FROM airport_service
WHERE airport_service.city_code = 'BOS'
SELECT flight_id
FROM flight
WHERE to_airport = 'BOS'
AND arrival_time BETWEEN '12:00:00' AND '14:00:00'
AND meal_code = 'LUNCH'
SELECT COUNT(*)
FROM flight
WHERE arrival_time >= '2023-10-27 00:00:00'
AND arrival_time <= '2023-10-27 23:59:59';
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , equipment_sequence equipment_sequence_1 , aircraft aircraft_1
WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CANADIAN AIRLINES INTERNATIONAL' )
SELECT DISTINCT airport_service.airport_code, airport_service.city_code, ground_service.transport_type
FROM airport_service
INNER JOIN ground_service
ON airport_service.airport_code = ground_service.airport_code
WHERE airport_service.city_code = 'PITTSBURGH' AND ground_service.transport_type = 'TAXI'
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft_code = 'F28';
SELECT DISTINCT car.car_code, car.make, car.model
FROM car
JOIN flight_leg flight_leg
ON car.aircraft_code = flight_leg.aircraft_code
JOIN flight flight
ON flight_leg.flight_id = flight.flight_id
WHERE flight.from_airport = 'DENVER'
AND flight.flight_days = 'SUNDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time > 1200
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE airport_service_1.city_name = 'MIAMI' AND airport_service_2.city_name = 'CLEVELAND'
SELECT flight_id
FROM flight
WHERE arrival_time >= '15:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'CLEVELAND' AND airport_2.city_name = 'MEMPHIS'
SELECT code_description FROM fare_basis WHERE code = 'qw';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'CINcinnati' AND city_2.city_name = 'TORONTO'
SELECT flight_1.flight_id, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time, flight_1.arrival_time, fare_basis_code
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE fare_1.round_trip_required = 'YES'
AND flight_1.from_airport = 'LAS VEGAS'
AND flight_1.to_airport = 'NEW YORK'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN date_day date_day_1 ON flight_leg_1.day_number = date_day_1.day_number
JOIN city city_1 ON date_day_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'BOS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.departure_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'MEMPHIS'
AND airport_service_2.city_code = 'LAS VEGAS'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time = '2023-08-31 19:00:00' AND flight_leg_2.arrival_time = '2023-08-31 20:00:00' AND flight_leg_1.aircraft_code = '757'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'DL' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PAUL' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'KANSAS CITY' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 2 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'BOS' AND airport_service_2.city_code = 'BOS'
SELECT * FROM flight_1
WHERE from_airport = 'BALTIMORE' AND to_airport = 'SAN FRANCISCO' AND flight_days = 1;
SELECT fare.fare_basis_code, fare.round_trip_cost
FROM fare
WHERE fare.to_airport = 'DAL' AND fare.from_airport = 'DEN' AND fare.round_trip_required = 1;
SELECT flight_id
FROM flight
WHERE to_airport = 'SEA'
AND flight_days = 'SUNDAY'
AND arrival_time >= 1700
SELECT flight_id, fare_id, from_airport, to_airport, flight_days, connections, arrival_time, time_elapsed, fare_basis_code
FROM flight
JOIN flight_fare flight_fare ON flight.flight_id = flight_fare.flight_id
JOIN fare fare ON flight_fare.fare_id = fare.fare_id
WHERE from_airport = 'PITTSBURGH'
AND to_airport = 'DALLAS'
AND flight_days >= 1
AND arrival_time < '12:00:00'
AND fare_basis_code = 'economy'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare fare_1 ON flight_1.flight_id = fare_1.flight_id
JOIN fare fare_2 ON fare_1.fare_id = fare_2.fare_id
WHERE fare_2.to_airport = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE flight_1.from_airport = 'BALTIMORE'
AND fare_1.round_trip_cost IS NOT NULL
AND fare_1.fare_basis_code = 'economy'
AND (
    (flight_1.to_airport = 'SAN FRANCISCO'
    AND fare_1.round_trip_cost < 500
    AND flight_1.flight_days >= 1
    AND flight_1.connections > 0
)
OR
    (flight_1.to_airport = 'OAKLAND'
    AND fare_1.round_trip_cost < 600
    AND flight_1.flight_days >= 1
    AND flight_1.connections > 0
);
SELECT flight_id
FROM flight
WHERE airline_flight = 'AA' AND departure_time = '2023-10-27 10:00:00'
SELECT airline.airline_name
FROM airline
JOIN flight flight ON airline.airline_code = flight.airline_code
WHERE flight.from_airport = 'BOS' AND flight.arrival_time BETWEEN '1400' AND '1600'
SELECT flight_id
FROM flight
WHERE departure_time >= '7:00 AM' AND airline_flight = 'PHL' AND to_airport = 'BOS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'SALT LAKE CITY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'WN' AND flight_stop_2.arrival_airline = 'STL'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'CO' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 25 ) )
SELECT DISTINCT ground_service.transport_type, airport.airport_name
FROM airport
INNER JOIN ground_service
ON airport.airport_code = ground_service.airport_code
WHERE airport.city_code = 'SFO' AND airport.minimum_connect_time = 0;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'WA'
SELECT code FROM fare_basis WHERE description = 'Qo';
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'DAL'
AND airport_service_2.city_code = 'BAL'
ORDER BY flight_1.flight_id;
SELECT fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'PITTSBURGH'
AND fare.restriction_code = 'LX'
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'BOS' AND fare.to_airport = 'WA' AND fare.round_trip_required = 1
ORDER BY fare.round_trip_cost ASC;
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN date_day date_day_1 ON flight_leg_1.leg_flight = date_day_1.day_number
WHERE date_day_1.day_name = 'SUNDAY' AND flight_1.departure_time BETWEEN 0900 AND 1300
SELECT fare.round_trip_cost
FROM fare
WHERE from_airport = 'ATL'
  AND to_airport = 'SFO'
  AND restriction_code = 'OAS'
  AND fare_basis_code = 'FC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'DENVER'
AND airport_service_1.city_name = 'DENVER'
JOIN flight_fare flight_fare_1
ON flight_1.flight_id = flight_fare_1.flight_id
JOIN fare fare_1
ON flight_fare_1.fare_id = fare_1.fare_id
WHERE fare_1.fare_basis_code = 'economy'
AND flight_1.departure_time BETWEEN 0 AND 1000
SELECT flight_id
FROM flight
WHERE departure_time >= (SELECT MAX( arrival_time ) FROM flight WHERE from_airport = 'CLEVELAND' AND to_airport = 'MIA')
AND arrival_time <= 16:00;
SELECT class_description
FROM class_of_service
WHERE airline_code = 'LH'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'DENVER' AND flight_leg_2.to_airport = 'WASHINGTON'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 7 AND not(( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 6 AND( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) ) )
SELECT flight_id, airline_code, from_airport, to_airport, flight_days, connections
FROM flight
WHERE airline_code IN (
    SELECT airline_code
    FROM fare_basis
    WHERE season = 'SUMMER'
    AND day >= 12
    AND time_elapsed BETWEEN 1800 AND 2000
)
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'CLEVELAND' AND airport_service_2.city_name = 'MIAMI' AND flight_leg_1.date >= '2023-10-27' AND flight_leg_1.date < '2023-10-30'
SELECT flight_id, flight_number, from_airport, to_airport, arrival_time, time_elapsed
FROM flight
WHERE departure_time BETWEEN '2023-10-27 17:00:00' AND '2023-10-27 19:00:00'
AND arrival_time BETWEEN '19:00:00' AND '21:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 3 AND flight_leg_2.day_number = 5
SELECT flight_1.flight_id, fare_basis_code, fare_id, from_airport, to_airport, fare_airline
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN fare_basis fare_basis_1
ON fare_1.fare_basis_code = fare_basis_1.code
WHERE to_airport = 'ATLANTA'
AND fare_1.round_trip_cost <= 1100
AND fare_1.departure_time > 1200
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time = flight_leg_2.arrival_time
AND flight_leg_1.from_airport = 'DALLAS'
AND flight_leg_2.to_airport = 'HOUSTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.end_time >= '17:00:00' AND flight_leg_2.end_time >= '17:00:00'
SELECT *
FROM flight
WHERE departure_day = 'WEDNESDAY' AND arrival_day = 'MONDAY' AND from_airport = 'ATL' AND to_airport = 'DCA'
SELECT flight_id
FROM flight
WHERE from_airport = 'PHL'
AND airline_flight = 'AA'
AND departure_time < '12:00:00'
SELECT fare_basis.fare_basis_code, fare_basis.basis_days
FROM fare_basis
JOIN flight_fare fare_1
ON fare_basis.fare_basis_code = fare_1.fare_basis_code
WHERE fare_1.flight_id = 928
AND fare_1.from_airport = 'DFW'
AND fare_1.to_airport = 'BOS'
SELECT distance_km FROM airport_service airport_service_1
WHERE airport_service_1.airport_code = 'DAL'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE flight_1.airline_code = 'AA' AND flight_1.from_airport = 'CINcinnati' AND flight_1.to_airport = 'BURBANK' AND flight_1.flight_days = 1
SELECT airline.airline_name
FROM airline
WHERE EXISTS (
    SELECT 1
    FROM flight
    WHERE flight.from_airport = airline.airport_code
    AND flight.to_airport = 'SAN FRANCISCO'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'LAS VEGAS'
AND flight_leg_2.to_airport = 'NEW YORK'
AND flight_leg_1.nonstop = 1;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_stop flight_stop_1 , airport_service airport_service_3 , city city_3 WHERE flight_1.airline_code = 'PM' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'ATLANTTA' )
SELECT DISTINCT flight_1.flight_id, flight_1.departure_time, flight_1.arrival_time
FROM flight flight_1
JOIN flight_leg flight_leg_1
ON flight_1.flight_id = flight_leg_1.leg_flight
JOIN airport_service airport_service_1
ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight_leg flight_leg_2
ON flight_leg_1.to_airport = flight_leg_2.leg_flight
JOIN airport_service airport_service_2
ON flight_leg_2.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'PHOENIX' AND city_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
INNER JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
INNER JOIN airport airport_service_2 ON flight_stop_2.arrival_airport = airport_service_2.airport_code
WHERE flight_stop_1.arrival_day = 'SUNDAY' AND flight_stop_1.arrival_time >= '17:00:00' AND airport_service_1.city_name = 'CHICAGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time BETWEEN '12:00:00' AND '23:59:00'
AND flight_leg_2.day_name = 'Saturday'
AND flight_leg_2.arrival_time IS NOT NULL;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'LOVEFIELD'
SELECT DISTINCT flight_1.flight_id, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.arrival_time, flight_1.departure_time, flight_1.flight_days
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 1 AND flight_stop_2.stop_days = 1
SELECT *
FROM flight
WHERE airline_code = 'AA' AND (
    (from_airport = 'BOS' AND to_airport = 'OAK' AND stopovers = 1)
    OR (from_airport = 'BOS' AND to_airport = 'DEN' AND stopovers = 1)
);
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'DAL' AND fare.to_airport = 'ATL' AND fare.class_type = 'economy';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'CO' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' )
SELECT * FROM flight_stop flight_stop_1
WHERE flight_stop_1.departure_airline = 'AA' AND flight_stop_1.stop_days = 1 AND flight_stop_1.stop_airport = 'ATL' AND flight_stop_1.stop_days = 1;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , state state_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN DIEGO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND city_2.state_code = state_1.state_code AND state_1.state_name = 'NEW JERSEY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'AA'
AND flight_stop_2.arrival_airline = 'AA'
AND flight_stop_1.stop_days >= 2
AND flight_stop_2.stop_days >= 2
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time BETWEEN '2023-07-20 10:00:00' AND '2023-07-27 07:00:00'
AND flight_leg_2.departure_time BETWEEN '2023-07-27 14:00:00' AND '2023-08-04 07:00:00'
SELECT flight_id
FROM flight
WHERE departure_date = '1991-07-25' AND class_of_service = 'FIRST'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.fare_id = fare_1.fare_id
JOIN airline airline_1
ON fare_1.airline_code = airline_1.airline_code
WHERE airline_1.airline_name = 'AMERICAN AIRLINES'
AND flight_1.from_airport = 'MILWAUKEE'
AND flight_1.to_airport = 'PHOENIX'
SELECT fare_1.fare_id
FROM fare fare_1
JOIN flight flight_1
ON fare_1.fare_id = flight_1.fare_id
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1
ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2
ON airport_service_1.city_code = airport_service_2.city_code
WHERE airport_service_2.city_name = 'BWI'
SELECT DISTINCT airline.airline_name
FROM airline
JOIN flight flight ON airline.airline_code = flight.airline_code
WHERE flight.from_airport = 'TORONTO' AND flight.to_airport = 'DENVER'
SELECT fare.fare_id
FROM fare
WHERE fare.to_airport = 'SFO'
  AND fare.departure_time >= '2023-11-07'
  AND fare.from_airport = 'OAK'
SELECT code_description FROM code_description WHERE code = 'EWR';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.departure_time >= 0 AND flight_1.departure_time < 600 )
SELECT flight_id
FROM flight
WHERE airline_code = 'UA'
AND from_airport = 'DENVER'
AND to_airport = 'BALTIMORE'
AND class_of_service = 'FIRST_CLASS';
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport_code = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'DAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PITTSBURGH' AND airport_2.city_name = 'OAKLAND' AND flight_1.departure_time >= 2300;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND(( flight_1.airline_code = 'DL' AND 1 = 1 ) OR( flight_1.airline_code = 'TW' AND 1 = 1 ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PHILADELPHIA' AND airport_2.city_name = 'SAN FRANCISCO' AND date(flight_leg_1.departure_time) = '2023-10-27'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'ATLANTA' AND airport_2.city_name = 'OAKLAND' AND (flight_leg_1.day_name = 'THURSDAY' AND flight_leg_2.day_name = 'THURSDAY')
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TAMPA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. LOUIS' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 9 AND date_day_1.day_number = 10 AND( flight_1.departure_time BETWEEN 0900 AND 1000 AND 1 = 1 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_flight = days_1.days_code
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_1.to_airport = airport_service_2.airport_code
WHERE flight_1.airline_code = 'KB' AND flight_1.from_airport = 'MCI' AND flight_1.to_airport = 'CLE' AND days_1.days_code = 30 AND days_1.day_name = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time BETWEEN '08:00:00' AND '12:00:00'
SELECT DISTINCT airline.airline_name
FROM airline
JOIN flight flight ON airline.airline_code = flight.airline_code
WHERE airline.country_name = 'CANADIAN AIRLINES INTERNATIONAL';
SELECT DISTINCT flight_1.flight_id, equipment_sequence.aircraft_code, equipment_sequence.aircraft_code_sequence
FROM flight flight_1
INNER JOIN equipment_sequence equipment_sequence
ON flight_1.flight_id = equipment_sequence.flight_id
WHERE equipment_sequence.aircraft_code = '737'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport_code = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_2.departure_airport_code = airport_service_2.airport_code
WHERE flight_1.from_airport = 'SFO'
AND flight_1.to_airport = 'BOS'
AND flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
AND airline_code = 'DAL'
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
WHERE flight_fare_1.flight_id = flight_1.flight_id
AND flight_fare_1.from_airport = airport_service_1.airport_code
AND flight_fare_1.to_airport = 'WASHINGTON DC'
AND flight_fare_1.departure_time > 1700
AND fare_1.class_type = 'economy'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'BOS'
SELECT flight_id
FROM flight
WHERE airline_code = 'AA'
AND from_airport = 'CINcinnati'
AND to_airport = 'HOUSTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'DENVER' AND flight_leg_2.to_airport = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'NEW YORK'
AND airport_service_2.city_name = 'MIAMI'
SELECT DISTINCT flight_1.airline_code
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PITTSBURGH' AND airport_2.city_name = 'BALtimore'
SELECT code, description
FROM code_description
WHERE code = 'SA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.stop_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_1.arrival_airport = airport_2.airport_code
WHERE airport_1.airport_name = 'BWI' AND airport_2.airport_name = 'DENVER'
SELECT DISTINCT flight_1.flight_id, flight_1.airline_flight, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'Thursday' AND flight_leg_1.departure_time < 0900;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'NEWARK' AND airport_2.city_name = 'NASHVILLE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE day(flight_leg_1.day_number) = 1 AND day(flight_leg_2.day_number) = 1
SELECT flight_id
FROM flight
WHERE arrival_time = '2023-11-11 19:00:00'
AND from_airport = 'BOS'
AND airline_flight = 'DL'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN flight flight_1
ON ground_service_1.aircraft_code_sequence = flight_1.aircraft_code
WHERE flight_1.from_airport = 'ORD' AND flight_1.to_airport = 'ORD'
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
JOIN date_day date_day_1
ON date_day_1.day_number = flight_1.flight_days.days_code
WHERE date_day_1.month_number = 12
AND date_day_1.day_number = 25
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 , flight_fare flight_fare_1 , fare fare_1 , fare_basis fare_basis_1 , fare_basis fare_basis_2 , days days_2 , date_day date_day_2 WHERE flight_1.airline_code = 'US' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CLEVELAND' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MIAMI' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND fare_1.fare_basis_code = fare_basis_2.fare_basis_code AND fare_basis_2.basis_days = days_2.days_code AND days_2.day_name = date_day_2.day_name AND date_day_2.year = 1991 AND date_day_2.month_number = 2 AND date_day_2.day_number = 22 ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA'
AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code
AND flight_1.arrival_time >= '23:00:00'
SELECT flight_id
FROM flight
WHERE airline_code = 'AA'
AND from_airport = 'PHL'
AND to_airport = 'SFO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'SUNDAY' AND flight_leg_2.arrival_time >= '08:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1
ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'PITTSBURGH'
AND flight_1.to_airport = 'NEWARK'
AND flight_1.flight_days = 1
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT DISTINCT ground_service.airport_code, ground_service.transport_type, ground_service.city_code
FROM ground_service
WHERE ground_service.airport_code = 'SEA'
SELECT flight_id, fare_id, from_airport, to_airport, round_trip_cost, fare_basis_code
FROM flight
WHERE from_airport = 'PIT' AND to_airport = 'BOS'
ORDER BY round_trip_cost ASC
LIMIT 1;
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'BOSTON'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = city_2.city_code
AND city_2.city_name = 'ATLANTA'
WHERE flight_1.stops = 0
AND flight_1.arrival_time BETWEEN '17:00:00' AND '19:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time BETWEEN 1400 AND 1800
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BALtimore' AND airport_2.city_name = 'Philadelphia'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.airport_code
JOIN city city_2 ON flight_stop_2.departure_airport = city_2.airport_code
WHERE city_1.city_name = 'SAN FRANCISCO' AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN flight_stop flight_stop_3 ON flight_stop_3.flight_id = flight_stop_2.flight_id
WHERE flight_stop_1.stop_days > 3
SELECT flight_id, fare_basis_code, round_trip_cost
FROM fare
WHERE from_airport = 'DAL' AND to_airport = 'BAL'
ORDER BY round_trip_cost ASC
LIMIT 1;
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 00:00:00' AND '2023-10-27 12:00:00'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE departure_time >= '2023-10-27' AND departure_time < '2023-10-30' AND airline_code = 'UA'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'Dallas'
AND flight_1.departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    JOIN airport_service airport_service_2
    ON flight.to_airport = airport_service_2.airport_code
    JOIN city city_2
    ON airport_service_2.city_code = city_2.city_code
    WHERE city_2.city_name = 'Boston'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport_code = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_1.departure_airport_code = airport_2.airport_code
WHERE flight_1.from_airport = 'PITTSBURGH' AND flight_1.to_airport = 'DENVER'
SELECT flight_id
FROM flight
WHERE departure_time = DATE_ADD(day, 1, CAST(strftime('%Y-%m-%d', NOW()) AS DATE))
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.city_name
JOIN city city_2 ON flight_stop_2.departure_airport = city_2.city_name
WHERE flight_1.from_airport = 'MEMPHIS' AND flight_1.to_airport = 'CHARLOTTE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_1.arrival_airport
WHERE flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'DAL' AND flight_leg_1.stop_days = 1;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'OAKLAND' AND airport_2.city_name = 'BOSTON'
SELECT *
FROM fare
WHERE to_airport = 'DENVER'
AND restriction_code = 'RCD'
AND round_trip_required = 'YES'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE fare_1.round_trip_required = 1
AND fare_1.class_type = 'economy'
AND fare_1.season = 'summer'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.round_trip_required = 'NO' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' ) AND fare_1.round_trip_required = 'NO' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' AND(( flight_1.departure_time > 2330 OR flight_1.departure_time = 2330 ) OR flight_1.departure_time < 30 ) )
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'OAKLAND'
AND fare.to_airport = 'DALLAS'
AND fare.date BETWEEN '1991-12-16' AND '1991-12-16'
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_name AND city_2.city_name = 'ATLANTA'
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE fare.to_airport = 'BOS' AND fare.meal_code = 'MEAL' AND fare.departure_time BETWEEN 0 AND 1200
AND fare.from_airport = 'PIT' AND fare.meal_code = 'MEAL' AND fare.arrival_time BETWEEN 0 AND 1200
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
AND flight_stop_1.arrival_time >= '09:00'
AND flight_stop_2.arrival_time <= '17:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_date = '2023-07-08'
AND flight_stop_2.departure_airport = 'PITTSBURGH'
SELECT flight_1.flight_id, flight_1.departure_time, flight_1.arrival_time
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 20 AND flight_leg_1.month_number = 9 AND flight_leg_1.year = 2023 AND flight_leg_2.arrival_time > (SELECT MAX( arrival_time ) FROM flight_leg flight_leg WHERE day_number = 20 AND month_number = 9 AND year = 2023 AND airline_code = 'UA' AND flight_leg_2.flight_id = flight_1.flight_id)
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
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'Philadelphia'
AND city_2.city_name = 'Baltimore'
SELECT flight_id
FROM flight
WHERE from_airport = 'OAKLAND'
AND to_airport = 'BOS'
AND EXISTS (
    SELECT 1
    FROM flight_stop
    WHERE flight_stop.departure_airline = 'DAL'
    AND flight_stop.stop_days = 1
    AND flight_stop.stop_airport = 'DFW'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time BETWEEN 0 AND 1000
AND flight_leg_2.departure_time BETWEEN 0 AND 1000
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
WHERE city_1.city_name = 'COLUMBUS' AND city_2.city_name = 'BALTIMORE'
SELECT fare_basis_code FROM fare WHERE fare_basis_code LIKE '%qx%'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'PHL' AND flight_1.arrival_time BETWEEN '14:00:00' AND '17:00:00'
SELECT fare.round_trip_cost
FROM fare
JOIN flight flight ON fare.to_airport = flight.to_airport
WHERE flight.from_airport = 'DAL' AND flight.to_airport = 'BAL'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WESTCHESTER COUNTY'
SELECT flight_id
FROM flight
WHERE departure_time = '08:38:00'
AND from_airport = 'BOS'
AND airline_flight = 'UA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_2.stop_days = 2 AND flight_stop_2.stop_airport = 'ORD'
AND flight_stop_1.arrival_time BETWEEN '06:00:00' AND '10:00:00'
SELECT code_description.description FROM code_description WHERE code = 'Y'
SELECT flight_1.flight_id, fare.fare_id, fare.round_trip_cost
FROM flight flight_1
INNER JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'PHL'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airline airline_1
ON flight_1.airline_code = airline_1.airline_code
WHERE flight_1.from_airport = 'WA' AND flight_1.to_airport = 'DEN'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PITTSBURGH' AND airport_2.city_name = 'ATLANTA'
SELECT DISTINCT airport_service.airport_name, airport_service.city_code, airport_service.direction
FROM airport_service
WHERE airport_service.city_code = 'SFO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 23 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = ' atlanta'
SELECT code FROM code_description WHERE description = 'YYN'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN date_day date_day_1 ON flight_leg_1.leg_flight = date_day_1.day_number
WHERE date_day_1.day_name = ' wednesday'
AND flight_leg_1.leg_flight > (SELECT MAX(leg_flight) FROM flight_leg WHERE leg_flight < flight_leg_1.leg_flight AND date_day = date_day_1)
SELECT flight_id
FROM flight
WHERE arrival_time >= '16:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'SAN FRANCISCO'
AND airport_2.city_name = 'WASHINGTON DC'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'BOS'
    AND arrival_airport = 'ATL'
    AND departure_date = '1991-11-07'
);
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 07:00:00' AND '2023-10-27 10:00:00'
AND from_airport = 'OAK'
AND aircraft_code = '737';
SELECT DISTINCT flight_stop_1.flight_id , flight_stop_1.stop_number FROM flight_stop flight_stop_1 , airport_service airport_service_1 , city city_1 , flight flight_1 , airport_service airport_service_2 , city city_2 , airport_service airport_service_3 , city city_3 , flight_leg flight_leg_1 , flight flight_2 WHERE flight_stop_1.stop_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHILADELPHIA' AND flight_stop_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'DENVER' AND flight_1.flight_id = flight_leg_1.flight_id AND flight_leg_1.leg_flight = flight_2.flight_id AND flight_2.airline_code = 'DL' AND( flight_2.flight_number = 323 OR flight_2.flight_number = 229 ) )
SELECT DISTINCT flight_id
FROM flight
WHERE to_airport = 'KSC'
AND arrival_time = '2022-05-20 18:00:00'
AND flight_days = 'saturday'
AND saturday_stay_required = 'true'
SELECT flight_id
FROM flight
WHERE departure_date = '2023-10-27' AND from_airport = 'DETROIT' AND to_airport = 'ST. PETERSBURG'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'PIT' AND flight_fare_1.round_trip_cost IS NOT NULL
ORDER BY fare_1.round_trip_cost ASC;
SELECT flight_id
FROM flight
WHERE from_airport = 'PHL' AND to_airport = 'DAL' AND arrival_time = (SELECT MIN(arrival_time) FROM flight WHERE from_airport = 'PHL' AND to_airport = 'DAL');
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BALtimore' AND airport_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT aircraft.aircraft_code, aircraft.aircraft_description
FROM aircraft
JOIN dual_carrier ON aircraft.aircraft_code = dual_carrier.low_flight_number OR aircraft.aircraft_code = dual_carrier.high_flight_number;
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_2.arrival_time > 2100
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 1 AND flight_leg_2.day_number = 3 AND flight_leg_1.from_airport = 'PITTSBURGH' AND flight_leg_2.to_airport = 'ATLANTA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'DENVER'
AND flight_1.to_airport = 'PITTSBURGH'
OR flight_1.from_airport = 'DENVER'
AND flight_1.to_airport = 'ATLANTA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
INNER JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
INNER JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE flight_1.from_airport = 'BALTIMORE'
AND flight_1.to_airport = 'SAN FRANCISCO'
AND flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'OAKLAND'
AND airport_service_2.city_name = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND flight_1.saturday_stay_required = 1;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'LOVE FIELD'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE departure_time = (SELECT MIN( departure_time ) FROM flight flight WHERE from_airport = 'BOS' AND flight_days >= 1);
SELECT flight_id
FROM flight
WHERE departure_time >= '2023-04-06 06:00:00'
AND airline_flight = 'WN'
SELECT fare_1.fare_id
FROM fare fare_1
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'MEMPHIS' AND city_2.city_name = 'MIAMI'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_1.flight_id = flight_leg_1.flight_id
JOIN day day_1 ON flight_leg_1.leg_day = day_1.days_code
JOIN time_interval time_interval_1 ON day_1.day_name = time_interval_1.period
WHERE day_1.day_name = 'WEDNESDAY'
AND time_interval_1.end_time >= '17:00:00'
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport_service.direction, airport_service.city_code, airport_service.miles_distant
FROM airport_service
WHERE airport_service.airport_code = 'DAL' AND airport_service.direction = 'outbound' AND airport_service.city_code = 'DAL'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '08:00:00' AND '12:00:00'
AND fare_basis_code = 'M'
AND from_airport = 'ATL'
AND to_airport = 'BOS'
SELECT flight_fare.fare_id
FROM fare_basis fare_basis
JOIN fare fare
ON fare_basis.fare_basis_code = fare.fare_basis_code
JOIN flight_fare flight_fare
ON fare.fare_id = flight_fare.fare_id
JOIN flight flight
ON flight_fare.flight_id = flight.flight_id
WHERE flight.from_airport = 'PHL' AND flight.arrival_time = '2023-04-16 20:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'HOUSTON' AND airport_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_airport = 'SJC' AND flight_leg_2.arrival_airport = 'STL'
SELECT COUNT(*) FROM flight_fare fare_1
JOIN flight flight_2
ON fare_1.flight_id = flight_2.flight_id
WHERE fare_1.to_airport = 'ATL'
AND fare_2.class_of_service = '734'
SELECT code_description FROM code_description WHERE code = 'EWR';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND( flight_1.departure_time >= 1000 AND flight_1.departure_time <= 1400 ) )
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
JOIN flight flight_2
ON flight_2.flight_id = flight_fare_1.next_flight_id
WHERE flight_1.from_airport = 'PITTSBURGH'
AND flight_2.to_airport = 'NEW_YORK CITY'
SELECT *
FROM flight
WHERE flight_id = 497766
AND from_airport = 'STL'
AND to_airport = 'MIL'
AND stopovers = 1
AND arrival_time = DATE_ADD(NOW(), INTERVAL 1 DAY, DAY)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_cost IS NOT NULL AND 1 = 1 )
SELECT airline.airline_name, airline.airline_code
FROM airline
WHERE airline.note = 'US';
SELECT DISTINCT airport_code, transport_type, city_code, ground_fare
FROM ground_service
WHERE airport_code = 'DENVER'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airline airline_1
ON flight_1.airline_code = airline_1.airline_code
WHERE airline_1.note = 'AMERICAN' AND flight_1.from_airport = 'PHOENIX' AND flight_1.to_airport = 'DENVER'
SELECT * FROM flight flight_1
WHERE departure_time BETWEEN 1500 AND 1800 AND flight_1.from_airport = 'WA' AND flight_1.to_airport = 'DENVER'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN aircraft aircraft_1 ON aircraft_1.aircraft_code = flight_leg_1.aircraft_code
JOIN airport airport_1 ON airport_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_2 ON airport_2.airport_code = flight_leg_1.to_airport
WHERE aircraft_1.manufacturer = 'BOeing' AND aircraft_1.model = '737'
SELECT fare_1.fare_id
FROM fare fare_1
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_service_2
ON flight_fare_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.arrival_time = '718' AND flight_1.from_airport = 'LAS VEGAS' AND flight_1.to_airport = 'NEW YORK'
SELECT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN airport airport_1
ON ground_service_1.airport_code = airport_1.airport_code
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
WHERE airport_1.city_code = 'DENVER'
SELECT DISTINCT flight_fare.fare_id
FROM flight_fare
WHERE flight_fare.from_airport = 'PITTSBURGH'
AND flight_fare.to_airport = 'DENVER'
SELECT DISTINCT airport_service.airport_code, airport_service.transport_type, airport_service.city_code
FROM airport_service
WHERE airport_service.city_code = 'SFO'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE airport_service_1.city_name = 'DENVER'
AND flight_leg_1.arrival_time < '12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
WHERE airport_service_1.city_code = 'MGT'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT * FROM flight_fare flight_fare_1
WHERE flight_fare_1.flight_id = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'BOS'
    AND to_airport = 'BOS'
    AND departure_time = (
        SELECT MAX( departure_time )
        FROM flight
        WHERE from_airport = 'BOS'
        AND to_airport = 'BOS'
    )
)
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'BALtimore'
SELECT * FROM fare_basis fare_basis_1
WHERE restriction_code = 'AP/80'
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE fare.from_airport = 'DENVER'
AND fare.to_airport = 'PITTSBURGH'
SELECT DISTINCT flight_1.airline_code
FROM flight flight_1 , airline airline_1
WHERE flight_1.from_airport = airline_1.airport_code AND airline_1.airline_name = 'DELTA'
SELECT DISTINCT flight_1.flight_id
FROM flight_stop flight_stop_1
JOIN flight flight_stop_2 ON flight_stop_1.stop_number = flight_stop_2.stop_number
JOIN flight flight_stop_3 ON flight_stop_2.stop_number = flight_stop_3.stop_number
JOIN flight flight_stop_4 ON flight_stop_3.stop_number = flight_stop_4.stop_number
JOIN flight flight_stop_5 ON flight_stop_4.stop_number = flight_stop_5.stop_number
WHERE flight_stop_1.departure_airline = 'UA' AND flight_stop_2.arrival_airline = 'AA' AND flight_stop_3.arrival_airline = 'UA' AND flight_stop_4.arrival_airline = 'AA' AND flight_stop_5.arrival_airline = 'UA' AND flight_stop_1.stop_days >= 2;
SELECT fare_airline, fare_basis_code, round_trip_cost
FROM fare
WHERE from_airport = 'BOS' AND to_airport = 'PHL'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN 1400 AND 1800
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN city city_1 ON airport_1.airport_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN '2023-06-17 19:00:00' AND '2023-06-17 21:00:00'
AND city_1.city_name = 'KANSAS CITY'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOSTON'
AND airport_2.city_name = 'ATLANTA'
ORDER BY flight_stop_1.arrival_time;
SELECT *
FROM flight
WHERE from_airport = 'TORONTO'
AND flight_days BETWEEN 530 AND 700
SELECT flight_id
FROM flight
WHERE airline_code = 'DAL'
AND from_airport = 'ATL'
AND to_airport = 'PIT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_day = days_1.days_code
WHERE days_1.day_name = 'tuesday'
AND flight_1.from_airport = 'DCA'
AND flight_1.arrival_time = '09:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 , fare_basis fare_basis_1 , days days_2 , date_day date_day_2 WHERE flight_1.departure_time BETWEEN 1800 AND 2200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 21 ) ) AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.basis_days = days_2.days_code AND days_2.day_name = date_day_2.day_name AND date_day_2.year = 1991 AND date_day_2.month_number = 2 AND date_day_2.day_number = 21
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE flight_1.flight_days = 'WEDNESDAY' AND flight_1.from_airport = 'DENVER' AND flight_1.to_airport = 'BOS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
WHERE flight_fare_1.flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE departure_time BETWEEN '2023-10-27 00:00:00' AND '2023-10-27 23:59:59'
    AND origin = 'DENVER'
)
SELECT DISTINCT airport_service.transport_type, airport_service.city_code
FROM airport_service
WHERE airport_service.airport_code = 'BOS'
AND airport_service.direction = 'TO'
AND airport_service.city_code = 'BOS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN date_day date_day_1 ON flight_leg_1.leg_date = date_day_1.day_number
INNER JOIN city city_1 ON date_day_1.city_code = city_1.city_code
INNER JOIN city city_2 ON flight_leg_1.arrival_airport = city_2.city_code
WHERE date_day_1.day_name = 'SATURDAY'
AND flight_1.from_airport = 'TAMPA'
AND flight_1.to_airport = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.stop_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_stop_2.stop_airport
INNER JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
INNER JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.airline_code = 'AC'
AND flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN days days_1 ON flight_leg_1.leg_day = days_1.days_code
INNER JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
INNER JOIN airport airport_2 ON flight_leg_1.arrival_airport = airport_2.airport_code
WHERE flight_1.to_airport = 'DCA'
AND flight_leg_1.leg_month = 12
AND airport_1.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BALTIMORE'
AND flight_leg_1.to_airport = 'NEWARK'
AND flight_leg_2.day_name = 'WEDNESDAY'
AND flight_leg_2.time_elapsed <= 1200
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
INNER JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
INNER JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE date_day BETWEEN DATE_ADD(NOW(), INTERVAL 2 DAY) AND DATE_ADD(NOW(), INTERVAL 2 DAY)
SELECT fare.fare_basis_code, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.flight_id = flight_fare.flight_id
WHERE flight_fare.from_airport = 'PITTSBURGH' AND flight_fare.to_airport = 'ATLANTA'
SELECT * FROM airport_service airport_service_1
WHERE airport_service_1.airport_code = 'ATL'
AND airport_service_1.city_code = 'ATL'
AND airport_service_1.minimum_connect_time > 0;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time = (SELECT MAX( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT *
FROM flight
WHERE to_airport = 'CLT'
AND arrival_time >= '2023-10-27 10:00:00'
SELECT fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.flight_id = flight_fare.flight_id
WHERE fare.from_airport = 'OAKLAND' AND fare.to_airport = 'ATLANTA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = ' nashville' AND airport_2.city_name = 'seattle'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_number = 1 AND flight_leg_2.day_number = 2
SELECT fare.round_trip_cost
FROM fare
WHERE from_airport = 'INDIANAapolis'
AND to_airport = 'SEATTLE'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.stop_airport
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'SFO'
AND flight_1.to_airport = 'PIT'
AND flight_leg_1.leg_day = 1
AND flight_leg_1.leg_flight = 1
AND airport_service_1.city_code = 'PIT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
AND flight_stop_1.stop_time >= '0900'
AND flight_stop_2.stop_time <= '1200'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_leg_2.to_flight
WHERE flight_2.arrival_time BETWEEN '2023-10-27 19:00:00' AND '2023-10-27 21:00:00' AND flight_2.from_airport = 'PITTSBURGH' AND flight_2.to_airport = 'LOS ANGELES'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
INNER JOIN flight_leg flight_leg_1
ON fare_1.flight_id = flight_leg_1.flight_id
INNER JOIN days days_1
ON flight_leg_1.leg_flight = days_1.days_code
INNER JOIN date_day date_day_1
ON days_1.days_code = date_day_1.days_code
WHERE date_day_1.month_number = 12 AND date_day_1.day_number = 27
AND fare_1.from_airport = 'INDIANAapolis'
AND fare_1.to_airport = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_leg_1.arrival_time BETWEEN '2023-09-15 00:00:00' AND '2023-09-15 23:59:59'
SELECT flight_id
FROM flight
WHERE from_airport = 'BOS'
AND departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'BOS'
    AND departure_time > 0
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MAX( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'WASHINGTON' AND airport_2.city_name = 'SAN FRANCISCO'
SELECT * FROM restriction
WHERE application = 'Airline' AND restriction_code = 'AP'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN 1500 AND 1900 AND flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'OAK'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
INNER JOIN food_service food_service_1 ON food_service_1.meal_code = flight_leg_1.meal_code
INNER JOIN city city_1 ON city_1.city_name = flight_leg_1.arrival_city
INNER JOIN city city_2 ON city_2.city_name = flight_leg_2.departure_city
WHERE flight_1.departure_day = 'friday' AND flight_1.arrival_day = 'kansas_city' AND flight_1.meal_code = 'MEAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'LONG BEACH' AND flight_1.to_airport = 'ST. LOUIS' AND flight_stop_1.stop_days = 1 AND flight_stop_1.stop_airport = 'DALAS'
SELECT time_elapsed FROM date_day
WHERE day_number = 25
AND month_number = 10
AND day_name = 'MONDAY'
AND departure_time = '2023-10-25 12:00:00'
AND arrival_time = '2023-10-25 14:00:00';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'LAX'
AND flight_leg_2.to_airport = 'PIT'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE flight_1.airline_code = 'DL' AND flight_1.from_airport = 'DENVER' AND flight_1.to_airport = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'PHL' AND flight_leg_2.to_airport = 'SFO'
SELECT flight_id
FROM flight
WHERE departure_time = '2023-10-15 14:00:00'
AND day_name = 'tuesday'
AND month_number = 10
AND day_number = 15;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_1.city_code = 'DENVER'
AND airport_service_2.city_code = 'SLC'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , airport_service airport_service_3 , city city_3 , flight_fare flight_fare_1 , fare fare_1 , fare_basis fare_basis_1 WHERE(( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'FORT WORTH' ) AND flight_1.to_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'SAN FRANCISCO' ) AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND 1 = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time IS NOT NULL
AND flight_leg_2.arrival_time IS NOT NULL
AND flight_leg_1.departure_time BETWEEN '14:00:00' AND '18:00:00'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN( departure_time )
    FROM flight
    WHERE from_airport = 'DALAS'
    AND to_airport = 'HOUSTON'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE flight_1.departure_airport = 'BALtimore'
AND flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
SELECT * FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'SAN FRANCISCO' AND airport_2.city_name = 'BOSTON' AND flight_stop_1.stop_days = 1 AND flight_stop_2.stop_days = 1;
SELECT distance(airport('SFO', 'SAN FRANCISCO') , airport('EWR', 'SAN FRANCISCO')) AS distance_km
SELECT airline_code
FROM airline
WHERE airline_name = 'DL';
SELECT flight_id, departure_time, airline_flight, airline_code
FROM flight
WHERE departure_time = (SELECT MAX(departure_time) FROM flight);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'GENERAL MITCHELL INTERNATIONAL AIRPORT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
INNER JOIN airport airport_service_2 ON flight_stop_1.departure_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'NYC'
AND flight_stop_1.stop_days = 1
AND airport_service_1.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN airline airline_1
ON fare_1.airline_code = airline_1.airline_code
WHERE airline_1.airline_name = 'AMERICAN AIRLINES'
AND flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'DAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_city = city_1.city_name
JOIN city city_2 ON flight_stop_1.departure_city = city_2.city_name
WHERE flight_stop_1.stop_days = 1
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'MONDAY' AND flight_leg_2.from_airport = 'SFO' AND flight_leg_2.to_airport = 'PIT'
SELECT fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare ON fare.fare_id = flight_fare.fare_id
WHERE fare.from_airport = 'BOS' AND fare.to_airport = 'WA' AND flight_fare.round_trip_required = 1;
SELECT flight_id
FROM flight
WHERE departure_time >= (SELECT MAX(departure_time) FROM flight WHERE day_name = 'FRIDAY' AND time_elapsed >= 1800)
SELECT DISTINCT airport_service.transport_type
FROM airport_service
WHERE airport_service.city_code = 'MINneapolis'
SELECT DISTINCT aircraft_1.aircraft_code FROM aircraft aircraft_1
WHERE aircraft_1.aircraft_code = (
    SELECT aircraft_2.aircraft_code
    FROM aircraft aircraft_2
    WHERE aircraft_2.basic_type = 'M80'
);
SELECT flight_id
FROM flight
WHERE departure_time < '09:00:00' AND from_airport = 'PITTSBURGH' AND to_airport = 'PHILADELPHIA'
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.flight_id = flight_fare.flight_id
WHERE fare.from_airport = 'DAL' AND fare.to_airport = 'BAL' AND fare.class_of_service = 'economy';
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.departure_time NOT BETWEEN 601 AND 1759 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHILADELPHIA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN date_day date_day_1 ON flight_leg_1.leg_date = date_day_1.day_number
WHERE date_day_1.day_name = 'TODAY'
SELECT fare_1.fare_id
FROM fare fare_1
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_fare_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = ' atlanta' AND city_2.city_name = 'baltimore'
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'BALTIMORE'
AND fare.to_airport = 'DALAS'
AND fare.departure_time = '2023-07-29'
SELECT flight_fare.flight_id, fare_basis.description, fare_basis.basis_days
FROM flight_fare
JOIN fare_basis
ON flight_fare.fare_basis_code = fare_basis.code
WHERE flight_fare.from_airport = 'HOUSTON' AND flight_fare.to_airport = 'LAS VEGAS'
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'NEW_YORK' AND fare.to_airport = 'MIA' AND fare.departure_time = '2023-10-27'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.arrival_time >= '2023-04-01 10:00:00' AND flight_leg_1.arrival_time <= '2023-04-01 23:59:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'DAL' AND flight_1.to_airport = 'TAMPA'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'DENVER'
AND flight_1.to_airport = 'SFO'
AND flight_1.departure_time >= 600
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'BALTIMORE'
AND flight_leg_2.to_airport = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_1.flight_id = flight_leg_1.leg_flight
JOIN flight flight_2 ON flight_leg_1.leg_flight = flight_2.flight_id
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_2.to_airport = airport_service_2.airport_code
WHERE flight_1.departure_date = '2023-10-27' AND flight_1.from_airport = 'PHOENIX' AND flight_2.to_airport = 'DETROIT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'ST. LOUIS'
AND airport_2.city_name = 'SAN DIEGO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 )
SELECT flight_1.flight_id, flight_1.departure_time
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_1.flight_id = flight_leg_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_1.leg_number = flight_leg_2.leg_number
WHERE flight_1.from_airport = 'SFO' AND flight_1.to_airport = 'ATL'
SELECT flight_id
FROM flight
WHERE from_airport = 'DCA'
AND destination = 'PHL'
AND month_number = 12
AND day_number BETWEEN 20 AND 27;
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.arrival_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BALTIMORE'
AND airport_2.city_name = 'SAN FRANCISCO'
AND flight_stop_1.arrival_time = '2023-08-15 20:00:00'
AND flight_stop_2.arrival_time = '2023-08-15 20:00:00'
AND dayofweek(flight_stop_1.arrival_time) = 5;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOSTON' AND airport_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.aircraft_code
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN aircraft aircraft_1 ON aircraft_1.aircraft_code = flight_leg_1.aircraft_code
WHERE aircraft_1.manufacturer = 'Eastern'
AND aircraft_1.basic_type = 'Airbus A320'
AND flight_leg_1.arrival_time < '21:00:00'
SELECT flight_id
FROM flight
WHERE departure_time >= DATE_ADD(NOW(), INTERVAL 1 DAY)
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_leg_2.to_flight
WHERE flight_2.arrival_date = '1991-08-31'
SELECT fare_1.fare_id
FROM fare fare_1
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN 0 AND 1200
AND flight_1.from_airport = 'NYC'
AND flight_1.to_airport = 'MIA'
AND flight_1.class_of_service = 'FIRST'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE airport_service_1.city_name = 'PHOENIX' AND airport_service_2.city_name = 'MILWAUKEE' AND flight_leg_1.day_name = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_2.departure_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'TAMPA'
AND airport_service_2.city_code = 'CINcinnati'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'MKE'
SELECT *
FROM equipment_sequence
WHERE aircraft_code = 'UAL'
AND rental_date BETWEEN '2023-10-27' AND '2023-10-30'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_1.to_airport = 'BOS' AND flight_leg_1.arrival_time >= '2023-10-27 12:00:00' AND flight_leg_2.departure_time <= '2023-10-27 17:00:00'
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.to_airport = 'DALLAS' AND fare.from_airport = 'SAN FRANCISCO'
SELECT distance(to_geopoint(airport_service_1.city_code, airport_service_1.latitude), to_geopoint(dallas_airport.latitude, dallas_airport.longitude)) AS distance
FROM dallas_airport
WHERE dallas_airport.city_code = 'DAL'
SELECT fare.to_airport, fare.restriction_code, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'SJC' AND fare.to_airport = 'SLC'
SELECT fare.fare_id
FROM fare
JOIN flight_fare flight_fare ON fare.to_airport = flight_fare.from_airport
WHERE flight_fare.from_airport = 'SFO' AND flight_fare.to_airport = 'DFW' AND flight_fare.flight_id = 852;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.stop_airport = airport_1.airport_code
JOIN airport airport_2 ON airport_1.airport_code = airport_2.airport_code
WHERE flight_1.from_airport = 'PITTSBURGH'
AND flight_1.arrival_time >= '2023-10-27 18:00:00'
AND airport_2.city_name = 'PHILADELPHIA'
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.flight_id = flight_fare.flight_id
WHERE fare.from_airport = 'DAL' AND fare.to_airport = 'BAL'
AND fare.round_trip_required = 1
ORDER BY fare.round_trip_cost ASC;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER' )
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare
ON fare.flight_id = flight_fare.flight_id
WHERE fare.from_airport = 'DENVER' AND fare.to_airport = 'ATLANTA'
AND fare.round_trip_required = 1
AND fare.fare_basis_code = 'economy'
ORDER BY fare.round_trip_cost ASC;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_1.from_airport = 'CHICAGO'
AND flight_leg_1.arrival_time >= '2023-10-27 10:00:00'
AND flight_leg_2.arrival_time <= '2023-10-27 12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'BOSTON'
AND airport_service_2.city_name = 'SAN FRANCISCO'
AND flight_leg_1.departure_date >= '1992-01-01'
AND flight_leg_1.departure_date < '1992-01-31'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE flight_leg_1.day_name = 'THURSDAY' AND flight_leg_2.day_name = 'THURSDAY'
SELECT COUNT(*)
FROM flight
WHERE from_airport = 'BOS'
  AND to_airport = 'ATL'
  AND flight_days > 1
  AND EXISTS (
    SELECT 1
    FROM flight
    WHERE from_airport = 'BOS'
      AND to_airport = 'ATL'
      AND flight_days = 1
  );
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_flight_number = airport_service_1.flight_id
JOIN airport airport_service_2 ON airport_service_1.airport_code = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'OAKLAND' AND airport_service_2.city_name = 'BOSTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'LAS VEGAS' AND flight_leg_2.to_airport = 'NEW YORK' AND flight_leg_1.duration = 0;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
WHERE airport_1.city_name = 'BOSTON'
AND flight_1.departure_time < '05:00:00'
AND flight_1.flight_days = 'THURSDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
INNER JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.airport_code
INNER JOIN city city_2 ON flight_stop_2.departure_airport = city_2.airport_code
WHERE flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'DAL' AND flight_stop_1.stop_days = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_flight = days_1.days_code
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE days_1.day_name = 'MONDAY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , state state_1 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND city_2.state_code = state_1.state_code AND state_1.state_name = 'NEW JERSEY' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN flight_fare flight_fare_join
ON fare.flight_id = flight_fare_join.flight_id
WHERE flight_fare_join.flight_id = 'UA270'
AND flight_fare_join.from_airport = 'DENVER'
AND flight_fare_join.to_airport = 'PHILADELPHIA'
SELECT DISTINCT airline.airline_name
FROM airline
JOIN flight flight ON airline.airline_code = flight.airline_code
WHERE flight.to_airport = 'PITTSBURGH'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_1.to_airport
INNER JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
INNER JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'PITTSBURGH'
AND flight_1.to_airport = 'TACOMA'
AND flight_leg_1.stop_days = 2
AND city_1.city_name = 'LOS ANGELES'
SELECT fare.to_airport, fare.restriction_code, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'PIT' AND fare.to_airport = 'PHI'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TORONTO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 22
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
JOIN flight flight ON fare.to_airport = flight.to_airport
WHERE flight.flight_id = 217
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = flight_fare_1.from_airport
JOIN city city_1
ON city_1.city_code = airport_service_1.city_code
WHERE flight_fare_1.flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'BOS'
    AND arrival_time >= 1800
    AND day = 'Wednesday'
)
SELECT *
FROM flight
WHERE airline_code = 'US'
AND departure_time BETWEEN '14:00:00' AND '18:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = flight_fare_1.from_airport
JOIN city city_1
ON city_1.city_code = airport_service_1.city_code
WHERE flight_1.departure_date = '2023-03-15'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MONTREAL' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_2.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'MILWAUKEE' AND airport_2.city_name = 'MONTREAL'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'BOS' AND to_airport = 'PHL'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 12226 AND flight_leg_2.leg_flight = 12227 AND month(flight_leg_1.leg_date) = 6 AND day(flight_leg_1.leg_date) = 26
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.airport_code
INNER JOIN city city_2 ON flight_stop_1.departure_airport = city_2.airport_code
WHERE flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'DAL' AND flight_stop_1.stop_days = 1
SELECT DISTINCT airline.airline_name
FROM flight flight
JOIN airline airline_1
ON flight.airline_code = airline_1.airline_code
JOIN flight_stop flight_stop
ON flight.flight_id = flight_stop.flight_id
JOIN airport airport_1
ON flight_stop.stop_airport = airport_1.airport_code
JOIN city city_1
ON airport_1.city_code = city_1.city_code
WHERE flight.to_airport = 'SFO'
AND flight.departure_date = '2023-09-02'
AND flight.airline_code IN (
    SELECT DISTINCT airline_code
    FROM airline
    WHERE airline_name = 'DELTA'
    AND day = 'MONDAY'
    AND month = 'SEPTEMBER'
)
SELECT flight_id
FROM flight
WHERE from_airport = 'BOS' AND to_airport = 'SFO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_date = '2023-07-29' AND flight_leg_2.from_airport = 'BOS' AND flight_leg_2.to_airport = 'DEN'
SELECT DISTINCT aircraft.aircraft_code, aircraft.aircraft_description
FROM aircraft
JOIN flight_leg flight_leg
ON aircraft.aircraft_code = flight_leg.aircraft_code
WHERE flight_leg.from_airport = 'PITTSBURGH' AND flight_leg.to_airport = 'BALtimore'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE departure_time = '2023-10-27 08:00:00' AND from_airport = 'BOS' AND airline_code = 'UA'
SELECT flight_id
FROM flight
WHERE flight_id = 417
AND departure_time BETWEEN '2023-09-01 12:00:00' AND '2023-09-01 18:00:00'
AND airline_code = 'AA'
AND from_airport = 'CINcinnati'
AND to_airport = 'DALLAS';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND( flight_1.flight_days = '2023-08-20' AND flight_1.departure_time = 1900 ))
SELECT DISTINCT airport_service.airport_code, airport_service.city_code, airport_service.direction
FROM airport_service
WHERE airport_service.city_code = 'BOS' AND airport_service.direction = 'GROUND'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport_code = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.departure_airport_code = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'SAN FRANCISCO'
AND airport_service_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE flight_1.from_airport = 'HOUSTON'
AND flight_1.to_airport = 'MILWAUKEE'
AND flight_1.day = 'FRIDAY'
AND flight_stop_1.arrival_time >= 1200
AND flight_stop_2.departure_time <= 1800;
SELECT fare.fare_id, fare.round_trip_cost
FROM fare
WHERE from_airport = 'ATL'
  AND destination = 'DTW'
  AND class_of_service = 'LIMO'
SELECT flight_id
FROM flight
WHERE from_airport = 'DENVER'
AND to_airport = 'PITTSBURGH'
SELECT flight_id, arrival_time, time_elapsed
FROM flight
WHERE to_airport = 'SFO' AND day_name = 'FRIDAY' AND time_elapsed >= 1800;
SELECT DISTINCT flight_1.flight_id, fare_basis fare_basis_1
FROM flight flight_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SEATTLE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MINneapolis'
SELECT DISTINCT airport_service.minutes_distant, airport_service.airport_code, airport_service.direction, airport_service.city_code, airport_service.miles_distant
FROM airport_service
WHERE airport_service.airport_code = 'PHX'
SELECT DISTINCT flight.flight_id, flight.flight_number, flight.arrival_time, flight.from_airport, flight.airline_flight, flight.aircraft_code_sequence
FROM flight
WHERE flight.from_airport = 'SAN JOSE'
AND flight.arrival_time = '2023-06-03 00:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
INNER JOIN flight flight_2 ON flight_2.flight_id = flight_stop_2.flight_id
WHERE flight_2.arrival_date = '2023-10-27' AND flight_2.departure_airport = 'DAL'
SELECT flight_id
FROM flight
WHERE from_airport = 'DENVER'
AND to_airport = 'PITTSBURGH'
AND fare_basis_code = (
    SELECT MIN( fare_basis_code )
    FROM fare_basis
    WHERE to_airport = 'PITTSBURGH'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'SAN DIEGO' AND airport_2.city_name = 'DUBLES' AND flight_1.aircraft_code_sequence = '767'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time <= '12:00:00'
