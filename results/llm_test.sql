SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'Southwest Airlines'
AND flight_stop_2.arrival_airline = 'Southwest Airlines'
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
WHERE city_1.city_name = 'PHOENIX' AND city_2.city_name = 'SALT LAKE CITY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time < '2023-10-27 07:00:00'
AND flight_1.to_airport = 'DENVER'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
WHERE ground_service_1.city_code = (
    SELECT city_code
    FROM city
    WHERE city_name = 'DENVER'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 1
AND flight_leg_2.leg_flight = 2
AND flight_leg_1.arrival_time >= 0 AND flight_leg_2.arrival_time <= 1200
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
WHERE city_code = (
    SELECT city_code
    FROM city
    WHERE city_name = 'ST. LOUIS'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.departure_time BETWEEN 1400 AND 1800
AND flight_1.flight_days = days_1.days_code
AND city_1.city_name = 'ST. LOUIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.to_airport = 'SEATTLE'
AND flight_leg_2.to_airport = 'SEATTLE'
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
WHERE city_1.city_name = 'ATLANTA'
AND city_2.city_name = 'SEATTLE'
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
WHERE city_1.city_name = 'SAN DIEGO'
AND city_2.city_name = 'SEATTLE'
SELECT * FROM flight_leg flight_leg
JOIN flight flight ON flight_leg.flight_id = flight.flight_id
WHERE flight.from_airport = 'PHOENIX' AND flight.to_airport = 'DENVER'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY' )
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
WHERE flight_1.from_airport = 'PITTSBURGH'
AND flight_1.to_airport = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.arrival_airport
JOIN city city_1 ON city_1.city_name = airport_service_1.city_name
WHERE flight_1.from_airport = 'DCA' AND flight_1.to_airport = 'DENVER' AND flight_leg_1.leg_flight = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_day = 'saturday'
AND flight_stop_2.stop_day = 'saturday'
AND flight_1.from_airport = 'WASHINGTON'
AND flight_1.to_airport = 'BOSTON'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MONTREAL' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = 'SATURDAY' )
SELECT fare.fare_id, fare.round_trip_cost, fare.fare_basis_code
FROM fare
WHERE fare.from_airport = 'WA' AND fare.to_airport = 'TO' AND fare.flight_days = 'SATURDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2 AND flight_stop_2.stop_days = 1 AND flight_stop_1.arrival_time >= '2023-06-20 10:00:00' AND flight_stop_2.arrival_time <= '2023-06-20 12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.stop_airport
WHERE flight_1.from_airport = 'CLEVELAND'
AND flight_1.departure_time < '12:00:00'
SELECT fare.fare_id, fare.round_trip_cost, fare.fair_basis_code
FROM fare
WHERE fare.from_airport = 'WASHINGTON' AND fare.to_airport = 'BOSTON'
SELECT flight_fare.flight_id, flight_fare.fare_id, flight_fare.round_trip_cost
FROM flight_fare
WHERE flight_fare.departure_time = 'Saturday'
AND flight_fare.from_airport = 'WASHINGTON'
AND flight_fare.to_airport = 'BOSTON'
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
WHERE city_1.city_name = 'WASHINGTON'
AND city_2.city_name = 'MONTREAL'
SELECT flight_id
FROM flight
WHERE flight_days = 6
AND from_airport = 'WA'
AND to_airport = 'MTL'
SELECT flight_fare.flight_id, flight_fare.fare_id
FROM flight_fare
WHERE flight_fare.departure_time = 'Saturday'
SELECT DISTINCT fare_1.fare_id
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
WHERE flight_1.day_name = 'Saturday'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.arrival_day = 'saturday' AND flight_stop_2.departure_day = 'boston'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.day_name = 'SATURDAY' AND flight_stop_2.arrival_time >= '14:00:00' AND flight_stop_2.arrival_time <= '18:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
AND flight_stop_1.arrival_time >= '2023-10-27 10:00:00'
AND flight_stop_2.arrival_time <= '2023-10-27 12:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.to_airport = 'DETROIT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'DETROIT' AND flight_leg_2.to_airport = 'TORONTO'
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
AND city_2.city_name = 'MILWAUKEE'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN day day_1 ON flight_leg_1.leg_flight = day_1.days_code
WHERE day_1.day_name = 'THURSDAY'
AND flight_leg_1.leg_flight = (
    SELECT MAX(leg_flight)
    FROM flight_leg
    WHERE leg_flight < flight_leg_1.leg_flight
    AND from_airport = flight_1.from_airport
    AND to_airport = flight_1.to_airport
    AND day_1.days_code = day_1.days_code
)
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_flight = days_1.days_code
WHERE days_1.day_name = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_flight = days_1.days_code
WHERE days_1.day_name = 'WEDNESDAY' AND days_1.year = 1991
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
INNER JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
INNER JOIN airport airport_service_2 ON flight_stop_2.departure_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'TORONTO'
AND flight_1.to_airport = 'SAN DIEGO'
AND flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
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
WHERE city_1.city_name = 'ST. PETERSBURG'
AND city_2.city_name = 'CHARLOTTE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 1
AND flight_leg_2.leg_flight = 2
AND flight_leg_1.departure_time BETWEEN 0 AND 900
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'MIL' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'INDIANAPOLIS' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 21 ) )
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN airport airport_1
ON ground_service_1.airport_code = airport_1.airport_code
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = airport_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'INDIANAapolis'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.departure_time = '12:00:00' AND flight_leg_2.arrival_time = '12:00:00' AND flight_leg_1.from_airport = 'INDIANAapolis' AND flight_leg_2.to_airport = 'CLEVELAND'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time > 1800
AND flight_leg_1.leg_flight = 2
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEW YORK' AND flight_1.departure_time > 1700 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'MILWAUKEE'
AND flight_1.departure_time > 1700
AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = 'WEDNESDAY' AND days_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'MILWAUKEE'
AND flight_1.departure_time > 1700
AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = 'WEDNESDAY' AND days_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'OAKLAND' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 24 AND flight_1.departure_time < 800 ) )
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , airport airport_1 , airport_service airport_service_1 , city city_1 WHERE ground_service_1.airport_code = airport_1.airport_code AND airport_1.airport_code = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER'
SELECT flight_1.flight_id, airline.airline_name, equipment_sequence.aircraft_code
FROM flight flight_1
INNER JOIN airline airline ON flight_1.airline_code = airline.airline_code
INNER JOIN equipment_sequence ON flight_1.aircraft_code = equipment_sequence.aircraft_code
WHERE flight_1.from_airport = 'DENVER'
AND flight_1.departure_time > 1700
AND flight_1.to_airport = 'SALT LAKE CITY'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN airport airport_1
ON ground_service_1.airport_code = airport_1.airport_code
WHERE airport_1.city_name = 'SALT LAKE CITY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SALT LAKE CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHOENIX' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 AND flight_1.departure_time > 1800 ) )
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
WHERE ground_service_1.airport_code = 'PHX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.departure_time > 1800
SELECT flight_fare.flight_id, fare_basis.description, fare_basis.basic_type
FROM flight_fare
JOIN fare_basis
ON flight_fare.fare_basis_code = fare_basis.code
WHERE flight_fare.from_airport = 'OAKLAND'
AND flight_fare.departure_time < 900
SELECT flight_fare.flight_id, fare_basis.description, fare_basis.basic_type
FROM flight_fare
JOIN fare_basis
ON flight_fare.fare_basis_code = fare_basis.code
WHERE flight_fare.from_airport = 'OAKLAND'
AND flight_fare.to_airport = 'SALT LAKE CITY'
AND flight_fare.departure_time < 800
SELECT DISTINCT flight_1.flight_id, airline_flight.airline_code
FROM flight flight_1
INNER JOIN airline airline_flight
ON flight_1.airline_code = airline_flight.airline_code
WHERE flight_1.from_airport = 'OAKLAND'
AND flight_1.departure_time < 800
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'OAKLAND'
AND flight_days = 'Thursday'
AND departure_time < 800;
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name IN ('ARIZONA', 'CALIFORNIA');
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN state state_1
ON city_1.state_code = state_1.state_code
WHERE state_1.state_name = 'CALIFORNIA'
   OR state_1.state_name = 'NEVADA'
   OR state_1.state_name = 'ARIZONA';
