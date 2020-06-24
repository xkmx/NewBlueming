create table user_info(
u_id             varchar2(15),
u_pw             varchar2(15),
u_name           varchar2(5),
u_hp             varchar2(15),
    constraint u_id_pk            primary key(u_id),
    constraint u_pw_nn            check(u_pw is not null),
    constraint u_name_nn          check(u_name is not null),
    constraint u_hp_nn            check(u_hp is not null));

create table room(
room_no       number,
room_name     varchar2(15),
price         number,
    constraint room_no_pk          primary key(room_no),
    constraint room_nanme_nn       check(room_name is not null),
    constraint room_price_nn       check(price is not null));

create table book_info(
book_no         number,
guest_name      varchar2(5),
guest_hp        varchar2(15),
room_no         number references room(room_no),
checking_book   char(1) not null,
book_date       date,
request        varchar2(50),
    constraint book_no_pk            primary key(book_no),
    constraint book_guest_name       check(guest_name is not null),
    constraint book_guest_hp         check(guest_hp is not null),
    constraint book_roomNo_nn        check(room_no is not null),
    constraint book_checking_book    check(checking_book = '0' or checking_book = '1'),
    constraint book_date_nn          check(book_date is not null));

create sequence no_seq
increment by 1
start with 1
nocycle;

