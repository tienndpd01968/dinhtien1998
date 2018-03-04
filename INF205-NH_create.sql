-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-02-24 02:38:12.598

-- tables
-- Table: Chi tiết hóa đơn
CREATE TABLE Chi tiết hóa đơn (
    MaHD nvarchar(5)  NOT NULL,
    MaSP nvarchar(5)  NULL,
    SoLuong int  NOT NULL,
    Hóa đơn_MaHD nvarchar(5)  NOT NULL,
    Sản Phẩm_MaSP nvarchar(5)  NOT NULL,
    CONSTRAINT Chi tiết hóa đơn_pk PRIMARY KEY  (MaHD)
);

-- Table: Hóa đơn
CREATE TABLE Hóa đơn (
    MaHD nvarchar(5)  NOT NULL,
    MaKH nvarchar(5)  NULL,
    TenKH nvarchar(50)  NOT NULL,
    MaSP nvarchar(5)  NULL,
    SoLuong int  NOT NULL,
    ThanhTien money  NOT NULL,
    NgayTaoHD datetime  NOT NULL,
    Khách Hàng_MaKH nvarchar(5)  NOT NULL,
    Sản Phẩm_MaSP nvarchar(5)  NOT NULL,
    CONSTRAINT Hóa đơn_pk PRIMARY KEY  (MaHD)
);

-- Table: Khách Hàng
CREATE TABLE Khách Hàng (
    MaKH nvarchar(5)  NOT NULL,
    TenKH nvarchar(50)  NOT NULL,
    DiaChi nvarchar(50)  NOT NULL,
    SDT nvarchar(50)  NOT NULL,
    Email nvarchar(50)  NOT NULL,
    CONSTRAINT Khách Hàng_pk PRIMARY KEY  (MaKH)
);

-- Table: Loại sản phẩm
CREATE TABLE Loại sản phẩm (
    LoaiSP nvarchar(5)  NOT NULL,
    TenSP nvarchar(50)  NOT NULL,
    CONSTRAINT Loại sản phẩm_pk PRIMARY KEY  (LoaiSP)
);

-- Table: Sản Phẩm
CREATE TABLE Sản Phẩm (
    MaSP nvarchar(5)  NOT NULL,
    LoaiSP nvarchar(50)  NULL,
    TenSP nvarchar(50)  NOT NULL,
    Gia money  NOT NULL,
    NgaySX datetime  NOT NULL,
    Loại sản phẩm_LoaiSP nvarchar(5)  NOT NULL,
    CONSTRAINT Sản Phẩm_pk PRIMARY KEY  (MaSP)
);

-- foreign keys
-- Reference: Chi tiết hóa đơn_Hóa đơn (table: Chi tiết hóa đơn)
ALTER TABLE Chi tiết hóa đơn ADD CONSTRAINT Chi tiết hóa đơn_Hóa đơn
    FOREIGN KEY (Hóa đơn_MaHD)
    REFERENCES Hóa đơn (MaHD);

-- Reference: Chi tiết hóa đơn_Sản Phẩm (table: Chi tiết hóa đơn)
ALTER TABLE Chi tiết hóa đơn ADD CONSTRAINT Chi tiết hóa đơn_Sản Phẩm
    FOREIGN KEY (Sản Phẩm_MaSP)
    REFERENCES Sản Phẩm (MaSP);

-- Reference: Hóa đơn_Khách Hàng (table: Hóa đơn)
ALTER TABLE Hóa đơn ADD CONSTRAINT Hóa đơn_Khách Hàng
    FOREIGN KEY (Khách Hàng_MaKH)
    REFERENCES Khách Hàng (MaKH);

-- Reference: Hóa đơn_Sản Phẩm (table: Hóa đơn)
ALTER TABLE Hóa đơn ADD CONSTRAINT Hóa đơn_Sản Phẩm
    FOREIGN KEY (Sản Phẩm_MaSP)
    REFERENCES Sản Phẩm (MaSP);

-- Reference: Sản Phẩm_Loại sản phẩm (table: Sản Phẩm)
ALTER TABLE Sản Phẩm ADD CONSTRAINT Sản Phẩm_Loại sản phẩm
    FOREIGN KEY (Loại sản phẩm_LoaiSP)
    REFERENCES Loại sản phẩm (LoaiSP);

-- End of file.

