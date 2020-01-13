 --1）按租借人查询详细的租借信息，要求显示经办员工姓名，租借日期，租借的VCD名，数量。
select ename,leasedate,vname,lquantity
from employee ,VCD,Lease 
where employee.eno=Lease.eno and VCD.vno=Lease.vno
 --  2）按日期查询详细的租借信息，要求显示租借人姓名，租借日期，VCD名，数量，归还日期。
select cname,leasedate,vname,lquantity,Lease.returndate
from VCD,Lease ,Customer
where Customer.cno=Lease.cno and VCD.vno=Lease.vno
 --  3）按购买人统计购买情况，要求显示购买人姓名，购买的VCD数量。
select cname,squantity
from Sales,Customer,VCD
where Customer.cno=Sales.cno and VCD.vno=Sales.vno
 --  4）按购买人根据购买日期统计购买情况，要求显示购买日期，购买的VCD数量。
select salesdate '购买日期',sum(squantity) '购买的VCD数量'
from Sales
group by salesdate
 --  5）根据员工查询该员工办理租借的信息，要求显示办理日期，租借人姓名，VCD名。
select leasedate,cname,vname,employee.eno
from VCD,Lease ,Customer,employee 
where Customer.cno=Lease.cno 
     and VCD.vno=Lease.vno 
	 and employee.eno=Lease.eno 
	 and employee.eno='20110102001'
 --  6）查询员工的本月的销售情况，要求显示员工姓名，VCD数量，统计月份。
select ename,sum(squantity) 'VCD数量',datename(mm,salesdate)'统计月份'
from Sales ,employee 
where Sales.eno=employee.eno 
group by employee.ename,salesdate
 --  7）按月统计本租借店的购买预约情况，要求显示统计月份，预约单号，预约VCD数量。
select datename(mm,Reserdate)'统计月份',Reserno '预约单号',sum(Reser_quantity) '预约VCD数量'
from Reserva
group by datename(mm,Reserdate),Reserno
 --  8）查询某租借人所借书的租借情况，包括归还和没有归还的信息。要求显示VCD名，租借日期，租借数量，归还日期。
select vname,leasedate,lquantity,Re.returndate
from VCD,Customer,Lease,Re
where Customer.cno=Lease.cno 
       and VCD.vno=Lease.vno 
	   and Re.cno=Customer.cno 
	   and VCD.vno=Re.vno 
	   and Customer.cno='19980104109'
 --  9）统计VCD的月销售情况，要求显示VCD名，VCD销售月份，VCD销售数量。
select vname,datename(mm,salesdate)'VCD销售月份',sum(squantity)'VCD销售数量'
from VCD,Sales
where VCD.vno=Sales.vno
group by vname,salesdate
 --  10）根据租借VCD归还的日期，增加逾期罚款信息。
INSERT
 INTO Penalty
values('2019110004','20190102013','20130203023','19980104238','2019-11-10','20')
