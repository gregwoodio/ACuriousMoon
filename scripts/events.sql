drop table if exists events;

create table events(
    id serial primary key,
    time_stamp timestamptz not null,
    title varchar(500),
    description text,
    event_type_id int,
    spass_type_id int,
    target_id int,
    team_id int,
    request_id int
);

---- import attempt 1
--insert into events(
--    time_stamp,
--    title,
--    description
--)
--select 
--    import.master_plan.date,
--    import.master_plan.title,
--    import.master_plan.description
--from import.master_plan;

-- import attempt 2
insert into events(
    time_stamp,
    title,
    description
)
select 
    import.master_plan.date::timestamptz,
    import.master_plan.title,
    import.master_plan.description
from import.master_plan;
