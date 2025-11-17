CREATE TABLE nhan_vien (
    id INT PRIMARY KEY,
    ho_ten VARCHAR(255),
    phong_ban VARCHAR(255),
    luong INT,
    nam_sinh INT
);

INSERT INTO nhan_vien VALUES
(1, 'Nguyễn Văn An', 'Kỹ thuật', 25000000, 1990),
(2, 'Trần Thị Bình', 'Kinh doanh', 18000000, 1992),
(3, 'Lê Văn Cường', 'Kỹ thuật', 30000000, 1988),
(4, 'Phạm Thị Dung', 'Nhân sự', 16000000, 1995),
(5, 'Hoàng Văn Giang', 'Kỹ thuật', 22000000, 1991),
(6, 'Vũ Thị Hà', 'Kinh doanh', 19000000, 1996),
(7, 'Nguyễn Minh Hùng', 'Kỹ thuật', 35000000, 1989),
(8, 'Đặng Thu Lan', 'Marketing', 21000000, 1994),
(9, 'Bùi Văn Kiên', 'Nhân sự', 17000000, 1997),
(10, 'Ngô Bảo Ngọc', 'Kinh doanh', 20000000, 1993);

SELECT * FROM nhan_vien 
WHERE ho_ten LIKE 'Nguyễn%';

SELECT * FROM nhan_vien 
WHERE luong BETWEEN 15000000 AND 20000000;

SELECT * FROM nhan_vien 
WHERE phong_ban IN ('Kinh doanh', 'Nhân sự');

SELECT COUNT(*) AS tong_nhan_vien 
FROM nhan_vien;

SELECT MAX(luong) AS luong_cao_nhat, MIN(luong) AS luong_thap_nhat 
FROM nhan_vien;

SELECT AVG(luong) AS luong_trung_binh 
FROM nhan_vien;

SELECT phong_ban, COUNT(*) AS so_luong 
FROM nhan_vien 
GROUP BY phong_ban;

SELECT phong_ban, AVG(luong) AS luong_tb 
FROM nhan_vien 
GROUP BY phong_ban;

SELECT phong_ban, COUNT(*) AS so_luong 
FROM nhan_vien 
GROUP BY phong_ban 
HAVING COUNT(*) > 3;

SELECT * FROM nhan_vien 
ORDER BY luong DESC 
LIMIT 3;
