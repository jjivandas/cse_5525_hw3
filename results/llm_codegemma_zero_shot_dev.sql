SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Washington' AND f.arrival_time BETWEEN '12:00:00' AND '18:00:00' AND f.to_airport = 'BOS';
SELECT f.flight_number, f.arrival_time, f.airline_code, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'Baltimore' AND d.day_name = 'Thursday' AND f.arrival_time < '09:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'BOS' AND f.to_airport = 'SFO' AND f.stops = 0;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Baltimore' AND a2.city_name = 'Atlanta';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Newark' AND f.to_airport = 'Tampa';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Atlanta' AND f.to_airport = 'Baltimore';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Dallas' AND a2.city_name = 'Boston'
SELECT f.flight_number, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.from_airport = 'HOU' AND f.to_airport = 'MKE' AND d.day_name = 'Friday' AND a.airline_name = 'American Airlines';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.from_airport, f.to_airport
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN airport ap ON f.from_airport = ap.airport_code AND f.to_airport = ap.airport_code
WHERE a.airline_name = 'United Airlines' AND ap.city_name = 'Boston' AND ap.city_name = 'Denver'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport
FROM flight f
WHERE f.from_airport = 'DEN' AND f.to_airport = 'PHL';
SELECT f.flight_number, f.departure_time
FROM flight f
WHERE f.from_airport = 'DEN' AND f.to_airport = 'BOS'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_location = 'San Francisco'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_location = 'Boston'
JOIN date_day dd ON f.departure_time = dd.day_number AND dd.month_number = 8 AND dd.day_name = 'August'
WHERE f.stops = 0 AND f.connections = 0 AND f.flight_days LIKE '%8%' AND f.meal_code = 'B' AND f.aircraft_code_sequence = 1
ORDER BY f.departure_time ASC;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code
SELECT f.flight_number, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Boston' AND f.arrival_time < '08:00:00' AND f.to_airport = 'BWI'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.stops, f.arrival_time, f.departure_time
FROM flight f
WHERE f.from_airport = 'BOS' AND f.to_airport = 'SFO'
ORDER BY f.stops DESC;
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.from_airport = 'PHL' AND f.to_airport = 'DAL' AND a.airline_name = 'American Airlines';
SELECT f.flight_number, f.arrival_time, f.departure_time, f.airline_code, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'Baltimore/Washington International Thurgood Marshall Airport' AND f.arrival_time BETWEEN '2023-04-04 16:00:00' AND '2023-04-04 17:00:00' AND f.from_airport = 'Philadelphia International Airport';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code,
SELECT f.flight_number, f.arrival_time, f.departure_time, f.airline_code, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.from_airport, f.to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Pittsburgh' AND a2.city_name = 'Fort Worth' AND
f.departure_time >= '2023-04-01 10:00:00' AND f.departure_time <= '2023-04-01 15:00:00'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Dallas'
AND f.to_airport = 'PHL';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.airline_code = 'US' AND f.from_airport = 'SFO' AND f.to_airport = 'PIT' AND d.day_name = 'Tuesday'
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed,
f.dual_carrier, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code,
ff.fare_id, ff.fare_basis_code, ff.round_trip_required, ff.one_direction_cost, ff.round_trip_cost, ff.fare_airline,
r.restriction_code, r.no_discounts, r.minimum_stay, r.stopovers, r.maximum_stay, r.saturday_stay_required, r.advance_purchase,
fs.meal_code, fs.compartment, fs.meal_number, fs.meal_description,
m.month_number, m.month_name,
cd.code, cd.description,
c.city_name, c.country_name, c.state_code, c.time_zone_code, c.city_code,
s.country
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
JOIN airline al ON f.airline_code = al.airline_code
WHERE a.city_name = 'Boston' AND a2.city_name = 'San Francisco' AND fs.stop_airport = 'Dallas' AND al.airline_name = 'American Airlines';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND a.city_name = 'Philadelphia'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.city_name = 'Pittsburgh'
WHERE d.day_name = 'Tuesday' AND f.departure_time BETWEEN '05:00:00' AND '08:00:00'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'PIT' AND f.to_airport = 'PHL';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.airport_code = 'PHL' AND a2.airport_code = 'PIT' AND f.departure_time BETWEEN '16:30:00' AND '17:30:00' AND fb.discounted = 'N' AND f.stops <= 1 AND f.connections <= 1 AND
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Midwest Express' AND f.from_airport = 'DTW' AND f.to_airport = 'ORD';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code, f.meal_code, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Dallas' AND f.to_airport = 'IAH' AND f.departure_time >= '2023-04-01' AND f.departure_time <= '2023-04-30'
ORDER BY f.departure_time ASC;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN dual_carrier dc ON f.airline_code = dc.main_airline
JOIN flight_stop fs ON f.flight_id = fs.flight_id
WHERE f.airline_code = 'DL' AND f.from_airport = 'DEN' AND f.to_airport = 'DAL' AND f.departure_time > '2023-03-05'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.flight_days, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.flight_days, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.flight_days, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.flight_days, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.note, f.booking_class, f.class_description, f.rank, f.fare_id, f.round_trip_required, f.fare_airline, f.from_airport, f.to_airport, f.one_direction_cost, f.round_trip_cost, f.restriction_code, f.no_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.note, f.airport_code, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.minutes_distant, f.miles_distant, f.direction, f.city_code, f.ground_fare,
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier,
SELECT DISTINCT f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN time_zone tz ON a.time_zone_code = tz.time_zone_code
WHERE f.arrival_time < '10:00:00' AND a.city_name = 'Denver' AND f.to_airport = 'San Francisco'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.flight_id, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.flight_id, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.flight_id, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT DISTINCT g.airport_code, g.transport_type, g.city_code, g.ground_fare
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Philadelphia' AND g.transport_type = 'Morning' AND g.city_code = 'PHL';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
SELECT DISTINCT g.ground_fare
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
WHERE a.city_name = 'Oakland';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'San Francisco' AND a2.city_name = 'Pittsburgh';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Boston' AND a2.city_name = 'Denver' AND f.stops = 0;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier,
SELECT f.flight_id, f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.airline_code = 'AA' AND f.from_airport = 'BOS' AND f.to_airport = 'DEN'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f
SELECT DISTINCT aircraft_code_sequence
FROM flight
WHERE from_airport = 'BOS' AND to_airport = 'SFO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Boston' AND f.to_airport = 'DEN'
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.stops, f.flight_days
FROM flight f
WHERE f.from_airport = 'BOS' AND f.to_airport = 'ATL' AND f.stops = 0 AND f.flight_days = '1'
ORDER BY f.departure_time ASC;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Charlotte' AND f.departure_time >= '2023-03-23 13:00:00' AND f.departure_time <= '2023-03-23 14:00:00';
SELECT f.flight_number, f.arrival_time, f.departure_time, f.airline_code, f.to_airport, f.from_airport
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'New York City' AND f.arrival_time < '18:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.stops, f.connections, f.time_elapsed, f.meal
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f.flight_days, f.connections, f.stops, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days
FROM flight f
WHERE f.from_airport = 'LAS
SELECT DISTINCT f.airline_code, f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.
SELECT description
FROM code_description
WHERE code = 'IAH';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'Baltimore/Washington International Thurgood Marshall Airport' AND f.arrival_time = '19:00:00'
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.flight_number, f.airline_code, f.airline_flight, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.flight_number, f.airline_code, f.airline_flight, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.flight_number, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN food_service fs2 ON f.meal_code = fs2.meal_code
JOIN fare_basis fb ON f.flight_id = fb.fare_id
JOIN fare f2 ON f.flight_id = f2.fare_id
JOIN month m ON f.departure_time = m.month_number
JOIN city c ON f.from_airport = c.city_code
JOIN airport a ON f.to_airport = a.airport_code
JOIN days d ON f.flight_days = d.days_code
WHERE c.city_name = 'Philadelphia' AND a.airport_name = 'Denver' AND
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Montreal' AND a2.city_name = 'Charlotte'
SELECT COUNT(*)
FROM flight
WHERE from_airport = 'SFO' AND to_airport = 'PHL' AND departure_time BETWEEN '2023-08-18' AND '2023-08-19'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
WHERE f.from_airport = 'BOS' AND f.to_airport = 'PIT' AND f.flight_days LIKE '%M%' AND f.stops = 0 AND f.connections = 0 AND f.time_elapsed >= 120 AND f.dual_carrier IS NULL AND f.aircraft_code_sequence IS NULL AND f.meal_code IS NULL AND f.flight_days LIKE '%M%' AND f.flight
SELECT f.flight_number, f.airline_code, f.meal_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code OR f.to_airport = a.airport_code
WHERE a.airport_code IN ('LGA', 'JFK') AND f.to_airport = 'CLE'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Atlanta' AND f.to_airport = 'BOS'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Atlanta' AND f.to_airport = 'BOS' AND d.day_name = 'Thursday' AND f.departure_time LIKE '2023-09-05%'
ORDER BY f.departure_time ASC;
SELECT DISTINCT f.airline_code, a.airline_name
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.to_airport = 'MIA' AND f.from_airport = 'JFK' AND d.day_name = 'Friday'
GROUP BY f.airline_code, a.airline_name;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Boston' AND d.day_name = 'Wednesday' AND f.departure_time BETWEEN '06:00:00' AND '12:00:00' AND f.arrival_time BETWEEN '12:00:00' AND '18:00:00' AND f.to_airport = 'DEN';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT DISTINCT a.airport_name, g.transport_type, g.ground_fare
FROM airport a
JOIN airport_service as g on a.airport_code = g.airport_code
WHERE a.airport_name = 'Boston Logan International Airport'
AND g.transport_type = 'Ground Transportation'
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.city_name = 'Dallas'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.city_name = 'San Francisco'
WHERE f.arrival_time <= '2023-04-01 16:00:00' AND f.stops = 0 AND f.connections = 0 AND f.flight_days LIKE '%S%' AND f.dual_carrier IS NULL AND f.aircraft_code_sequence IS NULL
ORDER BY f.departure_time;
SELECT *
FROM flight
WHERE from_airport = 'DEN' AND to_airport = 'SFO';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN city c ON fs.stop_airport = c.city_code
WHERE f.from_airport = 'DAL' AND f.to_airport = 'BOS' AND c.city_name = 'Boston' AND f.dual_carrier = 'DL'
ORDER BY f.departure_time;
SELECT aircraft_code
FROM flight
WHERE flight_number = 'CO 1209';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.airline_code = 'CO' AND d.day_name = 'Monday' AND f.departure_time < '12:00:00' AND f.from_airport = 'DEN' AND f.to_airport = 'CHI';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Atlanta' AND a2.city_name = 'Boston'
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'United' AND f.from_airport = 'SFO' AND f.to_airport = 'BOS';
SELECT COUNT(*) AS united_flights_to_san_francisco
FROM flight
WHERE airline_code = 'UA' AND to_airport = 'SFO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT g.transport_type, g.ground_fare
FROM airport_service a
JOIN ground_service g ON a.airport_code = g.airport_code
WHERE a.city_code = 'PIT' AND a.airport_code = 'PIT';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN airport a ON fs.stop_airport = a.airport_code
WHERE a.city_name = 'Newark' AND f.stops > 0 AND f.connections = 0 AND f.arrival_time - f.departure_time >= '02:00:00' AND f.arrival_time - f.departure_time <= '05:00:00' AND f.aircraft_code_sequence = '737' AND f.dual_carrier = 'AA' AND f.meal_code = 'B' AND f.flight_days LIKE '%M%' AND f.flight_id NOT IN (SELECT
SELECT DISTINCT f.flight_number, f.airline_code, a.aircraft_description
FROM flight f
JOIN aircraft a ON f.aircraft_code_sequence = a.aircraft_code_sequence
WHERE f.from_airport = 'BOS' AND f.to_airport = 'ATL' AND f.departure_time >= '17:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Dallas' AND a2.city_name = 'Baltimore'
SELECT DISTINCT abbreviation 
FROM code_description 
WHERE code = 'ff'
SELECT DISTINCT f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airline al ON f.airline_code = al.airline_code
WHERE al.airline_name = 'United Airlines'
AND a.city_code = 'DEN'
AND f.to_airport = 'SFO'
AND f.departure_time BETWEEN '2023-04-01 00:00:00' AND '2023-04-01 10:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.note, f.airport_code, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.city_code, f.minutes_distant, f.miles_distant, f.direction, f.transport_type,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
WHERE f.from_airport = 'BAL' AND f.to_airport = 'SFO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
WHERE f.to_airport = 'ATL';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Philadelphia' AND f.to_airport = 'Dallas';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport
FROM flight f
WHERE f.from_airport = 'SEA' AND f.to_airport = 'SLC'
SELECT f.flight_number, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'PIT' AND f.to_airport = 'SFO'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Pittsburgh' AND f.to_airport = 'BOS' AND f.departure_time >= '12:00:00' AND f.departure_time <= '17:00:00'
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.flight_days, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.flight_days, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.flight_days, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Los Angeles' AND f.to_airport = 'PIT' AND f.stops = 0 AND f.arrival_time < '17:00:00' AND f.flight_days LIKE '%T%'
SELECT DISTINCT a.airport_name, a.airport_code, g.ground_fare, g.transport_type
FROM airport a
JOIN airport_service as g on a.airport_code = g.airport_code
WHERE a.city_code = 'BOS'
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code, f.meal_code
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN food_service fs ON f.meal_code = fs.meal_code
WHERE f.from_airport = 'BOS' AND f.to_airport = 'BWI' AND fs.meal_description LIKE '%Lunch%'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT COUNT(*)
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'General Mitchell International';
SELECT DISTINCT f.to_airport
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Canadian Airlines International'
SELECT DISTINCT g.transport_type
FROM airport_service a
JOIN ground_service g ON a.airport_code = g.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE a.airport_code = 'PIT' AND c.city_name = 'town';
SELECT aircraft_code, capacity
FROM aircraft
WHERE aircraft_code = 'f28';
SELECT DISTINCT rental_car_companies.name
FROM rental_car_companies
JOIN rental_car_locations ON rental_car_companies.id = rental_car_locations.rental_car_company_id
JOIN rental_car_availability ON rental_car_locations.id = rental_car_availability.rental_car_location_id
JOIN rental_cars ON rental_car_availability.rental_car_id = rental_cars.id
JOIN airports ON rental_car_locations.airport_code = airports.code
WHERE airports.code = 'DEN' AND rental_car_availability.date = '2023-04-09' AND rental_car_availability.is_available = TRUE;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.from_airport = 'MIA' AND f.to_airport = 'CLE' AND a.airline_code = 'US' AND f.departure_time > '12:00:00'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.to_airport, f.from_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Cleveland' AND a2.city_name = 'Memphis'
SELECT fare_basis_code, description
FROM fare_basis
WHERE fare_basis_code = 'qw';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Cincinnati' AND f.to_airport = 'Toronto';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.meal_code, f.time_elapsed, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.flight_id, f.dual_carrier, f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.meal_code, f.time_elapsed, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.flight_id, f.dual_carrier, f.flight_number, f.departure_time, f.arrival_time, f.airline_code
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Memphis' AND a2.city_name = 'Las Vegas'
SELECT f.flight_number, f.arrival_time, f.departure_time, f.stops, f.airline_code, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
JOIN aircraft ac ON f.aircraft_code_sequence = ac.aircraft_code_sequence
WHERE a.airport_name = 'Baltimore' AND ac.aircraft_description = 'Boeing 757' AND f.arrival_time = '19:00:00' AND f.stops = 0 AND f.from_airport = 'ATL'
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN days d ON f.flight_days = d.days_code
WHERE f.from_airport = 'STL' AND f.to_airport = 'MCI' AND d.day_name = 'Friday' AND fs.meal_description = 'Supper'
ORDER BY f.departure_time;
SELECT DISTINCT g.ground_fare
FROM airport a
JOIN airport_service as g ON a.airport_code = g.airport_code
WHERE a.airport_name = 'Boston Logan International Airport' AND g.city_code = 'BOS' AND g.transport_type = 'Bus';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Baltimore' AND a2.city_name = 'San Francisco' AND f.departure_time >= '2023-04-01' AND f.departure_time <= '2023-04-30' AND fb.discounted = 'N' AND fb.class_type = 'Economy' AND f.stops <= 1 AND f.connections <= 0 AND f.flight_days & 2 = 2 AND f.flight_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.flight_days, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.aircraft_code_sequence
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Continental' AND f.from_airport = 'SEA' AND f.departure_time >= '2023-04-02 16:30:00' AND f.departure_time <= '2023-04-02 23:59:59' AND f.stops = 0 AND f.connections = 0 AND f.aircraft_code_sequence = 1
ORDER BY f.departure_time ASC;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f
SELECT DISTINCT f.airline_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Boston' AND f.to_airport = 'DEN' AND f.departure_time BETWEEN '12:00:00' AND '14:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Nashville' AND a2.city_name = 'St. Louis' AND f.stops = 0;
SELECT DISTINCT class_type
FROM fare_basis
ORDER BY class_type;
SELECT DISTINCT g.transport_type
FROM airport_service a
JOIN ground_service g ON a.airport_code = g.airport_code
JOIN airport ap ON a.city_code = ap.city_code
WHERE ap.airport_name = 'San Francisco International Airport' AND ap.country_name = 'United States' AND ap.state_code = 'CA' AND ap.city_code = 'SFO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.from_airport, f.to_airport, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Atlanta' AND f.to_airport = 'Washington';
SELECT fare_basis_code, fare_description
FROM fare_basis
WHERE fare_basis_code = 'QO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.from_airport = 'DAL' AND f.to_airport = 'BAL' AND (f.airline_code = 'AA' OR f.airline_code = 'DL')
ORDER BY f.departure_time;
SELECT g.ground_fare
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Pittsburgh'
AND g.transport_type = 'limousine';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.stops, f.connections, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.hours_from_gmt,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.flight_id, f.from_airport
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual
SELECT c.class_description
FROM class_of_service c
JOIN fare f ON c.booking_class = f.booking_class
JOIN flight_fare ff ON f.fare_id = ff.fare_id
JOIN flight fl ON ff.flight_id = fl.flight_id
JOIN airline a ON fl.airline_code = a.airline_code
WHERE a.airline_name = 'Lufthansa';
SELECT DISTINCT f.airline_code
FROM flight f
WHERE f.from_airport = 'DEN' AND f.to_airport = 'DCA' AND f.stops = 0;
SELECT DISTINCT f.meal_code
FROM flight f
WHERE f.flight_number = 'ua 270'
AND f.from_airport = 'den'
AND f.to_airport = 'phi'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name LIKE '%Eastern%' AND f.from_airport = 'PIT' AND f.departure_time BETWEEN '12:00:00' AND '16:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight ff ON fl.leg_flight = ff.flight_id
WHERE f.from_airport = 'OAK' AND f.to_airport = 'PHL' AND f.arrival_time BETWEEN '17:00:00' AND '18:00:00' AND f.stops = 0 AND f.connections = 0;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'PHX' AND f.to_airport = 'MKE' AND d.day_name = 'Wednesday';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Dallas' AND a2.city_name = 'Houston' AND f.stops = 0;
SELECT f.flight_number, f.departure_time, f.arrival_time, a.airport_name AS from_airport, b.airport_name AS to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport b ON f.to_airport = b.airport_code
WHERE a.airport_name = 'Chicago' AND b.airport_name = 'Milwaukee' AND f.departure_time BETWEEN '16:00:00' AND '18:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND a.city_name = 'Atlanta'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.city_name = 'Washington DC'
WHERE d.day_name = 'Wednesday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.from_airport = 'PHL' AND f.to_airport = 'DAL' AND f.airline_code = 'AA' AND f.departure_time < '12:00:00';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT DISTINCT a.airport_name, a.airport_location, c.city_name, c.country_name, c.state_code, c.time_zone_code, c.city_code, 
(SELECT MIN(minutes_distant) FROM airport_service WHERE airport_code = a.airport_code AND direction = 'N') AS distance_from_airport
FROM airport a
JOIN city c ON a.airport_location = c.city_code
WHERE a.airport_name LIKE '%Dallas Fort Worth%'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.meal
SELECT DISTINCT f.airline_code, a.airline_name
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.country_name = 'United States' AND c.state_code = 'WA' AND a.country_name = 'United States' AND a.state_code = 'CA' AND a.airport_name = 'San Francisco International Airport'
ORDER BY f.airline_code;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'PHX' AND f.to_airport = 'LAS';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.to_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN days d ON f.flight_days = d.days_code
JOIN airline al ON f.airline_code = al.airline_code
WHERE c.city_name = 'Chicago' AND d.day_name = 'Sunday' AND al.airline_name = 'Continental'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Denver' AND a2.city_name = 'Philadelphia' AND d.day_name = 'Saturday' AND f.departure_time > '12:00:00'
SELECT DISTINCT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.airport_name = 'Love Field'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
WHERE f.to_airport = 'LDF' OR f.from_airport = 'LDF';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f
SELECT g.ground_fare, g.transport_type, g.city_code
FROM airport a
JOIN airport_service as g ON a.airport_code = g.airport_code
WHERE a.airport_code = 'SFO' AND g.city_code = 'SFO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
WHERE f.from_airport = 'ATL' AND f.to_airport = 'DEN'
SELECT DISTINCT g.transport_type
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'San Francisco';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id
FROM flight f
WHERE f.from_airport = 'OAK' AND f.to_airport = 'SFO'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.connections, f.stops, f.flight_days, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.connections, f.stops, f.flight_days, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.connections, f.stops, f.flight_days, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.connections, f.stops, f.flight_days, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.airline_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f
SELECT MIN(f.round_trip_cost) AS lowest_fare
FROM flight f
JOIN fare fa ON f.flight_id = fa.flight_id
WHERE f.from_airport = 'ATL' AND f.to_airport = 'BWI'
SELECT DISTINCT f.airline_code, a.airline_name
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE f.to_airport = 'DEN' AND a.country_name = 'Canada';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport = 'EWR';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN airline a ON f.airline_code = a.airline_code
JOIN airport ap ON f.from_airport = ap.airport_code
JOIN airport_service asr ON ap.airport_code = asr.airport_code
JOIN city c ON asr.city_code = c.city_code
WHERE f.airline_code = 'CO' AND c.city_name = 'Chicago' AND f.to_airport = 'SEA' AND f.departure
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.arrival_airport, f.from_airport, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.arrival_airport, f.from_airport, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.arrival_airport, f.from_airport, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.arrival_airport, f.from_airport,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Pittsburgh' AND f.departure_time >= '2023-04-01 00:00:00' AND f.departure_time <= '2023-04-01 23:59:59' AND f.to_airport = 'OAK'
ORDER BY
SELECT f.flight_number, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'PHL' AND f.to_airport = 'SFO';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Tampa' AND f.departure_time < '10:00:00' AND f.to_airport = 'STL'
ORDER BY f.departure_time;
SELECT DISTINCT f.airline_code
FROM flight f
WHERE f.from_airport = 'PHL' AND f.to_airport = 'DFW' AND f.airline_code = 'AA';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Kansas City' AND a.airport_code = 'MCI' AND d.day_name = 'Wednesday' AND f.to_airport = 'CLE'
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
WHERE f.from_airport = 'PHL' AND f.arrival_airport = 'BWI' AND d.day_name = 'Monday' AND f.departure_time BETWEEN '06:00:00' AND '12:00:00'
ORDER BY f.departure_time;
SELECT DISTINCT city_name
FROM city
WHERE city_name IN (
▁▁▁▁SELECT DISTINCT city_name
▁▁▁▁FROM city
▁▁▁▁WHERE country_name = 'Canada'
)
AND city_name NOT IN (
▁▁▁▁SELECT DISTINCT city_name
▁▁▁▁FROM city
▁▁▁▁WHERE country_name = 'United States'
);
SELECT DISTINCT c.car_rental_name, c.address, c.phone_number, c.website
FROM car_rental c
JOIN airport a ON c.airport_code = a.airport_code
WHERE a.city_name = 'Baltimore';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code AND a.country_name = 'United States' AND a.city_name = 'Atlanta'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.country_name = 'United States' AND a2.city_name = 'Boston'
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN food_service fs ON f.meal_code = fs.meal_code
JOIN city c ON f.from_airport = c.city_code AND f.to_airport = c.city_code
JOIN airport a ON f.from_airport = a.airport_code AND f.to_airport = a.airport_code
JOIN airline al ON f.airline_code = al.airline_code
JOIN days d ON f.flight_days = d.days_code
JOIN equipment_sequence es ON f.aircraft_code_sequence =
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Denver' AND a2.city_name = 'San Francisco'
EXCEPT
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Denver' AND a2.city_name = 'Philadelphia';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'New York' AND a2.city_name = 'Miami'
SELECT DISTINCT f.airline_code
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON fs.stop_airport = a2.airport_code
WHERE a.city_name = 'Pittsburgh' AND a2.city_name = 'Baltimore';
SELECT DISTINCT airline_code
FROM flight
WHERE airline_code LIKE '%SA%'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
WHERE f.from_airport = 'BWI' AND f.to_airport = 'DEN' AND fb.airline_code = 'UA';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN days d ON f.flight_days = d.days_code
WHERE c.city_name = 'Atlanta' AND a.airport_name = 'Atlanta Hartsfield-Jackson Atlanta International Airport' AND d.day_name = 'Thursday' AND f.departure_time < '0900' AND f.to_airport = 'DCA' AND f.stops = 0 AND f.connections = 0;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN airport ap ON f.from_airport = ap.airport_code AND f.to_airport = ap.airport_code
WHERE a.airline_name = 'American Airlines'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND f.to_airport = a.airport_code
WHERE a.city_name = 'Boston' AND a.state_code = 'MA' AND a.country_name = 'United States' AND d.day_name = 'Monday' AND f.to_airport = 'DCA' AND f.to_airport = 'Washington DC' AND f.to_airport = 'United States' AND f.to_airport = 'DC'
SELECT g.airport_code, g.transport_type, g.city_code, g.ground_fare
FROM ground_service g
WHERE g.airport_code = 'MCO' OR g.city_code = 'MCO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f
SELECT f.flight_number, f.arrival_time, f.departure_time, f.airline_code, f.stops, f.connections, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Atlanta'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'St. Louis'
WHERE d.day_name = 'Tuesday' AND f.arrival_time BETWEEN '23:00:00' AND '23:59:59'
ORDER BY f.arrival_time;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.from_airport = 'PHL' AND f.to_airport = 'SFO' AND a.airline_name = 'American Airlines';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'MKE' AND f.to_airport = 'STL' AND d.day_name = 'Sunday' AND f.departure_time >= '2023-04-02 06:00:00' AND f.departure_time < '2023-04-02 12:00:00'
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN city c ON f.from_airport = c.city_code AND c.city_name = 'Pittsburgh'
JOIN city c2 ON f.to_airport = c2.city_code AND c2.city_name = 'Newark'
WHERE f.stops = 0 AND f.connections = 0 AND fb.discounted = 0 AND fb.class_type = 'E' AND fb.season = 'N' AND fb.basis_days = 'N' AND fb.booking_class = 'Y' AND fb.night =
SELECT aircraft_code
FROM flight
WHERE flight_number = '8' AND from_airport = 'SFO' AND to_airport = 'ATL' AND departure_time = '08:00:00';
SELECT DISTINCT g.airport_code, g.transport_type, g.city_code, g.ground_fare
FROM ground_service g
WHERE g.city_code = 'SEA';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.time_elapsed, f.dual
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.city_name = 'Boston'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.city_name = 'Atlanta'
WHERE f.stops = 0 AND f.connections = 0 AND f.arrival_time < '18:00:00' AND f.departure_time > '12:00:00'
ORDER BY f.departure_time ASC;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Atlanta'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'San Francisco'
WHERE d.day_name = 'Friday' AND f.departure_time >= '12:00:00' AND f.departure_time < '18:00:00'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id
FROM flight f
WHERE f.from_airport = 'BAL' AND f.to_airport = 'PHL';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
WHERE f.from_airport = 'SFO' AND f.to_airport = 'DAL'
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.stops
FROM flight f
WHERE f.from_airport = 'BOS' AND f.to_airport = 'SFO' AND f.stops > 3;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f
SELECT f.flight_number, f.departure_time
FROM flight f
WHERE f.from_airport = 'OAK' AND f.to_airport = 'BOS'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Atlanta' AND f.arrival_time LIKE '%Thursday%' AND f.to_airport = 'Washington'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Dallas' AND f.to_airport = 'BOS'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id
FROM flight f
WHERE f.to_airport = 'DEN' AND f.from_airport = 'PIT'
ORDER BY f.departure_time ASC;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code, f.meal_code, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.flight_id, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.flight_id, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.flight_id, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.flight_id, f.stops, f.connections, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Memphis' AND a2.city_name = 'Charlotte'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON fs.stop_airport = a2.airport_code
WHERE a.city_name = 'Philadelphia' AND a2.city_name = 'Dallas' AND f.stops = 1;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT DISTINCT f.flight_number, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.airline_flight, f.dual_carrier, f.aircraft_code_sequence, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.airline_flight, f.dual_carrier, f.aircraft_code_sequence, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.airline_flight, f.dual_carrier, f.aircraft_code_sequence, f.airline_code, f.meal_code
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport = 'ATL';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport = 'BOS' AND to_airport = 'ATL';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code,
▁▁▁▁▁▁▁c.description AS meal_description,
▁▁▁▁▁▁▁fb.fare_basis_code, fb.discounted, fb.class_type, fb.season, fb.basis_days, fb.booking_class, fb.night, fb.premium, fb.economy,
▁▁▁▁▁▁▁f.from_airport, f.to_airport,
▁▁▁▁▁▁▁a.airport_name AS from_airport_name, a.airport_location AS from_airport_location,
▁▁▁▁▁▁▁aa.airport_name AS to_airport_name, aa.airport_location AS to_airport_location,
▁▁▁▁▁▁▁f.airline_flight, f.dual_airline,
▁▁▁▁▁▁▁ad.description AS dual_airline_description,
▁▁▁▁▁▁▁ac.description AS airline_description,
▁▁▁▁▁▁▁fd.one_direction_cost, fd.round_trip_cost, fd.round_trip_required, fd.fare_basis_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id
FROM flight f
WHERE f.from_airport = 'DEN' AND f.to_airport = 'PHL';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN city c2 ON a2.city_code = c2.city_code
WHERE c.city_name = 'Dallas' AND c2.city_name = 'Pittsburgh' AND f.departure_time BETWEEN '2023-07-08 00:00:00' AND '2023-07-08 23:59:59'
SELECT f.flight_number, f.departure_time, f.arrival_time
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN airport ap ON f.from_airport = ap.airport_code
JOIN airport ap2 ON f.to_airport = ap2.airport_code
WHERE a.airline_name = 'United Airlines'
AND f.departure_time >= '2023-09-20 06:00:00' AND f.departure_time < '2023-09-20 12:00:00'
AND ap.city_name = 'Philadelphia' AND ap2.city_name = 'San Francisco'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Philadelphia' AND f.to_airport = 'Baltimore';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'San Francisco' AND f.to_airport = 'PIT' AND f.departure_time BETWEEN '06:00:00' AND '12:00:00';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Columbus' AND a2.city_name = 'Baltimore'
SELECT fare_basis_code, description
FROM fare_basis, code_description
WHERE fare_basis_code = code
AND fare_basis_code = 'QX';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport
SELECT f.flight_number, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier
SELECT f.aircraft_code_sequence
FROM flight f
WHERE f.flight_number = '825' AND f.from_airport = 'ATL' AND f.to_airport = 'DEN' AND f.departure_time = '555';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN airline a ON f.airline_code = a.airline_code
JOIN aircraft ac ON f.aircraft_code_sequence = ac.aircraft_code_sequence
JOIN airport ap ON f.from_airport = ap.airport_code AND f.to_airport = ap.airport_code
WHERE f.airline_code = 'UA' AND f.departure_time = '08:38:00' AND ap.city_name = 'Boston' AND f.to_airport = 'OAK'
ORDER BY f.departure_time ASC;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Chicago' AND f.departure_time >= '2023-04-01' AND f.departure_time < '2023-04-02' AND f.stops = 0 AND fs.stop_days = 6 AND fs.stop_airport = 'ORD'
ORDER BY f.departure_time ASC;
SELECT c.description
FROM code_description c
WHERE c.code = 'Y'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN airline a ON f.airline_code = a.airline_code
JOIN airport ap ON f.from_airport = ap.airport_code AND f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Pittsburgh' AND f.to_airport = 'ATL'
SELECT DISTINCT a.airport_name, a.airport_code, g.ground_fare, g.transport_type
FROM airport a
JOIN airport_service as ap ON a.airport_code = ap.airport_code
JOIN ground_service g ON ap.city_code = g.city_code
WHERE a.airport_name LIKE '%San Francisco%';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Phoenix' AND a2.city_name = 'Milwaukee' AND d.day_name = 'Wednesday' AND f.departure_time BETWEEN '16:00:00' AND '23:59:59'
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON fs.stop_airport = a.airport_code
WHERE f.airline_code = 'DL' AND a.airport_code = 'ATL';
SELECT DISTINCT c.code, c.description
FROM code_description c
WHERE c.code LIKE 'YN%'
ORDER BY c.code;
SELECT f.flight_number, f.arrival_time
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
JOIN days d ON f.flight_days = d.days_code
WHERE a.airport_name = 'Washington DC' AND d.day_name = 'Wednesday'
ORDER BY f.arrival_time DESC
LIMIT 1;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Boston' AND a2.city_name = 'Washington' AND f.stops = 0 AND f.arrival_time > '16:00:00'
ORDER BY f.arrival_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'San Francisco' AND a.airport_name = 'San Francisco International Airport' AND f.to_airport = 'DCA' AND f.arrival_time > '2023-04-01' AND f.arrival_time < '2023-05-01'
ORDER BY f.departure_time;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Boston' AND a2.city_name = 'Atlanta' AND f.departure_time >= '2023-11-07' AND f.departure_time < '2023-11-08'
ORDER BY f.departure_time ASC;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Oakland' AND a2.city_name = 'Denver' AND f.departure_time >= '06:00:00' AND f.departure_time < '12:00:00' AND f.stops = 0;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.to_airport, f.from_airport
FROM flight f
WHERE f.from_airport = 'PHL' AND f.to_airport = 'DEN' AND f.departure_time >= '2023-04-01 14:00:00' AND f.departure_time <= '2023-04-01 15:00:00'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.time_elapsed, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.time_elapsed, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.time_elapsed, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.time_elapsed, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.meal_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.airline_flight, f.airline_code, f.meal_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Philadelphia' AND f.to_airport = 'Dallas'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT COUNT(*)
FROM flight f
JOIN fare_basis fb ON f.flight_id = fb.fare_id
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'United' AND fb.class_type = 'F' AND f.departure_time >= '2023-10-26' AND f.departure_time < '2023-10-27';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Baltimore' AND a2.city_name = 'San Francisco'
ORDER BY f.departure_time;
SELECT DISTINCT f.aircraft_code_sequence
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.country_name = 'Canada';
SELECT f.flight_number, f.airline_code, f.arrival_time
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
WHERE f.from_airport = 'BAL' AND f.to_airport = 'PHL' AND f.arrival_time > '2100';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.flight_days, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.stops, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
WHERE f.from_airport = 'CHI' AND f.to_airport = 'SEA' AND d.day_name = 'Saturday'
ORDER BY f.departure_time;
SELECT f.flight_number, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence
FROM flight f
WHERE f.to_airport = 'LGA'
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.meal_code, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN time_zone tz ON c.time_zone_code = tz.time_zone_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport a2 ON fl.leg_flight = a2.airport_code
JOIN city c
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.meal_code, f.dual_carrier, f.flight_id, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.connections, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.hours_from_gmt,
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'DEN' AND f.to_airport = 'SFO' AND d.day_name = 'Wednesday' AND f.departure_time >= '12:00:00' AND f.departure_time < '18:00:00';
SELECT DISTINCT g.ground_fare
FROM airport a
JOIN airport_service as g
ON a.airport_code = g.airport_code
WHERE a.airport_name = 'Dallas/Fort Worth International Airport'
AND g.city_code = 'DAL'
AND g.transport_type = 'Ground';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.flight_id, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_days, f.arrival_time, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_days, f.arrival_time, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_days, f.arrival_time, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN city c ON f.from_airport = c.city_code AND f.to_airport = c.city_code
WHERE c.city_name = 'HOUSTON'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
WHERE f.from_airport = 'SJO' AND f.to_airport = 'STP'
SELECT aircraft.capacity
FROM aircraft
WHERE aircraft.aircraft_code = '734';
SELECT airline_name
FROM airline
WHERE airline_code = 'EWR'
SELECT DISTINCT f.flight_number, f.from_airport, f.to_airport, f.stops, f.connections, f.flight_days, f.arrival_time, f.departure_time, f.airline_code, f.airline_flight, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.stops, f.stops, f.connections, f.flight_days, f.arrival_time, f.departure_time, f.airline_code, f.airline_flight, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.stops, f.stops, f.connections, f.flight_days, f.arrival_time, f.departure_time, f.airline_code, f.airline_flight, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.stops, f.stops, f.connections, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_id, f.dual_carrier, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops
SELECT airline_code
FROM airline
WHERE airline_name LIKE '%ea%';
SELECT DISTINCT airline_code
FROM flight
WHERE airline_code = 'US';
SELECT DISTINCT g.airport_code, g.transport_type, g.city_code, g.ground_fare
FROM ground_service g
WHERE g.city_code = 'DEN';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.arrival_airport, f.from_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.departure_time, f.arrival_time, a.airport_name AS from_airport, b.airport_name AS to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport b ON f.to_airport = b.airport_code
WHERE a.city_name = 'Washington' AND b.city_name = 'Denver' AND f.departure_time BETWEEN '2023-03-23 15:00:00' AND '2023-03-23 15:59:59'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
JOIN aircraft a ON f.aircraft_code_sequence = a.aircraft_code_sequence
WHERE f.from_airport = 'MCO' AND f.to_airport = 'SAN' AND a.aircraft_description LIKE '%Boeing 737%';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.from_airport, f.to_airport, f.airline_code, f.meal_code, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT DISTINCT a.airport_code, a.airport_name, g.ground_fare, g.transport_type
FROM airport a
JOIN airport_service as g on a.airport_code = g.airport_code
WHERE a.city_code = 'DEN'
ORDER BY a.airport_code
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.from_airport, f.to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Pittsburgh' AND f.to_airport = 'DEN'
ORDER BY f.departure_time;
SELECT DISTINCT g.ground_fare
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'San Francisco';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE a.airline_name = 'Northwest Airlines' AND f.departure_time < '12:00:00' AND f.from_airport = 'DEN'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'General Mitchell International';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Denver' AND f.to_airport = 'PHL';
SELECT DISTINCT g.ground_fare
FROM airport_service a
JOIN airport ap ON a.airport_code = ap.airport_code
JOIN city c ON ap.city_code = c.city_code
JOIN ground_service g ON c.city_code = g.city_code
WHERE c.city_name = 'Boston';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Baltimore';
SELECT *
FROM restriction
WHERE restriction_code = 'ap/80';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport = 'BOS' AND to_airport = 'SFO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Pittsburgh' AND f.to_airport = 'SFO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.to_airport = a.airport_code
WHERE f.from_airport = 'ORD' AND a.airport_code = 'MCI' AND d.day_name = 'Thursday' AND f.arrival_time BETWEEN '17:00:00' AND '18:00:00';
SELECT f.flight_number, f.arrival_time
FROM flight f
WHERE f.from_airport = 'BOS' AND f.to_airport = 'ATL'
ORDER BY f.arrival_time ASC
LIMIT 1;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT airport_code, airport_name
FROM airport
WHERE city_code = 'DCA';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT DISTINCT f.flight_number
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.airport_name = 'Denver'
AND f.stops = 0
AND f.flight_number LIKE '%D%'
SELECT g.ground_fare
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
WHERE a.airport_name = 'Boston Logan International Airport' AND g.city_code = 'BOS';
SELECT f.flight_number, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Tampa' AND f.arrival_time >= '2023-10-26' AND f.arrival_time < '2023-10-27'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND f.to_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN month m ON f.departure_time BETWEEN m.begin_time AND m.end_time
WHERE c.city_
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code AND a.city_name = 'Baltimore'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.city_name = 'Newark'
JOIN days d ON f.flight_days = d.days_code AND d.day_name = 'Wednesday'
JOIN time_interval ti ON f.departure_time >= ti.begin_time AND f.departure_time <= ti.end_time AND ti.period = 'Before Noon'
WHERE f.stops = 0;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days & d.days_code = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'DENVER'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'PHILADELPHIA'
WHERE d.day_name = 'Saturday' AND f.departure_time >= DATE(NOW()) + INTERVAL 2 WEEK
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.aircraft_code, f.meal_code, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.stops, f.connections, f.flight_days, f.time_elapsed, f.dual_carrier, f.airline_flight, f.from_airport, f
SELECT DISTINCT a.airport_name, a.airport_code, g.ground_fare
FROM airport a
JOIN airport_service as ap ON a.airport_code = ap.airport_code
JOIN ground_service g ON ap.airport_code = g.airport_code
WHERE a.airport_name LIKE '%Atlanta%' AND g.transport_type = 'limousine';
SELECT f.flight_number, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'BOS' AND f.to_airport = 'SFO'
ORDER BY f.departure_time DESC
LIMIT 1;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.from_airport, f.to_airport, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
WHERE f.from_airport = 'EWR' AND f.to_airport = 'CLE' AND f.flight_days = 'D'
ORDER BY f.departure_time;
SELECT f.flight_number, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.connections, f.stops
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare_basis fb ON ff.fare_id = fb.fare_basis_code
JOIN fare f2 ON ff.fare_id = f2.fare_id
JOIN city c ON f.from_airport = c.city_code
JOIN city c2 ON f.to_airport = c2.city_code
JOIN days d ON f.flight_days = d.days_code
WHERE c.city_name = 'San Francisco' AND c2.city_name = 'Pittsburgh' AND d.day_name = 'Monday' AND fb.class_type = 'First'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.dual_carrier, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN time_zone tz ON c.time_zone_code = tz.time_zone_code
WHERE f.to_airport = 'LAX' AND c.city_name = 'Pittsburgh' AND tz.hours_from_gmt = -5 AND f.departure_time BETWEEN '2023-04-27 16:00:00' AND '2023-04-27 23:59:59'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.note, f.airport_code, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.minutes_distant, f.miles_distant, f.direction, f.city_code, f.transport_type,
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'San Francisco'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Philadelphia'
WHERE f.departure_time >= '2023-09-15' AND f.departure_time <= '2023-09-15'
ORDER BY f.departure_time ASC;
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code
FROM flight f
WHERE f.from_airport = 'BOS' AND f.to_airport = 'OAK'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT DISTINCT g.transport_type
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Washington' AND c.state_name = 'DC';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT r.restriction_code, r.application, r.no_discounts, r.minimum_stay, r.stopovers, r.maximum_stay, r.saturday_stay_required, r.advance_purchase
FROM restriction r
WHERE r.application = 'AP';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'PHL' AND f.to_airport = 'OAK' AND d.day_name = 'Friday' AND f.departure_time >= '12:00:00' AND f.departure_time <= '17:00:00';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.connections, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.note, f.booking_class, f.class_description, f.rank, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.arrival_time, f.departure_time, f.stops, f.connections, f.time_elapsed, f.dual
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Kansas City' AND a2.city_name = 'St. Paul'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Los Angeles' AND f.to_airport = 'PIT'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
WHERE f.from_airport = 'DEN' AND f.to_airport = 'PHL'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
WHERE f.from_airport = 'PHL' AND f.to_airport = 'SFO';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND f.to_airport = a.airport_code
WHERE a.city_name = 'Denver' AND a.state_code = 'CO' AND a.country_name = 'United States' AND
a.city_name = 'San Francisco' AND a.state_code = 'CA' AND a.country_name = 'United States' AND
d.day_name = 'Tuesday' AND f.departure_time >= '2023-10-15' AND f.departure_time <= '2023-10
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Denver' AND a2.city_name = 'Salt Lake City';
SELECT DISTINCT c.class_description
FROM class_of_service c
JOIN fare f ON c.booking_class = f.booking_class
JOIN flight_fare ff ON f.fare_id = ff.fare_id
JOIN flight fl ON ff.flight_id = fl.flight_id
JOIN airline a ON fl.airline_code = a.airline_code
WHERE a.airline_name = 'TWA';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.airport_name = 'Baltimore-Washington International Airport' AND a2.airport_name = 'Oakland International Airport' AND f.stops = 0 AND f.connections = 0 AND f.dual_carrier IS NULL AND f.departure_time BETWEEN '12:00:00' AND '17:59:59';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.from_airport, f.to_airport
FROM flight f
WHERE f.from_airport = 'DAL' AND f.to_airport = 'IAH'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier,
SELECT a.airport_name, a.airport_location, c.city_name, c.country_name, c.state_code, c.time_zone_code,
▁▁▁▁▁▁▁(SELECT MIN(miles_distant)
▁▁▁▁▁▁▁▁FROM airport_service
▁▁▁▁▁▁▁▁WHERE airport_code = a.airport_code) AS distance_from_san_francisco
FROM airport a
JOIN city c ON a.airport_location = c.city_code
WHERE c.city_name = 'San Francisco'
ORDER BY distance_from_san_francisco;
SELECT airline_name
FROM airline
WHERE airline_code = 'DL';
SELECT f.flight_number, f.arrival_time, f.departure_time, f.airline_code, f.from_airport, f.to_airport, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id
FROM flight f
WHERE f.to_airport = 'LGA'
ORDER BY f.arrival_time DESC
LIMIT 1;
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.arrival_time
FROM flight f
WHERE f.to_airport = 'MIT'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN city c ON f.from_airport = c.city_code
JOIN city c2 ON f.to_airport = c2.city_code
JOIN city c3 ON fs.stop_airport = c3.city_code
WHERE c.city_name = 'New York' AND c2.city_name = 'Los Angeles' AND c3.city_name = 'Milwaukee'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
WHERE f.from_airport = 'PHL' AND f.to_airport = 'DAL' AND a.airline_name = 'American Airlines';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN state s ON c.state_code = s.state_code
WHERE s.state_name = 'Westchester County' AND f.to_airport = 'CVG';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_days, f.flight_id, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND f.to_airport = a.airport_code
WHERE a.city_name = 'San Francisco' AND a.country_name = 'United States' AND d.day_name = 'Monday' AND a.city_name = 'Pittsburgh' AND a.country_name = 'United States'
SELECT MIN(f.one_direction_cost) AS lowest_cost
FROM flight f
JOIN fare fa ON f.flight_id = fa.flight_id
WHERE f.from_airport = 'BOS' AND f.to_airport = 'DCA' AND fa.round_trip_required = 'N';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.airline_code, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.meal_code, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.airport_name = 'San Francisco International Airport' AND f.arrival_time >= '2023-04-01 18:00:00' AND f.arrival_time <= '2023-04-01 23:59:59'
ORDER BY f.arrival_time DESC;
SELECT DISTINCT g.transport_type
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
WHERE a.city_code = 'MSP';
SELECT aircraft_description
FROM aircraft
WHERE aircraft_code = 'M80';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT airport_name
FROM airport
WHERE city_name = 'Tampa';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN date_day d ON f.departure_time = d.day_number
WHERE c.city_name = 'Boston' AND d.day_name = 'Today'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.flight_id
FROM flight f
WHERE f.from_airport = 'SFO' AND f.to_airport = 'DEN'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Dallas' AND f.to_airport = 'Tampa';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN airline a ON f.airline_code = a.airline_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'DEN' AND f.to_airport = 'SFO' AND f.airline_code = 'UA' AND d.day_name = 'Monday' AND f.departure_time >= '2023-04-01' AND f.departure_time <= '2023-04-30' AND fb.discounted = 'N' AND fb.class_type =
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.aircraft
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.connections, f.dual_carrier, f.flight_days, f.stops, f.flight_id, f.arrival_time, f.departure_time, f.flight_number, f.airline_code, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.connections, f.dual_carrier, f.flight_days, f.stops, f.flight_id, f.arrival_time, f.departure_time, f.flight_number, f.airline_code, f.meal_code, f.flight_id, f.from_airport, f.to_airport, f.
SELECT f.flight_number, f.departure_time, f.arrival_time, a.airport_name AS from_airport, b.airport_name AS to_airport, c.meal_description
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport b ON f.to_airport = b.airport_code
JOIN food_service c ON f.meal_code = c.meal_code
WHERE a.airport_name = 'Atlanta' AND b.airport_name = 'Denver' AND c.meal_description LIKE '%Meal%'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'SFO' AND f.to_airport = 'ATL';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN city c ON f.from_airport = c.city_code AND c.city_name = 'Baltimore'
JOIN city ct ON f.to_airport = ct.city_code AND ct.city_name = 'San Francisco'
WHERE f.arrival_time = '2023-04-21 20:00:00' AND f.flight_days LIKE '%F%'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
WHERE f.from_airport = 'BOS' AND f.to_airport = 'SFO' AND f.stops <=
SELECT DISTINCT f.aircraft_code_sequence
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN airline al ON f.airline_code = al.airline_code
WHERE c.city_name = 'Atlanta' AND c.country_name = 'United States' AND f.to_airport = 'DEN' AND f.departure_time < '18:00:00' AND al.airline_name = 'Eastern';
SELECT f.flight_number, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN date_day dd ON f.departure_time = dd.day_number
WHERE c.city_name = 'Columbus' AND c.city_name = 'Nashville' AND dd.day_name = 'Monday' AND dd.day_number = '2023-10-23'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN month m ON fb.season = m.month_number
WHERE f.from_airport = 'SFO' AND f.to_airport = 'BOS' AND m.month_name = 'August' AND m.month_number = 31 AND f.departure_time BETWEEN '1991-08-31 00:00:00' AND '1991-08-31 23:59:59';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id
FROM flight f
JOIN airline a ON f.airline_code = a.airline_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'PHX' AND f.to_airport = 'MKE' AND a.airline_name = 'American Airlines' AND d.day_name = 'Wednesday';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.flight_days, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code,
SELECT DISTINCT g.transport_type
FROM ground_service g
JOIN airport a ON g.airport_code = a.airport_code
WHERE a.city_name = 'Philadelphia';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport a ON f.to_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Washington' AND c.state_code = 'DC' AND f.arrival_time >= '2024-01-01' AND f.arrival_time <= '2024-12-31'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections,
▁▁▁▁▁▁▁ff.one_direction_cost, ff.round_trip_cost, ff.fare_basis_code, ff.fare_airline, ff.round_trip_required,
▁▁▁▁▁▁▁r.no_discounts, r.minimum_stay, r.stopovers, r.maximum_stay, r.saturday_stay_required, r.advance_purchase,
▁▁▁▁▁▁▁c.description, c.code, m.month_name, m.month_number, d.day_name, d.day_number, d.year
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN restriction r ON ff.fare_basis_code = r.restriction_code
JOIN code_description c ON ff.fare_basis_code = c.code
JOIN month m ON f.departure_time BETWEEN m.begin_time AND m.end_time
JOIN date_day d ON f.departure_time BETWEEN d.
SELECT a.airport_name, c.city_name, a.airport_location, c.city_code, c.country_name, 
▁▁▁▁▁▁▁abs(a.airport_location - c.city_code) AS distance_in_miles
FROM airport a
JOIN city c ON a.country_name = c.country_name AND a.state_code = c.state_code AND a.city_code = c.city_code
WHERE a.airport_name = 'Dallas/Fort Worth International Airport' AND c.city_name = 'Dallas';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT f.flight_number, f.from_airport, f.to_airport, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.connections, f.stops, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.connections, f.stops, f
SELECT f.flight_number, f.arrival_time, f.departure_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'Philadelphia' AND d.day_name = 'Tuesday' AND f.arrival_time BETWEEN '17:00:00' AND '18:00:00' AND f.from_airport = 'PIT';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.restrictions, f.fare_id, f.round_trip_required, f.one_direction_cost, f.round_trip_cost, f.fare_basis_code, f.fare_airline, c.description, r.no_discounts, r.minimum_stay, r.stopovers, r.maximum_stay, r.saturday_stay_required, r.advance_purchase, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.restrictions, f.fare_id, f.round_trip_required, f.one_direction_cost, f.round_trip_cost, f.fare_
SELECT f.flight_number, f.departure_time, f.arrival_time, a.airport_name AS from_airport, b.airport_name AS to_airport
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport b ON f.to_airport = b.airport_code
WHERE a.airport_name = 'Boston' AND b.airport_name = 'Denver' AND f.departure_time BETWEEN '06:00:00' AND '09:00:00';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.meal_code, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.dual_airline, f.connections, f.stops, f.aircraft_code_sequence, f.flight_days, f.flight_id, f.airline_flight, f.dual
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.flight_id, f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.flight_id, f.from_airport, f.to_airport, f.time_elapsed, f.airline_flight, f.dual_airline, f.connections, f.stops, f.flight_days, f.flight_id, f.flight_number, f.airline_code, f.departure_time, f.arrival_time
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_stop fs ON fl.leg_flight = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Chicago' AND a.airport_code = 'ORD' AND f.to_airport = 'BNA' AND f.departure_time >= '20
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.aircraft_code_sequence, f.stops, f.flight_days, f.connections, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN month m ON fb.season = m.month_number
JOIN city c ON f.from_airport = c.city_code AND f.to_airport = c.city_code
WHERE m.month_name = 'January' AND m.month_number = 1 AND c.city_name = 'Boston' AND c.city_name = 'San Francisco' AND f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'SFO' AND f.to_airport = 'DEN' AND d.day_name = 'Thursday'
ORDER BY f.departure_time;
SELECT COUNT(*) AS nonstop_flights
FROM flight
WHERE from_airport = 'BOS' AND to_airport = 'ATL' AND stops = 0;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
WHERE f.from_airport = 'OAK' AND f.to_airport = 'BOS' AND f.airline_code = 'TW';
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time
FROM flight f
WHERE f.from_airport = 'LAS' AND f.to_airport = 'NYC' AND f.stops = 0;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN time_zone tz ON c.time_zone_code = tz.time_zone_code
WHERE c.city_name = 'Boston' AND a.airport_name = 'Logan International Airport' AND f.arrival_time < '05:00:00' AND f.flight_days LIKE '%4%';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_id
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON a.airport_code = f.from_airport
WHERE a.city_name = 'Philadelphia' AND f.to_airport = 'Dallas' AND fs.stop_airport = 'Atlanta';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE f.from_airport = 'St. Petersburg' AND f.to_airport = 'Toronto' AND d.day_name = 'Monday'
ORDER BY f.departure_time;
SELECT DISTINCT airline_code
FROM flight
WHERE from_airport = 'PIT';
SELECT f.flight_number, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.connections, f.flight_id, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.note, f.airline_name, f.city_name, f.country_name, f.state_code, f.time_zone_code, f.city_code, f.minutes_distant, f.airport_code, f.direction, f.miles_distant, f.airport_name, f.airport_
SELECT DISTINCT f.airline_code
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE a.airport_name = 'Pittsburgh';
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Memphis'
JOIN airport a2 ON fs.stop_airport = a2.airport_code AND a2.airport_name = 'Los Angeles'
JOIN airport a3 ON f.to_airport = a3.airport_code AND a3.airport_name = 'Tacoma'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence, f.dual_carrier
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Toronto'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'San Francisco'
SELECT f.flight_number, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.aircraft_code_sequence, f.stops, f.connections, f.flight_days, f.airline_code, f.meal_code, f.dual_carrier, f.airline_flight, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.airline_code, f.meal_code, f.dual_carrier, f.airline_flight, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.airline_code, f.meal_code, f.dual_carrier, f.airline_flight, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days, f.airline_code, f.meal_code, f.dual_carrier, f.airline_flight, f.time_elapsed, f.flight_id, f.stops, f.connections, f.flight_days
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
JOIN days d ON f.flight_days = d.days_code
WHERE a.city_name = 'Boston' AND a2.city_name = 'Atlanta' AND d.day_name = 'Wednesday' AND f.departure_time > '18:00:00';
SELECT f.flight_number, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.time_elapsed, f.from_airport, f.to_airport, f.airline_flight, f.dual_airline, f.aircraft_code, f.capacity, f.wing_span, f.engines, f.aircraft_description, f.basic_type, f.weight, f.pressurized, f.length, f.propulsion, f.pay_load, f.cruising_speed, f.range_miles, f.wide_body, f.manufacturer, f.minutes_distant, f.airport_code, f.direction, f.city_code, f.miles_distant, f.airport_name, f.airport_location, f.minimum_connect_time, f.country_name, f.state_code, f.time_zone_code, f.time_zone_name, f.hours_from_gmt,
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON f.flight_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Boston'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Denver'
WHERE d.day_name = 'Friday' AND f.departure_time >= '2023-03-10' AND f.departure_time <= '2023-03-10'
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.to_airport, f.from_airport, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Milwaukee' AND a2.city_name = 'Montreal'
SELECT f.flight_number, f.departure_time, f.arrival_time
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Boston' AND a2.city_name = 'Philadelphia'
ORDER BY f.departure_time ASC
LIMIT 1;
SELECT DISTINCT f.flight_number
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Minneapolis'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Long Beach'
JOIN date_day dd ON f.departure_time = dd.day_number AND dd.month_number = 6 AND dd.day_number = 26
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.airline_flight, f.connections, f.stops, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code,
SELECT DISTINCT f.airline_code
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
WHERE a.city_name = 'Pittsburgh' AND a.country_name = 'United States' AND d.day_name = 'Monday' AND f.arrival_time = '2023-09-02' AND f.to_airport = 'SFO'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'Boston' AND a2.city_name = 'San Francisco'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code AND a.airport_name = 'Boston'
JOIN airport a2 ON f.to_airport = a2.airport_code AND a2.airport_name = 'Denver'
WHERE d.day_name = 'Sunday' AND f.departure_time LIKE '%2023-07-29%'
ORDER BY f.departure_time;
SELECT DISTINCT aircraft_code
FROM flight
WHERE from_airport = 'PIT' AND to_airport = 'BWI';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_id, f.stops, f.flight_days, f.connections, f.meal_code, f.aircraft_code_sequence
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id
FROM flight f
WHERE f.flight_number = '417' AND f.from_airport = 'cincinnati' AND f.to_airport = 'dallas';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.meal_code, f.aircraft_code_sequence
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Dallas' AND f.to_airport = 'ATL'
SELECT DISTINCT a.airport_name, g.transport_type
FROM airport a
JOIN airport_service g ON a.airport_code = g.airport_code
WHERE a.city_code = 'BOS'
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'San Francisco' AND a2.city_name = 'Las Vegas';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN airline al ON f.airline_code = al.airline_code
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
WHERE a.city_name = 'Houston' AND al.airline_name = 'American Airlines' AND d.day_name = 'Friday' AND f.to_airport = 'MKE';
SELECT f.flight_number, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.airline_code, f.meal_code, f.aircraft_code_sequence, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.connections, f.stops, f.dual_carrier, f.flight_days, f.time_elapsed, f.flight_id, f.connections, f.stops, f
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.flight_days, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_fare ff ON f.flight_id = ff.flight_id
JOIN fare fa ON ff.fare_id = fa.fare_id
JOIN fare_basis fb ON fa.fare_basis_code = fb.fare_basis_code
JOIN restriction r ON fb.restriction_code = r.restriction_code
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.to_airport = a.airport_code AND f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Denver' AND a.city_name = 'Pittsburgh' AND r.no_discounts = 'N' AND r.minimum_stay <= 1 AND r
SELECT f.flight_number, f.departure_time, f.arrival_time, a.airport_name, a.city_name, a.country_name
FROM flight f
JOIN airport a ON f.to_airport = a.airport_code
WHERE f.from_airport = 'SFO' AND f.arrival_time BETWEEN '16:00:00' AND '23:59:59'
ORDER BY f.departure_time;
SELECT f.flight_number, f.airline_code, f.from_airport, f.to_airport, f.departure_time, f.arrival_time, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.stops, f.connections, f.time_elapsed, f.dual_carrier, f.aircraft_code_sequence, f.meal
SELECT DISTINCT g.ground_fare
FROM airport a
JOIN airport_service as g ON a.airport_code = g.airport_code
WHERE a.airport_code = 'PHX' AND g.transport_type = 'ground' AND g.city_code = 'PHX';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.dual_carrier, f.meal_code, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_leg fl ON f.flight_id = fl.flight_id
JOIN days d ON fl.leg_days = d.days_code
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON f.to_airport = a2.airport_code
WHERE a.city_name = 'San Jose' AND a2.city_name = 'Nashville' AND d.day_name = 'Friday' AND f.departure_time BETWEEN '2023-06-03 00:00:00' AND '2023-06-03 12:00:00'
ORDER BY f.departure_time;
SELECT DISTINCT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.stops, f.connections, f.flight_days, f.aircraft_code_sequence, f.meal_code, f.dual_carrier, f.airline_flight, f.from_airport, f.to_airport, f.time_elapsed, f.flight_id
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.to_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
JOIN days d ON f.flight_days = d.days_code
WHERE c.city_name = 'San Francisco' AND c.country_name = 'United States' AND d.day_name = 'Saturday' AND f.from_airport = 'Dallas';
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence, f.meal_code, f.flight_days, f.flight_id, f.from_airport, f.to_airport, f.stops, f.connections, f.dual_carrier
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.time_elapsed, f.stops, f.connections, f.dual_carrier, f.aircraft_code_sequence
FROM flight f
JOIN aircraft a ON f.aircraft_code_sequence = a.aircraft_code_sequence
WHERE f.from_airport = 'SAN' AND f.to_airport = 'DCA' AND a.aircraft_description LIKE '%Boeing 767%'
ORDER BY f.departure_time;
SELECT DISTINCT f.airline_code
FROM flight f
JOIN flight_stop fs ON f.flight_id = fs.flight_id
JOIN airport a ON f.from_airport = a.airport_code
JOIN airport a2 ON fs.stop_airport = a2.airport_code
WHERE a.city_name = 'Boston' AND a2.city_name = 'Washington DC'
GROUP BY f.airline_code;
SELECT f.flight_number, f.airline_code, f.departure_time, f.arrival_time, f.flight_days
FROM flight f
JOIN airport a ON f.from_airport = a.airport_code
JOIN city c ON a.city_code = c.city_code
WHERE c.city_name = 'Dallas' AND f.arrival_time < '12:00:00' AND f.to_airport = 'OAK'
