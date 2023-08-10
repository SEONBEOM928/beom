--emp���̺��� ename�� ��ȸ�Ͻÿ�
select ename from emp;
--emp���̺��� �̸��� ������ ��ȸ�Ͻÿ�
select ename,job from emp;
--emp ���̺� ��ü��ȸ
select * from emp;
--student���̺� ��ü��ȸ
select * from student;
--ǥ����
select name,'���ݽǽ���' from student;
--�÷� ��Ī allias���
select name "�̸�",grade as "�г�" ,birthday ���� from student;
--emp���� �����, ����, �Ի����ڸ� ��ȸ�Ͻÿ�
select ename "�����",job as "����", hiredate �Ի����� from emp;
--DISTINCT:�ߺ��� ���� �����ϰ� ����ϱ�
--emp���� �������� �ߺ����� ���� ����ϼ���
select DISTINCT job "������" from emp;
--emp���� �μ���ȣ�� �ߺ����� ����ϼ���
select DISTINCT DEPTNO "�μ���ȣ" from emp;
--�ռ�������: �÷��� ������ ���
select name||grade �г⺰�л��� from student;
--professor��ȸ
select * from professor;
--�ϳ��� �÷����� ���_������ ���� ������ �Դϴ�
select name || '����' || position || '�Դϴ�' "������ ����" from professor;

--smith���� job�� clerk �Դϴ�
select ename || '����' || 'job��' || job || '�Դϴ�' "����" from emp;
--student���� ���������� Ű�� 180cm, �����Դ� 72kg�Դϴ�
select name || '���� ' || 'Ű��' || height || 'cm, �����Դ� ' || weight || 'kg �Դϴ�.' from student;
--emp���� �� ������ salesman �̰� ������ ***�Դϴ�
select '�� ������ '|| job || ' �̰� ������ ' || sal || '�Դϴ�' from emp; 
--����
--student���� �л��� �г� ������ �л����� ������������ ��ȸ�Ͻÿ�
select name �л���, grade �г�, birthday ���� from student order by name asc;--asc�� ����
select name �л���, grade �г�, birthday ���� from student order by birthday desc;

--emp���� �����,����,�޿��� �޿��� ������� ������ ��ȸ�ϼ���
select ename �����, job ����, sal �޿� from emp order by 3 desc;--�÷���ȣ�ε� ���İ���
--emp���� �������� �ߺ����� ����ϰ� �������� ������������ ����ϼ���
select distinct job ������ from emp order by job;

--���������
--emp���� sal�� Ư�����ʽ� 100�� ���Ͽ� ����Ͻÿ�
select ename �����,sal �⺻��,sal+100 Ư�����ʽ� from emp;
--where�� : ����
--emp���� 10���μ��� �ٹ��ϴ� ����� �����, �޿��� �μ���ȣ�� ����ϼ���
select ename �����,sal �޿�,deptno �μ���ȣ from emp where deptno=10;
--emp���� �̸��� KING�� ����� �����,������ ��ȸ�Ͻÿ�
select ename �����,job ���� from emp where ename='KING';
--emp���� �޿��� 3000�̻��� ����� ����� �޿��� ��ȸ�Ͻÿ�
select ename �����,sal �޿� from emp where sal>=3000;
--�л����̺��� Ű�� 180cm�̻��� �л��� �� Ű�� ����Ͻÿ�
select name �л���, height Ű from student where height>=180;
--�л����̺� Ű�� 160~180������ �л���� Ű ���
select name �л���, height Ű from student where height between 160 and 180 order by height;
--in(a,b) : a,b�� ��ȸ
--emp���� deptno�� 20,30�� ������� ������ �μ���ȣ�� ��ȸ
select ename �����, deptno �μ���ȣ from emp where deptno in(20,30);
--null���� ���
--emp���� comm�� null�� ����� �̸��� ���ʽ��� ����Ͻÿ�
select ename �����, comm ���ʽ� from emp where comm is null;
--emp���� comm�� null�� �ƴ� ����� �̸��� ���ʽ��� ����Ͻÿ�
select ename �����, comm ���ʽ� from emp where comm is not null;

--NVL : null���� 0���� �ٲٱ�_������ ����
select ename ����� ,nvl(comm,0)���ʽ� from emp;
--Like ������
--�л����̺��� �达�� ��ȸ�Ͽ� ��翭�� ����Ͻÿ�
select * from student where name like '��%';
--�л����̺� �� ���? 
select count(*) cnt from student;
--emp���� job�� salesman,manager�� �����,�������� ����ϼ���(or �� in �����ڷ� ���)
select ename �����, job ������ from emp where job in('SALESMAN','MANAGER');
select ename �����, job ������ from emp where job='SALESMAN' or job='MANAGER';

--emp���� �޿��� 2000~3000�� �����,������,�޿��� ���(and between ������)
select ename �����, job ������, sal �޿� from emp where sal>=2000 and sal<=3000;
select ename �����, job ������, sal �޿� from emp where sal between 2000 and 3000;

