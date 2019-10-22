create table account(
	user_id int not null primary key,
	email varchar(254) not null unique,
	username varchar(50) not null unique,
	password varchar(50)
)

create table film (
	film_id int primary key not null,
	title varchar(50) not null,
	release_year int,
	country varchar(50),
	language varchar(50),
	gross int,
	budget int,
	type bit,	
)

create table review (
	review_id int primary key,
	username varchar(50) not null,
	film_id int,
	num_critic int,
	upvote int,
	date date,
	foreign key (username) references account(username),
	foreign key (film_id) references film(film_id)
)

create table recomendation (
	film_id int,
	title varchar(50) not null,
	username varchar(50) not null,
	comment varchar(254),
	foreign key (username) references account(username),
	foreign key (film_id) references film(film_id),
	date date,
)

create table topic(
	title varchar(50),
	content nvarchar,
	username varchar(50) not null,
	foreign key (username) references account(username),
)

create table favorite (
	film_title varchar(50),
	actor varchar(50),
	username varchar(50) not null,
	user_id int,
	foreign key (user_id) references account(user_id),
)

create table actor(
	actor_id int not null primary key,
	name varchar(50),
	title varchar(50),
	film_id int,
	foreign key (film_id) references film(film_id),
)

create table news(
	username varchar(50) not null,
	comments int,
	views int,
	date date,
	foreign key (username) references account(username),
)
drop table favorite