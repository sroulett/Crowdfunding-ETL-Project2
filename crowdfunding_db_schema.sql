-- drop tables if they exist
drop table if exists campaign;
drop table if exists category;
drop table if exists subcategory;
drop table if exists contacts;

--create tables
create table category(
	category_id varchar(100) not null,
	category varchar(100) not null,
	primary key (category_id)
);

create table subcategory(
	subcategory_id varchar(100) not null,
	subcategory varchar(100) not null,
	primary key (subcategory_id)
);

create table contacts(
	contact_id int not null,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	email varchar(100) not null,
	primary key (contact_id)
);

create table campaign(
	cf_id int not null,
	contact_id int not null,
	company_name varchar(100) not null,
	description varchar(100) not null,
	goal float not null,
	pledged float not null,
	outcome varchar(100) not null,
	backers_count int not null,
	country varchar(100) not null,
	currency varchar(100) not null,
	launched_date varchar(100) not null,
	end_date varchar(100) not null,
	category_id varchar(100) not null,
	subcategory_id varchar(100) not null,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);
-- check that tables exist and verify correct data after import (uncomment to check)
--select * from campaign;
--select * from category;
--select * from contacts;
--select * from subcategory;