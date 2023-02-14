create database quan_ly_sinh_vien
use quan_ly_sinh_vien

drop table sinh_vien
create table sinh_vien(
ma int identity,
ten nvarchar(50),
tuoi int,
ngay_sinh date,
gioi_tinh bit,
so_dien_thoai char(15)
primary key(ma)
)

insert into sinh_vien(ten, tuoi,ngay_sinh, gioi_tinh, so_dien_thoai)
values (N'Lậm',21,'2002-04-12',1,'0123456789'), ('Linh', 20,'2000-04-12',0,'05445154531')
-- ngày sinh dưới dạng YYYY-MM-DD, đặt trong dấu ngoặc đơn

select * from sinh_vien
where (ten = 'Linh' or gioi_tinh = 1) and tuoi =20

delete from sinh_vien
where ma=3

update sinh_vien
set 
ten = 'Long sky'
where ma = 2