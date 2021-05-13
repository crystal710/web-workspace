select * from tab;

drop table t_board;
create table t_board(
    no number(5) primary key
    , title varchar2(200) not null
    , writer varchar2(100) not null
    , content varchar2(4000) not null
    , view_cnt number(5) default 0
    , reg_date date default sysdate
);
drop sequence seq_t_board_no;
create sequence seq_t_board_no nocache;
alter sequence seq_t_board_no nocache;

insert into t_board(no, title, writer, content)
values(seq_t_board_no.nextval, '제목입니다', '홍길동', '내용입니다');

update t_board
    set title = '제목입니다5', writer ='박길동'
    where no=5;

select * from t_board;

delete from t_board;
drop table t_board;



commit;

select * from t_member;

create sequence seq_t_member_id;

insert into t_member(id, name, password)
values('1014', '곽길동','1111');
commit;

update t_member
    set tel1 = '010',tel2 ='9999', tel3='1111'
    where id='1014';
    
select id, name, password, (tel1 ||'-'|| tel2 ||'-'|| tel3) as phone_number , to_char(reg_date,'yyyy-mm-dd') as reg_date
  from t_member;
  
  insert into t_member(id, name, password, type)
    values('admin','관리자','admin','S');
insert into t_member(id,name,password)
    values('user','홍길동','user');
    
    
select * from t_member;
    commit;