--Q.student ���̺��� 1�г� �л��� �л���,Ű�� ����Ͻÿ�(�� Ű�� ������..)
select name �л���, height Ű from student where grade=1 order by height;
--Q.student���� 2�г��л��� �л��� ���� Ű �����Ը� ����Ͻÿ�(�� ������ ������� ����)
select name �л���, birthday ����, height Ű, weight ������ from student where grade=2 order by birthday;
--Q.professor���� �������� �̸��� �� ������ ���� ������ ������ ���� �Ի����ڸ� ����Ͻÿ�
select name ������, position ����, hiredate �Ի����� from professor where name like '��%';
--Q.emp���� �����,�޿�,�޿�*12,���ʽ�,�޿��Ѱ踦 ���Ͻÿ�
select ename �����, sal �޿�, sal*12,NVL(comm,0) ���ʽ�, sal+NVL(comm,0) �޿��Ѱ� from emp;
--Q.emp���� �Ի����ڰ� 1982/01/01 ���Ŀ� ���»���� ������ �Ի����ڸ� ��ȸ�Ͻÿ�(�Ի����� ��)
select ename �����, hiredate �Ի����� from emp where hiredate>='82/01/01' order by hiredate;

--Like % , _����� �̿��ؼ� Ư�������� �ִ� ���� ���
--emp���� ������� �ι�°���ڰ� a�λ���� ����� ���
select ename ����� from emp where ename like '_A%';

----emp���� ������� 2��°���ڰ� S�λ�� �Ǵ� 3��°���ڰ� S�� ��� ����� ���
select ename ����� from emp where ename like '_A%' or ename like '__A%';

--��¥ ���ͷ� ' '�ݵ�� ���
--emp���� ������ clerk�̰� �Ի����� 87/05/23 �� ����� ����� �Ի��� ���ϱ�
select ename �����, hiredate �Ի��� from emp where job='CLERK' and hiredate='87/05/23';

--emp���� �Ŵ����̰ų� 82�� ���� �Ի����� �����, ������, �Ի��� ���
select ename �����, job ������, hiredate �Ի��� from emp where job='MANAGER' OR hiredate>='82/01/01';

--��������
--student���� �л��� �̸��� Ű�� ������ ���(Ű�� �����������, �����Դ� �����������)
select name �л���,height Ű,weight ������ from student where grade=1 order by height asc,weight desc;
--emp���� �޿��������� �� �ٽ� �̸����� ��������_�����ȣ ����� �޿�
select ename �����,empno �����ȣ, sal �޿� from emp order by sal desc, ename;

select * from student;
--union �翷���� �ϳ� ������ ���(�ߺ� ����)
--unionAll �翷 ���� �ϳ� ������ ���
--intersect �翷 �ΰ��� ���� ��� �����ϴ� �͸� ���

select name,deptno1,deptno2 from student where deptno1=101 union
select name,deptno1,deptno2 from student where deptno2=201;

--Q.gogak point�� 30��~50�� ����� ����Ʈ�� ����ϼ���(����Ʈ ������)
select gname ����,point ����Ʈ from gogak where point between 300000 and 500000 order by point asc;

--Q.emp�� comm�� ���� 0���� �ٲپ ������ manager�� ����� �̸��� ���ʽ� ����Ͻÿ�
select ename �̸�,NVL(comm,0) ���ʽ�,job ���� from emp where job='MANAGER';

--Q.professor 103�� �а� �������� �̸��� �޿�,���ʽ�,������ ����Ͻÿ�
select name ������,pay �޿�,NVL(bonus,0) ���ʽ�,pay*12+NVL(bonus,0) ���� from professor where deptno=103;

--SQL �׷��Լ�(count,sum,avg)
--count(*) null�� ����,count (�÷�):null�� ����
select count(*),count(hpage) from professor;

select count(bonus),sum(bonus),avg(bonus) from professor;

--max,min
select max(sal),min(sal) from emp;
select max(hiredate),min(hiredate) from emp;

--�Ҽ���
--emp ���� sal ���
select round(avg(sal),1) from emp;--�Ҽ��� 1�ڸ�
select round(avg(sal),2) from emp;
select round(avg(sal),0) from emp;--�ݿø�
select round(avg(sal),-1) from emp;--10����
select round(avg(sal),-2) from emp;--100����

--�ֿܼ� ���
--���� ��¥�� �ֿܼ� ���
select sysdate from dual;

--���� ��¥�� �ֿܼ� ���
select sysdate+1 from dual;

--to_char : ��¥ �� ��ġ�����͸� ���ڷ� ��ȯ�ϱ����� �Լ�
--��¥���� �⵵�� ����
select to_char(sysdate,'year')from dual;--����� ����
select to_char(sysdate,'yyyy')from dual;--2023

select to_char(sysdate,'month')from dual;
select to_char(sysdate,'yyyy-mm-dd hh24:mi:ss')from dual;

--to_char ���ڿ��� ���밡���ϴ�
select to_char(245692317,'999,999,999')from dual;

--emp
select empno �����ȣ,ename �����,to_char(hiredate,'yyyy') �⵵ from emp;
--emp���� �����ȣ,�����,�޿� ���(�޿��� õ���� ���б�ȣ)
select empno �����ȣ,ename �����,to_char(sal,'999,999l') �޿� from emp;

--��������
--�����ȿ� �Ǵٸ� �������(KING���� �޿��� ���� �޴� �����?)_2���� ����..
--���������� ���� ����Ǿ� �� ����� ���������� �����ְ� �� ���� �޾� ���� ������ ����
--�������� �ȿ��� order by�� ���� 

--emp���� KING���� �޿����� �޴� ����� ����� �޿��� ���غ���
select ename �����, sal �޿� from emp where sal>(select sal from emp where ename='SCOTT');

--emp���� ��ձ޿����� ���̹޴� ����� �����ȣ,�����,�޿��� ��Ÿ���ÿ�
select empno �����ȣ,ename �����,sal �޿� from emp where sal>(select avg(sal) from emp);

