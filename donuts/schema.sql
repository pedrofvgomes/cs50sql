create table ingredients(
    id integer primary key autoincrement,
    name varchar(250),
    price_per_unit float,
    unit varchar(250)
);

create table donuts(
    id integer primary key autoincrement,
    name varchar(250),
    gluten_free boolean,
    price float
);

create table donut_ingredient(
    id integer primary key autoincrement,
    donut_id integer,
    ingredient_id integer,
    foreign key(donut_id) references donuts(id),
    foreign key(ingredient_id) references ingredients(id)
);

create table customer(
    id integer primary key autoincrement,
    first_name varchar(250),
    last_name varchar(250)
);

create table orders(
    id integer primary key,
    customer_id integer,
    donut_id integer,
    foreign key(customer_id) references customer(id),
    foreign key(donut_id) references donuts(id)
);

