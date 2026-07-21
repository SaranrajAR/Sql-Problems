# Write your MySQL query statement below
select person_name from
(select q.person_id, q.person_name, (select sum(weight) from queue where turn<=q.turn) as wt
from queue q
order by q.turn) as t1
where t1.wt<=1000
order by t1.wt desc
limit 1;
