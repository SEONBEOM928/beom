create table myfood(num number(3) primary key,
foodname varchar2(20),foodphoto varchar2(50),
price number(5),cnt number(5));

insert into myfood values(seq_food.nextval,'찜닭','../Food/4.jpg',30000,2);
commit;

create table shop(num number(3) primary key,
sangpum varchar2(30),
color varchar2(20),
price number(5), imgname varchar2(50));

insert into shop values (seq1.nextval,'청바지','yellow',39000,'../image/4.jpg');

commit;
select * from shop;

create table myfriend(num number(3) primary key,
fname varchar(20),fhp varchar(20), faddr varchar(30),
gaipday date);

insert into myfriend values(seq1.nextval,'김영준','010-1111-2222','여의도',sysdate);
insert into myfriend values(seq1.nextval,'이영준','010-2222-3333','강남',sysdate);
insert into myfriend values(seq1.nextval,'남궁영준','010-3333-4444','노원',sysdate);
insert into myfriend values(seq1.nextval,'최영준','010-4444-5555','구로',sysdate);
insert into myfriend values(seq1.nextval,'박영준','010-5555-6666','서초',sysdate);
insert into myfriend values(seq1.nextval,'김석진','010-6666-7777','제주도',sysdate);

commit;
select * from myfriend;

create table sinsang(num number(5) primary key,
name varchar2(20),
addr varchar2(30),sdate date);

insert into sinsang values(seq1.nextval,'김석진','제주도',sysdate);

commit;


