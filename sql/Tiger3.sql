create table myfood(num number(3) primary key,
foodname varchar2(20),foodphoto varchar2(50),
price number(5),cnt number(5));

insert into myfood values(seq_food.nextval,'���','../Food/4.jpg',30000,2);
commit;

create table shop(num number(3) primary key,
sangpum varchar2(30),
color varchar2(20),
price number(5), imgname varchar2(50));

insert into shop values (seq1.nextval,'û����','yellow',39000,'../image/4.jpg');

commit;
select * from shop;

create table myfriend(num number(3) primary key,
fname varchar(20),fhp varchar(20), faddr varchar(30),
gaipday date);

insert into myfriend values(seq1.nextval,'�迵��','010-1111-2222','���ǵ�',sysdate);
insert into myfriend values(seq1.nextval,'�̿���','010-2222-3333','����',sysdate);
insert into myfriend values(seq1.nextval,'���ÿ���','010-3333-4444','���',sysdate);
insert into myfriend values(seq1.nextval,'�ֿ���','010-4444-5555','����',sysdate);
insert into myfriend values(seq1.nextval,'�ڿ���','010-5555-6666','����',sysdate);
insert into myfriend values(seq1.nextval,'�輮��','010-6666-7777','���ֵ�',sysdate);

commit;
select * from myfriend;

create table sinsang(num number(5) primary key,
name varchar2(20),
addr varchar2(30),sdate date);

insert into sinsang values(seq1.nextval,'�輮��','���ֵ�',sysdate);

commit;


