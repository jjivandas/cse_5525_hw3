
















SELECT *
FROM flight
WHERE to_airport = 'OAK'
AND arrival_time = '17:00:00'
AND flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE to_airport = 'PHL'
    AND arrival_time = '19:00:00'
);

SELECT flight.flight_id, flight.arrival_time
FROM flight
WHERE flight.from_airport = 'BOS'
  AND flight.arrival_time < '08:00:00'



SELECT f.*
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON fs.arrival_airport = a.airport_code
WHERE f.from_airport = 'LAX'
  AND f.flight_day = 'MONDAY'
  AND fs.arrival_time BETWEEN '08:00:00' AND '12:00:00'
  AND a.city_name = 'CHARLOTTE'













SELECT *
FROM flight
WHERE departure_airport = 'PHL'
AND arrival_airport = 'DEN'
AND day = 'SUNDAY'



SELECT *
FROM flight
WHERE departure_time >= '16:00:00'
AND to_airport = 'ATL'
AND flight_day = 'Wednesday'

SELECT flight.aircraft_code
FROM flight
WHERE flight.departure_time < '10:00:00'
AND flight.from_airport = 'DENV'
AND flight.to_airport = 'SFO'
AND flight.aircraft_code IN (
    SELECT aircraft_code
    FROM aircraft
    WHERE manufacturer = 'Boeing'
    AND aircraft_code_sequence LIKE '737%'
);



SELECT *
FROM flight_leg
WHERE departure_time BETWEEN '08:00:00' AND '12:00:00'
AND from_airport = 'PHL'
AND day_name = 'Wednesday'






















SELECT *
FROM flight
WHERE to_airport = 'BOS'
  AND arrival_time >= '2023-10-27 10:00:00'
  AND arrival_time <= '2023-10-27 20:00:00';
SELECT * FROM flight_leg
WHERE flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE airline_flight = 'IAH'
);




SELECT COUNT(*)
FROM flight
WHERE to_airport = 'SFO'
  AND arrival_time = '2023-08-18'
  AND flight_id IN (
    SELECT flight_id
    FROM flight
    WHERE to_airport = 'PHI'
      AND departure_time = '2023-08-18'
  );










SELECT *
FROM flight
WHERE departure_airport = 'DAL'
AND arrival_airport = 'SFO'
AND day = 'Sat'
AND arrival_time <= '16:00';













SELECT flight.*
FROM flight
WHERE departure_time >= '5:00 PM'
AND from_airport = 'BOS'
AND destination = 'ATL';

SELECT * FROM flight_fare ff
WHERE ff.restriction_code = 'FF';
SELECT flight.aircraft_code
FROM flight
JOIN flight_stop ON flight.flight_id = flight_stop.flight_id
JOIN airport ON flight_stop.arrival_airport = airport.airport_code
WHERE flight.departure_time < '10:00:00'
AND airport.city_name = 'Denver'









SELECT *
FROM flight
WHERE departure_time BETWEEN '12:00:00' AND '17:00:00'





SELECT DISTINCT f.to_airport
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON fs.stop_airport = a.airport_code
WHERE a.country_name = 'Canada';






SELECT fare_basis_code FROM fare WHERE fare_basis_code LIKE '%qw%';












SELECT *
FROM flight
WHERE departure_airport = 'BAL'
AND arrival_airport = 'SFO'
AND fare_basis_code = 'economy'
AND round_trip_required = 'true'
SELECT *
FROM flight
WHERE airline = 'American Airlines'
AND departure_time = 'Tuesday'
AND to_airport = 'SFO'




SELECT DISTINCT airline.airline_name AS airline_class
FROM airline
JOIN flight ON airline.airline_code = flight.airline_code;


SELECT fare_basis_code
FROM fare
WHERE fare_basis = 'Qo';




SELECT fare.fare_id, fare.round_trip_cost
FROM flight_fare fare
JOIN flight f ON fare.flight_id = f.flight_id
WHERE f.to_airport = 'ATL'
  AND f.from_airport = 'SFO'
  AND fare.round_trip_required = 'true'




SELECT *
FROM flight
WHERE flight_id = 'UA270'
AND application = 'Domestic'
AND departure_time >= '2023-10-27 10:00:00'
AND departure_time <= '2023-10-27 12:00:00';

SELECT *
FROM flight
WHERE departure_time >= '2023-10-25'
AND departure_time < '2023-10-26'
AND to_airport = 'CLE'
AND airline_flight = 'CLE-MIA';










SELECT DISTINCT f.flight_number, f.from_airport, f.airline_flight, f.arrival_time
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN city c ON fs.stop_airport = c.airport_code
WHERE c.city_name = 'Washington, DC'
AND fs.stop_days >= 3;

