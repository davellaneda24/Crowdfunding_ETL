-- Drop any existing tables
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

-- Create tables
CREATE TABLE category(
	category_id VARCHAR(250) PRIMARY KEY NOT NULL,
	category VARCHAR(250) NOT NULL
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR(250) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(250) NOT NULL
);

CREATE TABLE contacts(
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(250) NOT NULL,
	last_name VARCHAR(250) NOT NULL,
	email VARCHAR(250) NOT NULL
);

CREATE TABLE campaign(
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(250) NOT NULL,
	description VARCHAR(250) NOT NULL,
	goal DOUBLE PRECISION NOT NULL,
	pledged DOUBLE PRECISION NOT NULL,
	outcome VARCHAR(250) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(250) NOT NULL,
	currency VARCHAR(250) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(250) NOT NULL,
	subcategory_id VARCHAR(250) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Display tables
SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;

SELECT * FROM campaign;