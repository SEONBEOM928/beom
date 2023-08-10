create sequence seq_1;
--info
create table info(num number(5) primary key,
name varchar2(20),hp varchar2(20),
age number(3),photo varchar2(100));

insert into info values(seq_1.nextval,'김선범','010-777-9999',27,'../image/c5.png');

commit;

--team
create table team (num number(5) primary key,
name varchar2(20),addr varchar2(50),writeday date);

insert into team values(seq_1.nextval,'선범이','부천시',sysdate);

commit;