create table if not exists meteorites_temp(
    name varchar(250),
    id integer,
    nametype varchar(250),
    class varchar(250),
    mass float,
    discovery varchar(250),
    year integer,
    lat float,
    long float
);

create table if not exists meteorites(
    id integer primary key autoincrement,
    name varchar(250),
    class varchar(250),
    mass float,
    discovery varchar(250),
    year integer,
    lat float,
    long float
);

select count(*) as 'empty'
from meteorites_temp
where mass = '' or year = '' or lat = '' or long = '';

select count(*) as 'null'
from meteorites_temp
where mass is null or year is null or lat is null or long is null;

update meteorites_temp
set mass = "NULL" where mass = '';
update meteorites_temp
set year = "NULL" where year = '';
update meteorites_temp
set lat = "NULL" where lat = '';
update meteorites_temp
set long = "NULL" where long = '';

select count(*) as 'empty'
from meteorites_temp
where mass = '' or year = '' or lat = '' or long = '';

select count(*) as 'null'
from meteorites_temp
where mass is null or year is null or lat is null or long is null;


update meteorites_temp
set mass = round(mass, 2);
update meteorites_temp
set lat = round(lat, 2);
update meteorites_temp
set long = round(long, 2);


select count(*) from meteorites_temp;

delete from meteorites_temp
where nametype = 'Relict';

select count(*) from meteorites_temp;

delete from meteorites_temp
where name in (select name from meteorites_temp limit 1);

select count(*) from meteorites_temp;


insert into meteorites(name, class, mass, discovery, year, lat, long)
select name, class, mass, discovery, year, lat, long from meteorites_temp
order by 5 asc, 1 asc;