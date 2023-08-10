--my team
create table myteam(num number(3) primary key,
tname varchar2(20),
driver varchar2(10),
taddr varchar2(50),
writeday date);


select * from myteam;

commit;

create table mymall(no number(3) primary key,
sangpum varchar2(30),
photo varchar2(50),
price number(5),
ipgoday varchar2(20),
writeday date);

commit;

select * from mymall;

delete from mymall;
select * from mymall order by no;

//------------------------

create table intro(intro_num number(3) primary key,
intro_name varchar2(30),
intro_blood varchar2(15),
intro_hp varchar2(30),
intro_city varchar2(20),
gaipday date);

commit;

select * from intro order by Intro_num;


create table memo(num number(3) primary key,
writer varchar2(20),
story varchar2(1000),
avata varchar2(50),
writeday date);

insert into memo values(seq1.nextval,'선범','아 월요병때매 죽을것같네','../flower_ani/s1.JPG',sysdate);

commit;