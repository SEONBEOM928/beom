create sequence sq_mysawon;

create table mysawon_info(num number(5) primary key,image varchar2(50),name varchar2(20),gender varchar2(15),addr varchar2(40),joomin varchar2(30)
,hp varchar2(30),email varchar2(30),plusday date);


create table mysawon_admin(id varchar2(30),pass varchar2(30));

create table mysawon_buseo(num number(5) CONSTRAINT info_num references mysawon_info(num),
grade varchar2(20), buseo varchar2(20), pay varchar2(30), ipsaday date);

insert into mysawon_info values(sq_mysawon.nextval,'이미지','김석진','남자','용인시','970928-1111111','010-2443-2170','ksb928@naver.com',sysdate);


commit;
select * from mysawon_info where num=1;




update mysawon_info set image='이미지', name='김영준', gender='남자', addr='서울', joomin='1232', hp='01012341234', email='asdads' where num=1;

commit;
delete from mysawon_info where num=1;