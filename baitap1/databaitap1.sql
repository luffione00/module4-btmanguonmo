create table SanPham(
masp varchar(12) not null,
tensp nvarchar2(255),
nhasanxuat nvarchar2(255),
maloaisp varchar(12),
constraint pk_sanpham primary key (masp),
constraint fk_category foreign key (maloaisp) references LoaiSP(maloaisp)
);

create table LoaiSP(
maloaisp varchar(12) not null,
tenloaisp nvarchar2(50),
constraint pk_spcategory primary key (maloaisp)
);

insert into LoaiSP values(101, 'Phone');
insert into LoaiSP values(102, 'Television');
insert into LoaiSP values(103, 'Laptop');
insert into LoaiSP values(104, 'Headphone');
insert into LoaiSP values(105, 'Micro');
select *from LoaiSP;