SELECT *
FROM flight
WHERE to_airport = 'DALLAS'
AND arrival_airport = 'ATLANTA'






SELECT f.flight_number, f.from_airport, f.airline_flight, f.departure_time, f.flight_days, f.connections, f.arrival_time, f.time_elapsed
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare f ON ff.fare_id = f.fare_id
WHERE f.restriction_code = 'economy'
AND f.from_airport = 'DALLAS'
AND f.to_airport = 'ATLANTA'

SELECT *
FROM flight
WHERE departure_airport = 'ATL'
AND arrival_airport = 'DEN'








SELECT * FROM flight_fare WHERE fare_basis_code = 'ewr';




SELECT fare.fare_id, fare.round_trip_cost
FROM flight_fare fare
JOIN flight f ON fare.flight_id = f.flight_id
WHERE f.to_airport = 'DENV'
  AND f.from_airport = 'SFO'
  AND fare.restriction_code = 'UA297';















SELECT * FROM flight_fare WHERE restriction_code = 'sa';












SELECT flight.aircraft_code
FROM flight
WHERE flight.departure_time = '08:00:00'
  AND flight.to_airport = 'SFO'
  AND flight.from_airport = 'ATL'
  AND flight.flight_id = 12345;












SELECT flight.*
FROM flight
WHERE departure_time = DATE_ADD(NOW(), INTERVAL 1 DAY)
AND to_airport = 'STL'
AND flight_id NOT IN (
    SELECT flight_id
    FROM flight
    WHERE departure_time < DATE_ADD(NOW(), INTERVAL 1 DAY)
    AND to_airport = 'MIL'
);



SELECT c.cost
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON fs.arrival_airport = a.airport_code
JOIN equipment_sequence es ON f.aircraft_code = es.aircraft_code
WHERE a.city_name = 'Denver'





SELECT *
FROM flight
WHERE flight_id IN (
    SELECT flight_id
    FROM flight_fare
    WHERE to_airport = 'BOS'
    AND departure_time BETWEEN '08:00:00' AND '12:00:00'
    AND meal_code = 'MEAL'
)
AND flight_day = 'THURSDAY'

SELECT *
FROM flight
WHERE departure_airport = 'DFW'
AND arrival_airport = 'PIT'
AND date(flight_date) = '2023-07-08';
SELECT f.flight_number, f.arrival_time
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN city c ON fs.stop_airport = c.city_code
WHERE f.from_airport = 'PHL'
AND f.arrival_time >= '2023-09-20 00:00:00'
AND f.airline = 'UA'

SELECT *
FROM flight
WHERE to_airport = 'OAK'
AND from_airport = 'BOS'
AND EXISTS (
    SELECT 1
    FROM flight_stop
    WHERE departure_airline = 'DAL'
    AND arrival_flight_number = 12345
);


SELECT fare_basis_code
FROM fare
WHERE fare_basis_code LIKE '%qx%';
SELECT *
FROM flight
WHERE departure_time BETWEEN '14:00:00' AND '17:00:00'
AND to_airport = 'PHL'
AND arrival_airline = 'DAL';

SELECT flight.aircraft_code
FROM flight
WHERE flight.flight_id = 825
AND flight.to_airport = 'ATL'
AND flight.departure_time = '2023-10-27 14:55:00';


SELECT code FROM code_description WHERE code = 'Y';
SELECT f.*
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON fs.arrival_airport = a.airport_code
WHERE a.city_name = 'Boston'
AND fs.departure_airport = 'PHL';


SELECT DISTINCT a.airport_name, a.airport_location, a.minimum_connect_time
FROM airport a
JOIN ground_service gs ON a.airport_code = gs.airport_code
WHERE a.city_name = 'San Francisco'


SELECT code
FROM code_description
WHERE description = 'Flight cancellation'










SELECT COUNT(*)
FROM flight
WHERE airline_flight = 'United'
  AND arrival_time = CURDATE()
  AND flight_days = 1
  AND class_of_service = 'First Class';















SELECT *
FROM flight
WHERE to_airport = 'PHL'
AND arrival_time = '2023-04-16 20:00:00';



SELECT * FROM flight_fare WHERE fare_basis_code = 'ewr';
SELECT *
FROM flight
WHERE to_airport = 'BOS'
AND airline_flight = '813'
AND EXISTS (
    SELECT 1
    FROM flight_stop
    WHERE departure_airline = 'AA'
    AND arrival_flight_number = 813
    AND stop_days > 0
);

SELECT *
FROM flight
WHERE to_airport = 'STL'
AND flight_id = 497766
AND stops = 1
AND arrival_time = 'tomorrow morning'
SELECT airline_code
FROM airline
WHERE airline_name LIKE '%airline%';
SELECT DISTINCT airline.airline_name, airline.airline_code
FROM airline
JOIN flight ON airline.airline_code = flight.airline_code;




