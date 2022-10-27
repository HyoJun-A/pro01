create table faqa(
    NO NUMBER primary key,
    TITLE VARCHAR2(100) not null,
    CONTENT VARCHAR2(600),
    AUTHOR VARCHAR2(16),
    RESDATE DATE DEFAULT sysdate,
    gubun number not null,      --����/�亯 ����
    parno number not null       --����/�亯 ���� ��ȣ
);

create sequence fseq;
drop sequence fseq;
delete from faqa;
insert into faqa values(fseq.nextval, 'Kia Digital Key(NFC)�� �����ΰ���?', 'NFC�� �����ΰ���?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '���� ���񽺼��� � �ð��� ��� �˴ϱ�?', '���񽺼��� � �ð��� ��� �˴ϱ�?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '��뼳�� �н��ߴµ� ��� ��߱� ���� �� �ֳ���?', '��߱� ���� �� �ֳ���?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '�� �� ������ ���� �ʼ� ��, MyKia�� � ���� �ΰ���?', 'MyKia�� � ���� �ΰ���?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '��� ���� ������ �����ΰ���?', '��� ���� �����̶�?', 'admin', sysdate, 0, fseq.currval);
insert into faqa values(fseq.nextval, '�Ϲ� ������ �Ǵ� ����Ʈ Ű ������ �ڵ� ��(���) ���� ����� �˷��ּ���', '���� ��� �˷��ּ���', 'admin', sysdate, 0, fseq.currval);

insert into faqa values(fseq.nextval, 'Kia Digital Key(NFC)�� �����ΰ���?', 'Kia Digital Key�� NFC ���׳��� ������ ����Ʈ�� �Ǵ� ī�� Ű�� ������ ��� ���� �õ��� �� �� �ִ� ���ο� �����Դϴ�. ', 'admin', sysdate, 1, 1);
insert into faqa values(fseq.nextval, '���� ���񽺼��� � �ð��� ��� �˴ϱ�?', '���� ���񽺼����� �����ð��� ����(��~��) 08:30~17:30���� �̸�, �߽Ľð��� 12:30~13:30 �Դϴ�.', 'admin', sysdate, 1, 2);
insert into faqa values(fseq.nextval, '��뼳�� �н��ߴµ� ��� ��߱� ���� �� �ֳ���?', ' ��뼳�� �н� �� �߰��� ������ �Ͻ� ��쿡�� ��Ƹ���� Ȩ�������� ���� ���� �� �ֽ��ϴ�. https://members.kia.com/kr/view/qmym/qdir/qmym_qdir_direction.do���� Ȯ���Ͻ� �� �ֽ��ϴ�.', 'admin', sysdate, 1, 3);
insert into faqa values(fseq.nextval, '�� �� ������ ���� �ʼ� ��, MyKia�� � ���� �ΰ���?', '����, ���� ���¸� ���� ����� ������ ��� ���� ������ ȭ��� �������� �����մϴ�.', 'admin', sysdate, 1, 4);
insert into faqa values(fseq.nextval, '��� ���� ������ �����ΰ���?', '��� ���� ������, ��ƴ��� / ��Ƹ���� Ȩ������ / MyKia ����� �� / ��� ������Ű / Kia Connect �� ��ƿ��� �����ϴ� ���񽺸� ����ϱ� ���� ��������, �ϳ��� ID�� ��� ���񽺸� �̿��� �� �ֽ��ϴ�.', 'admin', sysdate, 1, 5);
insert into faqa values(fseq.nextval, '�Ϲ� ������ �Ǵ� ����Ʈ Ű ������ �ڵ� ��(���) ���� ����� �˷��ּ���', '�Ϲ� ������ ���� ���� �Ǵ� �̸�������� ���� ������ �ڵ��(���) ������� �� �޼����� �ڵ��� ��� ���������� Ű��Ʈ�� Ű�� �ȴ´� �� �ڵ��� �¿�� ���� �����̸鼭 ���ÿ� ACC �������� Ű�� ������.  ', 'admin', sysdate, 1, 6);



select * from faqa order by parno, gubun;
commit;