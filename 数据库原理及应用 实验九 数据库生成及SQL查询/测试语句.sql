 --1��������˲�ѯ��ϸ�������Ϣ��Ҫ����ʾ����Ա��������������ڣ�����VCD����������
select ename,leasedate,vname,lquantity
from employee ,VCD,Lease 
where employee.eno=Lease.eno and VCD.vno=Lease.vno
 --  2�������ڲ�ѯ��ϸ�������Ϣ��Ҫ����ʾ�����������������ڣ�VCD�����������黹���ڡ�
select cname,leasedate,vname,lquantity,Lease.returndate
from VCD,Lease ,Customer
where Customer.cno=Lease.cno and VCD.vno=Lease.vno
 --  3����������ͳ�ƹ��������Ҫ����ʾ�����������������VCD������
select cname,squantity
from Sales,Customer,VCD
where Customer.cno=Sales.cno and VCD.vno=Sales.vno
 --  4���������˸��ݹ�������ͳ�ƹ��������Ҫ����ʾ�������ڣ������VCD������
select salesdate '��������',sum(squantity) '�����VCD����'
from Sales
group by salesdate
 --  5������Ա����ѯ��Ա������������Ϣ��Ҫ����ʾ�������ڣ������������VCD����
select leasedate,cname,vname,employee.eno
from VCD,Lease ,Customer,employee 
where Customer.cno=Lease.cno 
     and VCD.vno=Lease.vno 
	 and employee.eno=Lease.eno 
	 and employee.eno='20110102001'
 --  6����ѯԱ���ı��µ����������Ҫ����ʾԱ��������VCD������ͳ���·ݡ�
select ename,sum(squantity) 'VCD����',datename(mm,salesdate)'ͳ���·�'
from Sales ,employee 
where Sales.eno=employee.eno 
group by employee.ename,salesdate
 --  7������ͳ�Ʊ�����Ĺ���ԤԼ�����Ҫ����ʾͳ���·ݣ�ԤԼ���ţ�ԤԼVCD������
select datename(mm,Reserdate)'ͳ���·�',Reserno 'ԤԼ����',sum(Reser_quantity) 'ԤԼVCD����'
from Reserva
group by datename(mm,Reserdate),Reserno
 --  8����ѯĳ�������������������������黹��û�й黹����Ϣ��Ҫ����ʾVCD����������ڣ�����������黹���ڡ�
select vname,leasedate,lquantity,Re.returndate
from VCD,Customer,Lease,Re
where Customer.cno=Lease.cno 
       and VCD.vno=Lease.vno 
	   and Re.cno=Customer.cno 
	   and VCD.vno=Re.vno 
	   and Customer.cno='19980104109'
 --  9��ͳ��VCD�������������Ҫ����ʾVCD����VCD�����·ݣ�VCD����������
select vname,datename(mm,salesdate)'VCD�����·�',sum(squantity)'VCD��������'
from VCD,Sales
where VCD.vno=Sales.vno
group by vname,salesdate
 --  10���������VCD�黹�����ڣ��������ڷ�����Ϣ��
INSERT
 INTO Penalty
values('2019110004','20190102013','20130203023','19980104238','2019-11-10','20')
