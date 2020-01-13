/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019/11/9 18:42:11                           */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('customer')
            and   type = 'U')
   drop table customer
go

if exists (select 1
            from  sysobjects
           where  id = object_id('goods')
            and   type = 'U')
   drop table goods
go

if exists (select 1
            from  sysobjects
           where  id = object_id('shopping')
            and   type = 'U')
   drop table shopping
go

/*==============================================================*/
/* Table: customer                                              */
/*==============================================================*/
create table customer (
   cno                  char(5)              not null,
   cname                varchar(10)          null,
   addr                 varchar(10)          null,
   constraint PK_CUSTOMER primary key nonclustered (cno)
)
go

/*==============================================================*/
/* Table: goods                                                 */
/*==============================================================*/
create table goods (
   gno                  char(5)              not null,
   gname                varchar(10)          null,
   price                int                  null,
   type                 varchar(10)          null,
   sno                  char(5)              null,
   constraint PK_GOODS primary key nonclustered (gno)
)
go

/*==============================================================*/
/* Table: shopping                                              */
/*==============================================================*/
create table shopping (
   gno                  char(5)              not null,
   cno                  char(5)              not null,
   date_time            date                 null,
   qty                  int                  null,
   constraint PK_SHOPPING primary key (gno, cno),
   constraint FK_SHOPPING_SHOPPING_GOODS foreign key (gno)
      references goods (gno),
   constraint FK_SHOPPING_SHOPPING2_CUSTOMER foreign key (cno)
      references customer (cno)
)
go

