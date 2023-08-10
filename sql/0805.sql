//table¢¬? intro
create table intro(intro_num number(3) primary key,
intro_name varchar2(20),
intro_blood varchar2(10),
intro_hp varchar2(50),
intro_city varchar2(20),
gaipday date);

create sequence seq_1;

commit;

select * from intro;