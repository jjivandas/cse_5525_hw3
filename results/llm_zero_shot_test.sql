SELECT *
FROM flight
WHERE to_airport = 'DALLAS'
AND arrival_airport = 'PHOENIX';










SELECT f.flight_id, f.from_airport, f.arrival_time, f.flight_number, f.airline_flight, f.meal_code, f.fare_id
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN flight_leg fl ON fs.flight_stop_id = fl.flight_stop_id
WHERE fs.departure_airport = 'SLC'
AND fs.arrival_airport = 'PHX'
SELECT f.*
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON fs.arrival_airport = a.airport_code
WHERE f.from_airport = 'PIT'
AND f.to_airport = 'PHO'



SELECT *
FROM flight
WHERE departure_airport = 'WA'
AND arrival_airport = 'TO'
AND day = 'saturday'

SELECT *
FROM flight
WHERE departure_time < '12:00:00'





SELECT *
FROM flight
WHERE departure_airport = 'WA'
  AND arrival_airport = 'TO'
  AND flight_day = 'Saturday'
  AND fare_basis_code = 'SATURDAY'
SELECT *
FROM flight
WHERE departure_time = 'Saturday'
AND from_airport = 'WA'
AND arrival_airport = 'BOS';
SELECT *
FROM flight
WHERE flight_days = 1
AND arrival_time >= '2023-06-20 12:00:00'
AND departure_airport = 'BOS'
AND stopovers = 0
AND saturday_stay_required = 1;


































SELECT DISTINCT a.airport_code
FROM airport a
JOIN flight f ON a.airport_code = f.from_airport;




SELECT *
FROM flight_fare
WHERE restriction_code = 'TP';








SELECT *
FROM flight
WHERE to_airport = 'TAMPA'
AND arrival_time >= '2023-10-27 10:00:00'
AND flight_days >= 5;








SELECT fare_basis_code
FROM fare
WHERE fare_basis_code LIKE '%qo%';

SELECT code_description.description
FROM code_description
JOIN airline ON airline.airline_code = code_description.code;

SELECT fare.fare_basis_code
FROM fare
JOIN fare_basis ON fare.fare_basis_code = fare_basis.code;
SELECT fare_basis_code
FROM fare
WHERE fare_basis_code LIKE '%h%';
SELECT fare_basis_code
FROM fare
WHERE fare_basis_code LIKE '%y%';




SELECT airline_name
FROM airline
WHERE airline_code = 'DL';


SELECT airline_name
FROM airline
WHERE airline_code = 'kw';

SELECT fare_basis_code
FROM fare
WHERE restriction_code = 'bh';

SELECT fare_basis_code
FROM fare
WHERE restriction_code = 'bh';
SELECT fare_basis_code
FROM fare
WHERE restriction_code = 'bh';
SELECT fare_basis_code
FROM fare
WHERE restriction_code = 'bh';
SELECT fare_basis_code
FROM fare
WHERE restriction_code = 'bh';











SELECT airline_code
FROM airline
WHERE airline_name = 'HP';





SELECT airline_name
FROM airline
WHERE airline_code = 'US';
SELECT airline_name
FROM airline
WHERE airline_code = 'US';
SELECT airline_name
FROM airline
WHERE airline_code = 'US';
SELECT airline_name
FROM airline
WHERE airline_code = 'US';
SELECT airline_name
FROM airline
WHERE airline_code = 'US';

SELECT airline_code
FROM airline
WHERE airline_name = 'HP';



SELECT airline_name
FROM airline
WHERE airline_code = 'YX';


SELECT airline_code
FROM airline
WHERE airline_name = 'HP';









SELECT fare.fare_basis_code
FROM fare
JOIN fare_basis ON fare.fare_basis_code = fare_basis.code;

