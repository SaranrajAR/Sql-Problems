select class
from Courses
group by class
having count(student) >= 5;


select distinct c.class
from courses c
where (select count(*) from courses where class=c.class)>=5;
