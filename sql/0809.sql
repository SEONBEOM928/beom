create table ajaxboard(num number(3) primary key,
writer varchar2(20),subject varchar2(20), story varchar2(1000),
avata varchar2(50),writeday date);

insert into ajaxboard values(seq1.nextval,'�輱��','�ȳ��ϼ���','�輱�� �̶�� �մϴ�','../�����λ���/2.jpg',sysdate);
commit;
select * from ajaxboard;

