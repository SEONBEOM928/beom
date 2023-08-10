create table ajaxboard(num number(3) primary key,
writer varchar2(20),subject varchar2(20), story varchar2(1000),
avata varchar2(50),writeday date);

insert into ajaxboard values(seq1.nextval,'김선범','안녕하세요','김선범 이라고 합니다','../연예인사진/2.jpg',sysdate);
commit;
select * from ajaxboard;

