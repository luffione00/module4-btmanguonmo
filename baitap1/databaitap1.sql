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

insert into SanPham values('P100','SamsungJ2','SamSung',101);
insert into SanPham values('P501','IPhone 12','Apple',101);
insert into SanPham values('P102','SamsungNote10','SamSung',101);
commit;

select *from SanPham where masp='P100';
select masp,tensp,nhasanxuat,tenloaisp from anhnx.SanPham s, anhnx.LoaiSP c where 1=1 and s.maloaisp=c.maloaisp;
