drop table if exists user;


create table users(
    id integer primary key autoincrement,
    first_name varchar(250),
    last_name varchar(250),
    username varchar(250),
    "password" varchar(250)
);

create table school(
    id integer primary key autoincrement,
    name varchar(250),
    type varchar(250),
    location varchar(250),
    year integer
);

create table company(
    id integer primary key autoincrement,
    name varchar(250),
    industry varchar(250),
    location varchar(250)
);

create table connection_people(
    id integer primary key autoincrement,
    user1_id integer,
    user2_id integer,
    foreign key(user1_id) references user(id),
    foreign key(user2_id) references user(id)
);

create table connection_school(
    id integer primary key autoincrement,
    user_id integer,
    school_id integer,
    start datetime,
    end datetime,
    type varchar(250),
    foreign key(user_id) references user(id),
    foreign key(school_id) references school(id)
);

create table connection_company(
    id integer primary key autoincrement,
    user_id integer,
    company_id integer,
    start datetime,
    end datetime,
    foreign key(user_id) references user(id),
    foreign key(company_id) references company(id)
);