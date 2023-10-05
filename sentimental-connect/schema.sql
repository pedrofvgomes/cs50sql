create table if not exists users(
    id integer primary key autoincrement,
    first_name varchar(250),
    last_name varchar(250),
    username varchar(250),
    password varchar(250)
);

create table if not exists schools(
    id integer primary key autoincrement,
    name varchar(250),
    type varchar(250),
    location varchar(250),
    year integer
);

create table if not exists companies(
    id integer primary key autoincrement,
    name varchar(250),
    industry varchar(250),
    location varchar(250)
);

create table if not exists connections_people(
    id integer primary key autoincrement,
    user1_id integer,
    user2_id integer,
    foreign key (user1_id) references users(id),
    foreign key (user2_id) references users(id)
);

create table if not exists connections_school(
    id integer primary key autoincrement,
    user_id integer,
    school_id integer,
    start date,
    end date,
    type varchar(250),
    foreign key (user_id) references users(id),
    foreign key (school_id) references schools(id)
);

create table if not exists connections_company(
    id integer primary key autoincrement,
    user_id integer,
    company_id integer,
    start date,
    end date,
    foreign key (user_id) references users(id),
    foreign key (company_id) references companies(id)
);