SELECT * FROM flight_fare WHERE restriction_code = 'ap58';
SELECT fare_basis_code
FROM fare
WHERE fare_basis_code LIKE '%h%';
SELECT airline_name
FROM airline
WHERE EXISTS (
    SELECT *
    FROM flight
    WHERE airline_code = airline.airline_code
);
SELECT airline_name
FROM airline
WHERE EXISTS (
    SELECT *
    FROM flight
    WHERE airline_code = airline.airline_code
);
SELECT airline_name
FROM airline
WHERE EXISTS (
    SELECT *
    FROM flight
    WHERE airline_code = airline.airline_code
);
SELECT f.airline_code
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.airline_name LIKE '%s%';




SELECT airline_code
FROM airline
WHERE airline_name = 'HP';
















SELECT DISTINCT a.airport_code
FROM airport a
JOIN flight f ON a.airport_code = f.from_airport;














SELECT *
FROM flight
WHERE departure_time BETWEEN '2023-10-27 18:00:00' AND '2023-10-27 19:00:00'
AND to_airport = 'CHARLOTTE'
AND day_name = 'Saturday'

SELECT fare_basis_code
FROM fare
WHERE fare_basis_code LIKE '%q%';

















SELECT *
FROM flight
WHERE departure_airport = 'CLE'
AND arrival_airport = 'MIA'
AND flight_day = 'Wed'
AND (
    (arrival_time BETWEEN '2023-10-27 10:00:00' AND '2023-10-27 16:00:00')
    OR (arrival_time BETWEEN '2023-10-28 08:00:00' AND '2023-10-28 14:00:00')
)




SELECT *
FROM flight
WHERE departure_airport = 'PHOENIX'
AND arrival_airport = 'MILWAUKEE'
AND day = 'WEDNESDAY'
AND time_elapsed BETWEEN '19:00:00' AND '21:00:00';
SELECT *
FROM flight
WHERE departure_airport = 'PHOENIX'
AND arrival_airport = 'MILWAUKEE'
AND day = 'WEDNESDAY'
AND airline = 'AMERICAN AIRLINES';















SELECT *
FROM flight
WHERE departure_airport = 'CLT'
AND arrival_airport = 'BAL'
AND day = 'TUESDAY'
AND time_elapsed BETWEEN 0 AND 10;

SELECT flight.flight_number
FROM flight
JOIN flight_stop ON flight.flight_id = flight_stop.flight_id
JOIN airport ON flight_stop.arrival_airport = airport.airport_code
WHERE flight.to_airport = 'DALLAS'
  AND flight.from_airport = 'HOUSTON'
  AND flight.flight_days >= 1;
SELECT flight.flight_number
FROM flight
JOIN flight_stop ON flight.flight_id = flight_stop.flight_id
JOIN airport ON flight_stop.arrival_airport = airport.airport_code
WHERE flight.to_airport = 'HOUSTON'
  AND flight_stop.stop_days >= 1
  AND flight.flight_number = 12345;
SELECT *
FROM flight
WHERE departure_airport = 'MKE'
AND arrival_airport = 'PHX'
AND flight_date = '2023-10-27'
AND airline_flight = 'AA'





























SELECT COUNT(*) AS flight_count
FROM flight
WHERE departure_airport = 'DUWlES'
AND flight_days >= 1;





SELECT flight.flight_id, flight.arrival_time, flight.flight_number, airline.airline_name
FROM flight
JOIN airline ON flight.airline_flight = airline.airline_code
WHERE flight.from_airport = 'PHL'
  AND flight.arrival_time BETWEEN '08:00:00' AND '12:00:00'
  AND airline.airline_code = 'AA';








SELECT *
FROM flight
WHERE meal_code IS NOT NULL;
SELECT *
FROM flight
WHERE EXISTS (
    SELECT 1
    FROM food_service
    WHERE flight_id = flight.flight_id
    AND meal_code = 'SNACK'
);




SELECT f.fare_id, f.fare_basis_code, f.round_trip_cost
FROM flight f
JOIN fare_basis fb ON f.fare_basis_code = fb.code
WHERE f.from_airport = 'BOS' AND f.to_airport = 'DCA'



























