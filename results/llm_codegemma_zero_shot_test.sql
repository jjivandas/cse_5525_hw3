SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'DAL' AND f.to_airport = 'PHX';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'PHX' AND f.to_airport = 'SLC';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f
SELECT DISTINCT g.transport_type
FROM airport_service a
JOIN ground_service g ON a.airport_code = g.airport_code
WHERE a.city_code = 'DEN';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'DEN' AND f.to_airport = 'STL' AND d.day_name = 'Tuesday' AND f.departure_time BETWEEN '06:00:00' AND '10:00:00';
SELECT DISTINCT a.airport_code, a.airport_name, a.airport_location, a.country_name, a.state_code, a.time_zone_code
FROM airport a
JOIN airport_service ap ON a.airport_code = ap.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'St. Louis' AND ap.transport_type = 'Ground Transportation';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Atlanta' AND f.to_airport = 'SEA'
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.city_name = 'San Diego'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.city_name = 'Seattle'
WHERE f.arrival_time >= '2023-04-01' AND f.arrival_time <= '2023-04-30'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.flight_id, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.flight_id, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.flight_id, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.flight_id, f.from_airport
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN time_zone tz ON c.time_zone_code = tz.time_zone_code
WHERE c.city_name = 'Washington' AND c.country_name = 'United States' AND tz.hours_from_gmt = -5 AND f.to_airport = 'YUL' AND f.flight_days LIKE '%S%' AND f.connections = 0;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.restrictions, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.restrictions, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.restrictions, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND a.city_name = 'Boston'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.city_name = 'Washington'
WHERE d.day_name = 'Saturday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.to_airport, f.from_airport, f.time_elapsed, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.to_airport, f.from_airport, f.time_elapsed, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.to_airport, f.from_airport, f.time_elapsed, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.to_airport, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN time_zone t ON c.time_zone_code = t.time_zone_code
WHERE c.city_name = 'Washington' AND f.to_airport = 'BOS' AND t.hours_from_gmt = -5 AND f.flight_days & 64 = 64;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Boston' AND a2.city_name = 'Washington' AND f.flight_days LIKE '%S%'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Milwaukee' AND f.to_airport = 'Detroit';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
WHERE f.from_airport = 'DTW' AND f.to_airport = 'YYZ'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline
FROM flight f
WHERE f.from_airport = 'YYZ' AND f.to_airport = 'MKE'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport
FROM flight f
WHERE f.from_airport = 'OAK' AND f.to_airport = 'SLC' AND f.flight_days LIKE '%4%'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT f.flight_number, f.arrival_time, f.departure_time
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'OAK' AND f.to_airport = 'SLC' AND d.day_name = 'Wednesday'
ORDER BY f.arrival_time DESC
LIMIT 1;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.meal_code, f.dual_carrier, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND f.to_airport = a.airport_code
WHERE a.city_name = 'Oakland' AND a.city_name = 'Salt Lake City' AND d.day_name = 'Wednesday' AND f.departure_time >= '2023-03-29' AND f.departure_time <= '2023-03-29'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.flight_days, f.connections, f.stops, f.flight_id, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'St. Petersburg' AND a2.city_name = 'Charlotte'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.to_airport, f.from_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.city_code, f.country_name, f.state_code, f.time_zone_code, f.airport_code, f.airport_name, f.airport_location, f.minimum_connect_time, f.minutes_distant, f.miles_distant, f.transport_type, f.ground_fare, f.
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence, f.stops, f.connections, f.flight_days, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f
SELECT DISTINCT a.airport_code, g.airport_code, g.transport_type, g.ground_fare
FROM airport a
JOIN airport_service g ON a.airport_code = g.airport_code
WHERE a.airport_code = 'IND'
ORDER BY g.ground_fare;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.meal_code, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT DISTINCT g.ground_fare
FROM airport a
JOIN airport_service g ON a.airport_code = g.airport_code
WHERE a.airport_code = 'DEN';
SELECT DISTINCT f.flight_number, a.airline_name, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id
FROM flight f
JOIN airline a ON a.airline_code = f.airline_code
JOIN flight_leg fl ON fl.flight_id = f.flight_id
JOIN days d ON d.days_code = fl.leg_days
JOIN time_interval ti ON ti.begin_time <= f.departure_time AND ti.end_time >= f.departure_time
WHERE f.from_airport = 'DEN' AND f.to_airport = 'SLC' AND d.day_name = 'Monday' AND ti.period = 'After 5pm'
ORDER BY f.departure_time;
SELECT DISTINCT a.airport_code, a.airport_name, g.transport_type, g.ground_fare
FROM airport a
INNER JOIN airport_service as g ON a.airport_code = g.airport_code
WHERE a.airport_code = 'SLC'
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.airline_flight, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f
SELECT DISTINCT a.airport_code, a.airport_name, g.transport_type, g.ground_fare
FROM airport a
JOIN airport_service ap ON a.airport_code = ap.airport_code
JOIN ground_service g ON ap.airport_code = g.airport_code
WHERE a.airport_code = 'PHX';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code,
▁▁▁▁▁▁▁f.flight_days, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_id, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight_days, f.flight
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence
SELECT DISTINCT f.flight_number, f.airline_code
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.airport_code = 'OAK' AND d.day_name = 'Thursday' AND f.departure_time < '08:00:00' AND f.to_airport = 'SLC';
SELECT DISTINCT f.flight_number
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.airport_name = 'Oakland'
AND d.day_name = 'Thursday'
AND f.departure_time < '08:00:00'
AND f.to_airport = 'SLC';
SELECT DISTINCT a.airport_code, a.airport_name, a.airport_location, a.country_name, a.state_code, a.time_zone_code
FROM airport a
JOIN state s ON a.state_code = s.state_code
WHERE s.country_name = 'United States' AND s.state_name IN ('Arizona', 'Nevada', 'California')
ORDER BY a.airport_name;
SELECT DISTINCT f.from_airport, f.to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN state s ON a.state_code = s.state_code
WHERE s.state_name IN ('California', 'Nevada', 'Arizona')
ORDER BY f.from_airport, f.to_airport;
SELECT airport_code, airport_name
FROM airport
WHERE country_name = 'Arizona';
SELECT airport_code, airport_name, city_name, state_name
FROM airport a
JOIN city c ON a.city_code = c.city_code
JOIN state s ON c.state_code = s.state_code
WHERE s.state_name = 'California';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Las Vegas' AND f.to_airport = 'PHX'
SELECT DISTINCT f.from_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN state s ON a.country_name = s.country_name
WHERE s.state_name = 'California';
SELECT airport_code, airport_name, airport_location, minimum_connect_time, country_name, state_code, time_zone_code
FROM airport;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
WHERE f.from_airport = 'OAK' AND f.to_airport = 'SLC' AND d.day_name = 'Wednesday' AND f.departure_time LIKE '%23:59:59%'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'OAK' AND f.to_airport = 'SLC' AND d.day_name = 'Thursday' AND f.departure_time < '06:00:00';
SELECT DISTINCT f.airline_code
FROM flight f
WHERE f.from_airport = 'YYZ' AND f.to_airport = 'SAN';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.from_airport, f.to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'St. Petersburg' AND a2.city_name = 'Charlotte' AND f.departure_time BETWEEN '12:00:00' AND '18:00:00';
SELECT * FROM airline WHERE airline_code = 'tpa'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Cleveland' AND a2.city_name = 'Dallas';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Cleveland' AND a2.city_name = 'Dallas' AND f.departure_time < '12:00:00';
SELECT DISTINCT f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Cleveland' AND f.to_airport = 'Dallas' AND f.departure_time < '12:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.arrival_time, f.time_elapsed, f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.arrival_time, f.time_elapsed, f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.city_name = 'Tampa';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.hours_from_gmt
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
WHERE f.from_airport = 'YYZ' AND f.to_airport = 'SAN'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f
SELECT DISTINCT f.flight_number
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'cleveland' AND a2.city_name = 'dallas';
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN city c ON f.from_airport = c.city_code AND c.city_name = 'New York'
JOIN city ct ON f.to_airport = ct.city_code AND ct.city_name = 'Miami'
WHERE f.stops = 0 AND fb.round_trip_required = 1
ORDER BY f.departure_time;
SELECT fare_basis_code, description
FROM fare_basis
WHERE fare_basis_code = 'QO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT abbreviation
FROM code_description
WHERE code = 'US'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Milwaukee' AND f.to_airport = 'Orlando'
SELECT fare_code, description
FROM code_description
WHERE code = 'f';
SELECT DISTINCT fare_basis_code, description
FROM fare_basis, code_description
WHERE fare_basis_code = code;
SELECT fare_basis_code, description
FROM fare_basis
WHERE fare_basis_code = 'Y';
SELECT restriction_code, application, no_discounts, minimum_stay, stopovers, maximum_stay, saturday_stay_required, advance_purchase
FROM restriction
WHERE restriction_code = 'ap/57';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport
SELECT airline_name
FROM airline
WHERE airline_code = 'DL';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport ap ON f.from_airport = ap.airport_code AND f.to_airport = ap.airport_code
WHERE a.airline_name = 'Delta' AND ap.city_name = 'Montreal' AND ap.city_name = 'Orlando'
SELECT * FROM flight
WHERE from_airport = 'MCO' AND to_airport = 'YUL';
SELECT airline_name
FROM airline
WHERE airline_code = 'kw';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.flight_days, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections, f.connections
SELECT fare_basis_code, description
FROM fare_basis
WHERE fare_basis_code = 'bh';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT fare_basis_code, description
FROM fare_basis
WHERE fare_basis_code = 'bh';
SELECT fare_basis_code, description
FROM fare_basis
WHERE fare_basis_code = 'bh';
SELECT fare_basis_code, fare_description
FROM fare_basis
WHERE fare_basis_code = 'bh';
SELECT fare_basis_code, fare_description
FROM fare_basis
WHERE fare_basis_code = 'bh';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Milwaukee'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Orlando'
WHERE f.departure_time >= '2023-10-25 18:00:00' AND d.day_name = 'Wednesday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Indianapolis' AND f.to_airport = 'MEM'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.flight_days, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.flight_days, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.flight_days, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.flight_days, f.from_airport, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code,
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND f.to_airport = a.airport_code
WHERE f.stops = 0 AND a.city_name = 'Montreal' AND a.country_name = 'Canada' AND f.to_airport = 'ORL' AND f.country_name = 'United States'
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier, f.aircraft_code_sequence, f.flight_days
FROM flight f
JOIN flight f2 ON f.flight_number = f2.flight_number AND f.airline_code = f2.airline_code AND f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.flight_id, f.from_airport
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.dual_carrier
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.arrival_time, f.time_elapsed, f.flight_number, f.from_airport, f.airline_flight, f.airline_code, f.meal_code, f.departure_time
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare f2 ON ff.fare_id = f2.fare_id
JOIN fare_basis fb ON f2.fare_basis_code = fb.fare_basis_code
JOIN city c ON f.from_airport = c.city_code AND f.to_airport = c.city_code
WHERE c.city_name = 'Kansas City' AND c.city_name = 'Las Vegas' AND fb.economy = 'Y'
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code, f.meal_code, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.aircraft_code_sequence, f.connections, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_number, f.from_airport, f.to_airport, f.airline_flight, f.aircraft_code_sequence, f.connections, f.dual_carrier, f.flight_days, f.time_elapsed, f.meal_code, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.aircraft_code_sequence, f.connections, f.dual_carrier, f.flight_days, f
SELECT airline_name
FROM airline
WHERE airline_code = 'hp'
SELECT DISTINCT g.airport_code, g.transport_type, g.city_code, g.ground_fare
FROM ground_service g
WHERE g.city_code = 'LAS';
SELECT DISTINCT g.airport_code, g.transport_type, g.city_code, g.ground_fare
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
WHERE a.city_name = 'Las Vegas';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport,
SELECT DISTINCT airline_code
FROM flight
WHERE airline_code LIKE '%US%';
SELECT airline_name
FROM airline
WHERE airline_code = 'US'
SELECT airline_code
FROM airline
WHERE airline_name = 'US';
SELECT airline_name
FROM airline
WHERE airline_code = 'US';
SELECT airline_name
FROM airline
WHERE airline_code = 'US'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual
SELECT airline_name
FROM airline
WHERE airline_code = 'hp';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier,
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'MKE' AND f.to_airport = 'ATL' AND f.departure_time < '10:00:00' AND d.day_name = 'Daily';
SELECT airline_code
FROM airline
WHERE airline_name = 'yx'
SELECT * FROM flight WHERE from_airport = 'SJC' AND to_airport = 'PHX';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'SJC' AND f.to_airport = 'PHX';
SELECT airline_name
FROM airline
WHERE airline_code = 'hp';
SELECT DISTINCT g.airport_code, g.transport_type, g.city_code, g.ground_fare
FROM ground_service g
WHERE g.city_code = 'PHX';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft
SELECT g.ground_fare
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Fort Worth';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.connections, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.note, f.minimum_connect_time, f.airport_name, f.airport_location, f.city_name, f.country_name, f.state_code, f.time_zone_code, f.minutes_distant, f.miles_distant, f.direction, f.transport_type, f.ground_fare,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Indianapolis' AND f.to_airport = 'MEM' AND f.departure_time < '10:00:00';
SELECT DISTINCT fare_basis_code, description
FROM fare_basis, code_description
WHERE fare_basis_code = code
AND fare_basis_code = 'f'
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_
SELECT restriction_code, description
FROM restriction
WHERE restriction_code = 'ap58';
SELECT fare_basis_code, description
FROM fare_basis
WHERE fare_basis_code = 'H';
SELECT DISTINCT f.airline_code
FROM flight f
WHERE f.airline_code IN (
▁▁▁▁SELECT DISTINCT r.application
▁▁▁▁FROM restriction r
▁▁▁▁WHERE r.no_discounts = 'N'
▁▁▁▁AND r.minimum_stay >= 2
▁▁▁▁AND r.stopovers <= 1
▁▁▁▁AND r.saturday_stay_required = 'N'
▁▁▁▁AND r.advance_purchase >= 7
);
SELECT DISTINCT f.airline_code
FROM flight f
WHERE f.airline_code IN (
▁▁▁▁SELECT DISTINCT r.application
▁▁▁▁FROM restriction r
▁▁▁▁WHERE r.no_discounts = 'N'
▁▁▁▁▁▁▁▁AND r.minimum_stay <= 7
▁▁▁▁▁▁▁▁AND r.stopovers <= 1
▁▁▁▁▁▁▁▁AND r.saturday_stay_required = 'N'
▁▁▁▁▁▁▁▁AND r.advance_purchase >= 14
)
ORDER BY f.airline_code;
SELECT DISTINCT airline_code
FROM flight
WHERE flight_number IN (
▁▁▁▁SELECT DISTINCT flight_number
▁▁▁▁FROM flight_stop
▁▁▁▁WHERE arrival_airline = 'AS'
);
SELECT DISTINCT airline_code
FROM flight
WHERE airline_code LIKE '%s%'
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'St. Petersburg' AND a2.city_name = 'Toronto' AND f.stops = 0;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Toronto'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'St. Petersburg'
WHERE f.stops = 0;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.connections, f.flight_days, f.meal_code, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.connections, f.stops, f.flight_days, f.meal_code, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.connections, f.stops, f.flight_days, f.meal_code, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Toronto' AND a2.city_name = 'St. Petersburg' AND f.stops = 0;
SELECT airline_name
FROM airline
WHERE airline_code = 'hp'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
WHERE f.from_airport = 'CHI' AND f.to_airport = 'SAN'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Chicago' AND a2.city_name = 'San Diego'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Kansas City' AND f.to_airport = 'DEN';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport
FROM flight f
WHERE f.from_airport = 'DEN' AND f.to_airport = 'PHX';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Phoenix'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Las Vegas'
WHERE f.stops = 0 AND f.connections = 0;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Las Vegas' AND a2.city_name = 'San Diego'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Chicago' AND f.arrival_time BETWEEN '06:00:00' AND '12:00:00' AND f.to_airport = 'MCI'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence
FROM flight f
WHERE f.from_airport = 'IAH' AND f.to_airport = 'SJC';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Houston' AND a2.city_name = 'Milwaukee'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
WHERE f.from_airport = 'MKE' AND f.to_airport = 'SJC' AND d.day_name = 'Wednesday'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'SJC' AND f.to_airport = 'DFW' AND d.day_name = 'Friday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'DAL' AND f.to_airport = 'IAH';
SELECT DISTINCT a.airport_name, a.airport_code, c.city_name, c.country_name, c.state_code, c.time_zone_code, c.city_code, 
(SELECT MIN(minutes_distant) FROM airport_service WHERE airport_code = a.airport_code AND direction = 'D' AND city_code = 'NYC') AS distance_from_downtown_nyc
FROM airport a, city c
WHERE a.country_name = c.country_name AND a.state_code = c.state_code AND a.city_code = c.city_code AND c.city_name = 'New York' AND c.country_name = 'United States'
ORDER BY distance_from_downtown_nyc;
SELECT DISTINCT a.airport_name, a.airport_code, c.city_name, c.country_name
FROM airport a
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'New York';
SELECT airport_name, airport_code
FROM airport
WHERE city_code = 'NYC';
SELECT airport_name, airport_code
FROM airport
WHERE city_code = 'LAX';
SELECT airport_code, airport_name, airport_location, minimum_connect_time, country_name, state_code, time_zone_code
FROM airport;
SELECT DISTINCT f.from_airport
FROM flight f
WHERE f.from_airport IN (
▁▁▁▁SELECT a.airport_code
▁▁▁▁FROM airport a
▁▁▁▁WHERE a.city_code = 'LAX'
);
SELECT airport_code, airport_name
FROM airport
WHERE city_code = 'LAX';
SELECT airport_name, airport_code
FROM airport
WHERE city_name = 'Los Angeles';
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN food_service fs2 ON f.meal_code = fs2.meal_code
JOIN restriction r ON fs2.meal_code = r.restriction_code
JOIN fare_basis fb ON r.restriction_code = fb.fare_basis_code
JOIN fare f2 ON fb.fare_basis_code = f2.fare_basis_code AND f.flight_id = f2.flight_id
JOIN city c ON f.from_airport = c.city_code
JOIN airport a ON f.to_airport = a.airport_code
JOIN time_zone
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN aircraft a ON f.aircraft_code_sequence = a.aircraft_code_sequence
JOIN dual_carrier dc ON f.dual_carrier = dc.dual_airline
JOIN fare_basis fb ON f.flight_id = fb.fare_id
JOIN fare f2 ON f.flight_id = f2.flight_id
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare_basis fb2 ON ff.fare_basis_code = fb2.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'New York' AND f.to_airport = 'LAX'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
WHERE f.from_airport = 'LGA' AND f.to_airport = 'BUR'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
WHERE f.from_airport = 'LAX' AND f.to_airport = 'MCO'
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN state s ON c.state_code = s.state_code
WHERE s.state_name = 'California' AND c.city_name = 'Ontario' AND f.to_airport = 'MCO';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id
FROM flight f
JOIN city c ON f.from_airport = c.city_code
WHERE c.country_name = 'Canada' AND c.state_code = 'ON' AND f.to_airport = 'MCO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'IND' AND f.to_airport = 'MEM' AND d.day_name = 'Monday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'MEM' AND f.to_airport = 'MIA' AND d.day_name = 'Wednesday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'MIA' AND f.to_airport = 'IND' AND d.day_name = 'Sunday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'CLT' AND d.day_name = 'Saturday' AND f.departure_time BETWEEN '12:00:00' AND '18:00:00';
SELECT DISTINCT f.aircraft_code_sequence, ac.aircraft_description
FROM flight f
JOIN aircraft ac ON f.aircraft_code_sequence = ac.aircraft_code_sequence
WHERE f.from_airport = 'CLT';
SELECT class_type
FROM fare_basis
WHERE fare_basis_code = 'q';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.time_elapsed, f.dual_carrier, f.connections, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual_carrier, f.connections, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual_carrier, f.connections, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'PIT' AND f.to_airport = 'EWR' AND d.day_name = 'Monday' AND f.departure_time BETWEEN '06:00:00' AND '10:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'MSP' AND f.to_airport = 'PIT' AND d.day_name = 'Friday'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Cincinnati' AND f.departure_time < '09:00:00' AND f.to_airport = 'TPA'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Cincinnati' AND f.arrival_time < '12:00:00' AND f.to_airport = 'Tampa';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'TPA' AND f.to_airport = 'CVG' AND f.departure_time > '15:00:00';
SELECT DISTINCT f.airline_code
FROM flight f
WHERE f.from_airport = 'SEA' AND f.to_airport = 'SLC';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airline al ON f.airline_code = al.airline_code
WHERE a.city_name = 'Seattle' AND al.airline_name = 'Delta' AND a.city_name = 'Salt Lake City'
SELECT f.flight_number, a.capacity
FROM flight f
JOIN aircraft a ON f.aircraft_code_sequence = a.aircraft_code_sequence
WHERE f.airline_code = 'DL' AND f.from_airport = 'SEA' AND f.to_airport = 'SLC';
SELECT DISTINCT f.flight_number, f.airline_code, a.aircraft_description
FROM flight f
JOIN aircraft a ON f.aircraft_code_sequence = a.aircraft_code_sequence
WHERE f.from_airport = 'SEA' AND f.to_airport = 'SLC' AND f.airline_code = 'DL';
SELECT DISTINCT g.transport_type
FROM airport_service a
JOIN ground_service g ON a.airport_code = g.airport_code
JOIN airport ap ON a.airport_code = ap.airport_code
WHERE ap.city_name = 'Baltimore';
SELECT DISTINCT g.airport_code, g.transport_type, g.city_code, g.ground_fare
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
WHERE a.city_code = 'BAL'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
JOIN days d ON f.flight_days = d.days_code
WHERE a.city_name = 'Baltimore' AND a2.city_name = 'San Francisco' AND d.day_name = 'Friday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'LAX' AND f.to_airport = 'PIT' AND d.day_name = 'Tuesday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN month m ON f.departure_time BETWEEN m.begin_time AND m.end_time
JOIN code_description cd ON f.flight_id = cd.code
JOIN city c ON f.from_airport = c.city_code AND f.to_airport = c.city_code
JOIN state s ON c.state_code = s.state_code
JOIN date_day dd ON f.departure_time BETWEEN dd.begin_time AND dd.end_time
JOIN time_interval ti ON f.departure_time
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code,
f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code,
f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code,
f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code,
f.dual
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.airline_code, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code AND a.city_name = 'Milwaukee'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.city_name = 'Phoenix'
JOIN airline al ON f.airline_code = al.airline_code AND al.airline_name = 'American Airlines'
JOIN days d ON f.flight_days = d.days_code AND (d.day_name = 'Saturday' OR d.day_name = 'Sunday')
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'PHX' AND f.to_airport = 'MKE' AND d.day_name = 'Wednesday' AND f.departure_time >= '2023-04-12 16:00:00' AND f.departure_time < '2023-04-13 00:00:00'
ORDER BY f.departure_time;
SELECT f.flight_number, f.arrival_time, f.departure_time, f.stops, f.connections, f.flight_days, f.airline_code, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'PHX' AND f.to_airport = 'MKE' AND d.day_name = 'Wednesday' AND a.airline_name = 'American Airlines';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
WHERE f.from_airport = 'PHX' AND f.to_airport = 'MKE' AND fs.arrival_airport = 'MKE'
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.aircraft_code, f.meal_code
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN days d ON f.flight_days = d.days_code
JOIN city c ON f.from_airport = c.city_code AND c.city_name = 'Chicago' AND c.country_name = 'United States'
JOIN city ct ON f.to_airport = ct.city_code AND ct.city_name = 'Seattle' AND ct.country_name = 'United States'
WHERE d.day_name = 'Saturday' AND f.departure_time BETWEEN '06:00:00' AND
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.meal_code, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, c.description
FROM flight f
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN code_description c ON fs.meal_description = c.code
WHERE f.from_airport = 'SEA' AND f.to_airport = 'ORD' AND c.description = 'Continental';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.meal_code
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN date_day dd ON f.departure_time >= dd.begin_time AND f.departure_time <= dd.end_time
JOIN month m ON dd.month_number = m.month_number
JOIN time_interval ti ON f.departure_time >= ti.begin_time AND f.departure_time <= ti.end_time
WHERE f.from_airport = 'SEA' AND f.to_airport = 'ORD' AND m.month_name = 'Saturday' AND ti.period = 'Morning' AND fs.compartment = 'Continental';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN time_interval ti ON fs.meal_number = ti.begin_time
JOIN date_day dd ON ti.begin_time = dd.day_number
JOIN month m ON dd.month_number = m.month_number
JOIN city c ON f.from_airport = c.city_code
WHERE c.city_name = 'Chicago' AND f.to_airport = 'SEA' AND f.airline_code = 'CON' AND m.month_name = 'Saturday' AND ti.period = 'Early Morning'
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.meal_code, c.description
FROM flight f
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN code_description c ON fs.meal_description = c.code
WHERE f.from_airport = 'ORD' AND f.to_airport = 'SEA' AND c.description LIKE '%early%' AND c.description LIKE '%saturday%' AND f.stops = 0
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.meal_code, c.description
FROM flight f
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN code_description c ON fs.meal_description = c.code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN city ci ON a.city_code = ci.city_code
JOIN airport ai ON f.to_airport = ai.airport_code
JOIN city ci2 ON ai.city_code = ci2.city_code
WHERE ci.city_name = 'Chicago' AND ci2.city_name = 'Minneapolis' AND d.day_name = 'Saturday' AND f.departure_time BETWEEN '06:00:00' AND '12:00:00'
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, c.description
FROM flight f
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN code_description c ON fs.meal_code = c.code
WHERE f.airline_code = 'CO' AND f.departure_airport = 'CHI' AND f.arrival_airport = 'MSP' AND f.departure_time LIKE '%06:00%' AND f.departure_time LIKE '%06:59%' AND f.stops = 0 AND f.connections = 0 AND f.meal_code IS NOT NULL
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, c.description, f.aircraft_code_sequence, a.airport_name, a.airport_location, a.country_name, a.state_code, a.time_zone_code
FROM flight f
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN flight_stop fs2 ON f.flight_id = fs2.flight_id
JOIN city c ON f.to_airport = c.city_code
JOIN airport a ON f.to_airport = a.airport_code
JOIN airline al ON f.airline_code = al.airline_code
JOIN equipment_sequence es ON f.aircraft_code_sequence = es.aircraft_code_sequence
JOIN aircraft ac ON es.aircraft_code = ac.aircraft_code
WHERE f.from_airport = 'ORD' AND f.to_airport = 'MSP' AND f.airline_code = 'CO' AND f.departure
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'New York' AND f.to_airport = 'LAS' AND f.stops = 0;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.flight_days, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN restriction r ON fa.restriction_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days
SELECT f.flight_number, f.departure_time, f.arrival_time, a.airport_name AS from_airport, b.airport_name AS to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport b ON f.to_airport = b.airport_code
WHERE a.airport_name = 'Baltimore' AND b.airport_name = 'Newark' AND f.departure_time BETWEEN '06:00:00' AND '12:00:00'
ORDER BY f.departure_time ASC;
SELECT f.flight_number
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Dallas' AND f.to_airport = 'HOU';
SELECT DISTINCT f.flight_number
FROM flight f
WHERE f.from_airport = 'IAH' AND f.to_airport = 'DFW';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f
SELECT DISTINCT f.flight_number
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN airport ap ON f.from_airport = ap.airport_code
JOIN airport ap2 ON f.to_airport = ap2.airport_code
WHERE a.airline_name = 'American Airlines' AND ap.city_name = 'Phoenix' AND ap2.city_name = 'Milwaukee';
SELECT DISTINCT f.flight_number
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Chicago' AND a2.city_name = 'Seattle';
SELECT DISTINCT f.flight_number
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airline al ON f.airline_code = al.airline_code
WHERE a.city_name = 'Chicago' AND a.country_name = 'United States' AND al.airline_name = 'Continental' AND f.to_airport = 'SEA'
SELECT DISTINCT f.flight_number
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airline al ON f.airline_code = al.airline_code
WHERE a.city_name = 'Seattle' AND a.country_name = 'United States' AND al.airline_name = 'Continental' AND a.city_name = 'Chicago' AND a.country_name = 'United States';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f
SELECT f.flight_number, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.connections, f.time_elapsed, f.flight_id, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f.stops, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.airline_flight, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.airline_flight, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.airline_flight, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.airline_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.arrival_time, f.time_elapsed, f.flight_number, f.from_airport, f.airline_flight, f.airline_code, f.meal_code, f.departure_time
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare f2 ON ff.fare_id = f2.fare_id
JOIN fare_basis fb ON f2.fare_basis_code = fb.fare_basis_code
JOIN month m ON f.departure_time BETWEEN m.month_start AND m.month_end
JOIN days d ON
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN month m ON f.departure_time BETWEEN m.begin_time AND m.end_time
JOIN code_description cd ON f.airline_code = cd.code
JOIN city c ON f.from_airport = c.city_code AND f.to_airport = c.city_code
JOIN state s ON c.state_code = s.state_code AND c.country_name = s.country_name
JOIN
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.city_code = 'HOU'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.city_code = 'DAL'
WHERE f.arrival_time < '23:59:59' AND f.stops = 0 AND f.connections = 0
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.flight_days, f.meal
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN restriction r ON fa.restriction_code = r.restriction_code
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN aircraft ac ON f.aircraft_code_sequence = ac.aircraft_code_sequence
JOIN equipment_sequence es ON ac.aircraft_code = es.aircraft_code
JOIN dual_carrier dc ON f.dual_carrier = dc.
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.hours_from_gmt
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND f.to_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN time_zone tz ON c.time_zone
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence, f.meal_code, f.stops, f.connections, f.flight_days, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.flight_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN code_description cd ON f.airline_code = cd.code
JOIN city c ON f.from_airport = c.city_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN time_zone tz ON a.time_zone_code = tz.time_zone_code
JOIN days d ON f.flight_days = d.days_code
WHERE c.city_name = 'Phoenix' AND a.airport_name = 'Phoenix Sky Harbor Intl Airport' AND d.day_name = 'Wednesday' AND f.
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.connections, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.connections, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.connections, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id,
SELECT COUNT(*)
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.country_name = 'United States' AND a.state_code = 'MN' AND a.city_name = 'St. Paul' AND f.to_airport LIKE '%NW%'
SELECT COUNT(*)
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.country_name = 'United States' AND c.state_code = 'DC' AND c.city_name = 'Washington' AND f.to_airport LIKE '%NW%'
SELECT COUNT(*)
FROM flight
WHERE airline_code = 'NW' AND from_airport = 'DCA'
SELECT DISTINCT city_name
FROM city
JOIN airport ON city.city_code = airport.city_code
JOIN flight ON airport.airport_code = flight.from_airport
WHERE airline_code = 'NW';
SELECT DISTINCT city_name
FROM city
WHERE city_code IN (
▁▁▁▁SELECT from_airport
▁▁▁▁FROM flight
▁▁▁▁WHERE airline_code = 'NW'
);
SELECT DISTINCT city_name
FROM city
WHERE city_code IN (
▁▁▁▁SELECT DISTINCT to_airport
▁▁▁▁FROM flight
▁▁▁▁WHERE airline_code = 'NW'
);
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN flight ff ON fs.arrival_flight_number = ff.flight_number
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport aa ON f.to_airport = aa.airport_code
WHERE a.city_name = 'Dallas' AND aa.city_name = 'San Francisco' AND f.departure_time >= '2023-03-23 16:00:00' AND f.stops = 1 AND f.connections = 0 AND ff.stops = 0 AND ff.connections = 0
ORDER BY f.departure_time ASC;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days
FROM flight f
WHERE f.from_airport = 'DAL' AND f.to_airport = 'SFO'
SELECT DISTINCT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'American Airlines' AND f.from_airport = 'PHL' AND f.to_airport = 'DAL' AND d.day_name = 'Monday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'PHL' AND f.to_airport = 'DAL';
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare_basis fb ON ff.fare_basis_code = fb.fare_basis_code
JOIN fare f2 ON ff.fare_id = f2.fare_id
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN aircraft ac ON f.aircraft_code_sequence = ac.aircraft_code_sequence
JOIN restriction r ON f2.restriction_code = r.restriction_code
JOIN flight_stop fs2 ON f.flight_id = fs2.flight
SELECT aircraft_description
FROM aircraft
WHERE aircraft_code = 'd9s';
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.
SELECT DISTINCT a.airport_code, a.airport_name
FROM airport a
JOIN airport_service ap ON a.airport_code = ap.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN time_zone tz ON c.time_zone_code = tz.time_zone_code
WHERE tz.hours_from_gmt = -5 AND tz.time_zone_name = 'Eastern Time (US & Canada)';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code,
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport,
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code,
SELECT DISTINCT f.meal_code
FROM flight f
WHERE f.meal_code IN (SELECT DISTINCT f.meal_code
▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁FROM food_service fs
▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁WHERE fs.meal_description LIKE '%tower%')
SELECT DISTINCT f.flight_number, f.airline_code, f.meal_code, cd.description
FROM flight f
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN code_description cd ON fs.compartment = cd.code
WHERE cd.description = 'Tower Air'
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'DELTA' AND f.from_airport = 'JFK' AND f.to_airport = 'MIA';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport ap ON f.from_airport = ap.airport_code AND f.to_airport = ap.airport_code
WHERE a.airline_name = 'Delta' AND ap.city_name = 'Boston' AND ap.city_name = 'Salt Lake City'
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.airline_code, f.meal_code
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport ap ON f.from_airport = ap.airport_code AND f.to_airport = ap.airport_code
WHERE a.airline_name = 'Delta' AND ap.city_name = 'Boston' AND ap.city_name = 'Salt Lake City'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN airport ap ON f.from_airport = ap.airport_code AND ap.airport_name = 'Boston'
JOIN airport ap2 ON f.to_airport = ap2.airport_code AND ap2.airport_name = 'Salt Lake City'
WHERE a.airline_name = 'Delta'
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.meal_code,
▁▁▁▁▁▁▁c.description, c.code, f.flight_id, f.aircraft_code_sequence, f.flight_days, f.connections, f.arrival_time, f.time_elapsed, f.flight_number, f.from_airport, f.airline_flight, f.airline_code, f.meal_code, f.departure_time,
▁▁▁▁▁▁▁ff.one_direction_cost, ff.round_trip_cost, ff.fare_basis_code, ff.fare_id, ff.round_trip_required, ff.from_airport, ff.to_airport, ff.fare_airline,
▁▁▁▁▁▁▁r.no_discounts, r.minimum_stay, r.stopovers, r.restriction_code, r.application, r.maximum_stay, r.saturday_stay_required, r.advance_
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f
SELECT f.flight_number, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.airline_code, f.meal_code, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.flight_id, f.stops, f.flight_days, f.connections, f.arrival_time, f.departure_time, f.airline_code, f.meal_code, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.flight_id, f.stops, f.flight_days, f.connections, f.arrival_time, f.departure_time, f.airline_code, f.meal_code, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.flight_id, f.stops, f.flight_days, f.connections
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f
SELECT f.flight_number, f.arrival_time
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.city_name = 'Washington DC' AND f.from_airport = 'BOS'
ORDER BY f.arrival_time ASC
LIMIT 1;
SELECT f.arrival_time, f.flight_number, f.airline_code
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.city_name = 'Washington DC' AND f.from_airport = 'BOS'
ORDER BY f.arrival_time ASC
LIMIT 1;
SELECT f.flight_number, f.arrival_time
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.city_name = 'Boston' AND a.city_name = 'Washington DC'
ORDER BY f.arrival_time ASC
LIMIT 1;
SELECT f.arrival_time, f.flight_number, f.airline_code
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'Orlando International Airport' AND f.from_airport = 'George Bush Intercontinental Airport'
ORDER BY f.arrival_time ASC
LIMIT 1;
SELECT f.flight_number, f.arrival_time
FROM flight f
WHERE f.from_airport = 'IAH' AND f.to_airport = 'MCO'
ORDER BY f.arrival_time ASC
LIMIT 1;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Houston'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Orlando'
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'IAH' AND f.to_airport = 'MCO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Houston' AND f.to_airport = 'MCO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
WHERE f.from_airport = 'DEN'
AND f.departure_time BETWEEN '2023-04-01 20:00:00' AND '2023-04-01 21:00:00';
SELECT aircraft_code, capacity
FROM aircraft
WHERE aircraft_code = '733';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = '72S';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = '72S';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = 'M80';
SELECT aircraft_code, capacity
FROM aircraft
WHERE aircraft_code = 'm80';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = 'M80';
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport = 'DEN';
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport = 'DEN' OR to_airport = 'DEN';
SELECT DISTINCT airline_code
FROM flight
WHERE to_airport = 'DEN'
SELECT f.flight_number, f.arrival_time, f.airline_code
FROM flight f
WHERE f.arrival_time BETWEEN '2023-04-01 20:00:00' AND '2023-04-01 21:00:00'
AND f.to_airport = 'DEN';
SELECT capacity
FROM aircraft
WHERE aircraft_code = '737';
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.connections, f.stops, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.connections, f.stops, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.connections, f.stops, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.connections, f.stops, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.connections, f.stops, f.flight_days,
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = '73S';
SELECT capacity
FROM aircraft
WHERE aircraft_code = '757';
SELECT DISTINCT f.aircraft_code_sequence
FROM flight f
WHERE f.aircraft_code_sequence = '757';
SELECT DISTINCT f.flight_id, f.aircraft_code_sequence, a.capacity
FROM flight f
JOIN aircraft a ON f.aircraft_code_sequence = a.aircraft_code_sequence
WHERE f.aircraft_code_sequence = '757';
SELECT f.flight_number, f.arrival_time, a.airport_name, a.city_name, a.state_code, a.country_name
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.city_name = 'Denver' AND f.arrival_time BETWEEN '2023-04-01 20:00:00' AND '2023-04-01 21:00:00'
ORDER BY f.arrival_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
WHERE f.arrival_time >= '2023-04-01 20:00:00' AND f.arrival_time < '2023-04-02 00:00:00' AND f.to_airport = 'DEN'
ORDER BY f.arrival_time;
SELECT f.flight_number, f.arrival_time, f.airline_code, f.from_airport, f.to_airport
FROM flight f
WHERE f.arrival_time BETWEEN '2023-04-01 20:00:00' AND '2023-04-01 21:00:00'
AND f.to_airport = 'DEN';
SELECT capacity
FROM aircraft
WHERE aircraft_code = '757';
SELECT *
FROM aircraft
WHERE aircraft_code = 'M80';
SELECT * FROM aircraft WHERE aircraft_code = 'M80';
SELECT aircraft_description
FROM aircraft
WHERE aircraft_code = 'M80';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = '733';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = 'M80';
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = 'M80';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.arrival_time, f.departure_time
FROM flight f
WHERE f.arrival_time >= '2023-04-01 20:00:00' AND f.arrival_time < '2023-04-02 00:00:00' OR f.departure_time >= '2023-04-01 20:00:00' AND f.departure_time < '2023-04-02 00:00:00'
SELECT f.flight_number, f.arrival_time, f.airline_code
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'Denver'
AND f.arrival_time BETWEEN '2023-03-20 20:00:00' AND '2023-03-20 21:00:00';
SELECT f.flight_number, f.arrival_time, a.airport_name, ac.aircraft_description
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
JOIN aircraft ac ON f.aircraft_code_sequence = ac.aircraft_code_sequence
WHERE a.airport_name = 'Denver' AND f.arrival_time BETWEEN '2023-04-01 20:00:00' AND '2023-04-01 21:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Nashville'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Memphis'
JOIN days d ON f.flight_days = d.days_code AND d.day_name = 'Monday'
JOIN time_interval ti ON f.departure_time BETWEEN ti.begin_time AND ti.end_time AND ti.period = 'Morning'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN days d ON f.flight_days = d.days_code
WHERE c.city_name = 'Nashville' AND c.city_name = 'Memphis' AND d.day_name = 'Monday' AND f.departure_time BETWEEN '06:00:00' AND '10:00:00';
SELECT DISTINCT g.ground_fare
FROM airport a
JOIN airport_service as g ON a.airport_code = g.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN time_zone t ON c.time_zone_code = t.time_zone_code
JOIN date_day d ON t.hours_from_gmt = d.hours_from_gmt
JOIN time_interval ti ON d.day_number = ti.begin_time
WHERE a.airport_code = 'MEM'
AND ti.begin_time = 842
AND ti.period = 'morning'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'MEM' AND f.to_airport = 'NYC' AND d.day_name = 'Monday' AND d.day_number = 2;
SELECT DISTINCT airline_code
FROM flight
WHERE to_airport = 'CVG';
SELECT DISTINCT g.transport_type
FROM airport_service a
JOIN ground_service g ON a.airport_code = g.airport_code
WHERE a.airport_code = 'LGA' AND a.city_code = 'NYC';
SELECT DISTINCT g.ground_fare
FROM airport a
JOIN airport_service as g
ON a.airport_code = g.airport_code
WHERE a.airport_code = 'LGA' AND g.city_code = 'NYC';
SELECT DISTINCT g.transport_type
FROM airport_service a
JOIN ground_service g ON a.airport_code = g.airport_code
WHERE a.city_code = 'NYC' AND a.airport_code = 'LGA';
SELECT DISTINCT g.ground_fare
FROM airport a, city c, ground_service g
WHERE a.airport_code = 'EWR'
AND c.city_name = 'New York City'
AND g.airport_code = a.airport_code
AND g.city_code = c.city_code;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Memphis' AND f.to_airport = 'NYC' AND f.departure_time BETWEEN '06:00:00' AND '12:00:00'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'New York City' AND f.departure_time >= '2023-04-12 17:00:00' AND f.flight_days LIKE '%W%' AND f.stops = 0;
SELECT g.ground_fare, g.transport_type, g.city_code
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
WHERE a.airport_name = 'Nashville International Airport';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Cincinnati' AND f.to_airport = 'Charlotte' AND f.stops = 0 AND f.departure_time >= '12:00:00' AND f.arrival_time <= '19:00:00';
SELECT COUNT(*)
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Alaska Airlines' AND f.to_airport = 'BUR';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Alaska Airlines' AND f.from_airport = 'BUR'
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Alaska Airlines' AND f.from_airport = 'BUR'
ORDER BY f.departure_time;
SELECT DISTINCT f.airline_code, a.airline_name
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.airline_code IN (
▁▁▁▁SELECT DISTINCT f.airline_code
▁▁▁▁FROM flight f
▁▁▁▁JOIN flight_fare ff ON f.flight_id = ff.flight_id
▁▁▁▁JOIN fare f2 ON ff.fare_id = f2.fare_id
▁▁▁▁JOIN fare_basis fb ON f2.fare_basis_code = fb.fare_basis_code
▁▁▁▁WHERE fb.discounted = 'Y'
);
SELECT f.flight_number, f.airline_code, f.arrival_time, f.departure_time, f.to_airport, f.from_airport
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Alaska Airlines' AND f.to_airport = 'BUR';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Alaska Airlines' AND f.from_airport = 'BUR';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Alaska Airlines';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Seattle';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Indianapolis' AND f.arrival_time < '12:00:00' AND f.to_airport = 'MEM'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.meal_code, f.departure_time, f.arrival_time, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.meal_code, f.departure_time, f.arrival_time, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.meal_code, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.meal_code, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.flight_days, f.time
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f
SELECT DISTINCT aircraft_code
FROM flight
WHERE flight_number = '419' AND airline_code = 'AA' AND departure_time = '2023-04-01 16:19:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Long Beach'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'St. Louis'
WHERE f.stops = 0 AND f.connections = 0 AND f.flight_days LIKE '%M%' AND f.dual_carrier IS NULL
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Memphis' AND f.to_airport = 'LAS'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Las Vegas' AND c.country_name = 'United States' AND f.to_airport = 'YYZ'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.state_code = 'ON' AND f.to_airport = 'MEM';
SELECT DISTINCT g.transport_type
FROM airport_service a
JOIN ground_service g ON a.airport_code = g.airport_code
WHERE a.airport_code = 'LAS';
SELECT DISTINCT a.airport_code, a.airport_name, c.description
FROM airport a
JOIN airport_service b ON a.airport_code = b.airport_code
JOIN code_description c ON b.direction = c.code
WHERE a.airport_code = 'YYZ' AND c.description = 'Taxi';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id
FROM flight f
WHERE f.from_airport = 'TPA' AND f.to_airport = 'MKE'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id
FROM flight f
WHERE f.from_airport = 'MKE' AND f.to_airport = 'SEA'
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Charlotte' AND a.state_name = 'North Carolina' AND f.to_airport = 'PHX' AND d.day_name = 'Monday'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'PHX' AND f.to_airport = 'MSP' AND d.day_name = 'Tuesday'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'St. Louis' AND a2.city_name = 'Charlotte' AND a2.state_name = 'North Carolina' AND d.day_name = 'Friday'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_id
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'Orlando International Airport' AND f.stops = 1 AND fs.stop_airport = 'JFK' AND f.from_airport = 'BOS';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.arrival_time, f.departure_time, f.airline_code, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.meal_code, f.dual_carrier, f.flight_id, f.to_airport, f.from_airport, f.stops, f.flight_days, f.connections, f.meal_code, f.dual_carrier, f.flight_id, f.to_airport, f.from_airport, f.stops, f.flight_days, f.connections, f.meal_code, f.dual_carrier, f.flight_id, f.to_airport, f.from_airport, f.stops, f.flight_days, f.connections, f.meal_code, f.dual_carrier
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN city c ON f.from_airport = c.city_code
JOIN airport a ON f.to_airport = a.airport_code
WHERE c.city_name = 'Cincinnati' AND a.airport_name = 'Newark Airport' AND f.arrival_time < '2023-04-01 18:00:00' AND f.arrival_time >= '2023-04-01 00:00:00' AND f.arrival_time >= f.departure_time AND f.stops = 0 AND f.connections = 0 AND f.meal_code IS NOT NULL AND f.aircraft_code_sequence IS NOT NULL AND f.dual_carrier IS NOT NULL AND
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.departure_time, f.arrival_time, f.airline_code, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.departure_time, f.arrival
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Cincinnati' AND c.state_code = 'OH' AND c.country_name = 'United States'
AND f.to_airport = 'SJC' AND f.departure_time >= '18:00:00'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'San Jose'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Houston Texas'
WHERE f.stops = 0;
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'IAH' AND f.to_airport = 'MEM' AND f.stops = 0;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'MEM' AND f.to_airport = 'CVG' AND d.day_name = 'Wednesday';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.country_name = 'United States' AND a.airport_name = 'Newark' AND f.to_airport = 'BNA' AND f.stops = 0
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN city c ON f.from_airport = c.city_code AND c.city_name = 'Ontario'
JOIN city c2 ON fs.stop_airport = c2.city_code AND c2.city_name = 'Westchester'
JOIN city c3 ON fs.stop_airport = c3.city_code AND c3.city_name = 'Chicago'
WHERE fs.stop_days = 'M'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Los Angeles' AND f.to_airport = 'CLT'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Charlotte' AND a2.city_name = 'Newark';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Newark' AND a2.city_name = 'Los Angeles'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport ap ON f.from_airport = ap.airport_code AND f.to_airport = ap.airport_code
WHERE a.airline_name = 'American Airlines' AND ap.city_name = 'Cincinnati' AND ap.city_name = 'Burbank'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.state_code = 'KS' AND f.to_airport = 'ORD' AND f.departure_time BETWEEN '2023-06-16' AND '2023-06-16';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Chicago'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Kansas City'
JOIN date_day dd ON f.departure_time = dd.day_number AND dd.month_number = 6 AND dd.day_number = 17
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN city c ON f.from_airport = c.city_code AND c.city_name = 'Cincinnati'
JOIN city c2 ON f.to_airport = c2.city_code AND c2.city_name = 'New York'
JOIN date_day dd ON f.departure_time >= dd.begin_time AND f.departure_time < dd.end_time AND dd.day_name = 'Saturday'
JOIN time_interval ti ON f.departure_time >= ti.begin_time AND f.departure_time < ti.end_time AND ti.period = 'Before 6pm'
WHERE f.stops = 0 AND f.connections = 0 AND f.flight_days & dd.day_number >
SELECT f.flight_number, f.arrival_time, f.departure_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
JOIN airline al ON f.airline_code = al.airline_code
WHERE a.airport_name = 'New York' AND f.arrival_time < '2023-10-28 18:00:00' AND f.stops = 0 AND al.airline_name = 'Delta' AND f.from_airport = 'SLC';
SELECT f.flight_number, f.arrival_time, f.departure_time, f.airline_code, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'San Diego' AND a2.city_name = 'Phoenix' AND d.day_name = 'Monday' AND f.departure_time BETWEEN '06:00:00' AND '12:00:00'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'DET' AND f.to_airport = 'SAN' AND d.day_name = 'Tuesday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.from_airport, f.to_airport, f.connections, f.stops, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.from_airport, f.to_airport, f.connections, f.stops, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.from_airport, f.to_airport, f.connections, f.stops, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Newark
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
JOIN date_day dd ON f.departure_time = dd.day_number
JOIN month m ON dd.month_number = m.month_number
WHERE a.city_name = 'Burbank' AND a2.city_name = 'Tacoma' AND m.month_name = 'June' AND dd.day_number = 10;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
WHERE f.from_airport = 'BUR' AND f.to_airport = 'MKE'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Milwaukee' AND a2.city_name = 'St. Louis';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'STL' AND f.to_airport = 'BUR';
SELECT DISTINCT f.airline_code
FROM flight f
WHERE f.from_airport = 'BUR' AND f.to_airport = 'MKE'
AND EXISTS (
▁▁▁▁SELECT 1
▁▁▁▁FROM flight f2
▁▁▁▁WHERE f2.from_airport = 'MKE' AND f2.to_airport = 'STL'
▁▁▁▁AND EXISTS (
▁▁▁▁▁▁▁▁SELECT 1
▁▁▁▁▁▁▁▁FROM flight f3
▁▁▁▁▁▁▁▁WHERE f3.from_airport = 'STL' AND f3.to_airport = 'BUR'
▁▁▁▁▁▁▁▁AND f3.airline_code = f.airline_code
▁▁▁▁)
)
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.connections, f.stops, f.flight_days, f.airline_flight, f.airline_code, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.connections, f.stops, f.flight_days, f.airline_flight, f.airline_code, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.connections, f.stops, f.flight_days, f.airline_flight, f.airline_code, f.dual
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.from_airport, f
SELECT a.airport_name, a.airport_location, c.city_name, c.country_name
FROM airport a
JOIN city c ON a.airport_location = c.city_code
WHERE c.state_code = 'NY' AND c.city_name LIKE '%Westchester%';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
JOIN airline al ON f.airline_code = al.airline_code
JOIN equipment_sequence es ON f.aircraft_code_sequence = es.aircraft_code_sequence
JOIN aircraft ac ON es.aircraft_code = ac.aircraft_code
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN dual_carrier dc ON f.dual_carrier = dc.dual_airline
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE a.city_name = 'Cincinnati' AND a2.city_name = '
SELECT DISTINCT a.airport_code, a.airport_name, c.city_name, c.country_name
FROM airport a
JOIN airport_service asys ON a.airport_code = asys.airport_code
JOIN city c ON asys.city_code = c.city_code
WHERE c.city_name LIKE '%New York%'
ORDER BY a.airport_code;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN city c ON fs.stop_airport = c.city_code
WHERE f.from_airport = 'CVG' AND c.country_name = 'United States' AND c.state_name = 'New York' AND f.arrival_time < '2024-02-18 18:00:00' AND f.arrival_time > '2024-02-18 00:00:00' AND f.arrival_time > f.departure_time AND f.stops = 0 AND f.connections = 0
ORDER BY f.arrival_time ASC;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.airline_flight, f.airline_code, f.meal_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.airline_flight, f.airline_code, f.meal_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND f.to_airport = a.airport_code
WHERE a.city_name = 'Memphis' AND a.country_name = 'United States' AND f.to_airport = 'Tacoma' AND f.to_country_name = 'United States'
