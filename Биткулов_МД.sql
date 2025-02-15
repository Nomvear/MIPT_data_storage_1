create database customers_and_transactions;

create table Transaction(
	transaction_id serial primary key,
	transaction_date date not null,
	online_order varchar(5) not null,
	order_status varchar(9) not null,
	product_id int not null,
	customer_id int not null
);


create table product(
	product_id serial primary key,
	brand varchar(15) not null,
	product_line varchar(8) not null,
	product_class varchar(6) not null,
	product_size varchar(6) not null,
	last_price decimal(6,2) not null,
	standart_cost decimal(6,2) not null
);

create table customer(
	customer_id serial primary key,
	first_name varchar(15) not null,
    last_name varchar(15) not null,
    gender varchar(6) not null,
    DOB date not null,
    job_title varchar(40) not null,
    job_industry_category varchar(20) not null,
    wealth_segment varchar(20) not null,
    deceased_indicator varchar(1) not null,
    owns_car varchar(3) not null,
    address varchar(60) not null,
    postcode int not null,
    state varchar(20) not null,
    country varchar(20) not null,
    property_valuation integer not null
);


insert into transaction (transaction_date, online_order, order_status, product_id, customer_id)
 values('2017-02-25', 'False', 'Approved', 2, 2950),
 ('2017-05-21', 'True', 'Approved', 3, 3120),
 ('2017-10-16', 'False', 'Approved', 37, 402),
 ('2017-08-31', 'False', 'Approved', 88, 3135),
 ('2017-10-01', 'True', 'Approved', 78, 787);

insert into product(brand, product_line, product_class, product_size, last_price, standart_cost)
 values('Solex', 'standard', 'medium', 'medium', 71.49, 53.62),
 ('Trek Bicycles', 'Standard', 'medium', 'large', 2091.47, 388.92),
 ('OHM Cycles', 'Standard', 'low', 'medium', 1793.43, 248.82),
 ('Norco Bicycles', 'Standard', 'medium', 'medium', 1198.46, 381.10),
 ('Giant Bicycles', 'Standard', 'medium', 'large', 1765.30, 709.48);

insert into customer(first_name, last_name, gender, DOB, job_title, job_industry_category, wealth_segment, deceased_indicator, owns_car, address, postcode, state, country, property_valuation)
 values('Laraine', 'Medendorp', 'F', '1953-10-12', 'Executive Secretary', 'Health', 'Mass Customer', 'N', 'Yes', '060 Morning Avenue', 2016, 'New South Wales', 'Australia', 10),
 ('Eli', 'Bockman', 'Male', '1980-12-16', 'Administrative Officer', 'Financial Services', 'Mass Customer', 'N', 'Yes', '6 Meadow Vale Court', 2153, 'QLD', 'Australia', 10),
 ('Arin', 'Dearle', 'Male', '1954-01-20', 'Recruiting Manager', 'Property', 'Mass Customer', 'N', 'Yes', '0 Holy Cross Court', 4211, 'QLD', 'Australia', 9),
 ('Talbot','','Male','1961-10-03','','IT','Mass Customer','N','No','17979 Del Mar Point', 2448,'New South Wales', 'Australia', 4),
 ('Sheila-kathryn', 'Calton', 'Female', '1977-05-13', 'Senior Editor', 'n/a', 'Affluent Customer', 'N', 'Yes', '9 Oakridge Court', 3216, 'VIC', 'Austria', 9);






