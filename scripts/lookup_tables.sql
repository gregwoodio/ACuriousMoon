-- teams
drop table if exists teams cascade;

select distinct (team)
as description
into teams
from import.master_plan;

alter table teams
add id serial primary key;

-- library_definitions
drop table if exists library_definitions cascade;

select distinct (library_definition)
as description
into library_definitions
from import.master_plan;

alter table library_definitions 
add id serial primary key;

-- spass_types
drop table if exists spass_types cascade;

select distinct (spass_type)
as description
into spass_types
from import.master_plan;

alter table spass_types
add id serial primary key;

-- targets
drop table if exists targets cascade;

select distinct (target)
as description
into targets 
from import.master_plan;

alter table targets
add id serial primary key;

-- requests
drop table if exists requests cascade;

select distinct (request_name)
as description
into requests
from import.master_plan;

alter table requests
add id serial primary key;