SELECT fare.fare_id, fare.round_trip_cost
FROM flight_fare fare
JOIN flight f ON fare.flight_id = f.flight_id
WHERE f.from_airport = 'LAS'
  AND f.arrival_time = '07:18:00'
  AND f.to_airport = 'NYC';








SELECT *
FROM flight
WHERE restriction_code = 'ap/80';
SELECT fare.fare_id, fare.round_trip_cost
FROM flight_fare fare
JOIN fare_basis fare_basis ON fare.fare_basis_code = fare_basis.code
JOIN flight f ON fare.flight_id = f.flight_id
WHERE f.from_airport = 'DEN'
  AND f.to_airport = 'PIT'
  AND fare_basis.season = 'Summer'
  AND fare_basis.basis_days >= 15;


SELECT f.fare_id, f.fare_basis_code, f.round_trip_cost
FROM flight_fare f
JOIN fare_basis fb ON f.fare_basis_code = fb.code
WHERE f.from_airport = 'BOS'
AND f.to_airport = 'PHL'























SELECT fare.round_trip_cost
FROM flight
JOIN fare
ON flight.flight_id = fare.flight_id
WHERE flight.from_airport = 'IND'
  AND flight.to_airport = 'SEA'
  AND fare.round_trip_required = 'YES'








SELECT *
FROM restriction
WHERE application = 'Domestic'
AND stopovers > 1;



SELECT flight.flight_days
FROM flight
JOIN flight_stop ON flight.flight_id = flight_stop.flight_id
WHERE flight.from_airport = 'KCLT'
  AND flight_stop.stop_days = 1
  AND flight.to_airport = 'SPS'





SELECT airline.airline_name AS airline_name, class_of_service.class_description AS class_of_service
FROM airline
INNER JOIN class_of_service
ON airline.airline_code = class_of_service.airline_code;





SELECT airline_name
FROM airline
WHERE airline_code = 'DL';




















SELECT *
FROM flight
WHERE departure_airport = 'DEN'
  AND arrival_airport = 'SFO'
  AND flight_date >= '2023-10-27'
  AND flight_date <= '2023-10-30'
  AND airline_code = 'UA'
  AND class_of_service = 'economy';

SELECT *
FROM flight
WHERE departure_time = '2023-10-27'
AND to_airport = 'PHOENIX'
AND arrival_airport = 'DETROIT';













SELECT *
FROM flight
WHERE to_airport = 'DCA'
AND arrival_time >= '2023-10-27 10:00:00'
AND flight_days >= 7;




SELECT fare_id
FROM flight_fare
WHERE to_airport = 'SFO'
  AND from_airport = 'DFW'
  AND flight_id = 852;





SELECT *
FROM flight
WHERE departure_airport = 'CHI'
AND arrival_airport = 'NSH';














SELECT fare.fare_id, fare.round_trip_cost
FROM flight_fare fare
JOIN flight f ON fare.flight_id = f.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON fs.arrival_airport = a.airport_code
WHERE f.to_airport = 'DALLAS'
  AND f.from_airport = 'SAN FRANCISCO'
  AND fare.restriction_code = 'DELTA'
  AND fs.stop_days = 1;

SELECT *
FROM flight
WHERE to_airport = 'IND'
AND arrival_time BETWEEN '17:00:00' AND '19:00:00'
AND flight_id NOT IN (
    SELECT flight_id
    FROM flight
    WHERE to_airport = 'SAN'
    AND arrival_time BETWEEN '17:00:00' AND '19:00:00'
);




SELECT DISTINCT f.flight_number
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON fs.arrival_airport = a.airport_code
WHERE f.to_airport = 'MINneapolis'
AND f.arrival_date = '2023-06-26'






SELECT *
FROM flight
WHERE to_airport = 'cincinnati'
AND departure_time = '2023-10-27 12:00:00';




SELECT fare.fare_id, fare.round_trip_cost
FROM flight_fare fare
JOIN flight f ON fare.flight_id = f.flight_id
JOIN airport a ON f.from_airport = a.airport_code
WHERE f.to_airport = 'ATL'
AND a.airport_name = 'Atlanta Airport'
AND f.class_of_service = 'LIMO'

SELECT flight.flight_number, flight.arrival_time, time_elapsed
FROM flight
JOIN flight_leg ON flight.flight_id = flight_leg.flight_id
JOIN days ON flight_leg.leg_day = days.days_code
WHERE flight.from_airport = 'SFO'
  AND flight.arrival_time BETWEEN '19:00:00' AND '23:00:00'
  AND flight.flight_number NOT IN (
    SELECT flight_id
    FROM flight
    WHERE from_airport = 'SFO'
      AND arrival_time < '19:00:00'
  );








