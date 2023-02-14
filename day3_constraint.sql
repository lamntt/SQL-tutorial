create database thong_tin_diem_sinh_vien
use thong_tin_diem_sinh_vien

drop table diem_sinh_vien
create table diem_sinh_vien(
ma int identity,
ho_ten nvarchar(50),
diem_lan_1 float check(diem_lan_1>=0 and diem_lan_1<=10) default 5,
diem_lan_2 float check(diem_lan_2>=0 and diem_lan_2<=10), 
primary key (ma)
)

alter table diem_sinh_vien
add constraint chk_diem_lan_2
check ((diem_lan_1 >=5 and diem_lan_2 is null ) or diem_lan_1 <5)

alter table diem_sinh_vien
 add constraint check_ten check (len(ho_ten)>=2)

insert into diem_sinh_vien( ho_ten, diem_lan_1, diem_lan_2)
values (N'Lam',8,null), 
       (N'Anh',4,2)
     
select * from diem_sinh_vien
where diem_lan_1> 5 or diem_lan_2 >5

select * from diem_sinh_vien
where diem_lan_1> 5 

select * from diem_sinh_vien
where diem_lan_1 <5 and diem_lan_2 <5

alter table diem_sinh_vien
add constraint chk_diem_lan_2
check ((diem_lan_1 >=5 and diem_lan_2 is null ) or diem_lan_1 <5)

select count (*) as 'sinh vien qua mon'
from diem_sinh_vien
where diem_lan_1 <5 and diem_lan_2 >=5


select count (*) as 'sinh vien can thi l2'
from diem_sinh_vien
where diem_lan_1 <5 and diem_lan_2 is null

select count(*) as 'bao_nhieu_sv' from diem_sinh_vien

select distinct ho_ten from diem_sinh_vien

update diem_sinh_vien
set
diem_lan_1=10 
where ma=1