--emp���� �̸��� WARD �λ���� MGR�� �������� ��������� ��� ���
select ename �̸�,MGR from emp where MGR=(select MGR from emp where ename='WARD');

--emp���� ��ձ޿����� ���̹޴� �����?
select count(*) from emp where sal>(select avg(sal) from emp);

--�������� ����
--Q1. emp���� ADAMS�� ���� �������� ���� ����� �̸� ���� ������ ���
select ename �̸�,sal*12+NVL(comm,0) ����, job ������ from emp where job=(select job from emp where ename='ADAMS');
--Q2. emp���� SCOTT�� ���� ������ �޴� ����� �̸��� �������
select ename �̸�,sal*12+NVL(comm,0) ���� from emp where sal*12+NVL(comm,0)=(select sal*12+NVL(comm,0) from emp where ename='SCOTT');
--Q3. student���� ��1������ ������ �л��� ������ �л����� �л��� ��1���� ���
select name �л���,deptno1 ��1���� from student where deptno1=(select deptno1 from student where name='������');
--Q4. student���� ��1������ 101�� �а��� ��ո����Ժ��� �����԰� ���� �л����� �̸��� ������ ���
select name �л���,weight ������ from student where weight>(select avg(weight) from student where deptno1=101);
--Q5. professor���� �Ի����� �迵�� �������� ���߿� �Ի��� ����� �̸��� �Ի��� �а���ȣ�� ����Ͻÿ�
select name �̸�, hiredate �Ի���, deptno �а���ȣ from professor where hiredate>(select hiredate from professor where name='�迵��');

--��������
--Q1. emp���� job�������� �������� �ѹ����� ����غ�����
select distinct job ������ from emp;
--Q2.emp���̺��� ������� A�� S�� �����ϴ� ����� ����غ�����(�����ȣ �����)
select empno �����ȣ,ename ����� from emp where ename like 'A%' or ename like 'S%';
--Q3.emp���� deptno�� 10�κμ��� ����Ͻÿ�(����� �μ���ȣ)
select ename �����,empno �����ȣ from emp where deptno=10;
--Q4.emp���� �޿�(sal)�� ��պ��� �� ��������� ����� �޿��� ����Ͻÿ�
select ename �����,sal �޿� from emp where sal>(select avg(sal) from emp);
--Q5.scott�� �޿��� �����ϰų� �� ���� �޴»���� ������ �޿��� ����Ͻÿ�
select ename �����,sal �޿� from emp where sal>=(select sal from emp where ename='SCOTT');
--Q6.emp���� hiredate���� ���� 5�� ����� ����� �Ի����� ����Ͻÿ�(to_char)
select ename �����,hiredate �Ի����� from emp where to_char(hiredate,'mm')='05';

--7/7
--1.���̺� ����
--primary key�� �⺻Ű�� �ǹ� not null+unique�� �ǹ��Ѵ�

--test���̺� 
create table test(num number(5) primary key,
name varchar2(20),score number(6,2),birth date);

desc test;--��������
select * from test;

--test�� ��ü������ insert
insert into test values(1,'�ռ���',67.2,'1997-11-11');
--test�� �Ϻε����� insert
insert into test (num,name) values (2,'��ȣ��');

--insert ����
--���Ἲ ���� ����(TIGER.SYS_C008353)�� ����
insert into test values(4,'�̿���',68.78,'1989-11-12');

--sysdate ���糯¥ �ǹ�
insert into test values(5,'��ȿ��',88.96,sysdate);

--alter
--���̸� ������ �÷� �߰�,������ null�� �߰�
--ALTER TABLE ���̺�� ADD �߰����÷��� ������Ÿ��;

alter table test add age number(5);

--�ּҸ� ������ �÷��� �߰��ϴµ� �ʱⰪ�� ������ ��� ����
alter table test add addr varchar2(30) default '������';

