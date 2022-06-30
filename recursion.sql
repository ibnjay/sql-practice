-- Display number from 1 to 10 without using any in built functions.

with recursive numbers as
(select 1 as n 
union 
select n + 1
from numbers where n < 10
)

select * from numbers ;

--  find the hierachy of employee under a given manger.

with recursive emp_hierachy as
    ( select id, name, manager_id, designation, 1 as lvl
    from emp_details where name='Asha'
    union
    select E.id, E.name, E.manager_id, E.designation, H.lvl+1 as lvl
    from emp_hierachy H
    join emp_details E on H.id = E.manager_id
    )
select * from emp_hierachy ;


--  find the hierachy of managers  for a given employee.

with recursive emp_hierachy as
    ( select id, name, manager_id, designation, 1 as lvl
    from emp_details where name='David'
    union
    select E.id, E.name, E.manager_id, E.designation, H.lvl+1 as lvl
    from emp_hierachy H
    join emp_details E on E.id = H.manager_id
    )
select * from emp_hierachy ;