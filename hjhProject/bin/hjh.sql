create table book(
            book_no number primary key,
            book_title varchar2(40) not null,
            author varchar2(20) not null,
            buy_date date default sysdate,
            price number
            );
            
--(CreateReadUpdateDelete)
Create sequence book_seq;

insert into book(book_no, book_title,author,buy_date,price)
values(book_seq.nextval, '���� �ڹٴ�','����','23-04-10',23000);
insert into book(book_no, book_title,author,buy_date,price)
values(book_seq.nextval, '�ڹ�','�ʳ�','22-06-12',10000);
insert into book(book_no, book_title,author,buy_date,price)
values(book_seq.nextval, '�ڹٽ�ũ��Ʈ','�帲','21-08-13',30000);

select *
from book;


create table mem(
            mem_no number primary key,
            mem_name varchar2(40) not null,
            mem_phone varchar2(40) not null,
            book_no number not null,
            constraint fk_member foreign key (book_no) references book (book_no));
            
Create sequence mem_seq;

insert into mem(mem_no, mem_name,mem_phone,book_no)
values(mem_seq.nextval, 'ȫ�浿','010-1211-2222',1);
insert into mem(mem_no, mem_name,mem_phone,book_no)
values(mem_seq.nextval, '�ڶ���','010-2222-3333',2);
insert into mem(mem_no, mem_name,mem_phone,book_no)
values(mem_seq.nextval, '������','010-4444-5555',3);

select *
from mem;

  

