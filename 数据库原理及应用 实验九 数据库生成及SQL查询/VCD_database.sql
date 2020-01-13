/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019/11/7 17:23:28                           */
/*==============================================================*/


if exists (select 1
            from  sysindexes
           where  id    = object_id('Compensation')
            and   name  = 'Compensation3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Compensation.Compensation3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Compensation')
            and   name  = 'Compensation2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Compensation.Compensation2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Compensation')
            and   name  = 'Compensation1_FK'
            and   indid > 0
            and   indid < 255)
   drop index Compensation.Compensation1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Compensation')
            and   type = 'U')
   drop table Compensation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Customer')
            and   type = 'U')
   drop table Customer
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Lease')
            and   name  = 'Lease3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Lease.Lease3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Lease')
            and   name  = 'Lease2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Lease.Lease2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Lease')
            and   name  = 'Lease1_FK'
            and   indid > 0
            and   indid < 255)
   drop index Lease.Lease1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Lease')
            and   type = 'U')
   drop table Lease
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Penalty')
            and   name  = 'Penalty3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Penalty.Penalty3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Penalty')
            and   name  = 'Penalty2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Penalty.Penalty2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Penalty')
            and   name  = 'Penalty1_FK'
            and   indid > 0
            and   indid < 255)
   drop index Penalty.Penalty1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Penalty')
            and   type = 'U')
   drop table Penalty
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reserva')
            and   name  = 'Reservation3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reserva.Reservation3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reserva')
            and   name  = 'Reservation2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reserva.Reservation2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reserva')
            and   name  = 'Reservation1_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reserva.Reservation1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Reserva')
            and   type = 'U')
   drop table Reserva
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Return"')
            and   name  = 'Return3_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Return".Return3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Return"')
            and   name  = 'Return2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Return".Return2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"Return"')
            and   name  = 'Return1_FK'
            and   indid > 0
            and   indid < 255)
   drop index "Return".Return1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Return"')
            and   type = 'U')
   drop table "Return"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sales')
            and   name  = 'Sales3_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sales.Sales3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sales')
            and   name  = 'Sales2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sales.Sales2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Sales')
            and   name  = 'Sales1_FK'
            and   indid > 0
            and   indid < 255)
   drop index Sales.Sales1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sales')
            and   type = 'U')
   drop table Sales
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VCD')
            and   type = 'U')
   drop table VCD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('employee')
            and   type = 'U')
   drop table employee
go

/*==============================================================*/
/* Table: Compensation                                          */
/*==============================================================*/
create table Compensation (
   compensationNo       char(10)             not null,
   cno                  char(11)             null,
   vno                  char(11)             null,
   eno                  char(11)             null,
   compensationdate  datetime             null,
   vquantity            int                  null,
   amount               int                  null,
   constraint PK_COMPENSATION primary key nonclustered (compensationNo)
)
go

/*==============================================================*/
/* Index: Compensation1_FK                                      */
/*==============================================================*/
create index Compensation1_FK on Compensation (
vno ASC
)
go

/*==============================================================*/
/* Index: Compensation2_FK                                      */
/*==============================================================*/
create index Compensation2_FK on Compensation (
eno ASC
)
go

/*==============================================================*/
/* Index: Compensation3_FK                                      */
/*==============================================================*/
create index Compensation3_FK on Compensation (
cno ASC
)
go

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer (
   cno                  char(11)             not null,
   cname                char(20)             null,
   csex                 char(2)              null,
   cage                 smallint             null,
   cphone               char(11)             null,
   constraint PK_CUSTOMER primary key nonclustered (cno)
)
go

/*==============================================================*/
/* Table: Lease                                                 */
/*==============================================================*/
create table Lease (
   leaseNo              char(10)             not null,
   vno                  char(11)             null,
   cno                  char(11)             null,
   eno                  char(11)             null,
   leasedate         datetime             null,
   lquantity            int                  null,
   returndate        datetime             null,
   constraint PK_LEASE primary key nonclustered (leaseNo)
)
go

/*==============================================================*/
/* Index: Lease1_FK                                             */
/*==============================================================*/
create index Lease1_FK on Lease (
vno ASC
)
go

/*==============================================================*/
/* Index: Lease2_FK                                             */
/*==============================================================*/
create index Lease2_FK on Lease (
eno ASC
)
go