SELECT DISTINCT airport_1.airport_code FROM airport airport_1 , airport_service airport_service_1 , city city_1 WHERE airport_1.airport_code = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ARIZONA'
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN flight flight_1 ON airport_1.airport_code = flight_1.from_airport
JOIN airport airport_2 ON flight_1.to_airport = airport_2.airport_code
WHERE airport_2.state_code = 'CA'
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'LAS VEGAS'
AND to_airport = 'PHOENIX'
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN flight flight_1 ON airport_1.airport_code = flight_1.from_airport
JOIN airport airport_2 ON flight_1.to_airport = airport_2.airport_code
WHERE airport_2.state_code = 'CA'
SELECT DISTINCT airport_1.airport_code, airport_1.airport_name
FROM airport airport_1
WHERE 1 = 1;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time =( SELECT MAX( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'OAKLAND' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'OAKLAND' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'OAKLAND'
AND flight_1.departure_time < (SELECT MIN( flight_1.departure_time ) FROM flight flight_1
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = city_2.city_code
AND city_2.city_name = 'SALT LAKE CITY'
AND flight_1.flight_days = days_1.days_code
AND days_1.day_name = date_day_1.day_name
AND date_day_1.year = 1991
AND date_day_1.month_number = 5
AND date_day_1.day_number = 24)
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'TORONTO' AND city_2.city_name = 'SAN DIEGO'
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
WHERE flight_1.day_name = 'FRIDAY'
AND flight_1.arrival_time BETWEEN '13:00:00' AND '17:00:00'
SELECT DISTINCT flight.flight_number, flight.from_airport, flight.airline_flight, flight.arrival_time
FROM flight
JOIN flight_leg ON flight.flight_id = flight_leg.flight_id
JOIN airport airport_1 ON flight_leg.from_airport = airport_1.airport_code
WHERE airport_1.airport_code IN ('TPA', 'BUR', 'EWR');
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'CLEVELAND' AND airport_service_2.city_name = 'DALLAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.from_airport = 'CLEVELAND'
AND flight_1.to_airport = 'DALLAS'
AND flight_1.departure_time < 1200;
SELECT DISTINCT aircraft_1.basic_type FROM aircraft aircraft_1 , equipment_sequence equipment_sequence_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE aircraft_1.aircraft_code = equipment_sequence_1.aircraft_code AND equipment_sequence_1.aircraft_code_sequence = flight_1.aircraft_code_sequence AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CLEVELAND' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND flight_1.departure_time < 1200 )
SELECT * FROM flight_stop flight_stop_1
JOIN flight flight_stop_2 ON flight_stop_1.stop_number = flight_stop_2.stop_number
WHERE flight_stop_1.from_airport = 'IND' AND flight_stop_2.to_airport = 'SEA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_2.departure_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'MEMPHIS' AND airport_service_2.city_name = 'SEATTLE'
SELECT flight_id
FROM flight
WHERE from_airport = 'NSH'
AND to_airport = 'SEA'
SELECT flight_id
FROM flight
WHERE from_airport = 'NSM'
AND to_airport = 'SEA'
SELECT flight_id, aircraft_code_sequence, dual_carrier, flight_id, stops, flight_days, connections, arrival_time, time_elapsed, flight_number, from_airport, airline_flight, airline_code, meal_code, departure_time
FROM flight
WHERE to_airport = 'MILWAUKEE' AND flight_id = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'TAMPA' AND arrival_time >= '2023-07-01 10:00:00' AND arrival_time <= '2023-07-01 20:00:00'
);
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN flight flight_1 ON ground_service_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'TAMPA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN date_day date_day_1 ON flight_leg_1.day_number = date_day_1.day_number
JOIN airport airport_1 ON flight_leg_1.from_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_leg_1.to_airport = airport_2.airport_code
WHERE date_day_1.day_name = 'MONDAY'
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
WHERE flight_1.departure_time >= 2000
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'TORONTO' AND airport_service_2.city_name = 'SAN DIEGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'TORONTO' AND airport_service_2.city_name = 'SAN DIEGO'
SELECT flight_id
FROM flight
WHERE to_airport = 'SAN DIEGO'
AND departure_time >= '2023-10-27 00:00:00'
AND departure_time <= '2023-10-27 23:59:00';
SELECT DISTINCT flight_1.flight_id, flight_1.flight_number, flight_1.from_airport, flight_1.to_airport, flight_1.arrival_time, flight_1.departure_time, flight_1.flight_days, flight_1.connections, flight_1.arrival_delay, flight_1.flight_number, flight_1.airline_flight, flight_1.meal_code
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'ST. PETERSBURG'
AND city_2.city_name = 'CHARLOTTE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'BOSTON' )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'NYC' AND flight_leg_2.to_airport = 'NYC'
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'QO'
AND fare_basis_1.round_trip_required = 1;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_required = 'NO' AND 1 = 1 )
SELECT DISTINCT airline_1.airline_code FROM airline airline_1
WHERE airline_1.airline_code = 'US'
AND airline_1.airline_name LIKE '%US%'
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
WHERE flight_1.from_airport = 'MILWAUKEE'
AND flight_1.to_airport = 'ORLANDO'
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code IN ('F', 'QW');
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'H';
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'Y'
AND fare_basis_1.round_trip_required = 1;
SELECT DISTINCT restriction_1.advance_purchase , restriction_1.stopovers , restriction_1.saturday_stay_required , restriction_1.minimum_stay , restriction_1.maximum_stay , restriction_1.application , restriction_1.no_discounts , restriction_1.restriction_code
FROM restriction restriction_1
WHERE restriction_1.restriction_code = 'AP/57';
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
WHERE flight_1.departure_time < 1000
AND flight_1.flight_id = flight_fare_1.flight_id
AND fare_1.fare_basis_code = fare_basis_1.fare_basis_code
AND fare_basis_1.class_type = 'FIRST'
AND 1 = 1;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BURBANK' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.arrival_time < 1900 )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'ORLANDO'
AND airport_service_2.city_name = 'MONTREAL'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1 ON airline_1.airline_code = flight_1.airline_code
WHERE flight_1.airline_code = 'DL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN dual_carrier dual_carrier_1 ON flight_1.to_airport = dual_carrier_1.low_flight_number
JOIN dual_carrier dual_carrier_2 ON flight_1.from_airport = dual_carrier_2.high_flight_number
WHERE dual_carrier_1.main_airline = 'DELTA' AND dual_carrier_2.main_airline = 'DELTA'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.arrival_airline = 'AIRLINES' AND flight_stop_2.arrival_airline = 'AIRLINES'
SELECT DISTINCT airline_1.airline_code
FROM flight flight
JOIN airline airline_1
ON flight.airline_code = airline_1.airline_code
WHERE airline_1.city = 'KW'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1
ON flight_fare_1.flight_id = flight_1.flight_id
JOIN fare fare_1
ON fare_1.fare_id = flight_fare_1.fare_id
JOIN class_of_service class_1
ON class_1.class_description = fare_1.class_description
WHERE class_1.booking_class = 'BUSINESS'
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'BH'
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
WHERE city_1.city_name = 'MIAMI'
AND city_2.city_name = 'JFK'
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'BH'
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'BH'
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'BH'
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'BH'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 AND flight_1.departure_time > 1800 ) )
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
WHERE city_1.city_name = 'INDIANAPOLIS'
AND city_2.city_name = 'MEMPHIS'
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
WHERE flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'ORLANDO' AND flight_leg_2.to_airport = 'MONTREAL'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 1
AND flight_leg_2.leg_flight = 2
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'MONTREAL' AND flight_leg_2.to_airport = 'ORLANDO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.to_airport = 'MONTREAL'
AND flight_leg_2.from_airport = 'ORLANDO'
SELECT flight_fare.flight_id
FROM flight_fare
JOIN fare fare_1 ON fare_1.fare_id = flight_fare.fare_id
JOIN flight flight ON flight.flight_id = fare_1.flight_id
WHERE fare_1.round_trip_required = 'NO'
AND fare_1.fare_basis_code = 'economy'
ORDER BY fare_1.fare_id;
SELECT flight_fare.flight_id
FROM flight_fare
JOIN fare fare_1
ON fare_1.fare_id = flight_fare.fare_id
JOIN flight flight
ON flight.flight_id = fare_1.flight_id
JOIN airport_service airport_service
ON flight.from_airport = airport_service.airport_code
JOIN city city
ON airport_service.city_code = city.city_code
WHERE fare_1.round_trip_required = 'NO'
AND fare_1.fare_basis_code = 'economy'
ORDER BY fare_1.fare_id;
SELECT flight_id
FROM flight
JOIN fare fare_basis
ON fare_basis.basis_days = 5
WHERE flight.from_airport = 'KCSA'
AND fare_basis.class_type = 'economy'
SELECT flight_id
FROM flight
JOIN fare fare_basis
ON fare_basis.basis_days = 5
WHERE flight.from_airport = 'KCSA'
AND fare_basis.class_type = 'economy'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
WHERE airline_1.airline_code = 'HP';
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN flight flight_1 ON ground_service_1.flight_id = flight_1.flight_id
JOIN city city_1 ON flight_1.from_airport = city_1.city_code
WHERE city_1.city_name = 'LAS VEGAS'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN airport airport_1
ON ground_service_1.airport_code = airport_1.airport_code
JOIN city city_1
ON airport_1.city_code = city_1.city_code
WHERE city_1.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN class_of_service class_1
ON fare_1.class_of_service = class_1.class_of_service
WHERE flight_1.from_airport = 'LAS VEGAS'
AND fare_1.round_trip_required = 'YES'
AND fare_1.fare_basis_code = 'economy'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN class_of_service class_1
ON fare_1.class_of_service = class_1.class_of_service
WHERE flight_1.from_airport = 'LAS VEGAS'
AND fare_1.round_trip_required = 'YES'
AND fare_1.fare_basis_code = 'economy'
SELECT flight_id, fare_basis_code, round_trip_cost
FROM fare
WHERE from_airport = 'BALtimore' AND to_airport = 'Kansas City' AND class_type = 'Economy'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight ON airline_1.airline_code = flight.airline_code
WHERE flight.to_airport = 'US'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1 ON airline_1.airline_code = flight_1.airline_code
WHERE flight_1.to_airport = 'JFK'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1 ON airline_1.airline_code = flight_1.airline_code
WHERE flight_1.to_airport = 'JFK'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1 ON airline_1.airline_code = flight_1.airline_code
WHERE flight_1.to_airport = 'JFK'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1 ON airline_1.airline_code = flight_1.airline_code
WHERE flight_1.to_airport = 'JFK'
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
WHERE flight_1.from_airport = 'COLumbus'
AND flight_1.to_airport = 'CHICAGO'
AND flight_1.departure_time < 1000
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
WHERE airline_1.airline_code = 'HP';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PETERSBURG' AND flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DETROIT'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_required = 'NO' AND 1 = 1 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.flight_days = 'DAILY' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' )
SELECT DISTINCT airline_1.airline_code
FROM flight flight
INNER JOIN airline airline_1
ON flight.airline_code = airline_1.airline_code
WHERE flight.arrival_airline = 'YX'
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
WHERE city_1.city_name = 'SAN JOSE'
AND city_2.city_name = 'PHOENIX'
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
WHERE city_1.city_name = 'SAN JOSE'
AND city_2.city_name = 'PHOENIX'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
WHERE airline_1.airline_code = 'HP';
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN flight flight_1 ON ground_service_1.flight_id = flight_1.flight_id
JOIN city city_1 ON flight_1.from_airport = city_1.city_code
WHERE city_1.city_name = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'PHOENIX' AND flight_stop_2.departure_airline = 'FORT WORTH'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN flight flight_1 ON ground_service_1.flight_id = flight_1.flight_id
JOIN city city_1 ON flight_1.from_airport = city_1.city_code
WHERE city_1.city_name = 'FORT WORTH'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE airport_service_1.city_name = 'FORT WORTH' AND airport_service_2.city_name = 'SAN JOSE'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.round_trip_cost IS NOT NULL AND( fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEW YORK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MIAMI' )
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.round_trip_cost IS NOT NULL AND( fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST' AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEW YORK' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MIAMI' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'AMERICAN AIRLINES' AND flight_stop_2.arrival_airline = 'AMERICAN AIRLINES'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'AMERICAN AIRLINES' AND flight_stop_2.arrival_airline = 'AMERICAN AIRLINES'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 , fare_basis fare_basis_1
WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' AND flight_1.departure_time < 1000
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code IN ('F', 'QW');
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
WHERE flight_1.flight_id = flight_fare_1.flight_id
AND flight_fare_1.fare_id = fare_1.fare_id
AND fare_1.round_trip_cost IS NOT NULL
AND 1 = 1
SELECT DISTINCT code_description.description
FROM code_description
INNER JOIN flight_fare
ON code_description.code = flight_fare.fare_basis_code
WHERE flight_fare.restriction_code = 'AP58';
SELECT fare_basis_1.fare_basis_code
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'H';
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
WHERE airline_1.airline_code IN ('AS', 'US');
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
WHERE airline_1.airline_code IN ('AS', 'US');
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
WHERE airline_1.airline_code IN ('AS', 'US');
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
WHERE airline_1.airline_code LIKE 's%';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.distance = 0 AND flight_leg_2.distance = 0
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.distance = 0 AND flight_leg_2.distance = 0
SELECT DISTINCT flight_1.flight_id, fare_1.fare_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
WHERE fare_1.round_trip_required = 1
AND fare_1.from_airport = 'TORONTO'
AND fare_1.to_airport = 'ST. PETERSBURG'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare flight_fare_1 ON flight_fare_1.flight_id = flight_1.flight_id
WHERE flight_fare_1.round_trip_required = 0
AND flight_1.arrival_time >= 1800
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
WHERE airline_1.airline_code = 'HP';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'CHICAGO' AND airport_service_2.city_name = 'SAN DIEGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE airport_service_1.city_name = 'CHICAGO' AND airport_service_2.city_name = 'SAN DIEGO'
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
WHERE city_1.city_name = 'DENVER'
AND city_2.city_name = 'PHOENIX'
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'PHOENIX'
AND to_airport = 'LAS VEGAS'
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
WHERE city_1.city_name = 'LAS VEGAS'
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
WHERE flight_1.departure_time BETWEEN 0 AND 1200
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'HOUSTON' AND( flight_1.from_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN JOSE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 )
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
WHERE flight_1.from_airport = 'HOUSTON'
AND flight_1.to_airport = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN JOSE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN JOSE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 25 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 2 AND flight_leg_2.leg_flight = 1
SELECT DISTINCT airport_1.airport_code, airport_1.distance
FROM airport airport_1 , airport_service airport_service_1 , city city_1
WHERE airport_1.airport_code = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'NEW YORK'
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN flight flight_1 ON airport_1.airport_code = flight_1.to_airport
WHERE flight_1.flight_id = 12345;
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN flight flight_1 ON airport_1.airport_code = flight_1.to_airport
WHERE flight_1.flight_id = 12345;
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1
ON airport_1.city_code = city_1.city_code
WHERE city_1.city_name = 'LA'
SELECT DISTINCT airport_1.airport_code, airport_1.airport_name
FROM airport airport_1
WHERE 1 = 1;
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1
ON airport_1.city_code = city_1.city_code
WHERE city_1.city_name = 'LA'
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1
ON airport_1.city_code = city_1.city_code
WHERE city_1.city_name = 'LA'
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN day_day day_day_1
ON city_1.city_name = 'Los Angeles'
WHERE airport_1.airport_code IS NOT NULL;
SELECT DISTINCT airport_code FROM airport WHERE city_name = 'LA';
SELECT DISTINCT airport_code FROM airport WHERE city_name = 'LA';
SELECT DISTINCT flight_id
FROM flight
WHERE from_airport = 'JFK'
AND to_airport = 'LAX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
WHERE airport_1.airport_code = 'LGA'
AND flight_1.to_airport = 'BURBANK'
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
WHERE city_1.city_name = 'LA' AND city_2.city_name = 'ORLANDO'
SELECT flight_id
FROM flight
WHERE from_airport = 'ONTARIO'
AND to_airport = 'ORLANDO'
SELECT flight_id
FROM flight
WHERE from_airport = 'ONTARIO'
AND to_airport = 'ORLANDO'
SELECT flight_id
FROM flight
WHERE from_airport = 'INDIANA'
AND flight_days = 1
AND fare_basis_code = 'M'
AND day_name = 'MONDAY'
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
AND city_1.city_name = 'INDIANAPOLIS'
AND city_2.city_name = 'MEMPHIS'
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
AND date_day_1.month_number = 4
AND date_day_1.day_number = 23;
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
WHERE flight_1.flight_days = 7 AND flight_1.flight_id = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = airport_service_1.airport_code
    AND to_airport = airport_service_2.airport_code
    AND flight_days = 7
    AND date_day = date('1991-08-27')
)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 1400 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHARLOTTE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MINNEAPOLIS' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHARLOTTE'
SELECT fare_basis_1.booking_class
FROM fare_basis fare_basis_1
WHERE fare_basis_1.fare_basis_code = 'Q';
SELECT flight_id
FROM flight
WHERE restriction_code = 'q'
AND flight_days = 1
AND flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE to_airport = 'ORLANDO'
    AND flight_days = 1
    AND fare_basis_code = 'q'
);
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
WHERE flight_1.from_airport = 'DETROIT'
AND flight_1.to_airport = 'ST. PETERSBURG'
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
WHERE fare_1.round_trip_cost IS NOT NULL
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'NEWARK'
AND flight_1.flight_days = days_1.days_code
AND date_day_1.day_name = 'MONDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.arrival_airport
JOIN city city_1 ON city_1.city_name = airport_service_1.city_name
WHERE flight_1.from_airport = 'MINNEAPOLIS'
AND flight_1.to_airport = 'PITTSBURGH'
AND flight_1.flight_days = 'friday'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time < 900
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'CINCINNATI'
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = city_2.city_code
AND city_2.city_name = 'TAMPA'
WHERE flight_1.departure_time < 1200;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_leg_1.arrival_time BETWEEN 1500 AND 1900
SELECT DISTINCT airline.airline_name
FROM airline
JOIN flight flight ON airline.airline_code = flight.airline_code
WHERE flight.from_airport = 'SEA' AND flight.to_airport = 'SLC'
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
WHERE flight_1.airline_code = 'DL'
AND flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'SEATTLE'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = city_2.city_code
AND city_2.city_name = 'SALT LAKE CITY'
SELECT DISTINCT flight_1.flight_id, flight_1.aircraft_code, flight_1.capacity
FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE flight_1.airline_code = 'DL' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SEATTLE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'DL' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SALT LAKE CITY' )
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
WHERE ground_service_1.city_code = (
    SELECT city_code
    FROM city
    WHERE city_name = 'BALTIMORE'
);
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
WHERE ground_service_1.city_code = (
    SELECT city_code
    FROM city
    WHERE city_name = 'BALTIMORE'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN FRANCISCO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 25 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LOS ANGELES' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 22 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1800 AND 2200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 24 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_leg_2.to_flight
WHERE flight_2.arrival_time >= '2023-10-27 10:00:00' AND flight_2.arrival_time < '2023-10-27 16:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , flight_fare flight_fare_1 , fare fare_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEW YORK' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MIAMI' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.round_trip_cost IS NOT NULL AND 1 = 1 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN flight flight_2 ON flight_2.flight_id = flight_stop_2.flight_id
WHERE flight_2.from_airport = 'MIA' AND flight_2.arrival_time = '2023-12-27 19:00:00'
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , fare_basis fare_basis_1 , days days_1 , date_day date_day_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_2 , date_day date_day_2 WHERE fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.basis_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.airline_code = 'US' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAMI' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CLEVELAND' AND flight_1.flight_days = days_2.days_code AND days_2.day_name = date_day_2.day_name AND date_day_2.year = 1991 AND date_day_2.month_number = 8 AND date_day_2.day_number = 27 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2
AND flight_stop_2.stop_days = 1
AND flight_stop_1.arrival_time BETWEEN '2023-03-15 10:00:00' AND '2023-03-15 12:00:00'
AND flight_stop_2.arrival_time BETWEEN '2023-03-15 14:00:00' AND '2023-03-15 16:00:00'
SELECT flight_1.flight_id, meal_code, departure_time
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN food_service food_service_1 ON food_service_1.meal_code = flight_leg_1.meal_code
WHERE flight_leg_1.departure_time BETWEEN 0 AND 1200
AND flight_leg_1.arrival_time IS NULL
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN food_service food_service_1
ON flight_1.meal_code = food_service_1.meal_code
WHERE flight_1.departure_time BETWEEN 0 AND 1200
AND flight_1.from_airport = 'ORD'
AND flight_1.to_airport = 'SEA'
AND food_service_1.meal_description = 'Continental Breakfast'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN food_service food_service ON flight_1.flight_id = food_service.flight_id
WHERE food_service.meal_code = 'MEAL_CODE'
AND flight_1.from_airport = 'SEA' AND flight_1.to_airport = 'CHI'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN food_service food_service_1 ON food_service_1.meal_code = flight_leg_1.meal_code
INNER JOIN city city_1 ON food_service_1.city = city_1.city_name
WHERE flight_1.airline_code = 'CO'
AND flight_1.departure_time BETWEEN 0 AND 1200
AND( flight_1.from_airport = 'SEA' AND city_1.city_name = 'CHICAGO' )
AND( flight_leg_1.meal_description = 'Continental' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'CO' AND( flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 ) ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'CO' AND( flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN food_service food_service_1 ON flight_1.meal_code = food_service_1.meal_code
WHERE flight_1.departure_time BETWEEN 0 AND 1200
AND flight_1.from_airport = 'ORD'
AND flight_1.flight_days = 'SATURDAY'
AND food_service_1.meal_description = 'MEAL'
SELECT flight_id
FROM flight
WHERE flight_days = 2
AND departure_time BETWEEN 0 AND 1200
AND airline_code = 'CO'
AND meal_code IN ('MEAL1', 'MEAL2')
AND from_airport = 'ORD'
AND to_airport = 'MSP'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1
ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN food_service food_service_1
ON food_service_1.meal_code = flight_leg_1.meal_code
WHERE flight_1.departure_time BETWEEN 0 AND 1200
AND flight_1.airline_code = 'CO'
AND flight_leg_1.leg_flight = 1
AND flight_leg_1.leg_flight_direction = 'S'
AND food_service_1.meal_description IS NOT NULL;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'NEW YORK'
AND flight_1.to_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_2.city_code
AND city_2.city_name = 'LAS VEGAS'
WHERE flight_1.stops = 0;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.stop_days = 0
AND flight_stop_2.stop_days = 0
AND flight_stop_1.stop_airport = 'MEMPHIS'
AND flight_stop_2.stop_airport = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'TAMPA'
AND flight_1.flight_days = 5
AND date_day_1.day_name = 'FRIDAY'
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
WHERE flight_1.flight_days = 1 AND day_name = 'SUNDAY' AND city_2.city_name = 'CHARLOTTE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'CHARLOTTE'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'BALTIMORE'
AND flight_1.flight_days = '2023-10-22'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' ) )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 2
AND flight_stop_1.arrival_time > flight_stop_2.departure_time;
SELECT flight_id
FROM flight
WHERE flight_number = (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'HOUSTON'
    AND to_airport = 'DALLAS'
);
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHOENIX' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_stop_1.arrival_airport
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.airline_code = 'AA'
AND flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'PHOENIX'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'CHICAGO'
AND flight_1.to_airport = 'SEATTLE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 AND( flight_1.airline_code = 'CO' AND 1 = 1 ) ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SEATTLE' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 AND( flight_1.airline_code = 'CO' AND 1 = 1 ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN flight_stop flight_stop_1
ON fare_1.from_airport = flight_stop_1.stop_airport
JOIN flight_stop flight_stop_2
ON fare_1.to_airport = flight_stop_2.stop_airport
WHERE flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
AND fare_1.round_trip_required = 'NO'
AND fare_1.one_direction_cost < 200
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , flight_fare flight_fare_1 , flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' ) AND fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'TAMPA'
AND flight_1.flight_days = 25
AND date_day_1.year = 1991
AND date_day_1.month_number = 6
AND city_1.city_name = 'TAMPA';
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.to_airport = 'CLT'
AND flight_1.flight_days = 1
AND date_day(flight_1.departure_time) = date_day('1991-08-27')
AND time_elapsed(flight_1.departure_time, '08:00:00') BETWEEN 0 AND 60;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'CHARLOTTE'
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = city_2.city_code
AND city_2.city_name = 'BALTIMORE'
WHERE flight_1.departure_time BETWEEN 0 AND 1200
AND flight_1.flight_days = days_1.days_code
AND days_1.day_name = date_day_1.day_name
AND date_day_1.year = 1991
AND date_day_1.month_number = 3
AND date_day_1.day_number = 22;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BALTIMORE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DALLAS' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'HOUSTON' AND flight_1.arrival_time > 1201
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'HOUSTON'
AND flight_1.arrival_time < 0
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 , fare_basis fare_basis_1 , days days_2 , date_day date_day_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ORLANDO' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 12 AND date_day_1.day_number = 27 ) AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.basis_days = days_2.days_code AND days_2.day_name = date_day_2.day_name AND date_day_2.year = 1991 AND date_day_2.month_number = 12 AND date_day_2.day_number = 27
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CLEVELAND' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MIAMI' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23 AND flight_1.arrival_time < 1600 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN date_day date_day_1 ON flight_leg_1.day_number = date_day_1.day_number
INNER JOIN time_interval time_interval_1 ON date_day_1.month_number = time_interval_1.month_number
INNER JOIN flight flight_1 ON time_interval_1.end_time = flight_1.arrival_time
WHERE flight_1.from_airport = 'MIA' AND flight_1.to_airport = 'CLE' AND flight_1.day_name = 'SUNDAY' AND flight_1.arrival_time BETWEEN '18:00:00' AND '20:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN days days_1 ON flight_1.flight_days = days_1.days_code
WHERE flight_1.from_airport = 'NYC'
AND flight_1.to_airport = 'LAS'
AND day_name = 'SUNDAY'
AND time_elapsed BETWEEN 17 AND 19;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = city_2.city_code
AND city_2.city_name = 'LAS VEGAS'
AND flight_1.flight_days = 7
AND day_name = 'SUNDAY'
AND time_elapsed BETWEEN 17 AND 19;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'NEW YORK'
WHERE flight_1.stops = 0
AND flight_1.flight_days = days_1.days_code
AND date_day date_day_1.day_name = 'SUNDAY'
AND time_elapsed BETWEEN 17 AND 19;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'CHICAGO'
AND airport_service_1.city_name = 'CHICAGO'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'SEATTLE'
AND flight_1.flight_days = 1
AND date_day date_day_1.day_name = 'SATURDAY'
AND date_day_1.year = 1991
AND date_day_1.month_number = 7
SELECT flight_id
FROM flight
WHERE flight_days = 1
AND arrival_time BETWEEN '08:00:00' AND '12:00:00'
AND from_airport = 'ORD'
AND( to_airport = 'LAS VEGAS' OR to_airport = 'LAX' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1800 AND 2200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 24 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHOENIX' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MILWAUKEE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHOENIX' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 8 AND date_day_1.day_number = 27 ) )
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
WHERE flight_1.flight_days = 2 AND date_day date_day_1.day_name = 'WEDNESDAY' AND date_day_1.year = 1991 AND date_day_1.month_number = 4 AND date_day_1.day_number = 23;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_1.from_airport = 'BALTIMORE'
AND flight_1.to_airport = 'SAN FRANCISCO'
AND flight_1.arrival_time BETWEEN 500 AND 800;
SELECT count( DISTINCT flight_1.flight_id ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'NW' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST PAUL' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 1
SELECT count( DISTINCT flight_1.flight_id ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.airline_code = 'NW' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'WASHINGTON' AND flight_1.flight_days = '2023-06-10'
SELECT count( DISTINCT flight_1.flight_id ) FROM flight flight_1 , flight_fare flight_fare_1 , fare fare_1 , fare_basis fare_basis_1 WHERE flight_1.airline_code = 'NW' AND flight_1.from_airport = 'DUB' AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.basis_days = 1 AND 1 = 1
SELECT DISTINCT flight_1.to_airport FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.airline_code = 'NW' AND flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER'
SELECT DISTINCT city_name
FROM flight
WHERE from_airport IN (
    SELECT DISTINCT to_airport
    FROM flight
    WHERE airline_flight = 'NW'
);
SELECT DISTINCT flight_1.to_airport FROM flight flight_1 , airport_service airport_service_1 , city city_1 WHERE flight_1.airline_code = 'NW' AND flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'DENVER'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time >= 1600
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
WHERE city_1.city_name = 'DALLAS'
AND city_2.city_name = 'SAN FRANCISCO'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHILADELPHIA' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'DALLAS' ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'PHILADELPHIA'
AND flight_1.to_airport = 'DALLAS'
SELECT DISTINCT flight.flight_id, flight.arrival_time, flight.flight_number, flight.from_airport, flight.airline_flight, flight.aircraft_code_sequence
FROM flight
JOIN flight_leg ON flight.flight_id = flight_leg.flight_id
JOIN days ON flight_leg.leg_day = days.days_code
WHERE days.day_name = 'D9S'
SELECT DISTINCT aircraft_1.aircraft_code
FROM aircraft aircraft_1
WHERE aircraft_1.aircraft_code = 'D9S';
SELECT DISTINCT flight.flight_id, flight.arrival_time, flight.flight_number, flight.from_airport, flight.airline_flight, flight.aircraft_code_sequence
FROM flight
JOIN flight_leg ON flight.flight_id = flight_leg.flight_id
JOIN days ON flight_leg.leg_day = days.days_code
WHERE days.day_name = 'D9S'
SELECT DISTINCT airport_code FROM airport_service airport_service_1 , airport airport_1 , flight flight_1 WHERE airport_service_1.airport_code = airport_1.airport_code AND airport_1.airport_name = 'TOWER AIR' AND flight_1.airline_code = 'TK' AND 1 = 1
SELECT DISTINCT airline_1.airline_code, fare_basis_1.class_type
FROM airline airline_1
INNER JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
INNER JOIN flight_fare flight_fare_1
ON flight_1.flight_id = flight_fare_1.flight_id
INNER JOIN fare fare_1
ON flight_fare_1.fare_id = fare_1.fare_id
INNER JOIN fare_basis fare_basis_1
ON fare_1.fare_basis_code = fare_basis_1.fare_basis_code
WHERE flight_1.flight_days = 'DAILY'
AND flight_1.from_airport = 'JFK'
AND flight_1.to_airport = 'ORLANDO'
AND fare_basis_1.class_type = 'FIRST'
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
WHERE flight_1.flight_id = flight_fare_1.flight_id
AND flight_fare_1.fare_basis_code = fare_basis_1.fare_basis_code
AND fare_basis_1.class_type = 'FIRST'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE airport_service_1.city_name = 'JFK' AND airport_service_2.city_name = 'MIAMI' AND flight_1.flight_id = flight_fare_1.flight_id AND flight_fare_1.fare_id = fare_1.fare_id AND fare_1.fare_basis_code = fare_basis_1.fare_basis_code AND fare_basis_1.class_type = 'FIRST'
SELECT DISTINCT flight_1.flight_id, food_service_1.meal_description
FROM flight flight_1
INNER JOIN food_service food_service_1 ON flight_1.flight_id = food_service_1.flight_id
WHERE food_service_1.meal_description IS NOT NULL;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , days days_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'FF' AND( flight_1.flight_days = days_1.days_code AND days_1.day_name = 'SATURDAY' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAMI' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEW YORK' ) )
SELECT DISTINCT flight_id
FROM flight
JOIN flight_leg flight_leg
ON flight_leg.flight_id = flight.flight_id
JOIN airline airline
ON airline.airline_code = flight.airline_code
WHERE airline.note = 'DELTA'
AND flight.to_airport = 'MIAMI'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE flight_1.airline_code = 'DL'
AND airport_1.city_name = 'BOSTON'
AND airport_2.city_name = 'SALT LAKE CITY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.airline_code = airport_service_1.airline_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'SLC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN dual_carrier dual_carrier_1 ON flight_1.low_flight_number = dual_carrier_1.low_flight_number
JOIN dual_carrier dual_carrier_2 ON flight_1.high_flight_number = dual_carrier_2.high_flight_number
WHERE flight_1.from_airport = 'BOS' AND flight_1.to_airport = 'SLC'
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
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
JOIN city city_2
ON airport_service_2.city_code = city_2.city_code;
SELECT DISTINCT fare_1.fare_id FROM fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.one_direction_cost =( SELECT MIN( fare_1.one_direction_cost ) FROM fare fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE fare_1.round_trip_required = 'NO' AND( fare_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND fare_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' ) ) AND( fare_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND fare_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PITTSBURGH' )
SELECT flight_id, fare_basis_code, round_trip_cost
FROM fare
WHERE from_airport = 'DCA'
AND to_airport = 'SLC'
AND fare_basis_code = 'economy'
ORDER BY round_trip_cost ASC;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MAX( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SALT LAKE CITY' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHOENIX' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SALT LAKE CITY' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'PHOENIX' )
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
JOIN airport airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
WHERE fare_1.round_trip_required = 'YES'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' )
SELECT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'BOSTON'
JOIN airport_service airport_service_2
ON flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = city_2.city_code
AND city_2.city_name = 'WASHINGTON'
WHERE flight_1.departure_time = (
    SELECT MIN( flight_1.departure_time )
    FROM flight flight_1
    JOIN airport_service airport_service_1
    ON flight_1.from_airport = airport_service_1.airport_code
    AND airport_service_1.city_code = city_1.city_code
    AND city_1.city_name = 'BOSTON'
)
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ONTARIO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ONTARIO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.departure_time =( SELECT MIN( flight_1.departure_time ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ONTARIO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' ) AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ONTARIO' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.arrival_airline = 'DAL' AND flight_stop_2.arrival_airline = 'CLT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.arrival_airline = 'DAL' AND flight_stop_2.arrival_airline = 'CLT'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_airline = 'UA' AND flight_stop_2.arrival_airline = 'UA'
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 19:00:00' AND '2023-10-27 20:00:00'
SELECT DISTINCT aircraft_1.aircraft_code
FROM aircraft aircraft_1
WHERE aircraft_1.aircraft_code = '733'
AND aircraft_1.capacity = (
    SELECT MAX( aircraft_1.capacity )
    FROM aircraft aircraft_1
    WHERE 1 = 1
);
SELECT DISTINCT aircraft_1.aircraft_code, aircraft_1.capacity
FROM aircraft aircraft_1
WHERE aircraft_1.basic_type = '72S';
SELECT DISTINCT aircraft_1.aircraft_code
FROM aircraft aircraft_1
WHERE aircraft_1.manufacturer = 'AIRBUS'
AND aircraft_1.model = '72s'
SELECT DISTINCT aircraft_1.aircraft_code FROM aircraft aircraft_1 
WHERE aircraft_1.manufacturer = 'MCARTHUR' AND aircraft_1.aircraft_code = 'M80';
SELECT DISTINCT aircraft_1.aircraft_code
FROM aircraft aircraft_1
WHERE aircraft_1.manufacturer = 'MCARTHUR'
AND aircraft_1.type = 'M80'
SELECT DISTINCT aircraft_1.aircraft_code, aircraft_1.capacity
FROM aircraft aircraft_1
WHERE aircraft_1.aircraft_code = 'M80';
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
JOIN airport_service airport_service_1
ON flight_1.to_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'DENVER'
SELECT DISTINCT airline.airline_name
FROM airline
JOIN flight flight ON airline.airline_code = flight.airline_code
WHERE flight.from_airport = 'DENVER'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight_1
ON airline_1.airline_code = flight_1.airline_code
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'DENVER';
SELECT flight_id
FROM flight
WHERE arrival_time BETWEEN '19:00:00' AND '21:00:00'
SELECT DISTINCT aircraft_1.aircraft_code, aircraft_1.capacity
FROM aircraft aircraft_1
WHERE aircraft_1.basic_type = '73'
SELECT DISTINCT flight.flight_id, flight.from_airport, flight.arrival_time, flight.flight_number, flight.airline_flight
FROM flight
JOIN flight_leg ON flight.flight_id = flight_leg.flight_id
JOIN airport airport_1 ON flight_leg.from_airport = airport_1.airport_code
WHERE flight.flight_number = 73s;
SELECT DISTINCT aircraft_1.aircraft_code FROM aircraft aircraft_1 WHERE aircraft_1.capacity =( SELECT MAX( aircraft_1.capacity ) FROM aircraft aircraft_1 WHERE 1 = 1 ) AND 1 = 1
SELECT DISTINCT aircraft_1.aircraft_code, aircraft_1.capacity
FROM aircraft aircraft_1
WHERE aircraft_1.basic_type = '757';
SELECT COUNT(*)
FROM flight_fare
WHERE aircraft_code = '757'
AND restriction_code = 'O'
SELECT flight.to_airport, COUNT(DISTINCT flight.passengers)
FROM flight
JOIN flight_leg ON flight.flight_id = flight_leg.flight_id
WHERE flight.aircraft_code = '757'
GROUP BY flight.to_airport;
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN 1800 AND 2100;
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '2023-10-27 18:00:00' AND '2023-10-27 21:00:00'
SELECT flight_id
FROM flight
WHERE arrival_time BETWEEN '2023-10-27 19:00:00' AND '2023-10-27 20:00:00'
SELECT DISTINCT aircraft_1.aircraft_code, aircraft_1.capacity
FROM aircraft aircraft_1
WHERE aircraft_1.basic_type = '757'
SELECT DISTINCT flight_1.flight_id, flight_1.aircraft_code, flight_1.flight_number, aircraft_1.aircraft_code, aircraft_1.aircraft_description
FROM flight flight_1
INNER JOIN aircraft aircraft_1 ON flight_1.aircraft_code = aircraft_1.aircraft_code
WHERE aircraft_1.aircraft_code = 'M80';
SELECT DISTINCT flight_1.flight_id, flight_1.aircraft_code, flight_1.flight_number, aircraft_1.aircraft_code, aircraft_1.aircraft_description
FROM flight flight_1
INNER JOIN aircraft aircraft_1 ON flight_1.aircraft_code = aircraft_1.aircraft_code
WHERE aircraft_1.aircraft_code = 'M80';
SELECT DISTINCT aircraft_1.basic_type
FROM aircraft aircraft_1
WHERE aircraft_1.aircraft_code = (
    SELECT aircraft_code
    FROM flight_leg
    WHERE leg_flight = 12345
);
SELECT DISTINCT aircraft_1.aircraft_code, aircraft_1.capacity
FROM aircraft aircraft_1
WHERE aircraft_1.basic_type = '733'
SELECT DISTINCT aircraft_1.aircraft_code
FROM aircraft aircraft_1
WHERE aircraft_1.basic_type = 'M80'
SELECT DISTINCT aircraft_1.aircraft_code
FROM aircraft aircraft_1
WHERE aircraft_1.basic_type = 'M80'
AND aircraft_1.capacity = (
    SELECT MAX( aircraft_1.capacity )
    FROM aircraft aircraft_1
    WHERE 1 = 1
);
SELECT flight_id
FROM flight
WHERE departure_time BETWEEN '18:00:00' AND '21:00:00'
SELECT flight_id
FROM flight
WHERE arrival_time BETWEEN '19:00:00' AND '21:00:00'
SELECT flight_id
FROM flight
WHERE aircraft_code IN (
    SELECT aircraft_code
    FROM aircraft
    WHERE basic_type = 'AIRBUS'
    AND (arrival_time BETWEEN 1800 AND 2100)
)
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN days days_1 ON flight_leg_1.leg_flight = days_1.days_code
WHERE days_1.day_name = 'MONDAY' AND flight_1.from_airport = 'NASHVILLE' AND flight_1.to_airport = 'MEMPHIS'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NASHVILLE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MEMPHIS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 21
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN airport airport_1
ON ground_service_1.airport_code = airport_1.airport_code
JOIN airport_service airport_service_1
ON airport_service_1.airport_code = airport_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE ground_service_1.arrival_time >= '8:42:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.flight_days = 'MONDAY' AND flight_1.from_airport = 'MEMPHIS' AND flight_1.to_airport = 'NEW YORK'
SELECT DISTINCT flight.flight_number, flight.from_airport, flight.airline_flight, flight.arrival_time
FROM flight
JOIN flight_stop ON flight.flight_id = flight_stop.flight_id
JOIN airport airport_1 ON flight_stop.departure_airport = airport_1.airport_code
WHERE airport_1.airport_name = 'CVG'
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , airport airport_1 WHERE ground_service_1.airport_code = airport_1.airport_code AND airport_1.airport_code = 'PIT'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN flight flight_1 ON ground_service_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_1.from_airport = airport_1.airport_code
WHERE airport_1.city_name = 'NYC'
SELECT DISTINCT airport_code, transport_type, city_code, ground_fare
FROM ground_service
WHERE airport_code = 'LGA' AND destination = 'NEW YORK CITY'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN flight flight_1
ON ground_service_1.aircraft_code_sequence = flight_1.aircraft_code
WHERE flight_1.from_airport = 'EWR'
AND flight_1.to_airport = 'NYC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN date_day date_day_1 ON flight_leg_1.day_number = date_day_1.day_number
WHERE date_day_1.day_name = 'MONDAY'
AND flight_1.from_airport = 'MEMPHIS'
AND flight_1.to_airport = 'NEW_YORK_CITY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = 'NYC'
AND flight_leg_1.departure_time >= '19:00:00'
AND flight_leg_1.day_name = 'Wednesday'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN flight flight_1 ON ground_service_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_1.from_airport = airport_1.airport_code
WHERE airport_1.airport_name = 'Nashville International Airport'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_time BETWEEN 1300 AND 1900
AND flight_stop_2.departure_time BETWEEN 1300 AND 1900
SELECT count( DISTINCT flight_1.flight_id ) FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'AL' AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'Anchorage' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'Burbank'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airline airline_1
ON flight_1.airline_flight = airline_1.airline_code
WHERE airline_1.note = 'ALASKA AIRLINES'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airline airline_1
ON flight_1.airline_code = airline_1.airline_code
WHERE airline_1.note = 'ALASKA' AND flight_1.from_airport = 'BURBANK'
SELECT DISTINCT airline_1.airline_code
FROM airline airline_1
JOIN flight flight ON airline_1.airline_code = flight.airline_code
WHERE flight.airline_code = 'AS';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
WHERE airport_service_1.city_code = 'BURBANK'
AND flight_1.arrival_time >= '2023-08-01 10:00:00'
AND flight_1.arrival_time <= '2023-08-01 23:59:00';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.airline_code = 'ACA'
AND flight_1.departure_time >= '2023-10-27 10:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airline airline_1 ON flight_1.airline_code = airline_1.airline_code
WHERE airline_1.note = 'ALASKA AIRLINES'
SELECT DISTINCT flight_id
FROM flight
WHERE departure_time >= '2023-10-27 00:00:00' AND departure_time <= '2023-10-27 23:59:59';
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = city_1.city_code
AND city_1.city_name = 'INDIANAPOLIS'
WHERE flight_1.departure_time < 1200;
SELECT DISTINCT fare_1.fare_id, fare_1.one_direction_cost
FROM fare fare_1 , flight_fare flight_fare_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2
WHERE fare_1.fare_id = flight_fare_1.fare_id AND flight_fare_1.flight_id = flight_1.flight_id AND flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHARLOTTE' AND flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'LAX'
AND airport_service_1.city_name = 'LOS ANGELES'
WHERE flight_1.departure_time BETWEEN 0 AND 800;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN city city_1 ON city_1.city_name = airport_service_1.city_name
WHERE flight_1.departure_time >= '09:00:00'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 0 AND 1200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NEWARK' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 1
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1800 AND 2200 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PITTSBURGH' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'LOS ANGELES' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 3 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'SAN DIEGO'
AND flight_1.flight_days = days_1.days_code
AND days_1.day_name = 'SUNDAY'
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
AND flight_1.flight_days = days_1.days_code
AND days_1.day_name = date_day_1.day_name
AND date_day_1.year = 1991
AND date_day_1.month_number = 3
AND date_day_1.day_number = 22;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'INDIANAPOLIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TORONTO' AND flight_1.flight_days = 1 AND flight_1.departure_time > flight_1.arrival_time )
SELECT flight_1.flight_id
FROM flight flight_1
WHERE flight_1.departure_time = (
    SELECT MAX( flight_1.departure_time )
    FROM flight flight_1
    WHERE flight_1.from_airport = 'TORONTO'
    AND flight_1.to_airport = 'MONTREAL'
    AND flight_1.departure_time < '2023-10-26 00:00:00'
);
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE flight_1.airline_code = 'AA'
AND flight_stop_1.stop_days = 1
AND flight_stop_2.stop_days = 1
SELECT DISTINCT aircraft_1.aircraft_code FROM aircraft aircraft_1 , equipment_sequence equipment_sequence_1 , flight flight_1 WHERE aircraft_1.aircraft_code = equipment_sequence_1.aircraft_code AND equipment_sequence_1.aircraft_code_sequence = flight_1.aircraft_code_sequence AND flight_1.airline_code = 'UA' AND flight_1.flight_number = 21
SELECT flight_id
FROM flight
WHERE from_airport = 'KSCT'
  AND flight_days = '2023-10-24'
  AND arrival_time >= '20:00:00'
  AND arrival_time <= '23:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport airport_1
ON flight_1.from_airport = airport_1.airport_code
JOIN airport airport_2
ON flight_1.to_airport = airport_2.airport_code
WHERE airport_1.city_name = 'LONG BEACH'
AND airport_2.city_name = 'ST. LOUIS'
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
WHERE city_1.city_name = 'MEMPHIS'
AND city_2.city_name = 'LAS VEGAS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'LAS VEGAS'
AND airport_2.city_name = 'ONTARIO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'ONTARIO' AND airport_2.city_name = 'MEMPHIS'
SELECT DISTINCT ground_service_1.transport_type FROM ground_service ground_service_1 , airport airport_1 WHERE ground_service_1.airport_code = airport_1.airport_code AND airport_1.airport_code = 'PHL'
SELECT DISTINCT ground_service_1.transport_type
FROM ground_service ground_service_1
JOIN airport airport_1
ON ground_service_1.airport_code = airport_1.airport_code
WHERE ground_service_1.transport_type = 'TAXI'
AND airport_1.airport_code = 'ONT'
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
WHERE city_1.city_name = 'TAMPA'
AND city_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE flight_1.from_airport = 'MILWAUKEE'
AND flight_1.to_airport = 'SEATTLE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'LAGUNA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'SAN JOSE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 24 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , state state_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHARLOTTE' AND city_1.state_code = state_1.state_code AND state_1.state_name = 'NORTH CAROLINA' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ATLANTA' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 22 )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , state state_1 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'PHOENIX' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. PAUL' AND city_2.state_code = state_1.state_code AND state_1.state_name = 'MINNESOTA' AND( flight_1.departure_time > 1200 AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 22 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. PAUL' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. LOUIS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = 'THURSDAY' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. LOUIS' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHARLOTTE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 5
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_1.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'NEW YORK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BURBANK' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'MILWAUKEE' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 21 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 1 AND flight_leg_2.leg_flight = 2
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.departure_time BETWEEN 1200 AND 1800 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SAN DIEGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'INDIANAPOLIS' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 3 AND date_day_1.day_number = 22 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 WHERE flight_1.to_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'ST. LOUIS' AND( flight_1.departure_time = '2023-10-23 23:00:00' AND flight_1.flight_days = days_1.days_code AND 2 = 2 )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'NEWARK'
AND flight_1.arrival_time < '1800'
AND( flight_1.stop_days = 0 OR flight_1.stop_days = 1 AND flight_1.arrival_time < '1800' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CINcinnati' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEWARK' AND( flight_1.arrival_time <= 1800 AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 5 AND date_day_1.day_number = 6 ) )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.airline_code = 'AA' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'MIAMI' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHICAGO' AND flight_1.arrival_time >= 1700 AND flight_1.arrival_time <= 1800 ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'TACOMA'
AND flight_1.departure_time BETWEEN 1000 AND 1600
AND city_1.city_name = 'LOS ANGELES'
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
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.from_airport = 'SAN JOSE'
AND flight_leg_2.to_airport = 'HOUSTON'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.leg_flight = 1
AND flight_leg_2.leg_flight = 2
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'MEMPHIS' AND flight_1.to_airport = 'CINcinnati' AND flight_1.flight_days = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE airport_service_1.city_name = 'NEWARK' AND airport_service_2.city_name = 'NASHVILLE'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport_service airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.from_airport = airport_service_1.airport_code
AND city_1.city_name = 'ONTARIO'
AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = 'CHICAGO' AND flight_1.flight_id = flight_stop_1.flight_id )
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
WHERE flight_1.to_airport = 'CHARLOTTE'
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
WHERE city_1.city_name = 'NEWARK'
AND city_2.city_name = 'LOS ANGELES'
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
WHERE flight_1.airline_code = 'AA'
AND flight_1.from_airport = 'CINcinnati'
AND flight_1.to_airport = 'BURBANK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'KANSAS CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'CHICAGO' AND flight_1.flight_days = '2023-06-16' )
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CHICAGO' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'KANSAS CITY' AND flight_1.flight_days = '2023-06-17' )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
WHERE flight_1.departure_time = '2023-06-16'
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
WHERE flight_1.departure_time = '2023-06-17'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1 ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN airport_service airport_service_2 ON flight_1.to_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE city_1.city_name = 'BURBANK'
AND city_2.city_name = 'MILWAUKEE'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.airline_code = 'DL' AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'CINCINNATI' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEW YORK' AND( flight_1.arrival_time < 1800 AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 AND( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 AND not(( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) ) ) ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_time < 1800
AND flight_stop_2.arrival_time > flight_stop_1.arrival_time
AND flight_stop_1.stop_days = 6
AND flight_stop_2.stop_days = 6
AND flight_stop_1.stop_airport = 'SLC'
AND flight_stop_2.stop_airport = 'NYC'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'MIA'
AND airport_service_1.city_name = 'MIAMI'
AND flight_1.arrival_time >= '17:00:00'
SELECT flight_id
FROM flight
WHERE from_airport = 'KANSAS CITY'
AND arrival_time = '2023-10-23 19:00:00'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_fare fare_1 ON flight_1.fare_id = fare_1.fare_id
JOIN flight flight_2 ON fare_1.round_trip_cost = fare_2.round_trip_cost
WHERE flight_1.from_airport = 'KANSAS CITY'
AND flight_1.to_airport = 'CHICAGO'
AND flight_1.flight_days = '2023-05-26'
AND flight_1.arrival_time = 1900;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.arrival_airport = airport_service_1.airport_code
JOIN city city_1 ON airport_service_1.city_code = city_1.city_code
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_2 ON flight_stop_2.departure_airport = airport_service_2.airport_code
JOIN city city_2 ON airport_service_2.city_code = city_2.city_code
WHERE flight_1.from_airport = 'MEMPHIS' AND flight_1.to_airport = 'TACOMA' AND flight_stop_1.stop_days = 1
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_name = 'SAN diego'
AND flight_1.flight_days = '2023-10-27'
AND flight_leg_1.day_name = 'MONDAY'
AND flight_leg_2.day_name = 'AM';
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BOSTON' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'WASHINGTON' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 2 AND date_day_1.day_number = 21 )
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
WHERE flight_1.departure_time = '2023-10-22 19:00:00'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
INNER JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
INNER JOIN airport airport_service_1 ON airport_service_1.airport_code = flight_leg_1.from_airport
INNER JOIN airport airport_service_2 ON airport_service_2.airport_code = flight_leg_2.to_airport
WHERE flight_1.from_airport = airport_service_1.airport_code
AND airport_service_1.city_code = 'CINcinnati'
AND flight_1.to_airport = airport_service_2.airport_code
AND airport_service_2.city_code = 'SAN JOSE'
AND flight_1.flight_days = '2023-10-27'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_leg_1.flight_id
WHERE flight_leg_1.day_name = 'WEDNESDAY'
AND flight_leg_2.day_name = 'WEDNESDAY'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
JOIN days days_1
ON flight_1.flight_days = days_1.days_code
WHERE flight_1.to_airport = 'MEMPH'
AND flight_1.flight_days = days_1.days_code
AND days_1.day_name = 'friday'
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
WHERE flight_1.to_airport = 'CINCINNATI'
AND flight_1.flight_days = days_1.days_code
AND date_day_1.year = 1991
AND date_day_1.month_number = 8
AND date_day_1.day_number = 27;
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
WHERE flight_1.airline_code = 'AA'
AND flight_1.departure_time >= 1800
AND flight_1.departure_time <= 1900;
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'BURBANK' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'TACOMA' AND flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 6 AND date_day_1.day_number = 10 )
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
WHERE city_1.city_name = 'BURBANK'
AND city_2.city_name = 'MILWAUKEE'
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
WHERE city_1.city_name = 'BURBANK'
AND city_2.city_name = 'MILWAUKEE'
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
WHERE city_1.city_name = 'MILWAUKEE'
AND city_2.city_name = 'ST. LOUIS'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
JOIN airport airport_1 ON flight_stop_1.arrival_airport = airport_1.airport_code
JOIN airport airport_2 ON flight_stop_2.departure_airport = airport_2.airport_code
WHERE airport_1.city_name = 'ST. LOUIS' AND airport_2.city_name = 'BURBANK'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 WHERE flight_1.stops = 0 AND( flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'NASHVILLE' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'ST. LOUIS' AND( flight_1.arrival_time >= 1730 AND flight_1.arrival_time <= 1830 ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
INNER JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
INNER JOIN airport airport_service_1 ON flight_stop_1.from_airport = airport_service_1.airport_code
INNER JOIN airport airport_service_2 ON flight_stop_1.to_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'BURBANK'
AND airport_service_1.city_code = 'STL'
AND airport_service_2.city_code = 'MILW'
AND flight_1.flight_id = flight_stop_1.flight_id
AND flight_stop_1.stop_days = 1;
SELECT flight_1.flight_id, flight_1.from_airport, flight_1.to_airport, flight_1.flight_days
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_1.flight_id
WHERE flight_stop_1.stop_days = 2 AND flight_stop_2.stop_days = 2;
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_leg_1.flight_id
JOIN city city_1 ON flight_stop_1.arrival_airport = city_1.city_name
JOIN airport airport_service_1 ON airport_service_1.airport_code = city_1.city_code
WHERE flight_1.to_airport = 'WESTCHESTER COUNTY'
SELECT DISTINCT airport_code, airport_name, airport_location
FROM airport
WHERE airport_location LIKE '%WESTCHESTER COUNTY%'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_leg flight_leg_1 ON flight_leg_1.flight_id = flight_1.flight_id
JOIN flight_leg flight_leg_2 ON flight_leg_2.flight_id = flight_1.flight_id
JOIN airport_service airport_service_1 ON flight_leg_1.from_airport = airport_service_1.airport_code
JOIN airport_service airport_service_2 ON flight_leg_2.to_airport = airport_service_2.airport_code
WHERE flight_1.airline_code = 'UA' AND flight_1.from_airport = 'CINcinnati' AND flight_1.to_airport = 'NEW_YORK' AND flight_1.flight_days = '2023-06-10'
SELECT DISTINCT airport_1.airport_code
FROM airport airport_1
JOIN airport_service airport_service_1
ON airport_1.airport_code = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'NEW YORK CITY'
SELECT DISTINCT flight_1.flight_id FROM flight flight_1 , airport_service airport_service_1 , city city_1 , airport_service airport_service_2 , city city_2 , days days_1 , date_day date_day_1 WHERE flight_1.from_airport = airport_service_1.airport_code AND airport_service_1.city_code = city_1.city_code AND city_1.city_name = 'SALT LAKE CITY' AND( flight_1.to_airport = airport_service_2.airport_code AND airport_service_2.city_code = city_2.city_code AND city_2.city_name = 'NEW YORK' AND( flight_1.arrival_time < 1800 AND(( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 AND( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) OR( flight_1.flight_days = days_1.days_code AND days_1.day_name = date_day_1.day_name AND date_day_1.year = 1991 AND date_day_1.month_number = 7 AND date_day_1.day_number = 26 AND not(( flight_1.departure_time > flight_1.arrival_time AND( flight_1.time_elapsed >= 60 OR flight_1.arrival_time < 41 ) AND 1 = 1 ) ) ) ) ) )
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN airport_service airport_service_1
ON flight_1.from_airport = airport_service_1.airport_code
JOIN city city_1
ON airport_service_1.city_code = city_1.city_code
WHERE city_1.city_name = 'NEW YORK'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_stop_1.flight_id = flight_1.flight_id
JOIN flight_stop flight_stop_2 ON flight_stop_2.flight_id = flight_stop_1.flight_id
WHERE flight_stop_1.arrival_time > 1200
AND flight_stop_2.arrival_time < 1400
AND flight_1.airline_code = 'AA'
SELECT flight_1.flight_id
FROM flight flight_1
JOIN fare fare_1
ON flight_1.flight_id = fare_1.flight_id
JOIN flight_stop flight_stop_1
ON fare_1.from_airport = flight_stop_1.departure_flight_number
JOIN flight_stop flight_stop_2
ON fare_1.to_airport = flight_stop_2.arrival_flight_number
WHERE flight_1.from_airport = 'KANSAS CITY'
AND flight_1.to_airport = 'CHICAGO'
SELECT DISTINCT flight_1.flight_id
FROM flight flight_1
JOIN flight_stop flight_stop_1 ON flight_1.flight_id = flight_stop_1.flight_id
JOIN airport airport_service_1 ON flight_stop_1.stop_airport = airport_service_1.airport_code
JOIN airport airport_service_2 ON flight_stop_1.arrival_airport = airport_service_2.airport_code
WHERE flight_1.from_airport = 'MEMPHIS' AND flight_1.to_airport = 'TACOMA'
