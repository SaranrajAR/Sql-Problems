# Write your MySQL query statement below
select distinct t.num as consecutiveNums
from logs t
where t.id>=3 && ((select num from logs where id=t.id-1)=t.num) &&
                    ((select num from logs where id=t.id-2)=t.num)    
