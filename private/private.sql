drop table if exists "cipher";
drop view if exists "message";

create table "cipher"(
    "sentence" integer,
    "character" integer,
    "length" integer
);

insert into "cipher" values (14,98,4);
insert into "cipher" values (114,3,5);
insert into "cipher" values (618,72,9);
insert into "cipher" values (630,7,3);
insert into "cipher" values (932,12,5);
insert into "cipher" values (2230,50,7);
insert into "cipher" values (2346,44,10);
insert into "cipher" values (3041,14,5);

create view "message" as
select substr(sentences.sentence, character, length) as 'phrase'
from cipher, sentences
where sentences.id = cipher.sentence;