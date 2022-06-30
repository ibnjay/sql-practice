-- Display number from 1 to 10 without using any in built functions.

with recursive numbers as
(select 1 as n 
union 
select n + 1
from numbers where n < 10
)

select * from numbers ;