---------------1--------------------
create table rb_author (author_id number(6,0) primary key,
              author_name varchar2(25) not null);

create table rb_members (member_id number(6,0) primary key,
              first_name varchar2(25) not null,
              last_name varchar2(20) not null,
              street_address varchar2(60),
              city varchar2(25) not null,
              state varchar2(35) not null,
              zip number(6,0));

create table rb_publisher (publisher_id number(6,0) primary key,
              publisher_name varchar2(25) not null);

create table rb_books (book_id number(6,0) primary key,
              title varchar2(50) not null,
              publisher_id number(6,0) not null,
              author_id number(6,0) not null,
              constraint books_publisher_fk foreign key (publisher_id)
              references rb_publisher(publisher_id),
              constraint books_author_fk foreign key (author_id)
              references rb_author(author_id));

create table rb_book_trns (trns_id number(6,0) primary key,
              trns_date date not null,
              trns_type varchar2(20) not null,
              book_id number(6,0) not null,
              member_id number(6,0) not null);              

----------------------2----------------------------
alter table rb_book_trns add constraint books_booktrns_fk foreign key (book_id)
              references rb_books(book_id);

alter table rb_book_trns add constraint members_booktrns_fk foreign key (member_id)
              references rb_members(member_id);

---------------------4-----------------------------

create sequence rb_book_trns_id_seq 
start with 500
increment by 1
nocache;

--------------------5------------------------------
insert into rb_author values (&author_id, '&author_name');
select * from rb_author; 

insert into rb_publisher values (&publisher_id, '&publisher_name');
select * from rb_publisher;

insert into rb_books (book_id, title, author_id, publisher_id) 
values (&book_id, '&title', &author_id, &publisher_id);
select * from rb_books;

insert into rb_members values (&member_id, '&first_name', '&last_name',
              '&street_address', '&city', '&state', &zip);
select * from rb_members;


insert into rb_book_trns (trns_id, trns_date, trns_type, book_id, member_id) 
        values (rb_book_trns_id_seq.NEXTVAL+1,
        '&trns_date', '&trns_type', &book_id, &member_id);
 select * from rb_book_trns;
-----------------------6--------------------------
create or replace view member_details as
  select first_name||' '||last_name as Member_Name, 
         Street_Address, City, Title, Author_Name,Publisher_Name
  from rb_members natural join rb_book_trns 
       natural join rb_books natural join rb_author 
       natural join rb_publisher
  order by member_id; 

create or replace view member_details 
     (Member_Name, Address, City, Title, Author,Publisher)
as select first_name||' '||last_name, 
         Street_Address, City, Title, Author_Name,Publisher_Name
  from rb_members natural join rb_book_trns 
       natural join rb_books natural join rb_author 
       natural join rb_publisher
  order by member_id;

select * from member_details;

---------------------------7---------------------------------
select * from rb_author where author_name='Charles Dickens';
select * from rb_publisher where publisher_name='Inc Publication';
insert into rb_books values (413, 'Great Expectations', 305, 108);

delete from rb_books where book_id=413;

insert all
    WHEN 'Inc Publication' not in 
    (select publisher_name from rb_publisher) then
    into rb_publisher values ((select max(publisher_id)+1 from rb_publisher), 'Inc Publication')
    WHEN 'Charles Dickens' not in 
    (select author_name from rb_author) then
    into rb_author values ((select max(author_id)+1 from rb_author), 'Charles Dickens')
    else
    into rb_books values (413, 'Great Expectations', publisher_id, author_id)
    select publisher_id, author_id  from rb_publisher, rb_author 
    where publisher_name='Inc Publication' and
    author_name='Charles Dickens';

select * from rb_books;

----------------------------8--------------------------------
select * from rb_members where first_name='John' and last_name='Williams';
select * from rb_books where title='Jungle Book';
select * from rb_book_trns;

select first_name||' '||last_name member_name, title, trns_date, trns_type from rb_book_trns 
natural join rb_members natural join rb_books
where (first_name='John' and last_name='Williams') and title='Jungle Book';

-------------------------9-------------------------------------
select first_name||' '||last_name member_name from rb_members natural join rb_book_trns where book_id=
     (select book_id from rb_books where title='Shakuntala');

-------------------------10----------------------------------
select title from rb_books natural join rb_author
 where author_name='Shakespeare';

select title from rb_books where author_id=
  (select author_id from rb_author where author_name='Shakespeare');

-----------------------------11---------------------------------
alter table rb_books add (no_of_copies numeric(6,0) default (1) not null);
select * from rb_books;

------------------------------12-------------------------------
update rb_books
set no_of_copies = case book_id 
 when 401 then 10
 when 402 then 6
 when 403 then 4
 when 404 then 3
 when 405 then 8
 when 406 then 9
 when 407 then 9
 when 408 then 2
 when 409 then 7
 when 410 then 5
 when 411 then 2
 when 412 then 4
 when 413 then 6
end;

select * from rb_books;

---------------------------13------------------------------ 
select first_name||' '||last_name member_name, title, trns_date, trns_type from rb_book_trns 
natural join rb_members natural join rb_books
where first_name='King' and last_name='George';

---------------------------14-----------------------------
select * from rb_book_trns; 

select distinct tr1.member_id
from rb_book_trns tr1, rb_book_trns tr2
where tr1.member_id=tr2.member_id
and tr1.book_id<>tr2.book_id;

------------------------------15----------------------
select * from all_tab_privs_made;

select owner, table_name from all_tables;
select owner, table_name from all_tables where owner='ORA16';

------------------------------16------------------------
create or replace view books_view as
  select Title, Author_Name, No_of_copies
  from rb_books natural join rb_author; 

select * from books_view;

-----------------------------17-------------------------
select * from system_privilege_map where name like 'SELECT%';
select * from session_privs;

create user login_books identified by books;
grant orax to login_books;
grant select on books_view to login_books;

select sys_context('userenv', 'current_schema') from dual;