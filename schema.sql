CREATE SCHEMA IF NOT EXISTS aircrafts;
CREATE TABLE  IF NOT EXISTS manufacturer
(
	m_id INT,
    m_name VARCHAR(50),
    founded INT,
    head_office VARCHAR(50),
    
    PRIMARY KEY (m_id)
 );

CREATE TABLE  IF NOT EXISTS aircraft
(
	a_name VARCHAR(50),
    a_type VARCHAR(50),
	a_id INT,
	first_flight INT,
    m_id INT REFERENCES manufacturer.m_id,
	PRIMARY KEY (a_id)
);

CREATE TABLE  IF NOT EXISTS technical_specs
(
	a_id INT REFERENCES aircraft.a_id,
    num_of_engines INT,
    top_speed_kmh FLOAT,
    fuel_capacity_ltrs_or_pounds FLOAT,
    weight_kg FLOAT
	
    /*PRIMARY KEY (a_id)*/
);

CREATE TABLE  IF NOT EXISTS physical_specs
(
	a_id INT REFERENCES aircraft.a_id,
    wingspan_m FLOAT,
    num_of_decks INT,
    num_of_seats INT,
    height_m FLOAT,
    cockpit_capacity INT
    
    /*PRIMARY KEY (a_id)*/
);
