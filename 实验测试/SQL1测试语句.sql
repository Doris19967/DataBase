select distinct cname
from customer c, shopping s
where c.cno=s.cno and c.cno in
(select cno
from shopping
where gno='00002') and c.cno in
(select cno
from shopping
where gno='00001')

select gno,sum(qty) as '¹ºÂòÊýÁ¿'
from shopping 
group by gno

create view c_¹Ë¿Í
as
select cno
from shopping s1
where not exists
(select *
from shopping s2
where cno='20191' and not exists
(select *
from shopping s3
where s1.cno=s3.cno and s3.cno=s2.cno))

update goods
set price=price*1.1
where gno='00001'

delete from goods
where gno not in(
select g.gno
from shopping s,goods g
where g.gno=s.gno
)
