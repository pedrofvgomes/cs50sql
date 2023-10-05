drop table if exists passenger;
drop table if exists airline;
drop table if exists concourse;
drop table if exists operates;
drop table if exists flight;
drop table if exists check_in;


create table passenger(
    id integer primary key autoincrement,
    first_name varchar(250),
    last_name varchar(250),
    age int
);

create table airline(
    id integer primary key autoincrement,
    name varchar(250)
);

create table concourse(
    id integer primary key autoincrement,
    name varchar(1),
    airport_id integer,
    foreign key(airport_id) references airport(id)
);

create table operates(
    id integer primary key autoincrement,
    airline_id integer,
    concourse_id integer,
    foreign key(airline_id) references airline(id),
    foreign key(concourse_id) references concourse(id)
);

create table flight(
    id integer primary key autoincrement,
    number integer,
    airline_id integer,
    origin varchar(10),
    destination varchar(10),
    departure datetime,
    arrival datetime,
    foreign key(airline_id) references airline(id)
);

create table check_in(
    id integer primary key autoincrement,
    passenger_id integer,
    flight_id integer,
    check_in_date datetime,
    foreign key(passenger_id) references passenger(id),
    foreign key(flight_id) references flight(id)
);