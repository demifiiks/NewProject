CREATE TABLE cars (
	cars_id INT PRIMARY KEY,
	cars_model VARCHAR (255),
	cost_price INT,
	cars_rating FLOAT,
	price_per_hour DECIMAL,
	car_availability BOOLEAN
);
CREATE TABLE renters (
	renters_id INT PRIMARY KEY,
	renters_name VARCHAR (255),
	renters_email VARCHAR (255),
	renters_phone_number VARCHAR (20)	
);

CREATE TABLE return_status(
	id INT PRIMARY KEY,
	cars_id INT,
	returned_status VARCHAR (50),
	FOREIGN KEY (cars_id) REFERENCES cars(cars_id)
);

CREATE TABLE rental_activity (
	id INT PRIMARY KEY,
	cars_id INT,
	renters_id INT,
	return_status_id INT,
	pick_up_date DATE,
	return_date DATE,
	total_rent_per_hour DECIMAL(8, 2),
	price_per_hour DECIMAL(8, 2),
	FOREIGN KEY (cars_id) REFERENCES cars(cars_id),
	FOREIGN KEY (renters_id) REFERENCES renters(renters_id),
	FOREIGN KEY (return_status_id) REFERENCES return_status(id)
);

