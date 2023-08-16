alter table mysawon add photo varchar2(50);

insert into mysawon values(seq_mysawon.nextval,'system','system','1234','111111-1111111',99,'남자','운영팀','관리자',sysdate,'../upload/a1.jpg');

commit;

alter table mysawon modify gender varchar2(30);