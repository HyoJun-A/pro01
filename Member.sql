-- ���̺� ���� �� DB  ERD �ۼ�
-- ���� > ����Ʈ > ������ ��ųʸ� > Ŀ���� ���� : xe > ���� ���� : system > ���̺� ���� : memberA, boardA
create table memberA(
    id	varchar2(16)	primary key,
    pw	varchar2(20)	not null,
    name varchar2(50)	not null,
    email varchar2(100)	,
    tel varchar2(13),
    regdate date default sysdate
);

create table boardA(
    no number primary key,
    title varchar2(100)	not null,
    content varchar2(600),
    author varchar2(16),
    resdate date default sysdate,
    CONSTRAINT fk_bd FOREIGN key (author) REFERENCES memberA(id)
);