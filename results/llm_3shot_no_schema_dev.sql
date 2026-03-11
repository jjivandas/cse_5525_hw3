SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight flight_2
ON flight_1.flight_id = flight_2.flight_id
JOIN airport_service airport_service_2
ON flight_2.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_days = '2023-10-25'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND( flight_1.departure_time BETWEEN 1400 AND 1800 ))
SELECT DISTINCT arrival_service.arrival_time
FROM arrival_service arrival_service
WHERE arrival_service.arrival_time < '09:00:00'
AND arrival_service.arrival_airport = 'BALtimore'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' )
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
WHERE flight_1.departure_time BETWEEN 0 AND 800
AND (flight_1.from_airport = 'PHL' AND city_1.city_name = 'PHILADELPHIA')
AND (flight_1.to_airport = 'SFO' AND city_2.city_name = 'SAN FRANCISCO')
SELECT DISTINCT airport_1.airport_location
FROM airport airport_1
WHERE airport_1.city_code = 'DEN'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'SFO' AND flight_1.nonstop = 1;
SELECT DISTINCT flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_2 , fare fare_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA'
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
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEWARK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TAMPA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALtimore'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'DAL'
AND flight_1.to_airport = 'BOS'
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
WHERE flight_1.flight_date = '2023-05-04' AND flight_1.airline_code = 'AA'
SELECT *
FROM flight
WHERE from_airport = 'BOS'
AND to_airport = 'DEN'
AND airline_name = 'united'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'DENVER' AND to_airport = 'BOSTON'
);
SELECT * FROM flight
WHERE flight_date = '2023-08-08' AND from_city = 'SAN FRANCISCO' AND to_city = 'BOSTON'
SELECT *
FROM flight
WHERE from_airport = 'OAKLAND'
AND to_airport = 'PHILADELPHIA'
AND departure_time = '2023-10-27 17:00:00'
SELECT MIN(flight_1.total_fare)
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'Dallas'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND 1 = 1
SELECT DISTINCT flight_id, COUNT(stop) AS max_stops
FROM flight
WHERE from_airport = 'BOS'
AND to_airport = 'SFO'
GROUP BY flight_id
ORDER BY max_stops DESC
LIMIT 1;
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'DAL'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'BALTIMORE'
AND flight_1.arrival_time >= 1600
AND flight_1.arrival_time < 1800;
SELECT flight_id, price
FROM flight
WHERE from_airport = 'LAX'
AND day = 'MONDAY'
AND time = '09:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight flight_2
ON flight_2.flight_id = flight_1.parent_flight_id
WHERE flight_2.arrival_time < '10:00:00' AND flight_2.arrival_city = city_2.city_name
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
WHERE flight_1.departure_time BETWEEN 1000 AND 1500;
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
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHILADELPHIA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 9 AND date_day_1.day_number = 16 )
SELECT flight_1.flight_id, flight_1.fare
FROM flight flight_1
WHERE flight_1.flight_id = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'ORD' AND to_airport = 'MCI' AND flight_date = '2023-10-25' AND flight_time = '20:00:00'
)
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'DAL'
AND airport_service_2.city_code = 'SFO'
AND flight_1.airline_code = 'AA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time BETWEEN 0600 AND 1000
AND( flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'PIT' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = 'TUESDAY' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
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
WHERE flight_1.departure_time BETWEEN 430 AND 530;
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , days days_1 , date_day date_day_1 WHERE flight_1.express_flag = 1 AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DETROIT' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHICAGO' )
SELECT * FROM flight flight_1
WHERE flight_1.from_airport = 'BALtimore' AND flight_1.to_airport = 'PHILADELPHIA'
SELECT flight_id, from_city, to_city, flight_date, flight_duration
FROM flight
WHERE from_city = 'BOS' AND to_city = 'DEN'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time >= '07:00' AND flight_1.departure_time < '10:00'
SELECT flight_id
FROM flight
WHERE from_airport = 'PHL'
AND to_airport = 'DEN'
AND flight_day = 'SUNDAY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'DAL' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND flight_1.arrival_time > 5;
SELECT flight_id, flight_cost
FROM flight
WHERE from_airport = 'UA201' AND to_airport = 'DENVER'
OR from_airport = 'UA343' AND to_airport = 'DENVER'
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
WHERE city_1.city_name = 'INDIANAPOLIS' AND city_2.city_name = 'ORLANDO' AND date(flight_1.flight_date) = '2023-12-27'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CINCINNATI' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TAMPA' )
SELECT * FROM flight flight_1
WHERE flight_1.from_airport = 'TORONTO' AND flight_1.flight_days BETWEEN 17 AND 19 AND (CAST(flight_1.flight_time AS TIME) BETWEEN '17:00' AND '19:00');
SELECT aircraft_type
FROM flight
WHERE departure_time < 1000
AND from_airport = 'DENVER'
AND aircraft_type LIKE '%767%';
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '18:00:00' AND '19:00:00'
AND from_airport = 'DENVER'
AND to_airport = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALtimore' )
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TORONTO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN DIEGO'
SELECT *
FROM ground_transportation
WHERE date = '2023-10-27' AND time = '08:00' AND location = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.origin = 'ORD'
AND flight_1.destination = 'KSC'
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , city city_1 WHERE ground_service_1.city_code = city_1.city_code AND city_1.city_name = 'OAKLAND'
SELECT DISTINCT flight_1.flight_id, flight_1.departure_city, flight_1.arrival_city, flight_1.departure_date, flight_1.arrival_date
FROM flight flight_1
JOIN city city_1 ON flight_1.departure_city = city_1.city_code
JOIN city city_2 ON flight_1.arrival_city = city_2.city_code
WHERE city_1.city_name = 'DENVER'
AND city_2.city_name = 'PHILADELPHIA'
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
SELECT price
FROM flight
WHERE flight_id = (
    SELECT flight_id
    FROM flight
    WHERE departure_time BETWEEN 0 AND 1200
    AND from_airport = 'JFK'
    AND to_airport = 'LAX'
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
WHERE city_1.city_name = 'BOSTON'
AND city_2.city_name = 'DENVER'
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
WHERE city_1.city_name = 'SAN FRANCISCO'
AND city_2.city_name = 'PITTSBURGH'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 AND( flight_1.departure_time BETWEEN 1800 AND 2200 AND 1 = 1 ) ) )
SELECT DISTINCT fare.fare_amount
FROM fare
JOIN flight flight ON fare.flight_id = flight.flight_id
JOIN airport airport_from ON fare.from_airport_code = airport_from.airport_code
JOIN airport airport_to ON fare.to_airport_code = airport_to.airport_code
WHERE airport_from.city_name = 'SAN FRANCISCO' AND airport_to.city_name = 'DENVER' AND flight.carrier = 'UNITED'
SELECT flight_id, from_city, to_city, fare
FROM flight
WHERE departure_date = '2023-10-26' AND departure_time = '18:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
JOIN city city_1
ON airport_1.city_code = city_1.city_code
JOIN city city_2
ON airport_2.city_code = city_2.city_code
WHERE flight_1.flight_from = 'PHL' AND flight_1.flight_to = 'DAL' AND flight_1.flight_days = 1
SELECT DISTINCT flight_1.flight_id, aircraft_type
FROM flight flight_1
JOIN aircraft_type aircraft_type
ON flight_1.aircraft_type = aircraft_type.aircraft_type_id
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'SFO'
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
WHERE flight_1.departure_date >= '2023-10-27' AND flight_1.departure_date <= '2023-10-30'
SELECT flight_id
FROM flight
WHERE from_airport = 'BOS'
AND departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'BOS'
    AND departure_time > 0 AND departure_time < 1200
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1
WHERE flight_1.departure_time = '1300' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.arrival_time <= '18:00:00'
SELECT *
FROM flight
WHERE flight_date BETWEEN '1991-12-16' AND '1991-12-16'
SELECT flight_1.flight_id, flight_1.price
FROM flight flight_1
JOIN flight_class flight_class_1 ON flight_1.flight_class_id = flight_class_1.flight_class_id
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.origin = 'DALAS' AND flight_1.destination = 'BALtimore'
SELECT flight_id, fare
FROM flight
WHERE airline_code = 'DAL' AND from_airport = 'DAL' AND to_airport = 'SFO'
SELECT DISTINCT flight_id
FROM flight
WHERE flight_days = 'WEDNESDAY' AND ( flight.from_airport = 'CLEVELAND' AND flight.to_airport = 'MIA' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
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
WHERE flight_1.origin = 'LAS' AND flight_1.destination = 'NYC' AND flight_1.is_nonstop = 1;
SELECT DISTINCT flight_1.flight_id, airline_1.airline_name
FROM flight flight_1
JOIN airline airline_1
ON flight_1.airline_id = airline_1.airline_id
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'WA'
SELECT * FROM iah;
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'ATL'
AND to_airport = 'BAL'
AND arrival_time = '20:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE from_airport = 'PHL'
AND to_airport = 'DAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'DEN' AND flight_1.flight_days = 1 AND date_day = '2023-07-27'
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
WHERE city_1.city_name = 'MONTREAL' AND city_2.city_name = 'CHARLOTTE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CINCINNATI' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BURBANK' ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND( flight_1.departure_time > 1800 AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT flight_1.flight_id, flight_fare.fare_id, fare.fare, fare.fare_basis_code, fare.fare_basis, fare.basis_days
FROM flight flight_1
INNER JOIN flight_fare flight_fare ON flight_fare.flight_id = flight_1.flight_id
INNER JOIN fare fare ON flight_fare.fare_id = fare.fare_id
WHERE fare.fare_basis = 'CASH' AND fare.basis_days = 1;
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
WHERE (flight_1.from_airport = 'LGD' OR flight_1.to_airport = 'LGD')
AND (flight_1.from_airport = 'JFK' OR flight_1.to_airport = 'JFK')
AND (city_1.city_name = 'CLEVELAND')
SELECT * FROM flight_fare flight_fare_1
WHERE fare_id = (
    SELECT MIN( fare_id )
    FROM fare fare
    WHERE one_direction_cost = (
        SELECT MIN( one_direction_cost )
        FROM fare fare
        WHERE round_trip_required = 'NO'
        AND fare_id = fare_fare_1.fare_id
        AND flight_id = fare_fare_1.flight_id
        AND from_airport = 'DENVER'
        AND to_airport = 'PITTSBURGH'
    )
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND( flight_1.departure_time = 0 OR flight_1.departure_time = 1 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 22 AND( flight_1.departure_time BETWEEN 0 AND 1200 AND 1 = 1 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 3 AND(( flight_1.arrival_time < flight_1.departure_time AND 1 = 1 ) AND flight_1.arrival_time < 1200 ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 4 AND flight_1.arrival_time < 1200 ) ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport airport_1 , days days_1 , date_day date_day_1 WHERE flight_1.departure_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.arrival_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_2.city_code AND city_2.city_name = 'DENVER'
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
WHERE flight_1.departure_time BETWEEN '2023-10-27 10:00:00' AND '2023-10-27 23:59:00'
AND flight_1.flight_days = 'MONDAY'
SELECT DISTINCT transportation.transportation_id, transportation.description
FROM transportation
WHERE transportation.pickup_location = 'BOS'
AND transportation.dropoff_location = 'BOSTON'
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time >= '2023-07-27 16:00:00'
AND flight_1.arrival_time <= '2023-07-27 17:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1
ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND city_1.city_name = 'DENVER'
AND flight_1.to_airport = 'SFO'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON'
SELECT DISTINCT aircraft_id FROM flight_fare flight_fare_1 , aircraft aircraft WHERE flight_fare_1.flight_id = aircraft.flight_id AND aircraft.aircraft_type = 'Co 1209';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_date = '2023-10-27' AND flight_1.departure_time <= '12:00:00' AND flight_1.origin = 'DENVER' AND flight_1.destination = 'CHICAGO'
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
WHERE city_1.city_name = 'ATLANTA' AND city_2.city_name = 'BOSTON'
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
SELECT COUNT(*) FROM flight flight_1
WHERE flight_1.airline_code = 'UA' AND flight_1.destination = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'MH' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' AND day(flight_1.departure_time) = 2 AND time(flight_1.departure_time) BETWEEN 8 AND 10 )
SELECT flight_id, price
FROM flight
WHERE airline_code = 'AA'
AND from_airport = 'ATL'
AND to_airport = 'PIT'
ORDER BY price ASC;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'UA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON airport_service_1.city_code = airport_service_2.city_code
WHERE flight_1.departure_time = '2023-10-27 08:00:00' AND flight_1.arrival_time = '2023-10-27 10:00:00' AND airport_service_1.city_code = 'SFO' AND airport_service_2.city_code = 'PIT'
SELECT DISTINCT flight_id FROM flight flight_1 , airport airport_1 , city city_1 , airport_service airport_service_1 , city city_2 , train_service train_service_1
WHERE flight_1.departure_time =( SELECT MAX( flight_1.departure_time ) FROM flight flight_1 , airport airport_1 , city city_1 , airport_service airport_service_1 , city city_2 , train_service train_service_1 WHERE flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND flight_1.train_code = train_service_1.train_code AND 1 = 1
SELECT flight_1.flight_id, flight_1.airline_code, flight_1.flight_days, flight_1.day_name, flight_1.from_airport, flight_1.to_airport, flight_1.departure_time
FROM flight flight_1
WHERE flight_1.from_airport = 'BOS'
AND flight_1.to_airport = 'ATL'
AND flight_1.departure_time > 1700;
SELECT DISTINCT route_service.route_id, route_service.origin_city, route_service.destination_city, route_service.distance
FROM route_service
WHERE route_service.origin_city = 'DALLAS' AND route_service.destination_city = 'BALtimore'
SELECT DISTINCT f.flight_code FROM flight f , flight_codes fc WHERE f.flight_code = fc.flight_code;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'DENVER'
WHERE flight_1.departure_time < 1000
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
WHERE (flight_1.departure_time > 1200 AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 24)
SELECT flight_1.flight_id, flight_1.round_trip_fare
FROM flight flight_1
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1
ON flight_stop_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_stop_1.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'SFO'
SELECT flight_1.flight_id, flight_1.price
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport airport_1
ON flight_fare_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_fare_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOSTON' AND airport_2.city_name = 'DENVER'
AND flight_fare_1.price = (
    SELECT MIN(price)
    FROM flight_fare
    WHERE from_airport = airport_1.airport_code AND to_airport = airport_2.airport_code
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
WHERE city_1.city_name = 'BALtimore'
AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE departure_time BETWEEN 1200 AND 1800
AND (
    flight_1.from_airport = 'BALTIMORE'
    AND flight_1.to_airport = 'DALLAS'
    AND flight_1.flight_days = 1
);
SELECT DISTINCT flight_id FROM flight flight_1
WHERE flight_1.departure_airport = 'ATL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'PHILADELPHIA'
AND airport_2.city_name = 'DALLAS'
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 WHERE airline_1.airline_name LIKE '%CANADIAN AIRLINES INTERNATIONAL%'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'PITTSBURGH' AND to_airport = 'SAN FRANCISCO'
);
SELECT *
FROM flight
WHERE flight_time BETWEEN '12:00:00' AND '17:00:00'
SELECT DISTINCT ord
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'LAX'
AND flight_1.to_airport = 'PIT'
AND flight_1.arrival_time < 1700
AND flight_1.flight_days = '2023-10-27'
SELECT DISTINCT flight_1.flight_id, flight_1.from_airport, flight_1.to_airport, airport_service.airport_code, airport_service.city_code, airport_service.city_name
FROM flight flight_1
INNER JOIN airport_service airport_service
ON flight_1.from_airport = airport_service.airport_code
AND airport_service.city_code = flight_1.from_airport.city_code;
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE to_airport = airport_service_1.airport_code
    AND city_code = city_1.city_code
    AND day_name = 'MONDAY'
    AND departure_time >= 1200
)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 , airport airport_2 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'DAL' AND flight_1.to_airport = airport_2.airport_code AND 1 = 1
SELECT DISTINCT destination FROM flight flight_1
WHERE flight_1.airline_code = 'CA' AND flight_1.to_airport = 'YYZ';
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.pickup_airport = 'PITTSBURGH' AND ground_transportation.dropoff_airport = 'PITTSBURGH'
SELECT capacity FROM aircraft WHERE aircraft_type = 'F28';
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , airport airport_1 WHERE ground_service_1.transport_type = 'LIMOUSINE' AND ground_service_1.airport_code = airport_1.airport_code AND airport_1.airport_code = 'PIT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time > 1200
SELECT flight_id
FROM flight
WHERE from_airport = 'ATL'
AND to_airport = 'WA'
AND departure_time >= '18:00';

SELECT fare_code FROM flight_fare fare_code
WHERE fare_code LIKE '%qw%';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CINcinnati' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TORONTO'
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
WHERE flight_1.from_airport = 'LAS VEGAS'
AND flight_1.to_airport = 'NEW YORK'
AND flight_1.nonstop = 'YES'
AND fare = 'LOW'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'BOS'
ORDER BY flight_1.flight_date DESC;
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
WHERE flight_1.flight_from = 'MEMPH'
AND flight_1.flight_to = 'LAS VEGAS'
-- This query is not valid and cannot be executed.
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'DL' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 11 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
WHERE airport_service_1.city_code = 'BOS'
AND EXISTS (
  SELECT 1
  FROM airport_service airport_service_2
  WHERE airport_service_2.airport_code = flight_1.to_airport
  AND airport_service_2.city_code = 'BOS'
);
SELECT * FROM flight flight_1
WHERE from_airport = 'BALTIMORE' AND to_airport = 'SAN FRANCISCO'
SELECT flight_1.flight_id, flight_1.fare
FROM flight flight_1
WHERE flight_1.departure_airport = 'DAL' AND flight_1.arrival_airport = 'DEN'
SELECT flight_id
FROM flight
WHERE from_airport = 'SEA'
AND to_airport = 'CON'
AND day = 'SUNDAY'
AND departure_time > 430
SELECT flight_id, flight_fare, from_airport, to_airport, flight_days, date_day, one_direction_cost
FROM flight
WHERE from_airport = 'PITTSBURGH'
AND to_airport = 'DALLAS'
AND flight_time >= '12:00:00'
AND flight_fare < 1100
GROUP BY flight_id, flight_fare, from_airport, to_airport, flight_days, date_day
HAVING date_day BETWEEN '2023-08-01' AND '2023-08-31';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight_stop flight_stop_1
ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_3
ON flight_stop_1.stop_airport = airport_service_3.airport_code
JOIN city city_3
ON airport_service_3.city_code = city_3.city_code
WHERE flight_1.round_trip_cost < 500
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 00:00:00' AND '2023-10-27 23:59:59'
AND from_airport = 'AMS'
AND to_airport = 'SFO'
AND class = 'FIRST'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' AND flight_1.arrival_time = 1700 )
SELECT flight_id
FROM flight
WHERE flight_date = '2023-10-27'
AND flight_time >= 7
AND from_airport = 'PHL'
AND to_airport = 'BOS'
SELECT DISTINCT flight_id FROM flight flight_1 
WHERE flight_1.departure_time BETWEEN '2023-10-27 10:00:00' AND '2023-10-27 12:00:00' AND flight_1.to_airport = 'SLC'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.origin = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = ' nashville' AND( flight_1.destination = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. LOUIS' )
SELECT DISTINCT class FROM airline_classes;
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.origin_airport_code = 'SFO' AND ground_transportation.destination_airport_code = 'SFO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.origin = 'ATL' AND flight_1.destination = 'WA'
SELECT fare_code
FROM flight_fare
WHERE fare_id = fare_id_1
AND round_trip_required = 'YES'
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
WHERE (flight_1.from_airport = 'DAL' AND flight_1.to_airport = 'BAL')
OR (flight_1.from_airport = 'DAL' AND flight_1.to_airport = 'DFW')
SELECT DISTINCT fare_basis_1.fare_basis_code FROM fare_basis fare_basis_1 WHERE fare_basis_1.fare_basis_code = 'QX'
SELECT DISTINCT flight_1.flight_id, flight_1.price
FROM flight flight_1
JOIN flight_routes flight_routes_1
ON flight_routes_1.flight_id = flight_1.flight_id
JOIN airports airport_1
ON flight_routes_1.from_airport_id = airport_1.airport_code
JOIN airports airport_2
ON flight_routes_1.to_airport_id = airport_2.airport_code
WHERE airport_1.city_name = 'BOSTON' AND airport_2.city_name = 'WASHINGTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE departure_time BETWEEN '0900' AND '1200'
AND (flight_1.from_airport = 'MIA' AND flight_1.to_airport = 'LAS')
AND flight_1.flight_days = '07'
AND flight_1.date_day = '07'
AND date_part('week', flight_1.date_day) = 1;
SELECT flight_1.total_fare
FROM flight flight_1
WHERE flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'SFO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 22 ) )
SELECT *
FROM flight
WHERE from_airport = 'CLEVELAND'
AND to_airport = 'MIA'
AND arrival_time <= '16:00:00'
SELECT DISTINCT lufthansa.class_of_service
FROM lufthansa
WHERE lufthansa.airline_code = 'LH'
SELECT DISTINCT flight_fare.flight_id
FROM flight_fare
WHERE flight_fare.from_airport = 'WASH' AND flight_fare.to_airport = 'DENVER'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 7 AND not(( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 6 AND( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) ) )
SELECT *
FROM flight
WHERE airline_code = 'EA'
AND from_airport = 'PITTSBURGH'
AND flight_time BETWEEN '16:00:00' AND '18:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight flight_2
ON flight_1.to_airport = flight_2.flight_id
JOIN airport_service airport_service_2
ON flight_2.to_airport = airport_service_2.airport_code
WHERE flight_1.flight_date = '2023-03-08'
SELECT DISTINCT flight_1.flight_number, flight_1.airline_code, flight_1.departure_time, flight_1.arrival_time
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE airport_1.city_code = 'OAK'
AND airport_2.city_code = 'PHI'
AND flight_1.arrival_time BETWEEN 17 AND 21;
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'PHOENIX'
AND flight_1.to_airport = 'MILWAUKEE'
AND flight_1.day = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id, flight_1.fare
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_fare_1.to_airport = airport_service_2.airport_code
WHERE flight_fare_1.origin = 'ATL' AND flight_fare_1.destination = 'DAL' AND flight_fare_1.total_fare < 1100 AND flight_fare_1.departure_time > 1200;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'DALLAS'
AND airport_service_2.city_code = 'HOUSTON'
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
WHERE flight_1.flight_time >= '17:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH'
SELECT flight_id
FROM flight
WHERE departure_time < 1200
AND airline_name = 'AMERICAN AIRLINES'
AND from_airport = 'PHL'
AND to_airport = 'DALLAS'
SELECT fare_1.fare_id
FROM fare fare_1
JOIN fare_basis fare_basis_1
ON fare_1.fare_basis_code = fare_basis_1.fare_basis_code
WHERE fare_1.flight_id = 928
AND fare_1.from_airport = 'DFW'
AND fare_1.to_airport = 'BOS'
SELECT distance
FROM airport
WHERE airport_code = 'DAL'
AND city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'AA' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CINcinnati' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BURBANK' AND flight_1.flight_date = '2023-10-26'
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport = 'DCA'
AND destination = 'SFO'
AND airline_code IN (
    SELECT DISTINCT airline_code
    FROM flight
    WHERE from_airport = 'DCA'
    AND destination = 'SFO'
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
WHERE flight_1.nonstop = 1
AND city_1.city_name = 'LAS VEGAS'
AND city_2.city_name = 'NEW YORK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1
ON flight_1.flight_id = flight_leg_1.leg_flight
JOIN airport_service airport_service_1
ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_leg_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'PHOENIX'
AND airport_service_2.city_code = 'LAS VEGAS'
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
WHERE flight_1.arrival_day = 'SUNDAY' AND flight_1.arrival_month = 7 AND flight_1.arrival_day_of_week = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.departure_time BETWEEN 1200 AND 1800
AND flight_1.to_airport = 'PHILADELPHIA'
AND days_1.day_name = 'SATURDAY'
AND days_1.day_number > 0
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1
WHERE fare_1.round_trip_cost IS NOT NULL AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code
SELECT * FROM flight flight_1
WHERE from_airport = 'LOVE'
OR to_airport = 'LOVE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT flight_id, flight_price
FROM flight
WHERE from_airport = 'DAL' AND to_airport = 'ATL'
AND departure_time >= 600 AND departure_time <= 900
AND class = 'economy';
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.origin_airport = 'SFO' AND ground_transportation.destination_airport = 'SFO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'DEN'
SELECT DISTINCT transportation_1.transportation_code, transportation_1.description
FROM transportation transportation_1
WHERE transportation_1.city_code = 'SFO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = flight_fare_1.from_airport
JOIN city city_1
ON city_1.city_code = airport_service_1.city_code
JOIN airport_service airport_service_2
ON airport_service_2.airport_code = flight_fare_1.to_airport
JOIN city city_2
ON city_2.city_code = flight_fare_1.to_airport
WHERE flight_1.from_airport = 'OAKLAND'
AND flight_1.to_airport = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_city = 'NYC'
AND flight_1.arrival_city = 'MIA'
AND flight_1.departure_date = '2023-07-15'
AND flight_1.arrival_date = '2023-07-22'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'TW' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'MILW'
AND airport_service_1.city_name = 'MILWAUKEE'
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'PHOENIX'
SELECT MIN(fare_1.fare_id)
FROM fare fare_1
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'ATL' AND airport_service_2.city_code = 'BWI'
SELECT DISTINCT airline_1.airline_name
FROM airline airline_1
JOIN flight flight_1
ON airline_1.airport_code = flight_1.from_airport
WHERE flight_1.from_airport = 'TORONTO' AND flight_1.to_airport = 'DENVER'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND flight_1.departure_time < 800 )
SELECT DISTINCT ewr.definition FROM etymology ewr;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 , fare_basis fare_basis_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.departure_time >= 0 AND fare_1.round_trip_required = 'NO' )
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
WHERE flight_1.airline_code = 'UA'
AND flight_1.first_class = 'YES'
SELECT flight_1.flight_id
FROM flight flight_1
WHERE from_airport = 'PHL'
AND to_airport = 'DAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN 2300 AND 0000
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND(( flight_1.airline_code = 'DL' AND 1 = 1 ) OR( flight_1.airline_code = 'TW' AND 1 = 1 ) ) )
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
WHERE city_1.city_name = 'PHILADELPHIA' AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 WHERE airline_1.airline_code = 'HP'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TAMPA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. LOUIS' AND( flight_1.departure_time BETWEEN 0900 AND 1000 AND 1 = 1 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'KB' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CLEVELAND' AND flight_1.flight_date = '2023-10-27' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'PHILladelphia'
AND date(flight_1.departure_time) BETWEEN '08:00:00' AND '12:00:00'
SELECT DISTINCT airport_code, city_name
FROM airport_service
WHERE airline_name = 'CANADIAN AIRLINES INTERNATIONAL';
SELECT DISTINCT car_rental.car_id, car_rental.rental_date
FROM car_rental
WHERE car_rental.pickup_location = 'BALtimore'
SELECT DISTINCT fare_1.fare_id
FROM fare fare_1
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'SFO'
AND flight_1.to_airport = 'BOS'
AND flight_fare_1.carrier = 'DELTA'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.fare_id = flight_1.fare_id
JOIN flight flight_2
ON flight_2.flight_id = flight_fare_1.flight_id
WHERE flight_fare_1.flight_date >= '2023-11-11'
AND flight_fare_1.class = 'economy'
AND flight_fare_1.departure_time > 1900;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'BOS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'CINcinnati'
AND flight_1.to_airport = 'HOUSTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
JOIN airport_service airport_service_2
ON airport_2.airport_code = airport_service_2.airport_code
WHERE (flight_1.from_airport = 'DENVER' AND flight_1.to_airport = 'SAN FRANCISCO')
OR (flight_1.from_airport = 'DENVER' AND flight_1.to_airport = 'PHILADELPHIA')
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
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_days = 'DAILY' AND( flight_1.airline_code = 'UA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'OAKLAND' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' ) )
SELECT DISTINCT sa.name FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_leg_1.leg_flight AND flight_leg_1.flight_id = flight_2.flight_id AND flight_2.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_2.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.origin = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BWI' AND flight_1.destination = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER'
SELECT DISTINCT flight_id, airline_code, departure_time, from_airport, to_airport, airport_code, city_name, flight_days
FROM flight flight_1
WHERE flight_1.departure_time < 0900 AND flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'DCA'
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 WHERE airline_1.airline_code = 'HP'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALtimore' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'DCA' AND date(flight_1.departure_date) = '2023-11-11'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN airport airport_1
ON ground_service_1.from_airport_id = airport_1.airport_code
JOIN airport airport_2
ON ground_service_1.to_airport_id = airport_2.airport_code
WHERE airport_1.city_name = 'ORLANDO'
AND airport_2.city_name = 'ORLANDO'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 , flight_fare flight_fare_1 , fare fare_1 , fare_basis fare_basis_1 , fare_basis fare_basis_2 , days days_2 , date_day date_day_2 WHERE flight_1.airline_code = 'US' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CLEVELAND' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MIAMI' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 22 AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND fare_1.fare_basis_code = fare_basis_2.fare_basis_code AND fare_basis_2.basis_days = days_2.days_code AND days_2.day_name = date_day_2.day_name AND date_day_2.year = 1991 AND date_day_2.month_number = 2 AND date_day_2.day_number = 22 ) ) )
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. LOUIS' AND flight_1.arrival_time >= 2300;
SELECT DISTINCT flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight flight_2
ON flight_1.to_airport = flight_2.from_airport
JOIN airport_service airport_service_2
ON flight_2.to_airport = airport_service_2.airport_code
WHERE flight_1.carrier = 'AMERICAN AIRLINES'
AND flight_1.from_airport = 'PHL'
AND flight_2.to_airport = 'SFO'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND fare_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'FORT WORTH' ) AND( fare_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND fare_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'FORT WORTH' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_stop flight_stop_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.airline_code = 'NW' AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER'
SELECT flight_1.aircraft_type
FROM flight flight_1
WHERE flight_1.departure_time = '08:00:00'
SELECT DISTINCT ground_transport.ground_transport_id, ground_transport.description, ground_transport.price
FROM ground_transport
WHERE ground_transport.pickup_location = 'SEA' AND ground_transport.dropoff_location = 'SEA'
SELECT *
FROM flight
WHERE from_airport = 'PIT'
AND to_airport = 'BOS'
AND fare_basis = 'LOWEST'
ORDER BY fare_cost ASC;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. PAUL' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'US' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
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
WHERE flight_1.departure_time BETWEEN 1200 AND 1800
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
WHERE flight_1.num_stops > 3;
SELECT flight_id, from_airport, to_airport, price
FROM flight
WHERE price = (
    SELECT MIN(price)
    FROM flight
    WHERE from_airport = 'DALAS' AND to_airport = 'BALTIMORE'
);
SELECT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = 'OAKLAND' AND to_airport = 'BOSTON'
);
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE departure_time >= '2023-10-27' AND departure_time < '2023-10-30' AND airline_code = 'AA'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'Dallas'
AND flight_1.departure_time = (SELECT MIN(departure_time) FROM flight WHERE from_airport = airport_service_1.airport_code AND city_code = city_1.city_code);
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time BETWEEN 1600 AND 2000
AND ( flight_from = 'PITTSBURGH' AND flight_to = 'DENVER' )
SELECT flight_id
FROM flight
WHERE departure_date = DATE_ADD(NOW(), INTERVAL 1 DAY)
AND from_airport = 'STL'
AND to_airport = 'MIL'
ORDER BY departure_time ASC;
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHARLOTTE'
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
AND flight_1.arrival_time > 1200
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.airline_code = 'CO' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SEATTLE' AND flight_1.departure_time > 1630 )
SELECT * FROM rental_cars WHERE city = 'DENVER'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
WHERE flight_fare_1.round_trip_cost IS NOT NULL
AND flight_fare_1.fare_type = 'COACH'
AND flight_fare_1.departure_date >= '2023-10-27'
AND flight_fare_1.departure_date <= '2023-10-30'
SELECT * FROM flight flight_1
WHERE from_airport = 'ATL' AND to_airport = 'DEN'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' AND(( flight_1.departure_time > 2330 OR flight_1.departure_time = 2330 ) OR flight_1.departure_time < 30 ) )
SELECT fare
FROM flight
WHERE from_airport = 'OAKLAND'
AND to_airport = 'DALLAS'
AND flight_date BETWEEN '1991-12-16' AND '1991-12-16'
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE airline_1.airline_code = flight_1.airline_code AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA'
SELECT flight_id, fare
FROM flight
WHERE from_airport = 'BOS'
  AND to_airport = 'PIT'
  AND meal_served = 'YES'
  AND departure_time BETWEEN 0 AND 1200
  AND flight_days = 1
  AND date_day BETWEEN 4 AND 5
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'DENVER' AND flight_1.to_airport = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_fare_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'DALLAS'
AND airport_service_2.city_code = 'PITTSBURGH'
AND flight_fare_1.flight_date = '2023-07-08'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'YX' AND( flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CLEVELAND' OR flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CLEVELAND' )
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHILADELPHIA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'OAKLAND' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.arrival_time >= 0 AND flight_1.arrival_time <= 1800 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time BETWEEN 0 AND 1200
AND flight_1.from_airport = 'SFO'
AND flight_1.to_airport = 'PIT'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'COLUMBUS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE'
SELECT DISTINCT fare_code
FROM flight_fare
WHERE fare_code LIKE '%qx%'
SELECT *
FROM flight flight
WHERE flight.from_airport = 'PHL'
AND flight.arrival_time BETWEEN '14:00:00' AND '17:00:00'
SELECT flight_1.flight_price
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
WHERE flight_fare_1.origin = 'DAL' AND flight_fare_1.destination = 'BAL'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WESTCHESTER COUNTY'
SELECT flight_id
FROM flight
WHERE departure_time = '08:38:00'
AND (from_airport = 'BOS' AND to_airport = 'OAK')
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.flight_days = 'SATURDAY'
AND flight_1.departure_time BETWEEN '06:00:00' AND '10:00:00'
SELECT * FROM code WHERE code = 'Y';
SELECT flight_1.flight_id, flight_1.departure_time, flight_1.fare
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'PHI'
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
WHERE flight_1.departure_time > 1600
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
WHERE flight_1.flight_days = 1 AND city_1.city_name = 'PITTSBURGH' AND city_2.city_name = 'ATLANTA'
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description, ground_transportation.price
FROM ground_transportation
WHERE ground_transportation.pickup_location = 'SFO' AND ground_transportation.dropoff_location = 'SFO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 19 )
SELECT DISTINCT flight_id FROM flight flight_1 , airport airport_1 WHERE flight_1.to_airport = airport_1.airport_code AND airport_1.city_code = 'ATL'
SELECT DISTINCT flight_1.flight_id, flight_1.yn_code
FROM flight flight_1
WHERE flight_1.from_airport = 'JFK' AND flight_1.to_airport = 'LHR';
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.flight_days = days_1.days_code
AND days_1.day_name = date_day_1.day_name
AND date_day_1.year = 1991
AND flight_1.from_airport = 'ATL'
AND flight_1.to_airport = 'DCA'
ORDER BY flight_1.arrival_time DESC;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.arrival_time >= '16:00:00'
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
WHERE city_1.city_name = 'SAN FRANCISCO'
AND city_2.city_name = 'WASHINGTON DC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE departure_airport = 'BOS' AND arrival_airport = 'ATL'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'OAKLAND'
AND flight_1.to_airport = 'DENVER'
AND flight_1.date BETWEEN '2023-10-27' AND '2023-10-29'
SELECT DISTINCT flight_stop_1.flight_id , flight_stop_1.stop_number FROM flight_stop flight_stop_1 , airport_service airport_service_1 , city city_1 , flight flight_1 , airport_service airport_service_2 , city city_2 , airport_service airport_service_3 , city city_3 , flight_leg flight_leg_1 , flight flight_2 WHERE flight_stop_1.stop_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHILADELPHIA' AND flight_stop_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'DENVER' AND flight_1.flight_id = flight_leg_1.flight_id AND flight_leg_1.leg_flight = flight_2.flight_id AND flight_2.airline_code = 'DL' AND( flight_2.flight_number = 323 OR flight_2.flight_number = 229 ) )
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BURBANK' AND flight_1.flight_date = '2022-05-20' AND flight_1.flight_day = 'Saturday' AND flight_1.airline_code = 'AW'
SELECT *
FROM flight
WHERE flight_date = '2023-10-27' AND flight_from = 'DET' AND flight_to = 'STL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1
ON flight_fare_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_fare_1.fare_basis_code = 'CHEAPEST'
AND ( flight_1.from_airport = 'ATL' AND flight_1.to_airport = 'PIT' )
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.origin = 'PHL' AND flight_1.destination = 'DAL' AND flight_1.departure_time = (SELECT MAX(departure_time) FROM flight WHERE origin = 'PHL' AND destination = 'DAL' AND departure_time < 1200);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'BALtimore'
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = city_2.city_code
AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT aircraft_type
FROM aircraft
WHERE airline_name = 'CANADIAN AIRLINES';
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'BALtimore'
AND flight_1.arrival_time > 2100;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND flight_1.flight_day = 'WEDNESDAY' AND flight_1.time_hour >= 6 AND flight_1.time_hour <= 12
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE from_airport = 'DENVER'
AND to_airport IN ('PITTSBURGH', 'ATLANTA')
ORDER BY flight_1.departure_time;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport airport_1
ON airport_service_1.airport_code = airport_1.airport_code
JOIN airport_service airport_service_2
ON airport_1.to_airport = airport_service_2.airport_code
JOIN city city_1
ON airport_service_2.city_code = city_1.city_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'BALTIMORE'
AND flight_1.to_airport = 'SAN FRANCISCO'
AND EXISTS (
    SELECT 1
    FROM airport_service airport_service_3
    WHERE airport_service_3.airport_code = airport_service_2.airport_code
    AND airport_service_3.city_code = 'DENVER'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.departure_day = 'Sat' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
LEFT JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
LEFT JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'LOVE FIELD'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time = (SELECT MIN( flight_1.departure_time ) FROM flight flight_1 WHERE from_airport = 'BOS' AND departure_time > 0);
SELECT flight_id
FROM flight
WHERE departure_time >= '06:00:00' AND (
    airline_code = 'FL'
    AND from_airport = 'TAMPA'
    AND to_airport = 'CHARLOTTE'
    AND date = '2023-04-06'
);
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MEMPHIS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MIAMI'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_stop flight_stop_1 , airport_service airport_service_3 , city city_3 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.flight_id = flight_stop_1.flight_id AND flight_stop_1.stop_airport = airport_service_3.airport_code AND airport_service_3.city_code = city_3.city_code AND city_3.city_name = 'DALLAS' )
SELECT DISTINCT transportation_1.transportation_type FROM transportation transportation_1 , dallas_airport dallas_airport_1 , dallas dallas_airport_2 WHERE transportation_1.transportation_type = 'BUS' AND dallas_airport_1.airport_code = 'DAL' AND dallas_airport_2.airport_code = 'DAL' AND dallas_airport_1.city_code = 'DAL' AND dallas_airport_2.city_code = 'DAL'
SELECT flight_id
FROM flight
WHERE flight_date = '2023-10-27' AND flight_time BETWEEN 06:00 AND 12:00 AND price = 124;
-- This query assumes you have a table named "flights" with columns "flight_id", "from_airport", "to_airport", "flight_date", and "flight_time".

SELECT * FROM flights
WHERE flight_date = '2023-04-16' AND flight_time BETWEEN 21 AND 23;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight flight_2 ON flight_1.to_airport = flight_2.from_airport
WHERE flight_1.from_airport = 'HOUSTON'
AND flight_2.to_airport = 'LAS VEGAS'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.origin = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN JOSE' AND( flight_1.destination = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST PAUL' )
SELECT COUNT(*) FROM flight flight_1
WHERE aircraft_id = 734;
SELECT * FROM glossary WHERE glossary_term = 'ewr';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND( flight_1.departure_time >= 1000 AND flight_1.departure_time <= 1400 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'PITTSBURGH'
AND flight_1.to_airport = 'NEW YORK CITY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'UA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_cost IS NOT NULL AND 1 = 1 )
SELECT DISTINCT airline_code, airline_name
FROM airline;
SELECT DISTINCT g.ground_transportation_id, g.description, g.price
FROM ground_transportation g
WHERE g.pickup_location = 'DENVER'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
WHERE airport_service_1.city_code = 'PHOENIX'
AND flight_1.to_airport = 'DENVER'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
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
WHERE flight_1.aircraft_type = 'BOeing 737' AND flight_1.departure_date >= '2023-10-27' AND flight_1.arrival_date <= '2023-10-30'
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
WHERE flight_1.departure_time = '718' AND flight_1.from_airport = 'LAS VEGAS' AND flight_1.to_airport = 'NEW YORK'
SELECT DISTINCT ground_service.transport_type
FROM ground_service
WHERE ground_service.airport_code = 'DENVER'
SELECT * FROM flight_fare flight_fare_1
WHERE flight_fare_1.flight_id IN (
    SELECT flight_id FROM flight
    WHERE from_airport = 'PITTSBURGH' AND to_airport = 'DENVER'
)
SELECT DISTINCT ground_transport.ground_transport_id, ground_transport.description
FROM ground_transport
WHERE ground_transport.city = 'SAN FRANCISCO'
SELECT flight_id
FROM flight
WHERE from_airport = 'DENVER'
AND to_airport = 'NW'
AND departure_time < '12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
WHERE airport_service_1.city_code = 'MGT'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA'
SELECT * FROM limousine_service
WHERE city = 'BOSTON'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'CO' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 25 ) )
SELECT * FROM flight flight_1
WHERE flight_1.flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE flight_days BETWEEN 80 AND 90
);
SELECT flight_1.flight_id, flight_1.price
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
WHERE flight_fare_1.origin = 'DENVER' AND flight_fare_1.destination = 'PITTSBURGH'
SELECT DISTINCT flight_1.flight_id, airline_1.airline_name
FROM flight flight_1
INNER JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
INNER JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
INNER JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
INNER JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'SFO'
SELECT DISTINCT flight_id FROM flight
WHERE from_airport = 'PIT' AND to_airport = 'SFO' AND fare = 415;
SELECT fare_id, fare_amount
FROM fare
WHERE from_city = 'BOS' AND to_city = 'PHI'
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
WHERE flight_1.departure_time BETWEEN 1400 AND 1800
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
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.flight_day = 'THURSDAY'
AND flight_1.flight_date = 'JUNE'
AND flight_1.arrival_time >= '19:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.arrival_time BETWEEN 0 AND 800
AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' )
SELECT *
FROM flight
WHERE from_airport = 'TORONTO'
AND departure_time BETWEEN 530 AND 700;
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
WHERE flight_1.departure_airport = 'ATL' AND flight_1.arrival_airport = 'PIT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'DCA'
AND flight_1.to_airport = 'PHL'
AND flight_1.departure_time = '2023-10-27 08:00:00'
SELECT DISTINCT airport_service.airport_code, airport_service.city_code, airport_service.city_name
FROM airport_service
WHERE airport_service.city_code = 'WA';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.flight_days = 'WEDNESDAY' AND flight_1.flight_date = '2023-10-21' )
SELECT * FROM flight flight_1
WHERE flight_1.departure_airport = 'DENVER'
AND EXISTS (
  SELECT 1
  FROM flight flight_2
  WHERE flight_2.departure_airport = 'DENVER'
  AND flight_2.arrival_airport = flight_1.arrival_airport
);
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.from_airport = 'BOS' AND ground_transportation.to_airport = 'BOS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'TAMPA'
AND EXISTS (
  SELECT 1
  FROM flight flight_2
  WHERE flight_2.departure_time = (
    SELECT MIN( flight_2.departure_time )
    FROM flight flight_2
    JOIN airport_service airport_service_2
    ON flight_2.to_airport = airport_service_2.airport_code
    AND airport_service_2.city_code = city_2.city_code
    AND city_2.city_name = 'MILWAUKEE'
  )
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
WHERE city_1.city_name = 'TORONTO'
AND city_2.city_name = 'SAN DIEGO'
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
WHERE city_2.city_name = 'WASHINGTON DC'
AND month(flight_1.departure_date) = 12
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
WHERE city_1.city_name = 'BALTIMORE'
AND city_2.city_name = 'NEWARK'
AND dayofweek(flight_1.departure_time) = 3
AND time_format(flight_1.departure_time, '%A') < '12:00'
SELECT DISTINCT flight_id
FROM flight
WHERE departure_date >= DATE_ADD(NOW(), INTERVAL 2 DAY)
AND to_airport = 'PHIladelphia'
SELECT flight_id, coach_class_fare
FROM flight
WHERE from_airport = 'PITTSBURGH' AND to_airport = 'ATLANTA'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ATLANTA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND( flight_1.departure_time = 1200 AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 11 AND date_day_1.day_number = 7 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time = (SELECT MAX( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2);
SELECT *
FROM flight
WHERE from_airport = 'CLT'
AND to_airport = 'ATL'
AND flight_date = '2023-10-22'
SELECT fare_1.fare_id, fare_1.round_trip_cost
FROM fare fare_1
JOIN flight flight_1
ON fare_1.flight_id = flight_1.flight_id
WHERE flight_1.from_airport = 'OAKLAND' AND flight_1.to_airport = 'ATLANTA'
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
WHERE city_1.city_name = ' nashville'
AND city_2.city_name = 'seattle'
SELECT fare_1.fare_id
FROM fare fare_1
JOIN fare_basis fare_basis_1
ON fare_basis_1.fare_basis_code = fare_basis_1.fare_basis_code
JOIN flight_fare flight_fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN flight flight_1
ON flight_fare_1.flight_id = flight_1.flight_id
WHERE flight_1.from_airport = 'ATL'
AND flight_1.to_airport = 'DEN'
AND fare_1.class_type = 'FIRST'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 800 AND ( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEWARK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CLEVELAND' )
SELECT flight_1.total_fare
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.origin = 'INDIANAPOLIS'
AND flight_1.destination = 'SEATTLE'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON airport_service_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'SFO'
AND airport_service_2.city_code = 'PIT'
AND flight_1.flight_date = '2023-10-27'
AND flight_1.flight_class = 'FIRST'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON city_1.city_name = 'CHICAGO'
WHERE flight_1.flight_days = days_1.days_code
AND flight_1.departure_time >= '0900'
AND flight_1.departure_time < '1700'
AND (flight_1.from_airport = 'CHICAGO' AND city_1.city_name = 'SEATTLE' AND day_name = 'SATURDAY' AND (day_number = 1 OR day_number = 2))
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'PITTSBURGH'
AND flight_1.to_airport = 'LOS ANGELES'
AND DAY(flight_1.flight_date) = 4
AND EXTRACT(HOUR FROM flight_1.flight_time) BETWEEN 18 AND 20;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' )
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
WHERE flight_1.departure_month = 9 AND flight_1.departure_day = 15
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
WHERE flight_1.departure_time = (
    SELECT MIN(departure_time)
    FROM flight
    WHERE from_airport = airport_service_1.airport_code
    AND departure_time > 0
);
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.location = 'WASHINGTON DC'
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
WHERE flight_1.departure_date >= '2023-10-27' AND flight_1.departure_date <= '2023-10-30'
SELECT * FROM flight flight_1
WHERE flight_1.departure_time BETWEEN '2023-04-01 10:00:00' AND '2023-04-01 20:00:00'
AND flight_1.status = 'ACTIVE'
AND EXISTS (
  SELECT 1
  FROM flight flight_2
  WHERE flight_2.from_airport = flight_1.from_airport
  AND flight_2.departure_time BETWEEN '2023-04-01 10:00:00' AND '2023-04-01 20:00:00'
  AND flight_2.status = 'ACTIVE'
  AND flight_2.flight_id < flight_1.flight_id
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 1500 AND 1800 AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHILADELPHIA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN '2023-10-27' AND '2023-10-27' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PAUL' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'KANSAS CITY' AND flight_1.has_meal = 'YES'
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
AND city_1.city_name = 'LONG BEACH'
AND city_2.city_name = 'ST. LOUIS'
SELECT TIMEDIFF(flight_1.arrival_time, flight_2.departure_time) AS flight_duration
FROM flight flight_1 , flight flight_2
WHERE flight_1.flight_id = flight_2.flight_id;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LOS ANGELES' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 29 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'DENVER'
AND airport_service_1.city_name = 'DENVER'
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'PHILADELPHIA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'PHL' AND flight_1.to_airport = 'SFO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_schedule flight_schedule_1 ON flight_schedule_1.flight_id = flight_1.flight_id
JOIN schedule schedule_1 ON flight_schedule_1.schedule_id = schedule_1.schedule_id
JOIN airport_service airport_service_1 ON schedule_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON schedule_1.to_airport = airport_service_2.airport_code
WHERE schedule_1.date = '2023-10-15' AND schedule_1.day = 'tuesday'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.airline_code = 'LH' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON'
SELECT * FROM fare_basis fare_basis_1
WHERE fare_basis_1.class_type = 'FIRST'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN '14:00:00' AND '18:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'DALAS'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'HOUSTON'
WHERE flight_1.departure_time = (SELECT MIN( flight_1.departure_time ) FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'DALAS'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'HOUSTON'
GROUP BY flight_1.flight_id;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.departure_time BETWEEN 1400 AND 1800
AND flight_1.from_airport = 'BALTIMORE'
AND EXISTS (
    SELECT 1
    FROM flight_fare flight_fare
    WHERE flight_fare.flight_id = flight_1.flight_id
    AND flight_fare.from_airport = 'BALTIMORE'
    AND flight_fare.to_airport = 'MINneapolis'
);
SELECT * FROM flight flight_1
WHERE flight_1.from_airport = 'SFO' AND flight_1.to_airport = 'BOS' AND EXISTS (
    SELECT 1
    FROM flight flight_2
    WHERE flight_2.from_airport = 'DAL' AND flight_2.to_airport = 'DFW' AND flight_2.flight_days >= 1
);
SELECT distance
FROM airport
WHERE airport_code = 'SFO'
ORDER BY distance
LIMIT 1;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' AND flight_1.departure_time > 2000 )
SELECT flight_id, departure_time, airport_code, city_code, flight_duration
FROM flight
ORDER BY departure_time DESC
LIMIT 1;
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.arrival_time = (SELECT MAX( flight_1.arrival_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1) AND flight_1.arrival_time > 0 AND airport_service_1.airport_code = 'MHT'
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
AND city_1.city_name = 'NEW YORK'
AND city_2.city_name = 'LOS ANGELES'
AND EXISTS(
    SELECT 1
    FROM flight_stop
    WHERE flight_stop.flight_id = flight_1.flight_id
    AND flight_stop.city_name = 'MILWAUKEE'
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
WHERE flight_1.carrier = 'AMERICAN AIRLINES'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WESTCHESTER COUNTY' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CINcinnati'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN FRANCISCO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 1;
SELECT MIN(fare_basis.fare_basis_amount)
FROM fare_basis
WHERE fare_basis.from_airport = 'BOS'
  AND fare_basis.to_airport = 'WA'
  AND fare_basis.travel_date BETWEEN '2023-07-01' AND '2023-07-31';
SELECT flight_id
FROM flight
WHERE flight_date >= (SELECT MAX(flight_date) FROM flight WHERE flight_date < CURRENT_DATE())
AND from_airport = 'SFO'
AND to_airport = 'WA'
SELECT DISTINCT transport_type
FROM transportation
WHERE city = 'MINneapolis'
SELECT DISTINCT airline_1.airline_code FROM airline airline_1 WHERE 1 = 1
SELECT flight_id
FROM flight
WHERE to_airport = 'PITTSBURGH'
AND departure_time < '09:00:00'
SELECT flight_1.flight_id, flight_1.price
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1 ON fare_1.flight_fare_id = flight_fare_1.flight_fare_id
WHERE fare_1.fare_class = 'economy'
AND fare_1.origin = 'DALLAS'
AND fare_1.destination = 'BALTIMORE'
SELECT airport_code, city_name
FROM airport
WHERE airport_code = 'TAMPA'
SELECT DISTINCT flight_id FROM flight flight_1 
WHERE flight_1.departure_date = CURDATE()
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' )
SELECT flight_id, price
FROM flight
WHERE from_airport = 'BALTIMORE'
AND to_airport = 'DALLAS'
AND date = '2023-07-29'
SELECT flight_1.flight_id, flight_1.fare
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE flight_1.departure_city = 'HOUSTON' AND flight_1.arrival_city = 'LAS VEGAS'
SELECT flight_id, fare
FROM flight
WHERE departure_day = 'tuesday'
AND from_city = 'NEW YORK'
AND to_city = 'MIAMI'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 , fare_basis fare_basis_1 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAMI' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEW YORK' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'COACH' AND 1 = 1 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'DAL' AND flight_1.to_airport = 'TAMPA'
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
WHERE city_1.city_name = 'DENVER'
AND city_2.city_name = 'SAN FRANCISCO'
AND united_airlines.availability > 50;
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , city city_1 WHERE ground_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1
ON flight_1.flight_id = flight_leg_1.leg_flight
JOIN airport_service airport_service_1
ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'PHOENIX'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'DETROIT'
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
WHERE flight_1.flight_stops = 'YES'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHILADELPHIA' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 )
SELECT flight_1.departure_time
FROM flight flight_1
JOIN flight_schedule flight_schedule_1
ON flight_1.flight_id = flight_schedule_1.flight_id
WHERE flight_schedule_1.departure_city = 'SAN FRANCISCO'
AND flight_schedule_1.arrival_city = 'ATLANTA'
SELECT DISTINCT flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'DCA'
AND flight_1.to_airport = 'PHL'
AND month(flight_1.departure_date) = 12
AND day(flight_1.departure_date) BETWEEN 2 AND 31;
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'BALTIMORE'
AND flight_1.to_airport = 'SAN FRANCISCO'
AND flight_1.arrival_time = '2023-08-17 20:00:00'
AND dayofweek(flight_1.departure_time) = 5
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
WHERE flight_1.from_airport = 'BOS'
AND flight_1.to_airport = 'SFO'
SELECT DISTINCT aircraft_type
FROM flight
WHERE departure_time < '2023-06-01 18:00:00'
AND airline_name = 'Eastern'
AND aircraft_type LIKE '%B7%'
SELECT *
FROM flight
WHERE departure_time >= DATE_ADD(NOW(), INTERVAL 1 DAY)
SELECT DISTINCT flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time = '1991-08-31' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.round_trip_required = 'NO' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' ) AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
JOIN date_day date_day_1
ON days_1.day_name = date_day_1.day_name
WHERE flight_1.to_airport = 'MILWAUKEE'
AND flight_1.airline = 'AMERICAN AIRLINES'
AND date_day_1.year = 1991
AND date_day_1.month_number = 3
AND date_day_1.day_number = 5;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TAMPA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CINcinnati'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport airport_1 WHERE flight_1.from_airport = airport_1.airport_code AND airport_1.airport_code = 'MKE'
SELECT *
FROM rental_cars
WHERE pickup_location = 'WASHINGTON DC'
AND dropoff_location = 'WASHINGTON DC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOSTON'
AND airport_2.city_name = 'ATLANTA'
SELECT fare
FROM flight
WHERE from_airport = 'DALLAS'
AND to_airport = 'SAN FRANCISCO'
SELECT distance(point_1, point_2) AS distance
FROM airport airport_1
JOIN airport airport_2 ON airport_1.airport_code = airport_2.airport_code
WHERE airport_1.city_name = 'Dallas'
SELECT flight_1.flight_id, flight_1.round_trip_fare
FROM flight flight_1
JOIN flight_routes flight_routes_1
ON flight_routes_1.flight_id = flight_1.flight_id
JOIN routes routes_1
ON routes_1.route_id = flight_routes_1.route_id
WHERE routes_1.origin = 'SAN JOSE' AND routes_1.destination = 'SALT LAKE CITY'
SELECT fare
FROM flight flight
WHERE flight.flight_id = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'SFO'
    AND to_airport = 'DFW'
    AND flight_number = 852
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE flight_1.flight_date = '2023-10-22'
AND flight_1.arrival_time >= '18:00:00'
SELECT flight_id, MIN( fare ) AS cheapest_fare
FROM flight flight
JOIN airport_service airport_service ON flight.from_airport = airport_service.airport_code
JOIN city city ON airport_service.city_code = city.city_code
WHERE flight.departure_time BETWEEN '2023-10-27 10:00:00' AND '2023-10-27 18:00:00'
GROUP BY flight_id;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' )
SELECT flight_1.flight_id, fare_1.fare_id, fare_1.round_trip_cost
FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA'
SELECT flight_id, airline_code, from_airport, to_airport, flight_date, time_of_day
FROM flight
WHERE from_airport = 'BALTIMORE'
AND to_airport = 'DALLAS'
AND flight_date = '2023-10-27'
AND time_of_day = '07:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'CHICAGO'
AND flight_1.to_airport = 'NASHVILLE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN flight flight_2
ON flight_1.flight_id = flight_2.flight_id
JOIN airport_service airport_service_2
ON flight_2.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.departure_time BETWEEN '1992-01-01' AND '1992-01-31'
AND flight_1.from_airport = 'BOS' AND flight_2.to_airport = 'SFO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHARLOTTE'
SELECT COUNT(*)
FROM flight
WHERE from_airport = 'BOS'
  AND to_airport = 'ATL'
  AND EXISTS (
    SELECT 1
    FROM flight
    WHERE from_airport = 'BOS'
      AND to_airport = 'ATL'
      AND flight_id <> flight_id
  );
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport_id = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time BETWEEN 1200 AND 1800
AND flight_1.origin = 'OAKLAND'
AND flight_1.destination = 'BOS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAS VEGAS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEW YORK' AND flight_1.direct = 1 )
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.flight_time < '05:00' AND flight_1.flight_day = 'THURSDAY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'OAKLAND' )
SELECT DISTINCT flight_id FROM flight flight_1 , days days_1 , date_day date_day_1 WHERE flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 1 AND date_day_1.day_number = 1 AND flight_1.from_airport = 'STL' AND flight_1.to_airport = 'TOR' AND flight_1.airline_code = 'CA'
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport IN (
    SELECT DISTINCT airport_code
    FROM airline
    WHERE city_name = 'PITTSBURGH'
);
SELECT flight_id, price
FROM flight flight
WHERE flight_id = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'DENVER'
    AND to_airport = 'PHILADELPHIA'
);
SELECT DISTINCT airline_code
FROM airline
WHERE airline_city = 'PITTSBURGH'
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
WHERE flight_1.from_airport = 'MEMPH'
AND flight_1.to_airport = 'TACOMA'
AND flight_1.stop_cities LIKE '%LOS ANGELA%'
SELECT fares.fare, flight.flight_id
FROM fares
JOIN flight
ON fares.flight_id = flight.flight_id
WHERE flight.from_city = 'PIT' AND flight.to_city = 'PHI'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'TORONTO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO'
SELECT fare
FROM flight
WHERE flight_id = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'DALAS'
    AND to_airport = 'SFO'
    AND departure_time >= 1800
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND flight_1.flight_date >= '2023-06-17' AND flight_1.flight_date <= '2023-06-19' AND flight_1.arrival_time > 1800;
SELECT * FROM flight flight_1
WHERE airline_code = 'US'
AND departure_time BETWEEN '14:00:00' AND '18:00:00'
SELECT DISTINCT flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DENVER' AND flight_1.departure_date = DATE_TODAY()
SELECT DISTINCT route.route_id, route.direction, route.distance, route.duration
FROM route
WHERE route.origin_airport = 'PITTSBURGH' AND route.destination_airport = 'PITTSBURGH'

SELECT flight_id
FROM flight
WHERE from_airport = 'BOS'
AND to_airport = 'PHI'
AND departure_time >= (SELECT MAX(departure_time) FROM flight WHERE from_airport = 'BOS' AND to_airport = 'PHI');
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_date = '2023-06-26'
AND flight_1.origin_airport = 'MINNEAPOLIS'
AND flight_1.destination_airport = 'LONG BEACH'
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
WHERE flight_1.departure_time > 1400
AND flight_1.flight_days = '2023-10-27'
AND city_1.city_name = 'HARTFIELD'
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
WHERE flight_1.departure_date = '2023-09-02'
AND flight_1.departure_time = '2023-09-02'
AND flight_1.to_airport = 'SFO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'BOSTON' AND airport_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'BOS'
AND flight_1.departure_date = '2023-07-29'
SELECT DISTINCT flight_1.flight_id, flight_1.plane_type
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_code = 'PITTSBURGH' AND airport_service_2.city_code = 'BALtimore'
SELECT DISTINCT flight_id FROM flight flight_1 
WHERE flight_1.departure_time = '2023-10-27 08:00:00' AND flight_1.airline_code = 'UA' AND flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'WA'
SELECT flight_id
FROM flight
WHERE flight_id = 417
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA'
SELECT DISTINCT transportation_1.transportation_type FROM transportation transportation_1
WHERE transportation_1.pickup_location = 'BOS' AND transportation_1.dropoff_location = 'BOS'
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
WHERE city_1.city_name = 'SAN FRANCISCO'
AND city_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN DIEGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'INDIANAPOLIS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 22 ) )
SELECT price
FROM flight_schedule
WHERE flight_id = (
    SELECT flight_id
    FROM flight
    WHERE departure_time BETWEEN 1300 AND 1800
    AND from_airport = 'ATL'
    AND to_airport = 'DTW'
);
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'DENVER'
AND flight_1.to_airport = 'PITTSBURGH'
SELECT flight_1.flight_id, flight_1.departure_time, flight_1.arrival_time
FROM flight flight_1
WHERE flight_1.from_airport = 'SFO' AND flight_1.to_airport = 'WA'
AND flight_1.departure_time BETWEEN '19:00:00' AND '23:00:00'
SELECT fare_1.fare_id, fare_1.price, fare_1.currency, fare_1.basis_fare, fare_1.tax_inclusive_fare, fare_1.total_fare
FROM fare fare_1
WHERE fare_1.origin = 'SEA' AND fare_1.destination = 'MSP'
SELECT DISTINCT ground_transportation.ground_transportation_id, ground_transportation.description
FROM ground_transportation
WHERE ground_transportation.airport_code = 'PHX' AND ground_transportation.description = 'GROUND TRANSPORTATION'
SELECT DISTINCT flight_1.flight_id, flight_1.aircraft_code, flight_1.from_airport, flight_1.to_airport, flight_1.flight_date, flight_1.flight_time
FROM flight flight_1
WHERE flight_1.from_airport = 'SANJOSE' AND flight_1.to_airport = 'NASHVILLE' AND flight_1.flight_date = '2023-06-03' AND (flight_1.flight_time BETWEEN '08:00:00' AND '12:00:00');
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_schedule flight_schedule_1
ON flight_schedule_1.flight_id = flight_1.flight_id
JOIN flight_routes flight_routes_1
ON flight_routes_1.flight_id = flight_1.flight_id
WHERE flight_schedule_1.date = '2023-10-27' AND flight_routes_1.route_id = 'SFO'
SELECT flight_id
FROM flight
WHERE from_airport = 'DENVER'
AND to_airport = 'PITTSBURGH'
ORDER BY fare_id
LIMIT 1;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BALTIMORE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 24 )
SELECT DISTINCT flight_1.flight_id, airline_1.airline_name
FROM flight flight_1
INNER JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
INNER JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
INNER JOIN airport_service airport_service_1
ON airport_service_1.airport_code = flight_1.from_airport
INNER JOIN airport_service airport_service_2
ON airport_service_2.airport_code = flight_1.to_airport
WHERE airport_service_1.city_code = 'BOS' AND airport_service_2.city_code = 'DCA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'DALLAS'
AND flight_1.flight_time <= '12:00:00'
