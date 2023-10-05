
-- *** The Lost Letter ***

    -- special letter sent from 900 Somerville Avenue to 2 Finnegan Street --
select *
from packages
where from_address_id = (select id from addresses where address = '900 Somerville Avenue');

    -- the 'Congratulatory letter', whose id is 384, was sent to address with the id 854
select * from addresses where id = 854;

    -- answer
    -- type Residential
    -- 2 Finnigan Street

-- *** The Devious Delivery ***

    -- no From address
select * from packages where from_address_id is null;
    -- package id 5098, content 'Duck debugger' and sent to address id 50
select * from scans where package_id = 5098;
    -- last dropped off at address id 348
select type from addresses where id = 348;
    -- Police Station

-- *** The Forgotten Gift ***
    -- sent from 109 Tileston Street
select * from packages where from_address_id = (select id from addresses where address = '109 Tileston Street');
    -- sent to address 4983, id 9523
select address from addresses where id = 4983;
    -- sent to 728 Maple Place
    -- the address is right
    -- I'll check the drivers
select * from scans where package_id = 9523;
    -- first picked up at the grandpa house, address id 9873
    -- then dropped off at the wrong address, address id 7432
    -- then picked up again at this same address by the driver id 17
select address from addresses where id = 7432;
    -- 905 Brannon Harris Way, nothing like 728 Maple Place
select name from drivers where id = 17;
    -- Mikel has it