----SQL ����: ORA-12899: "TIGER"."TEST"."ADDR" ���� ���� ���� �ʹ� ŭ(����: 185, �ִ밪: 30)
--insert into test values(4,'�̿���',68.78,'1989-11-12',22,'���ѹα� �����ٶ󸶹ٻ����Ÿ���� �ƾƾƾƾƾƾƾƾƾƾƾƾӾƾƾƾƾƾӾƾƾƾƾƾƾƾӾƾӾƾƾƾƾƾƾƾƾƾƾƾӾƾƾƾ�);
--�ּ� �����÷� 30=>50
--ALTER TABLE ���̺�� MODIFY �÷��� ������Ÿ��;
alter table test modify addr varchar2(50);

--age Ÿ���� ���ڿ�(10)���� �����ϰ� �ʱⰪ�� 20���� �����ϱ�
--���� null�� �״�� �ְ� ���� insert�ϴ°� ���� �ʱⰪ ��
alter table test modify age varchar2(10) default '20';

insert into test (num,name) values (10,'��ȣ��');

--num�� �������� ���
select * from test order by num;

--�̸��� �������� �˻�
select * from test order by name desc;

--drop
--ALTER TABLE ���̺� DROP COLUMN �������÷���
--age��� �÷��� ����
alter table test drop column age;
--addr����
alter table test drop column addr;


--�÷��� ����
--ALTER TABLE ���̺�� RENAME COLUMN OLD�÷��� TO NEW�÷���;
--score==>jumsu
alter table test rename column score to jumsu;
--birth==>birthday
alter table test rename column birth to birthday;

--���̺� ���� test
drop table test;



--������ ����
--������ �⺻���� ����,1���� 1�� �����ϴ� ������ ������
create sequence seq1;

--��ü������ Ȯ��
select * from seq;

--���� ���������� �߻� �ֿܼ� ���
select seq1.nextval from dual;

--���� ������ �߻��� ��������
select seq1.currval from dual;

--seq1����
drop sequence seq1;

--10���� 5�� �����ϴ� ����������-cache�� ���ֱ�
create sequence seq2 start with 10 increment by 5 nocache;

--������ �߻�
select seq2.nextval from dual;

--������2 ����
drop sequence seq2;

--seq1 : ���۰�:5 ������:2 ���� :30 ĳ��:no , cycle:y
create sequence seql start with 5 increment by 2 maxvalue 30 nocache cycle;
--seq2 ���۰��� 1 ������ 1 cache:n
create sequence seq2 nocache;
--seq3 ���۰��� 1 ������ 2 cache:n
create sequence seq3 start with 1 increment by 2 nocache;

--���
select seq1.nextval,seq2.nextval,seq3.nextval from dual;

--��ü����
drop sequence seq1;
drop sequence seq2;
drop sequence seq3;

---------------------------------������ 1������,���̺� ����
create sequence seq_start nocache;

create table personinfo (num number(5) primary key,
name varchar2(20),
job varchar2(30),
gender varchar2(20),
age number(5),
hp varchar2(20),
birthday date);



--birthday==>ipsaday
alter table personinfo rename column birthday to ipsaday;

--insert
insert into personinfo values (seq_start.nextval,'�ں���','�����Ͼ�','����',22,'010-1234-5678','2023-02-11');
insert into personinfo values (seq_start.nextval,'ȫ�浿','�౸����','����',31,'010-3456-7890','1984-12-23');
insert into personinfo values (seq_start.nextval,'����','ȸ���','����',27,'010-1111-5555','1990-07-21');
insert into personinfo values (seq_start.nextval,'ȣ����','��ȣ��','����',42,'010-2222-4444','2000-04-30');
insert into personinfo values (seq_start.nextval,'�ٶ���','�౸����','����',22,'010-3333-3333','1995-09-27');
insert into personinfo values (seq_start.nextval,'��ȿ��','�����Ͼ�','����',20,'010-5555-7777','1994-05-22');
insert into personinfo values (seq_start.nextval,'�̻��','ȸ���','����',37,'010-4444-2222','2000-08-09');
insert into personinfo values (seq_start.nextval,'�輱��','��ȣ��','����',27,'010-3232-4343','1992-06-17');
insert into personinfo values (seq_start.nextval,'���缮','�౸����','����',32,'010-1212-3434','1989-01-01');
insert into personinfo values (seq_start.nextval,'��ȣ��','ȸ���','����',29,'010-8989-7272','1997-09-28');
commit;

--�����ο�Ȯ��
select count(*) from personinfo;
--��ȸ����
select * from personinfo order by name asc;
select * from personinfo order by age desc;
select * from personinfo order by 5 asc; --�÷� ��ȣ������

select * from personinfo order by gender,age;
select * from personinfo order by gender,name;

select job from personinfo;
select distinct job from personinfo;

--���� ������
select * from personinfo where name like '��%';
--�̸��� �ι�°���ڰ� ȿ �λ�� 
select * from personinfo where name like '_ȿ%';

--�ڵ��� ������ �ڸ��� 3333�λ��
select * from personinfo where hp like '%3333';

--�Ի����ڰ� 4���λ���� ���
select * from personinfo where to_char(IPSADAY,'mm')='04';

--�Ի�⵵�� 1997���� ����� ���
select * from personinfo where to_char(IPSADAY,'yyyy')='1997';

--���̰� 20~30���� ���
select * from personinfo where age between 20 and 30;

--������ ��ȣ���̰ų� �౸���� �λ��
select * from personinfo where job in('��ȣ��','�౸����');
select * from personinfo where job='��ȣ��' or job='�౸����';
--������ ��ȣ���̰ų� �౸������ �ƴѻ��
select * from personinfo where job not in('��ȣ��','�౸����');

--��ճ���,�Ҽ��� ���ڸ��� ���ϱ�
select round(avg(age),1) from personinfo;

--�������(update)
--UPDATE ���̺�� SET �÷�1='�����ҵ�����' WHERE �÷�2='�����Ͱ�2';
--3�� ���� ���� �����ϱ�, ������ ������ ��� �����Ͱ� �����ȴ� ���� �ʼ�
update personinfo set job='����', age=35;
--�߸� ������ ������ ������� ������
rollback;

--3����
update personinfo set job='����', age=35 where num=3;

--���̸鼭 �����λ���� ������ ���ڷ� �����ϱ�
update personinfo set gender='����' where name like '��%' and job='����';

--num�� 8���� ����� ������ ����� �Ի����� 2000-12-25 �� �����Ͻÿ�
update personinfo set ipsaday='2000-12-25', job='����' where num=8;

commit;

--����
--DELETE FROM ���̺��;
-- 5���� ����
delete from personinfo where num=5;

--�����߿��� ���̰� 25���̻� ��� ����
delete from personinfo where gender='����' and age>=25;

--�ڵ����� ***-***-****����
update personinfo set hp='***-***-****';

rollback;



desc personinfo;

select * from personinfo;

--���̺����
--������ ����
drop table personinfo;
drop sequence seq_start;

--dept���� 30�� �μ��� �þ�Ʋ�� �������ּ���
update dept set LOC='�þ�Ʋ' where deptno=30;
--emp���̺� TotalSal���� �ϳ� �߰��Ͻÿ�
alter table emp add TotalSal number(10);
--emp���̺� Totsal sal�� comm�� ���� ������ �����Ͻÿ�
update emp set TotalSal=sal+nvl(comm,0);

--cmp���� WARD �����Ͻÿ�
delete from emp where ename='WARD';
--product ���̺��� 100���� �������̷� �������ּ���
update product set p_name='��������' where p_code=100;



--Groub by
--professor���� �а����� �������� ��ձ޿��� ����Ͻÿ�
select deptno,avg(pay) "��� �޿�"
from professor
group by deptno;

--select���� ���� �׷��Լ� �̿��� �÷��̳� ǥ������ �ݵ�� group by�� ���Ǿ����
--professor���� ���޺� ��պ��ʽ� 
select position ����,avg(NVL(bonus,0)) "��� ���ʽ�"
from professor
group by position;

--student���� �г⺰ �ְ�Ű�� �ְ������ ���
select grade,max(height) "�ְ� ����",max(weight) "�ְ� ������"
from student
group by grade;

--������ ���޺� �� �޿��� �ְ� ���ʽ��� ���Ͻÿ�
select position,sum(pay) "�ѱ޿�",max(nvl(bonus,0)) "�ְ� ���ʽ�"
from professor
group by position;

--emp���� ������ ���������� �����
select job ����,count(*) "�����"
from emp
group by job;

--Having��_�����ְ� �˻��ϱ�_�ݵ�� group by �ڿ�...
--emp���� ��� �޿��� 2000�̻��� �μ��� �μ���ȣ�� ��ձ޿��� ���Ͻÿ�
--where���� �׷��Լ��� ���������� ��������
select deptno, avg(sal) 
from emp
group by deptno
having avg(sal)>2000;

--professor���� ��ձ޿��� 300�̻��� �а��� �а���ȣ�� ��ձ޿��� ���Ͻÿ�
select deptno �а���ȣ, avg(pay) "��ձ޿�"
from professor
where deptno not in(101) 
group by deptno
having avg(pay)>=300
order by deptno desc;

--emp���� job���� sal�� ��ձ޿��� ���Ͻÿ�
select distinct job ����, avg(sal)
from emp
group by job;

--professor���� ���޺� �ѱ޿��� ���Ͻÿ�
select position ����, sum(pay)
from professor
group by position;

--emp���� ������ �ο��� �ִ�޿� �ּұ޿� ����ϼ���(job�� ��������)
select job ����,count(job),max(sal) "�ִ�޿�", min(sal) "�ּұ޿�"
from emp
group by job
order by job;

--�Ի�⵵ �׷캰�� ���(�Խó⵵,�ο���,�޿����(�Ҽ��� 1�ڸ�))
select to_char(hiredate,'yyyy')�Ի�⵵,count(*) �ο���,round(avg(sal),1) ��ձ޿�
from emp
group by to_char(hiredate,'yyyy')
order by to_char(hiredate,'yyyy');

--Rollup�Լ�
--�ڵ����� �Ұ�/�հ� �����ִ� �Լ�
--group by���� �־��� �������� �Ұ谪�� �����ش�
select deptno �а���ȣ, position ����, sum(pay) �ѱ޿�
from professor
group by position,rollup(deptno);

select deptno �а���ȣ, position ����, sum(pay) �ѱ޿�
from professor
group by deptno,rollup(position);

--count
select position,count(*),sum(pay)
from professor
group by rollup(position);

--cube�Լ�
--rollupó�� ���Ұ迡 ��ü �Ѱ���� �����ش�
select deptno,position,count(*),sum(pay)
from professor
group by cube(deptno,position);

--������ �Ѻ���
--Q1. emp���� ��տ����� 2000�̻��� �μ��� �μ���ȣ�� ��ձ޿��� ���Ͻÿ�
select deptno,avg(sal) 
from emp 
group by deptno
having avg(sal)>=2000;
--Q2. emp���� deptno�� �ο�����?
select deptno, count(*) 
from emp
group by deptno;
--Q3.emp���� job�� �ο����� ���Ͻÿ�(�� �ο��� 2���̻��ΰ��� ���Ұ�)
select job ����, count(*) �ο��� 
from emp
group by job
having count(*)>=2;

--Q4.emp���� job���� �޿��հ踦 ���ϴµ� (president�� ������������) �޿��հ谡 5000�̻� ���Ͻð� �޿��հ谡 �����ͺ��� ����Ͻÿ�
--job �޿��Ѱ�
select job ����,sum(sal) �ѱ޿�
from emp
where job not in('PRESIDENT') -- PRESIDENT ����
group by job --job �׷캰��
having sum(sal)>=5000 --�޿��հ谡 5000 �̻�
order by sum(sal) desc;

--��������
--���̺����
create table sawon(num number(5) CONSTRAINT sawon_pk_num primary key,
name varchar2(20),
gender varchar2(10),
buseo varchar2(20) CONSTRAINT sawon_ck_buseo check(buseo in('ȫ����','�λ��','������')),
pay number(10) default 2000000);

--����������
create sequence seq_sawon nocache;

--������ 10���� insert
--üũ ��������(TIGER.SAWON_CK_BUSEO)�� ����Ǿ����ϴ�
--insert into sawon values(seq_sawon.nextval,'�̿���','����','���Ӱ��ߺ�',3500000);
insert into sawon values(seq_sawon.nextval,'�̿���','����','������',3500000);
insert into sawon values(seq_sawon.nextval,'�迵ö','����','�λ��',3700000);
insert into sawon values(seq_sawon.nextval,'�̰���','����','ȫ����',3200000);
insert into sawon values(seq_sawon.nextval,'����ö','����','�λ��',3700000);
insert into sawon values(seq_sawon.nextval,'���ҹ�','����','������',3500000);
insert into sawon values(seq_sawon.nextval,'�ſ���','����','�λ��',3700000);
insert into sawon values(seq_sawon.nextval,'���ǿ�','����','ȫ����',3500000);
insert into sawon values(seq_sawon.nextval,'�賲��','����','ȫ����',3700000);
insert into sawon values(seq_sawon.nextval,'�̼���','����','������',3500000);
insert into sawon values(seq_sawon.nextval,'ȫ�̳�','����','������',3600000);
commit;

--�μ��� �ο����� �ְ�޿�,�����޿� ��ȸ
select distinct buseo �μ�,count(*) �ο���,max(pay) �ְ�޿�,min(pay) �����޿�
from sawon
group by buseo;

--���� ���������� �ְ�޿�,�����޿��� ȭ����� ������ 3�ڸ� �ĸ��� ������ ���ּ���
select distinct buseo �μ�,count(*),to_char(max(pay),'999,999,999') �ְ�޿�,to_char(min(pay),'999,999,999') �����޿�
from sawon
group by buseo;
--���� �ο����� ��ձ޿��� ����Ͻÿ�(�ο��� �ڿ� �� �̶�� �������� ...)
select gender ����, count(*)||'��' �ο��� , avg(pay) ��ձ޿�
from sawon
group by gender;
--�μ��� �ο����� ��ձ޿��� ���ϵ� �ο��� 4�� �̻��� ��쿡�� ����ϵ��� �ϼ���
select buseo �μ�, count(*) �ο��� , avg(pay) ��ձ޿�
from sawon
group by buseo
having count(*)>=4;

select * from sawon;


select * from emp;


--7/10
--Q1.emp���� ename�� empname���� �ٲټ���
alter table emp rename column  ename to empname;
--Q2.gift���� 7�� ��Ʈ���� �����е�� �ٲټ���
update gift set gname='�����е�' where gno=7;
--Q3.gift�� 10�� ������ 900001~1000000 ������ �߰��ϼ���
insert into gift values (10,'������',900001,1000000);
--Q4.member���� 1003 ������ ����� �����Ͻÿ�
delete from member where no=1003;
--Q5.emp���� �Ի����� 82/01/23�� ����� �̸�,�μ���ȣ,�޿��� ����Ͻÿ�
select empname �̸�,deptno �μ���ȣ, sal �޿� from emp where hiredate='82/01/23'; 
--Q6.emp���� �������� �ִ�޿�,�ּұ޿�,�ѱ޿�,��ձ޿��� ����Ͻÿ�
select job ����,max(sal) �ִ�޿�,min(sal) �ּұ޿�, sum(sal) �ѱ޿�, avg(sal) ��ձ޿�
from emp
group by job;

--Join

--1.emp�� dept �� �����ؼ� emp������� �μ����� ���غ���
--�����   �μ���

--1
select e.empname,d.dname 
from emp e,dept d
where e.deptno=d.deptno;
--2
select empname,dname --���̺��� �������ϰ�� e. d.��������
from emp e,dept d
where e.deptno=d.deptno;

--student   �� professor�� �����Ͽ� ������ ���� ����Ͻÿ�
--�й�    �л���     ����������
select studno �й�,s.name �л���,p.name ����������
from student s,professor p
where s.profno=p.profno;

--�й�    �л���     ��1������
select studno �й�,s.name �л���,d.dname ��1������
from student s,department d
where s.deptno1=d.deptno;

--������   ����  �а���
select name ������, position ����, d.dname �а���
from professor p,department d
where p.deptno=d.deptno;

--�����ȣ ����� �ٹ�����
select empno �����ȣ, empname �����, d.loc �ٹ�����
from emp e,dept d
where e.deptno=d.deptno;

--�Ǹ����̺�
--�Ǹ�����  ���ڸ�  ��ü �Ǹž�
select p.p_date �Ǹ����� ,pd.P_name ���ڸ�, p.p_total ��ü�Ǹž�
from product pd,panmae p
where pd.p_code=p.p_code;

--primaryŰ�� forignŰ�� ������ �������̺�(�θ�,�ڽ�) ������

--������
create sequence seq_shop;

--shop���̺�(�θ�)
create table shop(shop_num number(5) primary key,
sangname varchar2(30),color varchar2(20));

--5���� ��ǰ�߰�
insert into shop values(seq_shop.nextval,'�䰡��Ʈ','pink');
insert into shop values(seq_shop.nextval,'�Ʒ�','black');
insert into shop values(seq_shop.nextval,'���뽺','beige');
insert into shop values(seq_shop.nextval,'����','white');
insert into shop values(seq_shop.nextval,'�縻','yellow');
commit;

--cart1..��ǰ������ shop���̺��� shop_num���� �ܺ�Ű�� ����
create table cart1(idx number(5) primary key,
shop_num number(5) CONSTRAINT cart_fk_shopnum REFERENCES shop(shop_num),
cnt number(5),guipday date);

--cart2..��ǰ������ shop���̺��� shop_num���� �ܺ�Ű�� ����
--�θ����̺��� ��ǰ�� ����� �� ��ǰ�� ����� īƮ�� �ڵ����� �����ش�
create table cart2(idx number(5) primary key,
shop_num number(5) REFERENCES shop(shop_num) on DELETE CASCADE,
cnt number(5),guipday date);

--cart1�� ��ǰ�߰�_1��
insert into cart1 values(seq_shop.nextval,1,2,sysdate);
insert into cart1 values(seq_shop.nextval,3,4,sysdate);
insert into cart1 values(seq_shop.nextval,2,5,sysdate);
insert into cart1 values(seq_shop.nextval,4,6,sysdate);
insert into cart1 values(seq_shop.nextval,5,1,sysdate);

--cart2�� ��ǰ�߰�
insert into cart2 values(seq_shop.nextval,1,3,sysdate);
insert into cart2 values(seq_shop.nextval,3,4,sysdate);
insert into cart2 values(seq_shop.nextval,2,1,sysdate);

--cart1: �θ� 1,2,5 ����  cart2: �θ�: 1,2,3

--shop�� 1�� ��ǰ ����?
--���Ἲ ��������(TIGER.CART_FK_SHOPNUM)�� ����Ǿ����ϴ�- �ڽ� ���ڵ尡 �߰ߵǾ����ϴ�
delete from shop where shop_num=1;

--cart2���� 3�������� ��������
--on DELETE CASCADE ������ ������� ������ �ȴ�
delete from shop where shop_num=3;

--cart1�� ����ǰ�� shop���̺�� join�ؼ� �ڼ��� ���
--���1
select c1.idx,s.shop_num,s.sangname,s.color,cnt,c1.guipday
from shop s,cart1 c1
where s.shop_num=c1.shop_num;

--���2
select idx,s.shop_num,sangname,color,cnt,guipday
from shop s,cart1 c1
where s.shop_num=c1.shop_num;

--�θ����̺�
--menu ���̺��
--m_num: �⺻Ű
--m_name: ���ĸ�
--price: ����
create sequence seq_menu;

drop sequence seq_menu;
create table menu(m_num number(5) primary key,
m_name varchar2(30),price number(10));

drop table menu;
insert into menu values(seq_menu.nextval,'ġŲ',20000);
insert into menu values(seq_menu.nextval,'����',30000);
insert into menu values(seq_menu.nextval,'�ʹ�',15000);
insert into menu values(seq_menu.nextval,'����',18000);
insert into menu values(seq_menu.nextval,'���',3000);

select * from menu;
--�ڽ����̺�(�ڽ����̺� ����� �θ� �־ �θ� �����Ҽ������� �θ����̺������ �ڵ����� �ڽĻ���)
--myOrder ���̺�
--o_num: �⺻Ű
--m_num: �ܺ�Ű
--cnt: ����
--o_date: ���糯¥
create table myOrder(o_num number(5) primary key,
m_num number(5) REFERENCES menu(m_num) on delete cascade,
cnt number(5),o_date date); 

insert into myOrder values(seq_menu.nextval,1,1,sysdate);
insert into myOrder values(seq_menu.nextval,2,2,sysdate);
insert into myOrder values(seq_menu.nextval,3,5,sysdate);
insert into myOrder values(seq_menu.nextval,4,4,sysdate);
insert into myOrder values(seq_menu.nextval,5,1,sysdate);

--�������
--�ֹ���ȣ      ���ĸ�     ����    (��)  ����   (��)   �ֹ�����
select s.m_num �ֹ���ȣ, m_name ���ĸ�, price ����,cnt ����,o_date �ֹ�����
from menu s,myorder o
where s.m_num=o.m_num;



create table board (bno number(3) CONSTRAINT board_pk_bno primary key,
writer varchar2(20),
suject varchar2(100),
writeday date);

--board�� 5�� insert
insert into board values(seq_sawon.nextval,'�輱��','�ȳ��ϼ���',sysdate);
insert into board values(seq_sawon.nextval,'ȿ����','���� ������',sysdate);
insert into board values(seq_sawon.nextval,'�ػ���','���� �� ���',sysdate);
insert into board values(seq_sawon.nextval,'�ǰ��� ����','�����װھ�',sysdate);
insert into board values(seq_sawon.nextval,'�Ѹ�','��ȿ���',sysdate);
commit;

--answer��� ���(�ڽ�)
--�θ������� �ڽı� �ڵ������ǰ�
create table answer (num number(5) CONSTRAINT answer_pk_num primary key,
bno number(3) CONSTRAINT answer_fk_bno REFERENCES board(bno) on delete cascade,
nickname varchar2(20),content varchar2(30),writeday date);

--���ϴ� �ۿ� ����߰��ϱ�
insert into answer values(seq_sawon.nextval,14,'������','ȿ���� �� ���� ������',sysdate);
insert into answer values(seq_sawon.nextval,15,'�ĴϿ���','���� �ȳ� �����̴�',sysdate);
insert into answer values(seq_sawon.nextval,16,'¯��','�θ��θ�',sysdate);
insert into answer values(seq_sawon.nextval,17,'���󿡸�','�볪�� �︮����~!',sysdate);
insert into answer values(seq_sawon.nextval,18,'��������','��ũ�� ����ؿ�?',sysdate);
rollback;

select * from board;
--join���� ���
--���۹�ȣ      �ۼ���     �ۼ��ڱ�       ��۴ܻ��      ��۳���      ���۳�¥       ��۳�¥
select b.bno ���۹�ȣ, b.writer �ۼ���,b.suject �ۼ��ڱ�,a.nickname ��۴ܻ��, a.content ��۳���, b.writeday ���۳�¥, a.writeday ��۳�¥
from board b,answer a
where b.bno=a.bno;

--14�� ����
delete from board where bno=14;

--board �� ���� ����
drop table board; --�ܷ� Ű�� ���� �����Ǵ� ����/�⺻ Ű�� ���̺� �ֽ��ϴ�

--�ڽ�
drop table answer;

--shop,cart��� ����
--�ܺ�Ű�� ������ �Ȱ�� �ڽ����̺� ���� ������ �θ����̺� ��������
drop table cart1;
drop table cart2;
drop table shop;


create sequence seq_food;

create table food (fno number(10) CONSTRAINT food_fk_fno primary key,
foodname varchar2(20),price number(20),shopname varchar2(30),loc varchar2(20));

drop table food;
insert into food values(seq_food.nextval,'�Ʊ���',35000,'�����ϾƱ�','���￪');
insert into food values(seq_food.nextval,'�ߺ�����',40000,'������','�Ｚ��');
insert into food values(seq_food.nextval,'�Ѹ�Ŭ',20000,'BHC','������');
insert into food values(seq_food.nextval,'��������',35000,'���̳�����','��õ��');
insert into food values(seq_food.nextval,'�����',7000,'���õ��','�ŵ�����');
insert into food values(seq_food.nextval,'�ɰ���',50000,'�ɰԶ�','���뿪');

create table jumun(num number(10) CONSTRAINT jumun_pk_num primary key,
fno number(10) CONSTRAINT jumun_fk_fno REFERENCES food(fno) on delete cascade,
name varchar2(10),addr varchar2(20));

insert into jumun values(seq_food.nextval,1,'�輱��','���ﵿ');
insert into jumun values(seq_food.nextval,2,'�輱ȣ','�Ｚ��');
insert into jumun values(seq_food.nextval,3,'�輱��','������');
insert into jumun values(seq_food.nextval,4,'�輱��','�ɰ');
insert into jumun values(seq_food.nextval,5,'�輱��','����');
insert into jumun values(seq_food.nextval,6,'�輱��','�����л�ȸ��');

select j.fno �ֹ���ȣ,j.name �ֹ���,f.foodname ���ĸ�,to_char(f.price,'L999,999') ����,f.shopname ��ȣ��,f.loc ������ġ, j.addr �ֹ����ּ�
from food f,jumun j
where f.fno=j.fno
order by name asc;
commit;

select * from food;

--7/10 ����
create sequence seq_table;

create table snsboard(b_num number(10) primary key,
nick varchar2(10),subject varchar2(20), content varchar2(30), wday date);

insert into snsboard values(seq_table.nextval,'������','�ڵ� ����׿�','�ʹ� �����Ͱ��ƿ�',sysdate);
insert into snsboard values(seq_table.nextval,'���޷�','������;��','����ּ���',sysdate);
insert into snsboard values(seq_table.nextval,'���','���;��','���ϰ� ���� ��õ����',sysdate);
insert into snsboard values(seq_table.nextval,'ƫ��','��','��1',sysdate);
insert into snsboard values(seq_table.nextval,'�ڳ���','��','��1',sysdate);
insert into snsboard values(seq_table.nextval,'�⸰','��','��1',sysdate);
insert into snsboard values(seq_table.nextval,'������','��','��1',sysdate);
insert into snsboard values(seq_table.nextval,'����','��','��1',sysdate);
insert into snsboard values(seq_table.nextval,'ȣ����','��','��1',sysdate);
insert into snsboard values(seq_table.nextval,'����','��','��1',sysdate);
commit;

select b_num ��ȣ,nick �г���,subject ����,content ����,wday ����ð�
from snsboard;

select b_num ��ȣ,nick �г���,subject ����,content ����,wday ����ð� from snsboard;

--7/11
--������
create sequence seq1;
--���̺�(myinfo)
create table myinfo (num number(5) primary key, name varchar2(20), addr varchar2(30),sdate date);

--���̺�(myshop)
create table myshop (shopnum number(5) primary key, sangpum varchar2(20), su number(5), price number(5), ipgo date);

insert into myshop values(seq1.nextval,'������14',3,90000,sysdate);
insert into myshop values(seq1.nextval,'������13',2,80000,sysdate);
insert into myshop values(seq1.nextval,'�����е�',4,90000,sysdate);
insert into myshop values(seq1.nextval,'������',3,60000,sysdate);
insert into myshop values(seq1.nextval,'�����潽',7,30000,sysdate);
insert into myshop values(seq1.nextval,'������12',1,70000,sysdate);
insert into myshop values(seq1.nextval,'�����',3,20000,sysdate);
insert into myshop values(seq1.nextval,'���콺',2,50000,sysdate);
insert into myshop values(seq1.nextval,'����',9,40000,sysdate);
insert into myshop values(seq1.nextval,'��������',1,90000,sysdate);
commit;

select * from myshop;
----<Quiz>
----������ ����
create sequence seq_stu;
----���̺� ����
create table mystudent (stu_num number(5) primary key, stu_name varchar2(20), stu_grade number(5),hp varchar(20),addr varchar(30),age number(5),sdate date);
commit;