/*==============================================================*/
/* Index: Lease3_FK                                             */
/*==============================================================*/
create index Lease3_FK on Lease (
cno ASC
)
go

/*==============================================================*/
/* Table: Penalty                                               */
/*==============================================================*/
create table Penalty (
   penaltyno            char(10)             not null,
   vno                  char(11)             null,
   eno                  char(11)             null,
   cno                  char(11)             null,
   penaltydate          datetime             null,
   penaltyamount        int                  null,
   constraint PK_PENALTY primary key nonclustered (penaltyno)
)
go

/*==============================================================*/
/* Index: Penalty1_FK                                           */
/*==============================================================*/
create index Penalty1_FK on Penalty (
vno ASC
)
go

/*==============================================================*/
/* Index: Penalty2_FK                                           */
/*==============================================================*/
create index Penalty2_FK on Penalty (
eno ASC
)
go

/*==============================================================*/
/* Index: Penalty3_FK                                           */
/*==============================================================*/
create index Penalty3_FK on Penalty (
cno ASC
)
go

/*==============================================================*/
/* Table: Reserva                                               */
/*==============================================================*/
create table Reserva (
   Reserno              char(10)             not null,
   vno                  char(11)             null,
   cno                  char(11)             null,
   eno                  char(11)             null,
   Reser_quantity       int                  null,
   constraint PK_RESERVA primary key nonclustered (Reserno)
)
go

/*==============================================================*/
/* Index: Reservation1_FK                                       */
/*==============================================================*/
create index Reservation1_FK on Reserva (
vno ASC
)
go

/*==============================================================*/
/* Index: Reservation2_FK                                       */
/*==============================================================*/
create index Reservation2_FK on Reserva (
eno ASC
)
go

/*==============================================================*/
/* Index: Reservation3_FK                                       */
/*==============================================================*/
create index Reservation3_FK on Reserva (
cno ASC
)
go

/*==============================================================*/
/* Table: Re                                                   */
/*==============================================================*/
create table Re (
   returnNo             char(10)             not null,
   eno                  char(11)             null,
   vno                  char(11)             null,
   cno                  char(11)             null,
   returndate        datetime             null,
   return_quantity      int                  null,
   constraint PK_RETURN primary key nonclustered (returnNo)
)
go

/*==============================================================*/
/* Index: Return1_FK                                            */
/*==============================================================*/
create index Return1_FK on Re(
vno ASC
)
go

/*==============================================================*/
/* Index: Return2_FK                                            */
/*==============================================================*/
create index Return2_FK on Re (
eno ASC
)
go

/*==============================================================*/
/* Index: Return3_FK                                            */
/*==============================================================*/
create index Return3_FK on  Re (
cno ASC
)
go

/*==============================================================*/
/* Table: Sales                                                 */
/*==============================================================*/
create table Sales (
   SalesNo              char(10)             not null,
   eno                  char(11)             null,
   cno                  char(11)             null,
   vno                  char(11)             null,
   salesdate         datetime             null,
   price                money                null,
   squantity            int                  null,
   constraint PK_SALES primary key nonclustered (SalesNo)
)
go

/*==============================================================*/
/* Index: Sales1_FK                                             */
/*==============================================================*/
create index Sales1_FK on Sales (
vno ASC
)
go

/*==============================================================*/
/* Index: Sales2_FK                                             */
/*==============================================================*/
create index Sales2_FK on Sales (
eno ASC
)
go

/*==============================================================*/
/* Index: Sales3_FK                                             */
/*==============================================================*/
create index Sales3_FK on Sales (
cno ASC
)
go

/*==============================================================*/
/* Table: VCD                                                   */
/*==============================================================*/
create table VCD (
   vno                  char(11)             not null,
   vname                char(20)             null,
   vnum                 int                  null,
   vdata                datetime             null,
   vprice               money                null,
   constraint PK_VCD primary key nonclustered (vno)
)
go

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
create table employee (
   ename                char(20)             null,
   esex                 char(2)              null,
   eage                 smallint             null,
   ep                   char(6)              null,
   ephone               char(11)             null,
   eno                  char(11)             not null,
   constraint PK_EMPLOYEE primary key nonclustered (eno)
)
go

