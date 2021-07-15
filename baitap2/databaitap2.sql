create table nhanvien(
manv number(4,0) not null,
tennv nvarchar2(255),
ngaysinh date,
diachi nvarchar2(255),
sdt varchar(14),
gioitinh varchar(4),
constraint pk_nhanvien primary key (manv)
);
create table sanphamm(
masp varchar(10) not null,
tensp nvarchar2(255),
donvi nvarchar2(50),
gia number(6,0),
constraint pk_sanphamm primary key (masp)
);

create table hoadon(
mahd varchar(50) not null,
manv number(4,0),
type nvarchar2(10),
ngaylap date,
ngaygiao date,
description nvarchar2(255),
constraint pk_hoadon primary key (mahd),
constraint fk_nvlap foreign key (manv) references nhanvien(manv)
);
alter table hoadon drop constraint fk_nvlap;
create table chitiethoadon(
mahd varchar(50) not null,
masp varchar(10) not null,
soluong number(4,0),
constraint fk_hoadon foreign key (mahd) references hoadon(mahd),
constraint fk_sanpham foreign key (masp) references sanphamm(masp)
);
alter table chitiethoadon drop constraint fk_sanpham;
insert into nhanvien (manv, tennv, ngaysinh, diachi, sdt, gioitinh) values (144,'NguyenXuanAnh', to_date('29/09/1999','dd/mm/yyyy'),'BacNinh','+84948983619','nam');
insert into nhanvien (manv, tennv, ngaysinh, diachi, sdt, gioitinh) values (201,'Nguyen Van A', to_date('01/01/2000','dd/mm/yyyy'),'Ha Noi','+84123456789','nam');
insert into nhanvien (manv, tennv, ngaysinh, diachi, sdt, gioitinh) values (514,'Nguyen Thi B', to_date('11/07/1998','dd/mm/yyyy'),'Hoa Binh','+84987654321','nu');
insert into nhanvien (manv, tennv, ngaysinh, diachi, sdt, gioitinh) values (420,'Tran Than Tien', to_date('18/03/1999','dd/mm/yyyy'),'Tren Troi','+84543216789','nam');
insert into nhanvien (manv, tennv, ngaysinh, diachi, sdt, gioitinh) values (666,'Nguyen Diem Vuong', to_date('19/05/1998','dd/mm/yyyy'),'Duoi Bien','+84987612345','nam');
select *from nhanvien;
delete from nhanvien where manv=514 or tennv='';
insert into sanphamm (masp, tensp, donvi, gia) values ('FA001','Gay Ve Sinh','chiec','600000');
insert into sanphamm (masp, tensp, donvi, gia) values ('SM001','Bat Lua','chiec','5000');
insert into sanphamm (masp, tensp, donvi, gia) values ('SM002','Giay Cuon Nem','hop10','40000');
insert into sanphamm (masp, tensp, donvi, gia) values ('DL001','Keo Cao Su','hop3','40000');
insert into sanphamm (masp, tensp, donvi, gia) values ('DL002','Dau PVOil','chai','70000');
select *from sanphamm;
insert into hoadon (mahd, manv, type, ngaylap, ngaygiao, description) values ('HD010','420','Import',to_date('15/01/2021','dd/mm/yyyy'),to_date('19/03/2021','dd/mm/yyyy'),'');
insert into hoadon (mahd, manv, type, ngaylap, ngaygiao, description) values ('HD011','201','Export',to_date('09/04/2020','dd/mm/yyyy'),to_date('19/06/2021','dd/mm/yyyy'),'');
insert into hoadon (mahd, manv, type, ngaylap, ngaygiao, description) values ('HD012','666','Import',to_date('20/05/2021','dd/mm/yyyy'),to_date('19/06/2021','dd/mm/yyyy'),'');
insert into hoadon (mahd, manv, type, ngaylap, ngaygiao, description) values ('HD013','514','Re-Order',to_date('01/02/2020','dd/mm/yyyy'),to_date('19/02/2021','dd/mm/yyyy'),'');
insert into hoadon (mahd, manv, type, ngaylap, ngaygiao, description) values ('HD014','420','Import',to_date('10/11/2020','dd/mm/yyyy'),to_date('19/01/2021','dd/mm/yyyy'),'');
select *from hoadon;
insert into chitiethoadon (mahd, masp, soluong) values ('HD010','SM001',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD010','SM002',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD014','SM001',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD014','SM002',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD011','FA001',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD011','DL001',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD011','DL001',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD012','SM001',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD012','SM002',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD012','DL001',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD013','FA001',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD013','SM001',100);
insert into chitiethoadon (mahd, masp, soluong) values ('HD013','DL002',100);
select *from chitiethoadon;