SELECT COUNT(*)
FROM flight
WHERE aircraft_code = '757'
AND flight_days >= 7;
SELECT COUNT(*)
FROM flight
WHERE aircraft_code = '757'
AND flight_days >= 7;




SELECT f.flight_id, f.airline_flight, f.aircraft_code, f.flight_number, f.arrival_time, f.time_elapsed, f.flight_number, f.from_airport, f.meal_code, f.departure_time
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN flight_leg fl ON fs.flight_stop_id = fl.flight_stop_id
JOIN aircraft a ON fl.aircraft_code = a.aircraft_code
WHERE a.aircraft_code = 'M80';
SELECT f.flight_id, f.airline_flight, f.aircraft_code, f.flight_number, f.arrival_time, f.time_elapsed, f.flight_number, f.from_airport, f.meal_code, f.departure_time
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN flight_leg fl ON fs.flight_stop_id = fl.flight_stop_id
JOIN aircraft a ON fl.aircraft_code = a.aircraft_code
WHERE a.aircraft_code = 'M80';









SELECT *
FROM flight
WHERE departure_time >= '08:42:00'
AND arrival_time <= '16:00:00'
AND to_airport = 'MEMP'
AND EXISTS (
    SELECT 1
    FROM flight_leg
    WHERE flight_id = flight.flight_id
    AND leg_flight = 1
    AND arrival_time >= '08:42:00'
);

SELECT * FROM flight_fare WHERE restriction_code = 'cvg';











SELECT airline
FROM flight
WHERE airline IN (
    SELECT DISTINCT airline
    FROM flight
    GROUP BY airline
    HAVING COUNT(DISTINCT flight_id) > 1
);





SELECT flight.flight_number, airline.airline_name, fare.fare_id, fare.round_trip_cost
FROM flight
JOIN fare ON flight.flight_id = fare.flight_id
JOIN airline ON fare.fare_airline = airline.fare_airline
WHERE flight.from_airport = 'CHARLOTTE'
AND flight.to_airport = 'LAS VEGAS'
AND fare.round_trip_required = 'YES'
ORDER BY fare.round_trip_cost ASC;





SELECT *
FROM flight
WHERE departure_day = 'tuesday'
AND departure_time BETWEEN '17:00:00' AND '19:00:00'



SELECT aircraft_code
FROM flight
WHERE departure_time = '419pm';






SELECT *
FROM flight
WHERE EXISTS (
    SELECT 1
    FROM airport_service
    WHERE airport_code = 'ONT'
    AND transport_type = 'taxi'
);


SELECT f.*
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON fs.arrival_airport = a.airport_code
WHERE a.city_name = 'La guardia'
AND f.to_airport = 'San Jose'
AND fs.stop_days >= 1;






SELECT *
FROM flight
WHERE departure_time = '2023-10-27'
AND to_airport = 'MILW'
AND arrival_airport = 'STL'
SELECT *
FROM flight
WHERE departure_time = 'Tuesday Afternoon'
AND from_airport = 'St. Louis'
AND to_airport = 'Burbank';
SELECT *
FROM flight
WHERE departure_date = '2023-10-27'
AND from_airport = 'STL'
AND destination = 'BUR'















SELECT *
FROM flight
WHERE departure_airport = 'CHI'
AND arrival_airport = 'KSC'
AND date = '2023-06-17';




SELECT *
FROM flight
WHERE flight_days = 1
AND arrival_time <= '2023-10-27 18:00:00'
AND stopovers = 0
AND flight_id NOT IN (
    SELECT flight_id
    FROM flight
    WHERE flight_days = 0
    AND arrival_time >= '2023-10-27 18:00:00'
)


SELECT *
FROM flight
WHERE to_airport = 'KCLT'
AND departure_time = '2023-05-26 19:00:00'
AND flight_days = 2


























