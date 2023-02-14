create database thong_tin_khach_hang
use thong_tin_khach_hang

drop table khach_hang
create table khach_hang(
ma int identity,
ho_ten nvarchar(50),
so_dien_thoai char(15),
dia_chi char(50),
gioi_tinh bit,
ngay_sinh date
)

insert into khach_hang( ho_ten, so_dien_thoai, dia_chi, gioi_tinh, ngay_sinh)
values (N'Lam','1245','Dak Lak',0,'2002-04-12'), 
      (N'Nhi','1252245','Kon Tum',0,'2002-08-12'),
	  (N'Thu','2245','Phu Yen',0,'2008-08-12'),
	  (N'Tien','12545','Lam Dong',1,'2004-08-12'),
	  (N'Thao','122245','Sai gon',0,'2002-07-12')

select ho_ten,so_dien_thoai from khach_hang

update khach_hang
set
ho_ten = N'Tuấn'
where ma=2

delete from khach_hang
where ma>3 and gioi_tinh=1

update khach_hang
set
ngay_sinh = '2002-01-02'
where ma=1

select * from khach_hang
WHERE MONTH (ngay_sinh) = 1;

update khach_hang
set
ho_ten = N'Tuấn', gioi_tinh=1
where ma=2;

update khach_hang
set
ho_ten = N'Minh', gioi_tinh = 1, ngay_sinh='1999-01-02'
where ma=3;

update khach_hang
set
ho_ten = N'Đức', gioi_tinh=1
where ma=4;

select * from khach_hang
where (ho_ten in( 'Anh','Minh' ,'Đức') and gioi_tinh = 1) or year(ngay_sinh) <2000

SELECT 
  DATEDIFF(year, ngay_sinh, GETDATE()) AS Age,
  * 
FROM 
 khach_hang
WHERE 
  DATEDIFF(year, ngay_sinh, GETDATE()) > 21

--Lấy ra top 3 người mưới nhất
 SELECT TOP 3 *
FROM khach_hang
ORDER BY ma DESC;
--ASC lấy từ trên xuống


SELECT *
FROM khach_hang
WHERE ho_ten LIKE 'T%'

--CHo phép nhập khách hàng có ngày sinh bé hơn ngày hiện tại
alter table khach_hang
add check (ngay_sinh<getdate())


ALTER TABLE khach_hang
ADD CONSTRAINT ch_ngay_sinh
CHECK (ngay_sinh < GETDATE());

insert into khach_hang( ho_ten, so_dien_thoai, dia_chi, gioi_tinh, ngay_sinh)
values (N'Lam','1245','Dak Lak',0,'2002-04-12')
