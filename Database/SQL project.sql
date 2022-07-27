drop database PROJECT_PRJ
create database PROJECT_PRJ


--Account
drop table Account
create table Account(ID int identity(1,1) primary key, username nvarchar(50), password nvarchar(50), isSell bit, isAdmin bit, name nvarchar(50), email varchar(100), phone varchar(10), accountbalance int)

insert into Account values
('admin','1',0,1,'','','',0),
('quang','1',1,0,N'Trần Quang','quangtranhhpt1@gmail.com','0326736588',10000000)



--Category
drop table Category
create table Category(id int primary key, categoryname nvarchar(50), note nvarchar(100))

insert into Category values
(1,N'Chiến Trường Công Lý', './assets/img/lol.jpg'),
(2,N'Đấu Trường Chân Lí', 'assets/img/chest.jpg')


--Product
drop table Product
create table Product(id int primary key, categoryid int foreign key references Category(id), rankdd nvarchar(50), 
rankdtcl nvarchar(50), champion int, RP int, skin int, little int, price int, status int)

insert into Product values
(1,1,N'chưa có',N'chưa có',26,7,4,0,70000,1),
(2,1,N'chưa có',N'chưa có',20,0,1,0,70000,1),
(130909,2,N'chưa có',N'chưa có',133,0,125,81,500000,1),
(117143,1,N'chưa có',N'chưa có',55,0,22,4,200000,1),
(130910,1,N'Bạc III',N'chưa có',88,8,25,1,120000,1),
(130886,1,N'Đồng I',N'chưa có',68,0,40,8,170000,1),
(62560,1,N'chưa có',N'chưa có',70,0,32,2,200000,1),
(130837,1,N'chưa có',N'chưa có',52,1,45,14,170000,1),
(130726,1,N'Sắt II',N'chưa có',72,0,39,13,170000,1),
(112548,1,N'chưa có',N'chưa có',80,0,65,21,300000,1),
(112241,1,N'chưa có',N'chưa có',102,1,74,25,300000,1),
(112214,1,N'chưa có',N'chưa có',110,5,71,1,300000,1),
(112213,1,N'chưa có',N'chưa có',139,56,76,18,300000,1),
(112088,1,N'chưa có',N'chưa có',37,14,10,0,300000,1),
(111923,1,N'chưa có',N'chưa có',24,0,2,0,250000,1),
(130877,2,N'Bạc II',N'Bạch Kim III',128,0,73,29,300000,1),
(130838,1,N'chưa có',N'chưa có',126,0,77,8,300000,1),
(89719,1,N'chưa có',N'chưa có',89,1,49,2,200000,1),
(130844,1,N'Sắt I',N'chưa có',81,3,45,4,200000,1),
(130892,2,N'chưa có',N'Vàng III',107,0,105,57,500000,1),
(130831,2,N'chưa có',N'chưa có',155,13,88,24,400000,1),
(130382,2,N'Đồng III',N'Vàng III',87,0,105,66,700000,1),
(129894,1,N'Vàng II',N'Bạc III',97,1,62,38,400000,1),
(129772,1,N'chưa có',N'Bạch Kim IV',124,1,146,59,800000,1),
(121437,2,N'chưa có',N'chưa có',65,8,57,127,700000,1),
(130779,2,N'Bạc I',N'Bạc I',153,1,92,90,400000,1),
(130475,2,N'chưa có',N'chưa có',105,2,129,85,500000,1),
(130359,2,N'Bạc II',N'Kim Cương IV',128,0,89,49,400000,1),
(129951,2,N'Đồng IV',N'Bạc III',89,7,114,79,500000,1),
(129922,2,N'Bạc I',N'Vàng III',115,0,103,68,500000,1),
(129822,2,N'chưa có',N'Vàng IV',124,54,123,90,500000,1),
(129656,2,N'chưa có',N'chưa có',112,3,88,80,400000,1),
(129638,2,N'Bạc II',N'Vàng IV',96,22,95,74,500000,1)


--ProductDetail
drop table ProductDetail
create table ProductDetail(productid int foreign key references Product(id), totalskin nvarchar(max), totallittle nvarchar(max), img1 nvarchar(100),
img2 nvarchar(100),img3 nvarchar(100),img4 nvarchar(100),img5 nvarchar(100),img6 nvarchar(100),img7 nvarchar(100),img8 nvarchar(100))

insert into ProductDetail values
(1,
N'Veigar Biệt Đội Omega
Master Yi Kiếm Sĩ Vũ Tru
Master Yi Kiếm Sĩ Vũ Tru
Garen Đô Đốc Độc Đoán
Garen Đô Đốc Độc Đoán
Ryze Xác Sống
Ryze Xác Sống',
'',
'imgproduct/acc1/1-1.jpg','imgproduct/acc1/1-2.jpg','','','','','',''
),
(130909,
N'Lux Thập Đại Nguyên Tố Ezreal Vũ Khí Tối Thượng Diana Pháo Hoa Lucian Vinh Quang 
Xayah Thần Rừng Teemo Tiểu Quỷ Trọng Tài Katarina Kindred Lang Dương Vô Thường
Senna Cao Bồi K/DA ALL OUT Ahri Fiora Vũ Khí Tối Thượng Shen Vũ Khí Tối Thượng
Twisted Fate Vũ Khí Tối Thượng Sona Pentakill III: Cấm Thư Twisted Fate Quý Ngài Ác Mộng
SIÊU PHẨM: Leona SIÊU PHẨM: Ashe Heimerdinger Luyện Rồng Arcane Vi Arcane Jayce Arcane Caitlyn
Arcane Jinx Master Yi Đặc Vụ Siêu Linh Lux Vệ Binh Pyjama Soraka Vệ Binh Pyjama
Beemo Yuubee Blitzcrank Mũi Khoan Bóng Tối Nami Lốt Urf Soraka Ma Sứ Varus Chòm Lạp Hộ
Anivia Chòm Thiên Nga Vladimir Chòm Ba Giang Nidalee Cung Sư Tử Renekton Sương Đen
Ahri Giả Lập Caitlyn Giả Lập Ezreal Giả Lập Shaco Hắc Tinh Thresh Hắc Tinh Thresh Hắc Tinh
Jarvan IV Hắc Tinh Jarvan IV Hắc Tinh Soraka Vệ Binh Tinh Tú Soraka Vệ Binh Tinh Tú
Syndra Vệ Binh Tinh Tú Syndra Vệ Binh Tinh Tú Xayah Vệ Binh Tinh Tú Xayah Vệ Binh Tinh Tú
Fiora Tiệc Bể Bơi Fiora Tiệc Bể Bơi Annie Gấu Bé Bỏng Annie Gấu Bé Bỏng Katarina Học Viện Chiến Binh
Katarina Học Viện Chiến Binh KhaZix Gián Điệp Không Gian Aatrox Ác Ma Không Gian Aatrox Ác Ma Không Gian
Sona Tiên Tri Không Gian SKT T1 Renekton SSW Singed
Fnatic Karthus
True Damage Yasuo

True Damage Yasuo
Shen Huyết Nguyệt

Shen Huyết Nguyệt
Evelynn Huyết Nguyệt

Kalista Huyết Nguyệt

Kalista Huyết Nguyệt
Xin Zhao Đồ Long

Xin Zhao Đồ Long
Malphite Máy Móc

Malphite Máy Móc
Veigar Biệt Đội Omega

Veigar Biệt Đội Omega
Pentakill Kayle

Pentakill Kayle
Pentakill Mordekaiser

Pentakill Mordekaiser
Malphite Bắc Cực

Malphite Bắc Cực
iBlitzcrank

iBlitzcrank
Lux Nữ Thần Vũ Trụ

Lux Nữ Thần Vũ Trụ
Rammus Hậu Vệ

Rammus Hậu Vệ
Zed Hội Tử Thần

Zed Hội Tử Thần
Jinx Yêu Tinh Giáng Sinh

Jinx Yêu Tinh Giáng Sinh
Graves Thế Giới Ngầm

Graves Thế Giới Ngầm
Garen Quân Đoàn Thép

Garen Quân Đoàn Thép
Xin Zhao Mật Vụ

Xin Zhao Mật Vụ
Pantheon Chiến Binh Thép

Pantheon Chiến Binh Thép
Brand Hỏa Linh

Brand Hỏa Linh
Shaco Lính Chì

Shaco Lính Chì
Ezreal Thám Hiểm

Ezreal Thám Hiểm
Ezreal Thanh Lịch

Ezreal Thanh Lịch
Twisted Fate Cao Bồi

Twisted Fate Cao Bồi
Ashe Cao Bồi

Ashe Cao Bồi
Fizz Hư Không

Fizz Hư Không
Gragas Hiệp Sĩ Say Rượu

Gragas Hiệp Sĩ Say Rượu
Janna Chúa Tuyết

Janna Chúa Tuyết
Jarvan IV Biệt Kích

Jarvan IV Biệt Kích
Jayce Thanh Lịch

Jayce Thanh Lịch
Kayle Thiết Phán Quan

Kayle Thiết Phán Quan
Kennen Karate

Kennen Karate
Malzahar Lãnh Chúa

Malzahar Lãnh Chúa
Amumu Suýt Hoa Vương

Amumu Suýt Hoa Vương
Master Yi Thợ Săn

Master Yi Thợ Săn
Miss Fortune Mật Vụ

Miss Fortune Mật Vụ
Ngộ Không Bá Nhật

Ngộ Không Bá Nhật
Mordekaiser Kị Sĩ Rồng

Mordekaiser Kị Sĩ Rồng
Mordekaiser Địa Ngục

Mordekaiser Địa Ngục
Morgana Gai Đen

Morgana Gai Đen
Nautilus Vực Thẳm

Nautilus Vực Thẳm
Nautilus Tàu Ngầm

Nautilus Tàu Ngầm
Brolaf

Brolaf
Pantheon Tàn Nhẫn

Pantheon Tàn Nhẫn
Renekton Thời Tiền Sử

Renekton Thời Tiền Sử
Rumble Bên Bờ Hồ

Rumble Bên Bờ Hồ
Shen Băng Giá

Shen Băng Giá
Shen Hoàng Kim Giáp

Shen Hoàng Kim Giáp
Shenmurai

Shenmurai
Shyvana Vảy Sắt

Shyvana Vảy Sắt
Singed Công Nghệ

Singed Công Nghệ
Sion Man Di

Sion Man Di
Sion Tiều Phu

Sion Tiều Phu
Soraka Khuê Nữ

Soraka Khuê Nữ
Swain Bạo Chúa

Swain Bạo Chúa
Taric Huyết Ngọc

Taric Huyết Ngọc
Tristana Cướp Biển

Tristana Cướp Biển
Udyr Đai Đen

Udyr Đai Đen
VelKoz Hồ Quang
Volibear Đô Vật Sấm Sét

Volibear Đô Vật Sấm Sét
Warwick Bà Ngoại

Warwick Bà Ngoại
Ziggs Bác Học Điên

Ziggs Bác Học Điên
Annie Nghịch Đảo

Annie Nghịch Đảo
Ashe Nữ Hoàng

Ashe Nữ Hoàng
Ashe Thạch Anh

Ashe Thạch Anh
Caitlyn Thợ Săn

Caitlyn Thợ Săn
ChoGath Thời Tiền Sử

Darius Hoang Dã Đại Vương

Darius Hoang Dã Đại Vương
Mun Đô Vật

Mun Đô Vật
Karthus Hoàng Tử Tai Ương

Karthus Hoàng Tử Tai Ương
Twitch Trung Cổ

Twitch Trung Cổ
Volibear Dị Giáo Ác Thần

Volibear Dị Giáo Ác Thần',
N'Sói Đồ Tể Sa Mạc 3*
Fuwa Thần Tài 3*

Fuwa Thần Tài 3*
QiQi Đơn Ca 3*

QiQi Đơn Ca 3*
Hiệp Sĩ Cú Thiên Hà 3*

Hiệp Sĩ Cú Thiên Hà 3*
Ossia Nữ Hoàng Nhạc Pop 3*

Ossia Nữ Hoàng Nhạc Pop 3*
QiQi Phá Cách 3*

QiQi Phá Cách 3*
Choncc Thổ Thần 3*

Choncc Thổ Thần 3*
Tiên Linh Linh Đại Vinh Quang 1*

Tiên Linh Linh Đại Vinh Quang 1*
Quái Sừng Vinh Quang 1*

Quái Sừng Vinh Quang 1*
Hồn Ma Vinh Quang 1*

Hồn Ma Vinh Quang 1*
Tiên Linh Linh Vinh Quang 1*

Tiên Linh Linh Vinh Quang 1*
Hộ Vệ Đại Vinh Quang  1*

Hộ Vệ Đại Vinh Quang 1*
Hồn Ma Đại Vinh Quang 1*

Hồn Ma Đại Vinh Quang 1*
Hộ Vệ Vinh Quang  1*

Hộ Vệ Vinh Quang 1*
Kỳ Nhông Công Nghệ 1*

Kỳ Nhông Công Nghệ 1*
Hồn Ma Lửa 2*

Hồn Ma Lửa 2*
Hồn Ma Lửa 1*

Hồn Ma Lửa 1*
Sói Đồ Tể Sa Mạc  2*

Sói Đồ Tể Sa Mạc 2*
Sói Đồ Tể Sa Mạc  1*

Sói Đồ Tể Sa Mạc 1*
Choncc Ngưu Ma Vương 1*

Choncc Ngưu Ma Vương 1*
Choncc Thổ Thần 1*

Choncc Thổ Thần 1*
Choncc Thổ Thần 2*

Choncc Thổ Thần 2*
Choncc Dung Nham 1*

Choncc Dung Nham 1*
Choncc Đại Dương 1*

Choncc Đại Dương 1*
Ao Shin Ngàn Tuổi 1*

Ao Shin Ngàn Tuổi 1*
Thần Lộc Kẹo Ngọt 1*

Thần Lộc Kẹo Ngọt 1*
Kỳ Lân K/DA POP/STARS 1*

Kỳ Lân K/DA POP/STARS 1*
Bạch Tuộc Trái Cây 1*

Bạch Tuộc Trái Cây 1*
Bạch Tuộc Du Hành 1*

Bạch Tuộc Du Hành 1*
Hiệp Sĩ Cú Thiên Hà 1*

Hiệp Sĩ Cú Thiên Hà 1*
Hiệp Sĩ Cú Thiên Hà 2*

Hiệp Sĩ Cú Thiên Hà 2*
Cá Voi Cổ Đại 1*

Cá Voi Cổ Đại 1*
Bé Bọ Sa Mạc 2*

Bé Bọ Sa Mạc 2*
Bé Bọ Sa Mạc 1*

Bé Bọ Sa Mạc 1*
Bé Bọ Vò Vẽ 1*

Bé Bọ Vò Vẽ 1*
Gà Máy Sương Đen 1*

Gà Máy Sương Đen 1*
Gà Máy Kháng Ma 1*

Gà Máy Kháng Ma 1*
Người Đá Sa Mạc 1*

Người Đá Sa Mạc 1*
Melisma Nữ Hoàng Nhạc Pop 1*

Melisma Nữ Hoàng Nhạc Pop 1*
DJ Melisma 2*

DJ Melisma 2*
Melisma Phá Cách 1*

Melisma Phá Cách 1*
DJ Melisma 1*

DJ Melisma 1*
Melisma Nữ Hoàng Nhạc Pop 2*

Melisma Nữ Hoàng Nhạc Pop 2*
Ossia Đơn Ca 1*

Ossia Đơn Ca 1*
Ossia Nữ Hoàng Nhạc Pop 1*

Ossia Nữ Hoàng Nhạc Pop 1*
Ossia Nữ Hoàng Nhạc Pop 2*
Ossia Thần Đồng 1*
QiQi Thần Đồng 1*
DJ QiQi 1*
QiQi Phá Cách 2*
DJ QiQi 2*
QiQi Nữ Hoàng Bass 2*
QiQi Đơn Ca 2*
QiQi Phá Cách 1*
QiQi Đơn Ca 1*
QiQi Nữ Hoàng Bass 1*
Dango Bánh Quy Gừng 1*
Fuwa Pháo Hoa 1*
Fuwa Thần Tài 2*
Fuwa Thần Tài 1*
Fuwa Crush 1*
Fuwa 1*
Rùa Mê Hoặc 1*
Cáo Tiên U Hồn 1*
Hộ Vệ Hắc Ngọc 1*
Hiệp Sĩ Cánh Cụt Chíp Chíp 1*
Hiệp Sĩ Cánh Cụt Siêu Cay 1*
Chuột Chũi Hỗn Loạn 1*
Chuột Chũi Chiến Trường 1*
Tinh Linh Cổ Ngữ 1*
Tinh Linh Hạt Giống 1*
Tinh Linh Hoa Đào 1*
Tinh Linh Bánh Sinh Nhật 1*
Cánh Bạc Bình Minh 2*
Cánh Bạc Bình Minh 1*
Cánh Bạc Nhiệt Đới 1*
Quái Sừng Ngân Giác 1*
Quái Sừng Ngân Giác 2*
Shisa Hắc Hóa 1*
Shisa 1*
Thủy Thần Ngọc Đế 1*',
'imgproduct/acc130909/img1.jpg','imgproduct/acc130909/img2.jpg','imgproduct/acc130909/img3.jpg','imgproduct/acc130909/img4.jpg','imgproduct/acc130909/img5.jpg','','',''),
(2,N'Xin Zhao Giác Đấu',N'','imgproduct/acc2/1.jpg','imgproduct/acc2/2.jpg','imgproduct/acc2/3.jpg','','','','',''),

(62560,N'Udyr Tứ Linh Vệ Hồn
Jinx Pháo Hoa

Jinx Pháo Hoa
Tristana Luyện Rồng

Tristana Luyện Rồng
Jax Ngư Ông

Jax Ngư Ông
ChoGath Cỗ Máy Hủy Diệt
Tryndamere Quỷ Kiếm

Tryndamere Quỷ Kiếm
Lux Vệ Binh Pyjama

Lux Vệ Binh Pyjama
K/DA Akali

K/DA Akali
Annie Siêu Nhân Thiên Hà

Annie Siêu Nhân Thiên Hà
Zed Lôi Kiếm

Zed Lôi Kiếm
Fiddlesticks Cận Vệ Thép

Fiddlesticks Cận Vệ Thép
Santa Gragas

Santa Gragas
Ezreal Thanh Lịch

Ezreal Thanh Lịch
Twisted Fate Cao Bồi

Twisted Fate Cao Bồi
Katarina Chỉ Huy

Katarina Chỉ Huy
Samurai Yi

Samurai Yi
Sion Chiến Thần

Sion Chiến Thần
Soraka Rừng Xanh

Soraka Rừng Xanh
Tryndamere Thổ Nhĩ Kỳ

Tryndamere Thổ Nhĩ Kỳ
Twisted Fate Trọng Tài

Twisted Fate Trọng Tài
Veigar Pháp Sư

Veigar Pháp Sư
Veigar Quỷ Lùn

Veigar Quỷ Lùn
Nam Tước Von Veigar

Nam Tước Von Veigar
Veigar Siêu Xấu Xa

Veigar Siêu Xấu Xa
Sĩ Quan Vi

Sĩ Quan Vi
Warwick Sói Lãnh Nguyên

Warwick Sói Lãnh Nguyên
Annie Lửa Băng

Annie Lửa Băng
MunĐÔ

MunĐÔ
Ryze Xác Sống

Ryze Xác Sống
Twitch Trung Cổ

Twitch Trung Cổ
Warwick Xám

Warwick Xám
Annie Sinh Nhật

Annie Sinh Nhật',
N'Hồn Ma Quần Đảo Bóng Đêm 1*
Tinh Linh Cổ Ngữ 1*',
'imgproduct/acc62560/1.jpg','imgproduct/acc62560/2.jpg','imgproduct/acc62560/3.jpg','imgproduct/acc62560/4.jpg','','','',''),
(89719,
N'Hecarim Thánh Kị Sĩ
DJ Sona

DJ Sona
Zed Quán Quân

Zed Quán Quân
Lucian Cao Bồi

Lucian Cao Bồi
Miss Fortune Nữ Thần Không Gian

Miss Fortune Nữ Thần Không Gian
Lucian Vinh Quang

Lucian Vinh Quang
Blitzcrank Vinh Quang

Blitzcrank Vinh Quang
Aatrox Vinh Quang

Aatrox Vinh Quang
Kindred Lang Dương Vô Thường

Kindred Lang Dương Vô Thường
SIÊU PHẨM: Akali

SIÊU PHẨM: Akali
Master Yi Thiên Kiếm

Master Yi Thiên Kiếm
Soraka Hội Chuối Cả Nải

Soraka Hội Chuối Cả Nải
Ahri Giả Lập

Ahri Giả Lập
Thresh Hắc Tinh

Thresh Hắc Tinh
Varus Hắc Tinh

Varus Hắc Tinh
Xayah Vệ Binh Tinh Tú

Xayah Vệ Binh Tinh Tú
Shen Hỏa Ngục

Shen Hỏa Ngục
Alistar Địa Ngục

Alistar Địa Ngục
Jinx Siêu Quậy Không Gian

Jinx Siêu Quậy Không Gian
LeBlanc Siêu Máy Tính

LeBlanc Siêu Máy Tính
SSW Thresh

SSW Thresh
SSG Gnar

SSG Gnar
TPA Nunu & Willump

TPA Nunu & Willump
Tristana Biệt Đội Omega

Tristana Biệt Đội Omega
Pentakill Mordekaiser

Pentakill Mordekaiser
Morgana Nguyệt Hồn

Morgana Nguyệt Hồn
Lux Nữ Thần Vũ Trụ

Lux Nữ Thần Vũ Trụ
Leona Nhật Thực

Leona Nhật Thực
Udyr Sứ Giả Long Thần

Udyr Sứ Giả Long Thần
Irelia Thánh Kiếm

Irelia Thánh Kiếm
Kindred Lửa Bóng Tối

Kindred Lửa Bóng Tối
Poppy Kẹo Mút

Poppy Kẹo Mút
Singed Ngày Tuyết Rơi

Singed Ngày Tuyết Rơi
Fizz Hư Không

Fizz Hư Không
Garen Biệt Kích

Garen Biệt Kích
Kayle Thiết Phán Quan

Kayle Thiết Phán Quan
Nidalee Người Hầu

Nidalee Người Hầu
Nunu & Willump Công Xưởng

Nunu & Willump Công Xưởng
Rammus Freljord

Rammus Freljord
Rammus Giả Kim

Rammus Giả Kim
Singed Công Nghệ

Singed Công Nghệ
Teemo Hướng Đạo Sinh

Teemo Hướng Đạo Sinh
Tristana Cướp Biển

Tristana Cướp Biển
Chúa Tể Vladimir

Chúa Tể Vladimir
Xin Zhao Hoàng Gia

Xin Zhao Hoàng Gia
Annie Gô-tích

Annie Gô-tích
Caitlyn Du Kích

Caitlyn Du Kích
Volibear Dị Giáo Ác Thần

Volibear Dị Giáo Ác Thần
Annie Sinh Nhật

Annie Sinh Nhật',
N'Cánh Bạc Demacia 1*
Quái Sừng Tim Sư Tử 1*',
'imgproduct/89719/1.jpg','imgproduct/89719/2.jpg','imgproduct/89719/3.jpg','imgproduct/89719/4.jpg','','','',''),
(111923,
N'',
N'',
'imgproduct/111923/1.jpg','imgproduct/111923/2.jpg','imgproduct/111923/3.jpg','','','','',''),
(112088,
'',
'',
'imgproduct/112088/1.jpg','imgproduct/112088/2.jpg','imgproduct/112088/3.jpg','','','','',''),
(112213,
N'Ashe Quán Quân
Miss Fortune Nữ Thần Không Gian

Miss Fortune Nữ Thần Không Gian
Sivir Vinh Quang

Sivir Vinh Quang
Maokai Vinh Quang

Maokai Vinh Quang
Graves Vinh Quang

Graves Vinh Quang
Aatrox Vinh Quang

Aatrox Vinh Quang
Nidalee Thách Đấu

Nidalee Thách Đấu
Amumu Vancouver

Amumu Vancouver
Twitch Vua Xứ Tuyết

Twitch Vua Xứ Tuyết
SIÊU PHẨM: Zed

SIÊU PHẨM: Zed
SIÊU PHẨM: Yasuo

SIÊU PHẨM: Yasuo
Master Yi Thiên Kiếm

Master Yi Thiên Kiếm
Tryndamere Quỷ Kiếm

Tryndamere Quỷ Kiếm
Soraka Hội Chuối Cả Nải

Soraka Hội Chuối Cả Nải
Nami Lốt Urf

Nami Lốt Urf
Lee Sin Ma Sứ

Lee Sin Ma Sứ
Blitzcrank Trùm Phụ

Blitzcrank Trùm Phụ
Ahri Vệ Binh Tinh Tú

Ahri Vệ Binh Tinh Tú
Caitlyn Tiệc Bể Bơi

Caitlyn Tiệc Bể Bơi
Leona Tiệc Bể Bơi

Leona Tiệc Bể Bơi
Ashe Mũi Tên Tình Ái

Ashe Mũi Tên Tình Ái
Nidalee Siêu Nhân Thiên Hà

Nidalee Siêu Nhân Thiên Hà
Alistar Địa Ngục

Alistar Địa Ngục
SSW Twitch

SSW Twitch
Elise Huyết Nguyệt

Elise Huyết Nguyệt
Shen Huyết Nguyệt

Shen Huyết Nguyệt
Thresh Huyết Nguyệt

Thresh Huyết Nguyệt
Braum Đồ Long

Braum Đồ Long
Pantheon Đồ Long

Pantheon Đồ Long
Viktor Hội Tử Thần

Viktor Hội Tử Thần
Janna Tiên Kiếm

Janna Tiên Kiếm
Jinx Yêu Tinh Giáng Sinh

Jinx Yêu Tinh Giáng Sinh
Leona Nguyệt Thực

Leona Nguyệt Thực
Twitch Thế Giới Ngầm

Twitch Thế Giới Ngầm
Amumu Tiệc Bất Ngờ

Amumu Tiệc Bất Ngờ
Ekko Bí Ngô

Ekko Bí Ngô
Sejuani Kỵ Sĩ Poro

Sejuani Kỵ Sĩ Poro
Ezreal Át Bích

Ezreal Át Bích
Renekton Cao Bồi

Renekton Cao Bồi
Garen Hiệp Sĩ Đen

Garen Hiệp Sĩ Đen
Irelia Phi Công

Irelia Phi Công
Janna Giông Tố

Janna Giông Tố
Janna Công Nghệ

Janna Công Nghệ
Karma Truyền Thống

Karma Truyền Thống
Katarina Chỉ Huy

Katarina Chỉ Huy
Kayle Phán Quyết

Kayle Phán Quyết
Leona Chiến Thần

Leona Chiến Thần
Lux Hoàng Tộc

Lux Hoàng Tộc
Morgana Lưu Đày

Morgana Lưu Đày
Morgana Người Máy

Morgana Người Máy
Nidalee Người Hầu

Nidalee Người Hầu
Nidalee Pha-ra-ông

Nidalee Pha-ra-ông
Nunu & Willump Mẫu Giáo

Nunu & Willump Mẫu Giáo
Rammus Giả Kim

Rammus Giả Kim
Renekton Chiến Tranh Cổ Ngữ

Renekton Chiến Tranh Cổ Ngữ
Riven Đặc Nhiệm Đỏ

Riven Đặc Nhiệm Đỏ
Chú Ryze

Chú Ryze
Shen Hoàng Kim Giáp

Shen Hoàng Kim Giáp
Singed Bác Học Điên

Singed Bác Học Điên
Sivir Thợ Săn

Sivir Thợ Săn
Sona Đêm An Lành

Sona Đêm An Lành
Sona Tiên Nữ

Sona Tiên Nữ
Sona Cổ Cầm

Sona Cổ Cầm
Tristana Cướp Biển

Tristana Cướp Biển
Tryndamere Thợ Săn Quái Thú

Tryndamere Thợ Săn Quái Thú
Urgot Cua Khổng Lồ

Urgot Cua Khổng Lồ
Veigar Siêu Xấu Xa

Veigar Siêu Xấu Xa
Annie Hoa Hậu

Annie Hoa Hậu
Ashe Freljord

Ashe Freljord
Corki Tay Chơi

Corki Tay Chơi
MunĐÔ

MunĐÔ
Riot Kayle

Riot Kayle
Twitch Trung Cổ

Twitch Trung Cổ
Vua Rammus

Vua Rammus
Volibear Dị Giáo Ác Thần

Volibear Dị Giáo Ác Thần
Annie Sinh Nhật

Annie Sinh Nhật',
N'Quái Sừng Vinh Quang 1*
Hộ Vệ Vinh Quang  1*

Hộ Vệ Vinh Quang 1*
Hộ Vệ Đại Vinh Quang  1*

Hộ Vệ Đại Vinh Quang 1*
Cánh Bạc Vinh Quang 1*

Cánh Bạc Vinh Quang 1*
Bạch Tuộc Hiểm Họa Không Gian 1*

Bạch Tuộc Hiểm Họa Không Gian 1*
Cá Voi Vũ Trụ 2*

Cá Voi Vũ Trụ 2*
Cá Voi Vũ Trụ 1*

Cá Voi Vũ Trụ 1*
QiQi Đơn Ca 1*

QiQi Đơn Ca 1*
QiQi Phá Cách 1*

QiQi Phá Cách 1*
Cáo Tiên Huyền Ảo 1*

Cáo Tiên Huyền Ảo 1*
Hiệp Sĩ Cánh Cụt Hoa Anh Đào 1*

Hiệp Sĩ Cánh Cụt Hoa Anh Đào 1*
Hiệp Sĩ Cánh Cụt Chân Băng 1*

Hiệp Sĩ Cánh Cụt Chân Băng 1*
Hiệp Sĩ Cánh Cụt Chíp Chíp 1*

Hiệp Sĩ Cánh Cụt Chíp Chíp 1*
Tinh Linh Hạt Giống 1*

Tinh Linh Hạt Giống 1*
Cánh Bạc Nhiệt Đới 1*

Cánh Bạc Nhiệt Đới 1*
Quái Sừng Vỏ Liễu 1*

Quái Sừng Vỏ Liễu 1*
Shisa Người Tí Hon Xanh 1*

Shisa Người Tí Hon Xanh 1*
Shisa Giả Hành Tôn 1*

Shisa Giả Hành Tôn 1*',
'imgproduct/112213/1.jpg','imgproduct/112213/2.jpg','imgproduct/112213/3.jpg','imgproduct/112213/4.jpg','','','',''),
(112214,
N'Jinx Pháo Hoa
Sivir Vinh Quang

Sivir Vinh Quang
Maokai Vinh Quang

Maokai Vinh Quang
Aatrox Vinh Quang

Aatrox Vinh Quang
Orianna Vinh Quang

Orianna Vinh Quang
Graves Vinh Quang

Graves Vinh Quang
Varus Chinh Phục

Varus Chinh Phục
Trọng Tài Katarina

Trọng Tài Katarina
SIÊU PHẨM: Yasuo

SIÊU PHẨM: Yasuo
SIÊU PHẨM: Yi

SIÊU PHẨM: Yi
SIÊU PHẨM: Katarina

SIÊU PHẨM: Katarina
Soraka Hội Chuối Cả Nải

Soraka Hội Chuối Cả Nải
Nasus Đại Công Tước

Nasus Đại Công Tước
Ezreal Giả Lập

Ezreal Giả Lập
Lux Vệ Binh Tinh Tú

Lux Vệ Binh Tinh Tú
Leona Tiệc Bể Bơi

Leona Tiệc Bể Bơi
Ashe Mũi Tên Tình Ái

Ashe Mũi Tên Tình Ái
Vaynelentine

Vaynelentine
Fizz Siêu Nhân Thiên Hà

Fizz Siêu Nhân Thiên Hà
SKT T1 Lee Sin

SKT T1 Lee Sin
SKT T1 Zyra

SKT T1 Zyra
Teemo Phi Hành Gia

Teemo Phi Hành Gia
Vayne Đồ Long

Vayne Đồ Long
Nocturne Bất Diệt

Nocturne Bất Diệt
Lux Quân Đoàn Thép

Lux Quân Đoàn Thép
Jinx Thế Giới Ngầm

Jinx Thế Giới Ngầm
Amumu Tiệc Bất Ngờ

Amumu Tiệc Bất Ngờ
Ahri Bóng Đêm

Ahri Bóng Đêm
Twisted Fate Âm Phủ

Twisted Fate Âm Phủ
Alistar Cao Bồi

Alistar Cao Bồi
Janna Chúa Tuyết

Janna Chúa Tuyết
Jarvan IV Biệt Kích

Jarvan IV Biệt Kích
Karma Nữ Thần Mặt Trời

Karma Nữ Thần Mặt Trời
Karma Hoa Anh Đào

Karma Hoa Anh Đào
Karma Truyền Thống

Karma Truyền Thống
Katarina Cướp Biển

Katarina Cướp Biển
LeBlanc Độc Ác

LeBlanc Độc Ác
Leona Hội Iron Solari

Leona Hội Iron Solari
Lulu Độc Ác

Lulu Độc Ác
Lux Hoàng Tộc

Lux Hoàng Tộc
Miss Fortune Mật Vụ

Miss Fortune Mật Vụ
Morgana Oan Hồn Cô Dâu

Morgana Oan Hồn Cô Dâu
Nami Thủy Thần

Nami Thủy Thần
Nami Biển Sâu

Nami Biển Sâu
Nasus Ngân Hà

Nasus Ngân Hà
Nidalee Người Hầu

Nidalee Người Hầu
Orianna Thép Gai

Orianna Thép Gai
Amumu Tự Kỉ

Amumu Tự Kỉ
Rammus Freljord

Rammus Freljord
Rammus Vệ Binh Sa Mạc

Rammus Vệ Binh Sa Mạc
Sivir Công Chúa Chiến Binh

Sivir Công Chúa Chiến Binh
Sivir Thợ Săn

Sivir Thợ Săn
Sona Tiên Nữ

Sona Tiên Nữ
Syndra Đầm Rô

Syndra Đầm Rô
Teemo Gấu Trúc

Teemo Gấu Trúc
Tristana Lính Cứu Hỏa

Tristana Lính Cứu Hỏa
Tristana Hỏa Tiễn

Tristana Hỏa Tiễn
Trundle Bãi Rác

Trundle Bãi Rác
Twisted Fate Trọng Tài

Twisted Fate Trọng Tài
Veigar Pháp Sư

Veigar Pháp Sư
Warwick Linh Cẩu

Warwick Linh Cẩu
Xerath Hủy Diệt

Xerath Hủy Diệt
Annie Hoa Hậu

Annie Hoa Hậu
Annie Gấu Trúc

Annie Gấu Trúc
Brand Lõi Băng

Brand Lõi Băng
Caitlyn Du Kích

Caitlyn Du Kích
Sĩ Quan Caitlyn

Sĩ Quan Caitlyn
Draven Thợ Săn Quái Thú

Draven Thợ Săn Quái Thú
Ekko Bão Cát

Ekko Bão Cát
Riot Kayle

Riot Kayle
Vua Rammus

Vua Rammus',
'',
'imgproduct/112214/1.jpg','imgproduct/112214/2.jpg','imgproduct/112214/3.jpg','','','','',''),


(112241,
N'Varus Chinh Phục
Soraka Mùa Đông Kỳ Diệu

Soraka Mùa Đông Kỳ Diệu
SIÊU PHẨM: Leona

SIÊU PHẨM: Leona
ChoGath Hồ Lốc-nét
BeeMaw
Soraka Hội Chuối Cả Nải

Soraka Hội Chuối Cả Nải
Lee Sin Ma Sứ

Lee Sin Ma Sứ
K/DA Evelynn

K/DA Evelynn
Veigar Trùm Cuối

Veigar Trùm Cuối
Poppy Vệ Binh Tinh Tú

Poppy Vệ Binh Tinh Tú
Jinx Vệ Binh Tinh tú

Jinx Vệ Binh Tinh tú
Ezreal Vệ Binh Tinh Tú

Ezreal Vệ Binh Tinh Tú
Lux Vệ Binh Tinh Tú

Lux Vệ Binh Tinh Tú
Zac Tiệc Bể Bơi

Zac Tiệc Bể Bơi
Gangplank Tiệc Bể Bơi

Gangplank Tiệc Bể Bơi
Xayah Uyên Ương

Xayah Uyên Ương
Lucian Xạ Thủ Tình Ái

Lucian Xạ Thủ Tình Ái
Orianna Quả Cầu Tình Ái

Orianna Quả Cầu Tình Ái
Lux Học Viện Chiến Binh

Lux Học Viện Chiến Binh
Ngộ Không Học Viện Chiến Binh

Ngộ Không Học Viện Chiến Binh
Ziggs Kĩ Sư Không Gian

Ziggs Kĩ Sư Không Gian
SSG Xayah

SSG Xayah
Fnatic Gragas

Fnatic Gragas
Pyke Huyết Nguyệt

Pyke Huyết Nguyệt
KhaZix Máy Móc
Olaf Thái Thịt

Olaf Thái Thịt
Leona Xúc Xích

Leona Xúc Xích
Zed Lôi Kiếm

Zed Lôi Kiếm
Darius Siêu Sao Úp Rổ

Darius Siêu Sao Úp Rổ
Pantheon Chiến Binh Thép

Pantheon Chiến Binh Thép
Diana Hắc Thủy

Diana Hắc Thủy
Pantheon Thợ Săn Xác Sống

Pantheon Thợ Săn Xác Sống
Evelynn Cạy Két

Evelynn Cạy Két
Katarina Cô Nàng Tuần Lộc

Katarina Cô Nàng Tuần Lộc
Heimerdinger Người Tuyết

Heimerdinger Người Tuyết
Miss Fortune Nữ Cao Bồi

Miss Fortune Nữ Cao Bồi
Fiddlesticks Cướp Biển

Fiddlesticks Cướp Biển
Garen Huyết Kiếm

Garen Huyết Kiếm
Garen Đô Đốc Độc Đoán

Garen Đô Đốc Độc Đoán
Graves Đánh Thuê

Graves Đánh Thuê
Irelia Sát Thủ

Irelia Sát Thủ
Irelia Băng Kiếm

Irelia Băng Kiếm
Janna Giông Tố

Janna Giông Tố
Janna Chúa Tuyết

Janna Chúa Tuyết
Jax Du Côn

Jax Du Côn
Karma Hội Sen Hồng

Karma Hội Sen Hồng
Kassadin Sứ Giả

Kassadin Sứ Giả
LeBlanc Độc Ác

LeBlanc Độc Ác
Lee Tiểu Long

Lee Tiểu Long
Lux Hoàng Tộc

Lux Hoàng Tộc
Master Yi Sát Thủ

Master Yi Sát Thủ
Master Yi Thợ Săn

Master Yi Thợ Săn
Mordekaiser Địa Ngục

Mordekaiser Địa Ngục
Poppy Noxus

Poppy Noxus
Rammus Nhôm

Rammus Nhôm
Riven Chuộc Tội

Riven Chuộc Tội
Spectacular Sivir

Spectacular Sivir
Sona Đêm An Lành

Sona Đêm An Lành
Soraka Rừng Xanh

Soraka Rừng Xanh
Taric Hồng Ngọc

Taric Hồng Ngọc
Trundle Bóng Chày

Trundle Bóng Chày
Twisted Fate Ảo Thuật Sư

Twisted Fate Ảo Thuật Sư
Twitch Du Côn

Twitch Du Côn
Volibear Đô Vật Sấm Sét

Volibear Đô Vật Sấm Sét
Warwick Bà Ngoại

Warwick Bà Ngoại
Xerath Hủy Diệt

Xerath Hủy Diệt
Thiếu Tá Ziggs

Thiếu Tá Ziggs
Anivia Công Nghệ

Anivia Công Nghệ
Annie Quàng Khăn Đỏ

Annie Quàng Khăn Đỏ
Ashe Thạch Anh

Ashe Thạch Anh
Diana Chiến Thần Bóng Tối

Diana Chiến Thần Bóng Tối
Dr. Mundo Độc Dược

Dr. Mundo Độc Dược
Volibear Dị Giáo Ác Thần

Volibear Dị Giáo Ác Thần
Annie Sinh Nhật

Annie Sinh Nhật',
N'Hồn Ma Vật Chất Tối 1*
Hồn Ma Lửa 1*

Hồn Ma Lửa 1*
Tiểu Tiên Cá Thạch Ngọt  2*

Tiểu Tiên Cá Thạch Ngọt 2*
Tiểu Tiên Cá Thạch Ngọt  1*

Tiểu Tiên Cá Thạch Ngọt 1*
Chuột Nhanh Nhạy Tiên Tộc  1*

Chuột Nhanh Nhạy Tiên Tộc 1*
Choncc Bình Thiên Đại Thánh 1*

Choncc Bình Thiên Đại Thánh 1*
Bé Bọ Vò Vẽ 1*

Bé Bọ Vò Vẽ 1*
Người Đá Chân Băng 1*

Người Đá Chân Băng 1*
Người Đá Quân Đoàn 1*

Người Đá Quân Đoàn 1*
Melisma Nữ Hoàng Nhạc Pop 1*

Melisma Nữ Hoàng Nhạc Pop 1*
Melisma Nữ Hoàng Nhạc Pop 2*

Melisma Nữ Hoàng Nhạc Pop 2*
Fuwa Nguyện Ước 1*

Fuwa Nguyện Ước 1*
Rùa Ngọc Thạch 1*

Rùa Ngọc Thạch 1*
Rùa Thủy Triều 1*

Rùa Thủy Triều 1*
Cáo Tiên Nguyệt Dạ 1*

Cáo Tiên Nguyệt Dạ 1*
Hộ Vệ Đá Quý 1*

Hộ Vệ Đá Quý 1*
Hiệp Sĩ Cánh Cụt Chúa Quạ 1*

Hiệp Sĩ Cánh Cụt Chúa Quạ 1*
Hiệp Sĩ Cánh Cụt Pengu 1*

Hiệp Sĩ Cánh Cụt Pengu 1*
Chuột Chũi Mũi Mềm 1*

Chuột Chũi Mũi Mềm 1*
Tinh Linh Sương Đen 1*

Tinh Linh Sương Đen 1*
Tinh Linh Bánh Sinh Nhật 1*

Tinh Linh Bánh Sinh Nhật 1*
Cánh Bạc Bình Minh 1*

Cánh Bạc Bình Minh 1*
Quái Sừng Lãnh Nguyên 1*

Quái Sừng Lãnh Nguyên 1*
Shisa Hắc Hóa 1*

Shisa Hắc Hóa 1*
Shisa Người Tí Hon Xanh 1*

Shisa Người Tí Hon Xanh 1*',
'imgproduct/112241/1.jpg','imgproduct/112241/2.jpg','imgproduct/112241/3.jpg','','','','',''),

(112548,
N'Jax Chinh Phục
Shyvana Đại Suy Vong

Shyvana Đại Suy Vong
Ryze Quán Quân

Ryze Quán Quân
KhaZix Quán Quân
Ashe Quán Quân

Ashe Quán Quân
Garen Sư Vương

Garen Sư Vương
Miss Fortune Nữ Thần Không Gian

Miss Fortune Nữ Thần Không Gian
Renekton Đồ Chơi

Renekton Đồ Chơi
Teemo Tiểu Quỷ

Teemo Tiểu Quỷ
Kindred Lang Dương Vô Thường

Kindred Lang Dương Vô Thường
Thresh Cao Bồi

Thresh Cao Bồi
Fiora Vũ Khí Tối Thượng

Fiora Vũ Khí Tối Thượng
Caitlyn Vũ Khí Tối Thượng

Caitlyn Vũ Khí Tối Thượng
SIÊU PHẨM: Katarina

SIÊU PHẨM: Katarina
Tristana Luyện Rồng

Tristana Luyện Rồng
ChoGath Hồ Lốc-nét
Kayle Đặc Vụ Siêu Linh

Kayle Đặc Vụ Siêu Linh
Soraka Hội Chuối Cả Nải

Soraka Hội Chuối Cả Nải
Miss Fortune Thế Giới Ngầm

Miss Fortune Thế Giới Ngầm
Soraka Ma Sứ

Soraka Ma Sứ
KaiSa Giả Lập
Xayah Vệ Binh Tinh Tú

Xayah Vệ Binh Tinh Tú
Rakan Vệ Binh Tinh Tú

Rakan Vệ Binh Tinh Tú
Soraka Vệ Binh Tinh Tú

Soraka Vệ Binh Tinh Tú
Leona Học Viện Chiến Binh

Leona Học Viện Chiến Binh
Yuumi Hiệu Trưởng Chiến Binh

Yuumi Hiệu Trưởng Chiến Binh
Kindred Siêu Nhân Thiên Ha

Kindred Siêu Nhân Thiên Ha
Sivir Thợ Săn Không Gian

Sivir Thợ Săn Không Gian
Xin Zhao Toán Cướp Hắc Ám

Xin Zhao Toán Cướp Hắc Ám
Aatrox Huyết Nguyệt

Aatrox Huyết Nguyệt
Diana Đồ Long

Diana Đồ Long
Olaf Đồ Long

Olaf Đồ Long
Rengar Máy Móc

Rengar Máy Móc
Pantheon Nướng Bánh

Pantheon Nướng Bánh
Twitch Biệt Đội Omega

Twitch Biệt Đội Omega
Teemo Biệt Đội Omega

Teemo Biệt Đội Omega
Jax Thần Trượng

Jax Thần Trượng
Kassadin Đạo Tặc Vũ Trụ

Kassadin Đạo Tặc Vũ Trụ
Darius Siêu Sao Úp Rổ

Darius Siêu Sao Úp Rổ
Katarina Hội Tử Thần

Katarina Hội Tử Thần
Jinx Yêu Tinh Giáng Sinh

Jinx Yêu Tinh Giáng Sinh
Fiora Phi Kiếm

Fiora Phi Kiếm
Rengar Ánh Sáng Tối Cao

Rengar Ánh Sáng Tối Cao
Nocturne Bất Diệt

Nocturne Bất Diệt
Diana Hắc Thủy

Diana Hắc Thủy
Bá Tước Kledula

Bá Tước Kledula
Evelynn Dạ Vũ

Evelynn Dạ Vũ
Darius Cao Bồi

Darius Cao Bồi
Fiddlesticks Tà Thần Tái Thế

Fiddlesticks Tà Thần Tái Thế
Jax Giữ Đền

Jax Giữ Đền
Karma Nữ Thần Mặt Trời

Karma Nữ Thần Mặt Trời
Samurai Yi

Samurai Yi
Nasus Ngân Hà

Nasus Ngân Hà
Brolaf

Brolaf
Pantheon Tàn Nhẫn

Pantheon Tàn Nhẫn
Pantheon Perseus

Pantheon Perseus
Rammus Giả Kim

Rammus Giả Kim
Renekton Chiến Tranh Cổ Ngữ

Renekton Chiến Tranh Cổ Ngữ
Udyr Hoang Dã

Udyr Hoang Dã
Volibear Vệ Quân Cổ Ngữ

Volibear Vệ Quân Cổ Ngữ
Warwick Sói Điên

Warwick Sói Điên
Annie Nghịch Đảo

Annie Nghịch Đảo
Aatrox Công Lý

Aatrox Công Lý
Volibear Dị Giáo Ác Thần

Volibear Dị Giáo Ác Thần
Annie Sinh Nhật

Annie Sinh Nhật',
N'Hiệp Sĩ Cú Thiên Hà 3*
Hồn Ma Lửa 1*

Hồn Ma Lửa 1*
Chuột Nhanh Nhạy Nhẫn Giả  1*

Chuột Nhanh Nhạy Nhẫn Giả 1*
Bạch Tuộc Hiểm Họa Không Gian 1*

Bạch Tuộc Hiểm Họa Không Gian 1*
Hiệp Sĩ Cú Thiên Hà 2*

Hiệp Sĩ Cú Thiên Hà 2*
Hiệp Sĩ Cú Darkin 1*

Hiệp Sĩ Cú Darkin 1*
Hiệp Sĩ Cú Bảo Thạch 1*

Hiệp Sĩ Cú Bảo Thạch 1*
Hiệp Sĩ Cú Thiên Hà 1*

Hiệp Sĩ Cú Thiên Hà 1*
Cá Voi Thiên Hà 1*

Cá Voi Thiên Hà 1*
Cá Voi Hiểm Họa Không Gian 1*

Cá Voi Hiểm Họa Không Gian 1*
Bé Bọ Chân Băng 1*

Bé Bọ Chân Băng 1*
Bé Bọ Quân Đoàn 1*

Bé Bọ Quân Đoàn 1*
Gà Máy Hóa Kỹ 1*

Gà Máy Hóa Kỹ 1*
Người Đá Công Nghệ 1*

Người Đá Công Nghệ 1*
Melisma Thần Đồng 1*

Melisma Thần Đồng 1*
Ossia Thần Đồng 1*

Ossia Thần Đồng 1*
Fuwa 1*

Fuwa 1*
Cáo Tiên U Hồn 1*

Cáo Tiên U Hồn 1*
Hộ Vệ Đá Quý 1*

Hộ Vệ Đá Quý 1*
Tinh Linh Bánh Sinh Nhật 1*

Tinh Linh Bánh Sinh Nhật 1*
Cánh Bạc Demacia 1*

Cánh Bạc Demacia 1*',
'imgproduct/112548/1.jpg','imgproduct/112548/2.jpg','imgproduct/112548/3.jpg','','','','',''),

(117143,
N'Ashe Quán Quân
Lee Sin Tuyệt Vô Thần

Lee Sin Tuyệt Vô Thần
Blitzcrank Vinh Quang

Blitzcrank Vinh Quang
Teemo Tiểu Quỷ

Teemo Tiểu Quỷ
Caitlyn Vũ Khí Tối Thượng

Caitlyn Vũ Khí Tối Thượng
Jax Ngư Ông

Jax Ngư Ông
Zoe Vệ Binh Tinh Tú

Zoe Vệ Binh Tinh Tú
Skarner Cỗ Máy Chiến Đấu Alpha

Skarner Cỗ Máy Chiến Đấu Alpha
Pyke Huyết Nguyệt

Pyke Huyết Nguyệt
Veigar Biệt Đội Omega

Veigar Biệt Đội Omega
Ngạo Kiếm Riven

Ngạo Kiếm Riven
Nocturne Bất Diệt

Nocturne Bất Diệt
Poppy Kẹo Mút

Poppy Kẹo Mút
Nocturne Hồn Ma

Nocturne Hồn Ma
Sivir Bão Tuyết

Sivir Bão Tuyết
Garen Huyết Kiếm

Garen Huyết Kiếm
Malphite Cẩm Thạch

Malphite Cẩm Thạch
Samurai Yi

Samurai Yi
Braum Mãnh Hổ Đô Vật

Braum Mãnh Hổ Đô Vật
Quý Ông ChoGath
Darius Vũ Khí Sinh Học

Darius Vũ Khí Sinh Học
Annie Sinh Nhật

Annie Sinh Nhật',
'',
'imgproduct/117143/1.jpg','imgproduct/117143/2.jpg','imgproduct/117143/3.jpg','','','','',''),

(129772,
N'True Damage Senna - Hàng Hiệu
True Damage Yasuo - Hàng Hiệu

True Damage Yasuo - Hàng Hiệu
Fiora Niên Thú Nguyên Đán - Hàng Hiệu

Fiora Niên Thú Nguyên Đán - Hàng Hiệu
Malphite Hắc Tinh - Hàng Hiệu

Malphite Hắc Tinh - Hàng Hiệu
Udyr Tứ Linh Vệ Hồn

Udyr Tứ Linh Vệ Hồn
Lee Sin Nộ Long Cước

Lee Sin Nộ Long Cước
Yuumi Thánh Thả Thính

Yuumi Thánh Thả Thính
Alistar Tân Sửu

Alistar Tân Sửu
Warwick Mậu Tuất

Warwick Mậu Tuất
Ryze Quán Quân

Ryze Quán Quân
Zed Quán Quân

Zed Quán Quân
Brand Hồ Quang

Brand Hồ Quang
Zed Tử Thần Không Gian

Zed Tử Thần Không Gian
Yasuo Ma Kiếm

Yasuo Ma Kiếm
Darius Lang Vương

Darius Lang Vương
Lucian Vinh Quang

Lucian Vinh Quang
Alistar Chinh Phục

Alistar Chinh Phục
Azir Thần Rừng

Azir Thần Rừng
Fizz Tiểu Quỷ

Fizz Tiểu Quỷ
Yi Người Tuyết

Yi Người Tuyết
Blitzcrank Thủ Môn

Blitzcrank Thủ Môn
Kindred Lang Dương Vô Thường

Kindred Lang Dương Vô Thường
Hecarim Cao Bồi

Hecarim Cao Bồi
Urgot Cao Bồi

Urgot Cao Bồi
Diana Nữ Thần Chiến Binh

Diana Nữ Thần Chiến Binh
K/DA ALL OUT KaiSa
K/DA ALL OUT Ahri

K/DA ALL OUT Ahri
Fiora Vũ Khí Tối Thượng

Fiora Vũ Khí Tối Thượng
Riven Vũ Khí Tối Thượng

Riven Vũ Khí Tối Thượng
Twisted Fate Vũ Khí Tối Thượng

Twisted Fate Vũ Khí Tối Thượng
Lucian Vũ Khí Tối Thượng

Lucian Vũ Khí Tối Thượng
Ahri Tiên Hắc Ám

Ahri Tiên Hắc Ám
SIÊU PHẨM: Leona

SIÊU PHẨM: Leona
siêu phẩm jinx

siêu phẩm jinx
SIÊU PHẨM: Fiora

SIÊU PHẨM: Fiora
SIÊU PHẨM: Zed

SIÊU PHẨM: Zed
SIÊU PHẨM: Pyke

SIÊU PHẨM: Pyke
Nasus Địa Ngục

Nasus Địa Ngục
Sion Người Máy Biến Hình

Sion Người Máy Biến Hình
Master Yi Thiên Kiếm

Master Yi Thiên Kiếm
Tryndamere Quỷ Kiếm

Tryndamere Quỷ Kiếm
Arcane Vi

Arcane Vi
Arcane Caitlyn

Arcane Caitlyn
Arcane Jayce

Arcane Jayce
Arcane Jinx

Arcane Jinx
Garen Dân Chơi Demacia

Garen Dân Chơi Demacia
Yasuo Phản Diện

Yasuo Phản Diện
Veigar Phi Hành Gia

Veigar Phi Hành Gia
Pyke Đặc Vụ Siêu Linh

Pyke Đặc Vụ Siêu Linh
Vi Đặc Vụ Siêu Linh

Vi Đặc Vụ Siêu Linh
Zed Đặc Vụ Siêu Linh

Zed Đặc Vụ Siêu Linh
Ezreal Vệ Binh Pyjama

Ezreal Vệ Binh Pyjama
Soraka Hội Chuối Cả Nải

Soraka Hội Chuối Cả Nải
Caitlyn Nguyệt Hồn

Caitlyn Nguyệt Hồn
K/DA Akali

K/DA Akali
K/DA KaiSa
Vladimir Chòm Ba Giang

Vladimir Chòm Ba Giang
Veigar Trùm Cuối

Veigar Trùm Cuối
KaiSa Giả Lập
Corki Giả Lập

Corki Giả Lập
Hecarim Giả Lập

Hecarim Giả Lập
Blitzcrank Trùm Phụ

Blitzcrank Trùm Phụ
Miss Fortune Giả Lập

Miss Fortune Giả Lập
KhaZix Hắc Tinh
Shaco Hắc Tinh

Shaco Hắc Tinh
Ahri Vệ Binh Tinh Tú

Ahri Vệ Binh Tinh Tú
Lee Sin Tiệc Bể Bơi

Lee Sin Tiệc Bể Bơi
Caitlyn Tiệc Bể Bơi

Caitlyn Tiệc Bể Bơi
Sona Tiểu Tình Nhân

Sona Tiểu Tình Nhân
Fiora Kiếm Sĩ Tình Ái

Fiora Kiếm Sĩ Tình Ái
Yuumi Hiệu Trưởng Chiến Binh

Yuumi Hiệu Trưởng Chiến Binh
Ezreal Học Viện Chiến Binh

Ezreal Học Viện Chiến Binh
Katarina Học Viện Chiến Binh

Katarina Học Viện Chiến Binh
Ziggs Kĩ Sư Không Gian

Ziggs Kĩ Sư Không Gian
Karma Tư Tế Không Gian

Karma Tư Tế Không Gian
Twisted Fate Đạo Chích Không Gian

Twisted Fate Đạo Chích Không Gian
Warwick Toán Cướp Hắc Ám

Warwick Toán Cướp Hắc Ám
SKT T1 Zed

SKT T1 Zed
SKT T1 Lee Sin

SKT T1 Lee Sin
SKT T1 Jax

SKT T1 Jax
iG Rakan

iG Rakan
iG Fiora

iG Fiora
SSG Ezreal

SSG Ezreal
Morgana Tiên Hắc Ám

Morgana Tiên Hắc Ám
True Damage Yasuo

True Damage Yasuo
Kalista Huyết Nguyệt

Kalista Huyết Nguyệt
Aatrox Máy Móc

Aatrox Máy Móc
Malphite Máy Móc

Malphite Máy Móc
Zed Lôi Kiếm

Zed Lôi Kiếm
iBlitzcrank

iBlitzcrank
Galio Địa Ngục

Galio Địa Ngục
Zed Hội Tử Thần

Zed Hội Tử Thần
Xin Zhao Triệu Tử Long

Xin Zhao Triệu Tử Long
Siêu Nhân Teemo

Siêu Nhân Teemo
Fiddlesticks Cận Vệ Thép

Fiddlesticks Cận Vệ Thép
Jinx Yêu Tinh Giáng Sinh

Jinx Yêu Tinh Giáng Sinh
Jayce Chiến Binh Ánh Sáng

Jayce Chiến Binh Ánh Sáng
Jayce Kháng Chiến

Jayce Kháng Chiến
Annie ở Xứ Thần Tiên

Annie ở Xứ Thần Tiên
Garen Chiến Binh Sa Mạc

Garen Chiến Binh Sa Mạc
Lee Sin Quyền Thái

Lee Sin Quyền Thái
Irelia Thánh Kiếm

Irelia Thánh Kiếm
Jarvan IV Lữ Bố

Jarvan IV Lữ Bố
Brand Hỏa Linh

Brand Hỏa Linh
Fiora Phi Kiếm

Fiora Phi Kiếm
Pantheon Thợ Săn Xác Sống

Pantheon Thợ Săn Xác Sống
Twisted Fate Âm Phủ

Twisted Fate Âm Phủ
Brand Thây Ma

Brand Thây Ma
Jhin Cao Bồi

Jhin Cao Bồi
Ezreal Át Bích

Ezreal Át Bích
Ashe Cao Bồi

Ashe Cao Bồi
Fiora Ngự Lâm Quân

Fiora Ngự Lâm Quân
Fiora Quạ Đêm

Fiora Quạ Đêm
Gangplank Ba Tư Đại Đế

Gangplank Ba Tư Đại Đế
Janna Chúa Tuyết

Janna Chúa Tuyết
Jax Giác Đấu

Jax Giác Đấu
Jayce Thanh Lịch

Jayce Thanh Lịch
Katarina Cướp Biển

Katarina Cướp Biển
Lee Sin Thầy Dòng

Lee Sin Thầy Dòng
Lulu Luyện Rồng

Lulu Luyện Rồng
Lux Phù Thủy

Lux Phù Thủy
Amumu Suýt Hoa Vương

Amumu Suýt Hoa Vương
Chúa Tể Mordekaiser

Chúa Tể Mordekaiser
Nunu & Willump Mẫu Giáo

Nunu & Willump Mẫu Giáo
Chú Ryze

Chú Ryze
Shaco Tâm Thần

Shaco Tâm Thần
Singed Công Nghệ

Singed Công Nghệ
Sion Tiều Phu

Sion Tiều Phu
Twisted Fate Thời Niên Thiếu

Twisted Fate Thời Niên Thiếu
Udyr Đai Đen

Udyr Đai Đen
Chúa Tể Vladimir

Chúa Tể Vladimir
Warwick Sói Lãnh Nguyên

Warwick Sói Lãnh Nguyên
Warwick Nanh Lửa

Warwick Nanh Lửa
Xin Zhao Giác Đấu

Xin Zhao Giác Đấu
Lucian Tiền Đạo

Lucian Tiền Đạo
Draven Anh Già Tuyết

Draven Anh Già Tuyết
Azir Đinh Dậu

Azir Đinh Dậu
Amumu Hiệp Sĩ

Amumu Hiệp Sĩ
Annie Hoa Hậu

Annie Hoa Hậu
Annie Nghịch Đảo

Annie Nghịch Đảo
Ashe Freljord

Ashe Freljord
Ashe Thạch Anh

Ashe Thạch Anh
Brand Lõi Băng

Brand Lõi Băng
Amumu Người Máy U Sầu

Amumu Người Máy U Sầu
Volibear Dị Giáo Ác Thần

Volibear Dị Giáo Ác Thần
Annie Sinh Nhật

Annie Sinh Nhật',
N'Fuwa Nguyện Ước 3*
Cáo Tiên Sương Khói 3*

Cáo Tiên Sương Khói 3*
Hộ Vệ Đá Quý 3*

Hộ Vệ Đá Quý 3*
Chuột Chũi Thiên Vũ 3*

Chuột Chũi Thiên Vũ 3*
Hồn Ma Vinh Quang 1*

Hồn Ma Vinh Quang 1*
Quái Sừng Vinh Quang 1*

Quái Sừng Vinh Quang 1*
Hộ Vệ Vinh Quang  1*

Hộ Vệ Vinh Quang 1*
Hộ Vệ Đại Vinh Quang  1*

Hộ Vệ Đại Vinh Quang 1*
Hồn Ma Đại Vinh Quang 1*

Hồn Ma Đại Vinh Quang 1*
Thạch Dẻo 1*

Thạch Dẻo 1*
Mỏ Vịt Piltover 1*

Mỏ Vịt Piltover 1*
Choncc 1*

Choncc 1*
Bạch Tuộc Hiểm Họa Không Gian 1*

Bạch Tuộc Hiểm Họa Không Gian 1*
Bạch Tuộc Du Hành 1*

Bạch Tuộc Du Hành 1*
Bạch Tuộc Vũ Trụ 1*

Bạch Tuộc Vũ Trụ 1*
Cá Voi Cổ Đại 1*

Cá Voi Cổ Đại 1*
Cá Voi Thiên Hà 1*

Cá Voi Thiên Hà 1*
Gà Máy Kháng Ma 1*

Gà Máy Kháng Ma 1*
Người Đá Quân Đoàn 1*

Người Đá Quân Đoàn 1*
Melisma Nữ Hoàng Nhạc Pop 2*

Melisma Nữ Hoàng Nhạc Pop 2*
Melisma Phá Cách 2*

Melisma Phá Cách 2*
Melisma Thần Đồng 1*

Melisma Thần Đồng 1*
Melisma Phá Cách 1*

Melisma Phá Cách 1*
Melisma Nữ Hoàng Nhạc Pop 1*

Melisma Nữ Hoàng Nhạc Pop 1*
Ossia Thần Đồng 1*

Ossia Thần Đồng 1*
DJ Ossia 1*

DJ Ossia 1*
Ossia Đơn Ca 1*

Ossia Đơn Ca 1*
DJ QiQi 1*

DJ QiQi 1*
Fuwa Nguyện Ước 1*

Fuwa Nguyện Ước 1*
Fuwa Crush 1*

Fuwa Crush 1*
Fuwa Nguyện Ước 2*

Fuwa Nguyện Ước 2*
Rùa Hoa Hồng 2*

Rùa Hoa Hồng 2*
Rùa Hoa Hồng 1*

Rùa Hoa Hồng 1*
Rùa Ngọc Thạch 1*

Rùa Ngọc Thạch 1*
Cáo Tiên Huyền Ảo 1*

Cáo Tiên Huyền Ảo 1*
Cáo Tiên Nguyệt Dạ 1*

Cáo Tiên Nguyệt Dạ 1*
Cáo Tiên Sương Khói 1*

Cáo Tiên Sương Khói 1*
Cáo Tiên Sương Khói 2*

Cáo Tiên Sương Khói 2*
Cáo Tiên Vĩnh Hằng 1*

Cáo Tiên Vĩnh Hằng 1*
Cáo Tiên Tịnh Hồn 1*

Cáo Tiên Tịnh Hồn 1*
Cáo Tiên Nguyệt Dạ 2*

Cáo Tiên Nguyệt Dạ 2*
Hộ Vệ Đá Quý 1*

Hộ Vệ Đá Quý 1*
Hộ Vệ Oai Hùng 1*

Hộ Vệ Oai Hùng 1*
Hộ Vệ Đá Quý 2*

Hộ Vệ Đá Quý 2*
Hộ Vệ Thiên Ngọc 1*

Hộ Vệ Thiên Ngọc 1*
Hiệp Sĩ Cánh Cụt Chíp Chíp 1*

Hiệp Sĩ Cánh Cụt Chíp Chíp 1*
Hiệp Sĩ Cánh Cụt Pengu 1*

Hiệp Sĩ Cánh Cụt Pengu 1*
Hiệp Sĩ Cánh Cụt Chíp Chíp 2*

Hiệp Sĩ Cánh Cụt Chíp Chíp 2*
Chuột Chũi Phi Hành Gia 2*

Chuột Chũi Phi Hành Gia 2*
Chuột Chũi Nước Ngọt 1*

Chuột Chũi Nước Ngọt 1*
Chuột Chũi Thiên Vũ 1*

Chuột Chũi Thiên Vũ 1*
Chuột Chũi Phi Hành Gia 1*

Chuột Chũi Phi Hành Gia 1*
Chuột Chũi Độc Hại 1*

Chuột Chũi Độc Hại 1*
Chuột Chũi Mũi Mềm 1*

Chuột Chũi Mũi Mềm 1*
Tinh Linh Hạt Giống 1*

Tinh Linh Hạt Giống 1*
Cánh Bạc Lạc Lối 1*

Cánh Bạc Lạc Lối 1*
Cánh Bạc Hoa Hồng 1*

Cánh Bạc Hoa Hồng 1*
Quái Sừng Hư Không 1*

Quái Sừng Hư Không 1*
Thủy Thần Ngoài Hành Tinh 1*

Thủy Thần Ngoài Hành Tinh 1*',
'imgproduct/129772/1.jpg','imgproduct/129772/2.jpg','imgproduct/129772/3.jpg','imgproduct/129772/4.jpg','imgproduct/129772/5.jpg','imgproduct/129772/6.jpg','',''),

(129894,
N'Neo PAX Sivir
Udyr Tứ Linh Vệ Hồn

Udyr Tứ Linh Vệ Hồn
Jinx Pháo Hoa

Jinx Pháo Hoa
Draven Đại Suy Vong

Draven Đại Suy Vong
Garen Sư Vương

Garen Sư Vương
Miss Fortune Nữ Thần Không Gian

Miss Fortune Nữ Thần Không Gian
Blitzcrank Vinh Quang

Blitzcrank Vinh Quang
Aatrox Vinh Quang

Aatrox Vinh Quang
Graves Vinh Quang

Graves Vinh Quang
Trọng Tài Katarina

Trọng Tài Katarina
Janna Nữ Thần Chiến Binh

Janna Nữ Thần Chiến Binh
Caitlyn Vũ Khí Tối Thượng

Caitlyn Vũ Khí Tối Thượng
SIÊU PHẨM: Vi

SIÊU PHẨM: Vi
SIÊU PHẨM: Lucian

SIÊU PHẨM: Lucian
SIÊU PHẨM: Sylas

SIÊU PHẨM: Sylas
SIÊU PHẨM: Vayne

SIÊU PHẨM: Vayne
Arcane Caitlyn

Arcane Caitlyn
Arcane Vi

Arcane Vi
Arcane Jayce

Arcane Jayce
Arcane Jinx

Arcane Jinx
Garen Dân Chơi Demacia

Garen Dân Chơi Demacia
Draven Đoạt Mệnh

Draven Đoạt Mệnh
Soraka Ma Sứ

Soraka Ma Sứ
Caitlyn Nguyệt Hồn

Caitlyn Nguyệt Hồn
Garen Long Tướng

Garen Long Tướng
K/DA Evelynn

K/DA Evelynn
Shaco Hắc Tinh

Shaco Hắc Tinh
Ahri Vệ Binh Tinh Tú

Ahri Vệ Binh Tinh Tú
Janna Vệ Binh Tinh Tú

Janna Vệ Binh Tinh Tú
Xayah Vệ Binh Tinh Tú

Xayah Vệ Binh Tinh Tú
Lux Vệ Binh Tinh Tú

Lux Vệ Binh Tinh Tú
Taric Tiệc Bể Bơi

Taric Tiệc Bể Bơi
Malphite Máy Móc

Malphite Máy Móc
Garen Quân Đoàn Thép

Garen Quân Đoàn Thép
Xin Zhao Hộ Vệ Vũ Trụ

Xin Zhao Hộ Vệ Vũ Trụ
Garen Chiến Binh Sa Mạc

Garen Chiến Binh Sa Mạc
Singed Kháng Chiến

Singed Kháng Chiến
Yasuo Cao Bồi

Yasuo Cao Bồi
Ashe Cao Bồi

Ashe Cao Bồi
Galio Công Nghệ

Galio Công Nghệ
Galio Thanh Lịch

Galio Thanh Lịch
Garen Huyết Kiếm

Garen Huyết Kiếm
Garen Đô Đốc Độc Đoán

Garen Đô Đốc Độc Đoán
Garen Biệt Kích

Garen Biệt Kích
Garen Hiệp Sĩ Đen

Garen Hiệp Sĩ Đen
Garen Phong Trần

Garen Phong Trần
Jayce Thanh Lịch

Jayce Thanh Lịch
Kennen Karate

Kennen Karate
Mordekaiser Già Chuồn

Mordekaiser Già Chuồn
Nunu & Willump Công Xưởng

Nunu & Willump Công Xưởng
Teemo Thỏ Phục Sinh

Teemo Thỏ Phục Sinh
Vayne Kẻ Phán Quyết

Vayne Kẻ Phán Quyết
Xerath Hủy Diệt

Xerath Hủy Diệt
Xin Zhao Biệt Kích

Xin Zhao Biệt Kích
Draven Anh Già Tuyết

Draven Anh Già Tuyết
Annie Quàng Khăn Đỏ

Annie Quàng Khăn Đỏ
Blitzcrank Đấm Bốc

Blitzcrank Đấm Bốc
Quý Ông ChoGath
Mun Đô Vật

Mun Đô Vật
Ekko Bão Cát

Ekko Bão Cát
Riot Kayle

Riot Kayle
Annie Sinh Nhật

Annie Sinh Nhật',
N'Fuwa Thần Tài 3*
Dango Bánh Quy Gừng 3*

Dango Bánh Quy Gừng 3*
Ao Shin Hắc Tinh 3*

Ao Shin Hắc Tinh 3*
Quái Sừng Vinh Quang 1*

Quái Sừng Vinh Quang 1*
Hộ Vệ Vinh Quang  1*

Hộ Vệ Vinh Quang 1*
Mỏ Vịt Ong Mật 1*

Mỏ Vịt Ong Mật 1*
Kỳ Nhông Công Nghệ 1*

Kỳ Nhông Công Nghệ 1*
Choncc Ngưu Ma Vương 1*

Choncc Ngưu Ma Vương 1*
Choncc Thổ Thần 1*

Choncc Thổ Thần 1*
Choncc Dung Nham 1*

Choncc Dung Nham 1*
Choncc Dung Nham 2*

Choncc Dung Nham 2*
Ao Shin Hắc Tinh 1*

Ao Shin Hắc Tinh 1*
Ao Shin Hắc Tinh 2*

Ao Shin Hắc Tinh 2*
Kỳ Lân Kẹo Ngọt 1*

Kỳ Lân Kẹo Ngọt 1*
Hiệp Sĩ Cú Bảo Thạch 1*

Hiệp Sĩ Cú Bảo Thạch 1*
Bé Bọ Vò Vẽ 1*

Bé Bọ Vò Vẽ 1*
Bé Bọ Quân Đoàn 1*

Bé Bọ Quân Đoàn 1*
Gà Máy Hoa Vũ 1*

Gà Máy Hoa Vũ 1*
Ossia Đơn Ca 1*

Ossia Đơn Ca 1*
Dango Bánh Quy Gừng 1*

Dango Bánh Quy Gừng 1*
Dango Bánh Quy Gừng 2*

Dango Bánh Quy Gừng 2*
Fuwa Thần Tài 2*

Fuwa Thần Tài 2*
Fuwa Thần Tài 1*

Fuwa Thần Tài 1*
Fuwa Nguyện Ước 1*

Fuwa Nguyện Ước 1*
Chuột Chũi Nước Ngọt 1*

Chuột Chũi Nước Ngọt 1*
Chuột Chũi Nước Ngọt 2*

Chuột Chũi Nước Ngọt 2*
Tinh Linh Hạt Giống 1*

Tinh Linh Hạt Giống 1*
Tinh Linh Băng Giá 1*

Tinh Linh Băng Giá 1*
Cánh Bạc Nhiệt Đới 1*

Cánh Bạc Nhiệt Đới 1*
Cánh Bạc Lạc Lối 1*

Cánh Bạc Lạc Lối 1*
Cánh Bạc Hoa Hồng 1*

Cánh Bạc Hoa Hồng 1*
Cánh Bạc Demacia 1*

Cánh Bạc Demacia 1*
Cánh Bạc Bình Minh 1*

Cánh Bạc Bình Minh 1*
Quái Sừng Tim Sư Tử 1*

Quái Sừng Tim Sư Tử 1*
Quái Sừng Dung Nham 2*

Quái Sừng Dung Nham 2*
Quái Sừng Dung Nham 1*

Quái Sừng Dung Nham 1*
Shisa Hắc Hóa 1*

Shisa Hắc Hóa 1*
Thủy Thần Ngọc Đế 1*

Thủy Thần Ngọc Đế 1*',
'imgproduct/129894/1.jpg','imgproduct/129894/2.jpg','imgproduct/129894/3.jpg','imgproduct/129894/4.jpg','','','',''),

(130726,
N'Jinx Pháo Hoa
SIÊU PHẨM: Katarina

SIÊU PHẨM: Katarina
SIÊU PHẨM: Ashe

SIÊU PHẨM: Ashe
Arcane Vi

Arcane Vi
Arcane Jinx

Arcane Jinx
Arcane Jayce

Arcane Jayce
Arcane Caitlyn

Arcane Caitlyn
Miss Fortune Thế Giới Ngầm

Miss Fortune Thế Giới Ngầm
Varus Mũi Tên Tình Ái

Varus Mũi Tên Tình Ái
Lux Học Viện Chiến Binh

Lux Học Viện Chiến Binh
Yuumi Hiệu Trưởng Chiến Binh

Yuumi Hiệu Trưởng Chiến Binh
Yasuo Kiếm Khách Không Gian

Yasuo Kiếm Khách Không Gian
SKT T1 Lee Sin

SKT T1 Lee Sin
SKT T1 Jax

SKT T1 Jax
SSW Talon

SSW Talon
SSG Xayah

SSG Xayah
True Damage Ekko

True Damage Ekko
Yasuo Huyết Nguyệt

Yasuo Huyết Nguyệt
Akali Huyết Nguyệt

Akali Huyết Nguyệt
Singed Ong Mật

Singed Ong Mật
Fizz Thỏ Phục Sinh

Fizz Thỏ Phục Sinh
Jinx Thế Giới Ngầm

Jinx Thế Giới Ngầm
Yasuo Cao Bồi

Yasuo Cao Bồi
Garen Huyết Kiếm

Garen Huyết Kiếm
Garen Biệt Kích

Garen Biệt Kích
Lux Biệt Kích

Lux Biệt Kích
Olaf Kẻ Phản Diện

Olaf Kẻ Phản Diện
Poppy Noxus

Poppy Noxus
Riven Đặc Nhiệm Đỏ

Riven Đặc Nhiệm Đỏ
Shaco Tâm Thần

Shaco Tâm Thần
Talon Long Kiếm

Talon Long Kiếm
Tryndamere Ác Mộng

Tryndamere Ác Mộng
Tryndamere Thợ Săn Quái Thú

Tryndamere Thợ Săn Quái Thú
Vi Ác Quỷ

Vi Ác Quỷ
Ashe Hoang Dã

Ashe Hoang Dã
Chúa Tể Darius

Chúa Tể Darius
Ekko Bão Cát

Ekko Bão Cát
Annie Sinh Nhật

Annie Sinh Nhật
Volibear Dị Giáo Ác Thần

Volibear Dị Giáo Ác Thần',
N'',
'imgproduct/130726/1.jpg','imgproduct/130726/2.jpg','imgproduct/130726/3.jpg','','','','',''),

(130382,
N'Fiora Niên Thú Nguyên Đán - Hàng Hiệu
True Damage Senna - Hàng Hiệu

True Damage Senna - Hàng Hiệu
Lux Thập Đại Nguyên Tố

Lux Thập Đại Nguyên Tố
Udyr Tứ Linh Vệ Hồn

Udyr Tứ Linh Vệ Hồn
Yasuo Huyễn Long Kiếm

Yasuo Huyễn Long Kiếm
Yone Thần Kiếm

Yone Thần Kiếm
Lee Sin Nộ Long Cước

Lee Sin Nộ Long Cước
Karma Đại Suy Vong

Karma Đại Suy Vong
Master Yi Thanh Lịch

Master Yi Thanh Lịch
Leona Thanh Lịch

Leona Thanh Lịch
Malzahar Thanh Lịch

Malzahar Thanh Lịch
Nocturne Cựu Thần Hắc Ám

Nocturne Cựu Thần Hắc Ám
Garen Sư Vương

Garen Sư Vương
Miss Fortune Nữ Thần Không Gian

Miss Fortune Nữ Thần Không Gian
Viego Niên Thú Nguyên Đán

Viego Niên Thú Nguyên Đán
Yasuo Ma Kiếm

Yasuo Ma Kiếm
Darius Lang Vương

Darius Lang Vương
Karma Mùa Đông Kỳ Diệu

Karma Mùa Đông Kỳ Diệu
Yi Người Tuyết

Yi Người Tuyết
Akali Cầu Thủ

Akali Cầu Thủ
Twisted Fate Vũ Khí Tối Thượng

Twisted Fate Vũ Khí Tối Thượng
Riven Vũ Khí Tối Thượng

Riven Vũ Khí Tối Thượng
Mordekaiser Pentakill III: Cấm Thư

Mordekaiser Pentakill III: Cấm Thư
Ashe Tiên Hắc Ám

Ashe Tiên Hắc Ám
SIÊU PHẨM: Zed

SIÊU PHẨM: Zed
SIÊU PHẨM: Ekko

SIÊU PHẨM: Ekko
SIÊU PHẨM: Leona

SIÊU PHẨM: Leona
SIÊU PHẨM: Yasuo

SIÊU PHẨM: Yasuo
SIÊU PHẨM: Sylas

SIÊU PHẨM: Sylas
SIÊU PHẨM: Irelia

SIÊU PHẨM: Irelia
Heimerdinger Luyện Rồng

Heimerdinger Luyện Rồng
Gwen Chị Kéo Hồng

Gwen Chị Kéo Hồng
Arcane Jayce

Arcane Jayce
Arcane Jinx

Arcane Jinx
Arcane Caitlyn

Arcane Caitlyn
Arcane Vi

Arcane Vi
Yasuo Phản Diện

Yasuo Phản Diện
Samira Đặc Vụ Siêu Linh

Samira Đặc Vụ Siêu Linh
Lux Vệ Binh Pyjama

Lux Vệ Binh Pyjama
Beemo

Beemo
Lee Sin Ma Sứ

Lee Sin Ma Sứ
Vi Loạn Thế Anh Hùng

Vi Loạn Thế Anh Hùng
K/DA Ahri

K/DA Ahri
K/DA Evelynn

K/DA Evelynn
Ahri Giả Lập

Ahri Giả Lập
Caitlyn Giả Lập

Caitlyn Giả Lập
Lulu Vệ Binh Tinh Tú

Lulu Vệ Binh Tinh Tú
Neeko Vệ Binh Tinh Tú

Neeko Vệ Binh Tinh Tú
Ahri Vệ Binh Tinh Tú

Ahri Vệ Binh Tinh Tú
Janna Vệ Binh Tinh Tú

Janna Vệ Binh Tinh Tú
Taric Tiệc Bể Bơi

Taric Tiệc Bể Bơi
Heimerdinger Tiệc Bể Bơi

Heimerdinger Tiệc Bể Bơi
Gangplank Tiệc Bể Bơi

Gangplank Tiệc Bể Bơi
Lux Học Viện Chiến Binh

Lux Học Viện Chiến Binh
Yone Bá Vương Học Viện

Yone Bá Vương Học Viện
Nidalee Siêu Nhân Thiên Hà

Nidalee Siêu Nhân Thiên Hà
Nasus Cỗ Máy Chiến Đấu

Nasus Cỗ Máy Chiến Đấu
Sona Tiên Tri Không Gian

Sona Tiên Tri Không Gian
Olaf Toán Cướp Hắc Ám

Olaf Toán Cướp Hắc Ám
Soraka Siêu Máy Tính

Soraka Siêu Máy Tính
SKT T1 Olaf

SKT T1 Olaf
SKT T1 Jhin

SKT T1 Jhin
TPA Nunu & Willump

TPA Nunu & Willump
Morgana Tiên Hắc Ám

Morgana Tiên Hắc Ám
True Damage Yasuo

True Damage Yasuo
Thresh Huyết Nguyệt

Thresh Huyết Nguyệt
Aatrox Máy Móc

Aatrox Máy Móc
Akali Hải Sản

Akali Hải Sản
Pentakill Kayle

Pentakill Kayle
Janna Dự Báo Thời Tiết

Janna Dự Báo Thời Tiết
Lee Sin Kiến Tạo

Lee Sin Kiến Tạo
Bard Thần Rừng

Bard Thần Rừng
Jinx Yêu Tinh Giáng Sinh

Jinx Yêu Tinh Giáng Sinh
Hecarim Thần Rừng

Hecarim Thần Rừng
Siêu Nhân Teemo

Siêu Nhân Teemo
Akali Thợ Săn

Akali Thợ Săn
Singed Ong Mật

Singed Ong Mật
Poppy Kẹo Mút

Poppy Kẹo Mút
Bard Ngày Tuyết Rơi

Bard Ngày Tuyết Rơi
Garen Huyết Kiếm

Garen Huyết Kiếm
Garen Biệt Kích

Garen Biệt Kích
Garen Hiệp Sĩ Đen

Garen Hiệp Sĩ Đen
Hecarim Tử Thần

Hecarim Tử Thần
Jayce Thanh Lịch

Jayce Thanh Lịch
Kayle Lục Bảo

Kayle Lục Bảo
Leona Chiến Thần

Leona Chiến Thần
Malphite Hộ Pháp Không Gian

Malphite Hộ Pháp Không Gian
Ngộ Không Ngọc Long

Ngộ Không Ngọc Long
Nasus Ngân Hà

Nasus Ngân Hà
Nunu & Willump Máy

Nunu & Willump Máy
Olaf Kẻ Phản Diện

Olaf Kẻ Phản Diện
Orianna Ma Búp Bê

Orianna Ma Búp Bê
Poppy Búp Bê

Poppy Búp Bê
Renekton Huyết Nộ

Renekton Huyết Nộ
Renekton Chiến Tranh Cổ Ngữ

Renekton Chiến Tranh Cổ Ngữ
Sejuani Truyền Thống

Sejuani Truyền Thống
Sejuani Biệt Đội Gấu

Sejuani Biệt Đội Gấu
Soraka Rừng Xanh

Soraka Rừng Xanh
Tahm Kench Vua Đầu Bếp

Tahm Kench Vua Đầu Bếp
Tristana Lính Cứu Hỏa

Tristana Lính Cứu Hỏa
Twisted Fate Thời Niên Thiếu

Twisted Fate Thời Niên Thiếu
Volibear Bắc Cực

Volibear Bắc Cực
Kayn Thợ Săn Linh Hồn

Kayn Thợ Săn Linh Hồn
Annie Lửa Băng

Annie Lửa Băng
Annie Sinh Nhật

Annie Sinh Nhật',
N'Cáo Tiên Tịnh Hồn 3*
Ao Shin Vũ Trụ 3*

Ao Shin Vũ Trụ 3*
Shisa Tôn Hành Giả 3*

Shisa Tôn Hành Giả 3*
Giáo Sư Shisa 3*

Giáo Sư Shisa 3*
Thần Lộc Sứ Thanh Hoa 3*

Thần Lộc Sứ Thanh Hoa 3*
Thần Lộc Sứ Thanh Hoa 2*

Thần Lộc Sứ Thanh Hoa 2*
Kỳ Nhông Hóa Kỹ 3*

Kỳ Nhông Hóa Kỹ 3*
Kỳ Nhông Rio 1*

Kỳ Nhông Rio 1*
Thần Lộc Sứ Thanh Hoa 1*

Thần Lộc Sứ Thanh Hoa 1*
Thủy Thần Arcane 1*

Thủy Thần Arcane 1*
Hộ Vệ Vinh Quang  1*

Hộ Vệ Vinh Quang 1*
Thạch Dẻo 1*

Thạch Dẻo 1*
Kỳ Nhông Đốm 1*

Kỳ Nhông Đốm 1*
Kỳ Nhông Hóa Kỹ 1*

Kỳ Nhông Hóa Kỹ 1*
Kỳ Nhông Hóa Kỹ 2*

Kỳ Nhông Hóa Kỹ 2*
Kỳ Nhông Thanh Long 1*

Kỳ Nhông Thanh Long 1*
Kỳ Nhông 1*

Kỳ Nhông 1*
Rùa Viêm Hỏa Trạng Nguyên 1*

Rùa Viêm Hỏa Trạng Nguyên 1*
Hồn Ma Độc 1*

Hồn Ma Độc 1*
Chuột Nhanh Nhạy Nhẫn Giả  1*

Chuột Nhanh Nhạy Nhẫn Giả 1*
Choncc Gấu Trúc 1*

Choncc Gấu Trúc 1*
Choncc Dung Nham 1*

Choncc Dung Nham 1*
Choncc Bình Thiên Đại Thánh 1*

Choncc Bình Thiên Đại Thánh 1*
Ao Shin Vũ Trụ 1*

Ao Shin Vũ Trụ 1*
Ao Shin Vũ Trụ 2*

Ao Shin Vũ Trụ 2*
Umbra 1*

Umbra 1*
Umbra Sương Đen 1*

Umbra Sương Đen 1*
Tiên Linh Linh Hoa Hồng 1*

Tiên Linh Linh Hoa Hồng 1*
Thần Lộc Kẹo Ngọt 1*

Thần Lộc Kẹo Ngọt 1*
Thần Lộc Kẹo Ngọt 2*

Thần Lộc Kẹo Ngọt 2*
Bạch Tuộc K/DA POP/STARS 2*

Bạch Tuộc K/DA POP/STARS 2*
Bạch Tuộc Du Hành 1*

Bạch Tuộc Du Hành 1*
Bạch Tuộc K/DA POP/STARS 1*

Bạch Tuộc K/DA POP/STARS 1*
Hiệp Sĩ Cú Vũ Trụ 2*

Hiệp Sĩ Cú Vũ Trụ 2*
Hiệp Sĩ Cú Vũ Trụ 1*

Hiệp Sĩ Cú Vũ Trụ 1*
Bé Bọ Quân Đoàn 1*

Bé Bọ Quân Đoàn 1*
Người Đá Công Nghệ 1*

Người Đá Công Nghệ 1*
Melisma Nhịp Điệu Hắc Ám 1*

Melisma Nhịp Điệu Hắc Ám 1*
Melisma Phá Cách 1*

Melisma Phá Cách 1*
Melisma Nhịp Điệu Hắc Ám 2*

Melisma Nhịp Điệu Hắc Ám 2*
Melisma U Hồn 1*

Melisma U Hồn 1*
QiQi Đơn Ca 1*

QiQi Đơn Ca 1*
Dango 1*

Dango 1*
Cáo Tiên Tịnh Hồn 1*

Cáo Tiên Tịnh Hồn 1*
Cáo Tiên Nguyệt Dạ 1*

Cáo Tiên Nguyệt Dạ 1*
Cáo Tiên U Hồn 1*

Cáo Tiên U Hồn 1*
Cáo Tiên Tịnh Hồn 2*

Cáo Tiên Tịnh Hồn 2*
Hộ Vệ Thiên Ngọc 1*

Hộ Vệ Thiên Ngọc 1*
Hộ Vệ Oai Hùng 1*

Hộ Vệ Oai Hùng 1*
Hiệp Sĩ Cánh Cụt U Hồn 1*

Hiệp Sĩ Cánh Cụt U Hồn 1*
Hiệp Sĩ Cánh Cụt Tịnh Hồn 1*

Hiệp Sĩ Cánh Cụt Tịnh Hồn 1*
Hiệp Sĩ Cánh Cụt Pengu 1*

Hiệp Sĩ Cánh Cụt Pengu 1*
Chuột Chũi Vụng Về 1*

Chuột Chũi Vụng Về 1*
Tinh Linh Bánh Sinh Nhật 1*

Tinh Linh Bánh Sinh Nhật 1*
Quái Sừng Cục Đường 2*

Quái Sừng Cục Đường 2*
Quái Sừng Lãnh Nguyên 1*

Quái Sừng Lãnh Nguyên 1*
Quái Sừng K/DA ALL OUT 1*

Quái Sừng K/DA ALL OUT 1*
Quái Sừng Ngân Giác 2*

Quái Sừng Ngân Giác 2*
Quái Sừng Cục Đường 1*

Quái Sừng Cục Đường 1*
Quái Sừng Ngân Giác 1*

Quái Sừng Ngân Giác 1*
Shisa Giả Hành Tôn 1*

Shisa Giả Hành Tôn 1*
Shisa Tôn Hành Giả 1*

Shisa Tôn Hành Giả 1*
Shisa Tôn Hành Giả 2*

Shisa Tôn Hành Giả 2*
Giáo Sư Shisa 1*

Giáo Sư Shisa 1*
Giáo Sư Shisa 2*

Giáo Sư Shisa 2*
Thủy Thần Sủi Cảo 1*

Thủy Thần Sủi Cảo 1*',
'imgproduct/130382/1.jpg','imgproduct/130382/2.jpg','imgproduct/130382/3.jpg','imgproduct/130382/4.jpg','imgproduct/130382/5.jpg','imgproduct/130382/6.jpg','',''),

(130831,
N'Riot Blitzcrank
Orianna Vinh Quang

Orianna Vinh Quang
Sivir Vinh Quang

Sivir Vinh Quang
Maokai Vinh Quang

Maokai Vinh Quang
Graves Vinh Quang

Graves Vinh Quang
Anivia Đoàn Kết

Anivia Đoàn Kết
Urgot Cao Bồi

Urgot Cao Bồi
SIÊU PHẨM: Warwick

SIÊU PHẨM: Warwick
Arcane Jinx

Arcane Jinx
Arcane Jayce

Arcane Jayce
Arcane Caitlyn

Arcane Caitlyn
Arcane Vi

Arcane Vi
Ezreal Vệ Binh Pyjama

Ezreal Vệ Binh Pyjama
Nami Lốt Urf

Nami Lốt Urf
Nidalee Loạn Thế Anh Hùng

Nidalee Loạn Thế Anh Hùng
Ahri Vệ Binh Tinh Tú

Ahri Vệ Binh Tinh Tú
Jinx Vệ Binh Tinh tú

Jinx Vệ Binh Tinh tú
Mundo Tiệc Bể Bơi

Mundo Tiệc Bể Bơi
Kindred Siêu Nhân Thiên Ha

Kindred Siêu Nhân Thiên Ha
Xerath Cỗ Máy Chiến Đấu

Xerath Cỗ Máy Chiến Đấu
Urgot Cỗ Máy Chiến Đấu

Urgot Cỗ Máy Chiến Đấu
Akali Hỏa Ngục

Akali Hỏa Ngục
Alistar Toán Cướp Hắc Ám

Alistar Toán Cướp Hắc Ám
SSW Thresh

SSW Thresh
Teemo Biệt Đội Omega

Teemo Biệt Đội Omega
Cassiopeia Bất Diệt

Cassiopeia Bất Diệt
Darius Siêu Sao Úp Rổ

Darius Siêu Sao Úp Rổ
Alistar Hậu Vệ

Alistar Hậu Vệ
Ahri Hàn Triều

Ahri Hàn Triều
Fiora Phi Kiếm

Fiora Phi Kiếm
Alistar Vàng

Alistar Vàng
Tristana Yêu Tinh Giáng Sinh

Tristana Yêu Tinh Giáng Sinh
Poppy Cô Bé Tuần Lộc

Poppy Cô Bé Tuần Lộc
Ezreal Băng Giá

Ezreal Băng Giá
Twisted Fate Cao Bồi

Twisted Fate Cao Bồi
Miss Fortune Nữ Cao Bồi

Miss Fortune Nữ Cao Bồi
Ezreal Át Bích

Ezreal Át Bích
Fiddlesticks Tướng Cướp

Fiddlesticks Tướng Cướp
Fiora Quạ Đêm

Fiora Quạ Đêm
Galio Biệt Kích

Galio Biệt Kích
Gragas Thợ Lặn

Gragas Thợ Lặn
Gragas Hai Lúa

Gragas Hai Lúa
Quý Ông Gragas

Quý Ông Gragas
Graves Đánh Thuê

Graves Đánh Thuê
Heimerdinger Nám Mặt

Heimerdinger Nám Mặt
Jarvan IV Biệt Kích

Jarvan IV Biệt Kích
Kayle Chiến Thần

Kayle Chiến Thần
Kennen Karate

Kennen Karate
LeBlanc Ảo Thuật

LeBlanc Ảo Thuật
Lee Tiểu Long

Lee Tiểu Long
Lux Biệt Kích

Lux Biệt Kích
Malphite Nham Thạch

Malphite Nham Thạch
Malphite San Hô

Malphite San Hô
Master Yi Sát Thủ

Master Yi Sát Thủ
Morgana Người Máy

Morgana Người Máy
Nasus Ngân Hà

Nasus Ngân Hà
Nidalee Báo Đốm

Nidalee Báo Đốm
Orianna Gô-tích

Orianna Gô-tích
Amumu Pha-ra-ông

Amumu Pha-ra-ông
Poppy Chiến Thần

Poppy Chiến Thần
RekSai Bất Diệt
Renekton Ngân Hà

Renekton Ngân Hà
Riven Chuộc Tội

Riven Chuộc Tội
Riven Đặc Nhiệm Đỏ

Riven Đặc Nhiệm Đỏ
Shen Băng Giá

Shen Băng Giá
Sivir Thợ Săn

Sivir Thợ Săn
Skarner Sa Mạc

Skarner Sa Mạc
Teemo Hướng Đạo Sinh

Teemo Hướng Đạo Sinh
Teemo Tình Báo

Teemo Tình Báo
Twitch Móc Túi

Twitch Móc Túi
Varus Pha Lê Độc

Varus Pha Lê Độc
Veigar Pháp Sư

Veigar Pháp Sư
Vi Ác Quỷ

Vi Ác Quỷ
Bá Tước Vladimir

Bá Tước Vladimir
Volibear Cảnh Vệ Trưởng

Volibear Cảnh Vệ Trưởng
Warwick Sói Điên

Warwick Sói Điên
Xin Zhao Hoàng Gia

Xin Zhao Hoàng Gia
Lucian Tay Súng Đánh Thuê

Lucian Tay Súng Đánh Thuê
Draven Anh Già Tuyết

Draven Anh Già Tuyết
Ashe Freljord

Ashe Freljord
Caitlyn Du Kích

Caitlyn Du Kích
Caitlyn Săn Bắn

Caitlyn Săn Bắn
Caitlyn Thợ Săn

Caitlyn Thợ Săn
ChoGath Thời Tiền Sử
Riot Kayle

Riot Kayle
Riot Girl Tristana

Riot Girl Tristana
Alistar Ngưu Ma Vương

Alistar Ngưu Ma Vương
Volibear Dị Giáo Ác Thần

Volibear Dị Giáo Ác Thần',
N'',
'imgproduct/130831/1.jpg','imgproduct/130831/2.jpg','imgproduct/130831/3.jpg','imgproduct/130831/4.jpg','','','',''),

(130838,
N'Udyr Tứ Linh Vệ Hồn
Nidalee Thách Đấu

Nidalee Thách Đấu
Ahri Thần Rừng

Ahri Thần Rừng
Urgot Cao Bồi

Urgot Cao Bồi
Irelia Cao Bồi

Irelia Cao Bồi
Caitlyn Vũ Khí Tối Thượng

Caitlyn Vũ Khí Tối Thượng
Olaf Pentakill III: Cấm Thư

Olaf Pentakill III: Cấm Thư
SIÊU PHẨM: Warwick

SIÊU PHẨM: Warwick
SIÊU PHẨM: Ekko

SIÊU PHẨM: Ekko
Nasus Địa Ngục

Nasus Địa Ngục
Arcane Caitlyn

Arcane Caitlyn
Arcane Jinx

Arcane Jinx
Arcane Vi

Arcane Vi
Arcane Jayce

Arcane Jayce
Draven Đoạt Mệnh

Draven Đoạt Mệnh
Nasus Đại Công Tước

Nasus Đại Công Tước
Nami Lốt Urf

Nami Lốt Urf
Karma Hắc Tinh

Karma Hắc Tinh
Neeko Vệ Binh Tinh Tú

Neeko Vệ Binh Tinh Tú
Graves Tiệc Bể Bơi

Graves Tiệc Bể Bơi
Sona Tiểu Tình Nhân

Sona Tiểu Tình Nhân
Fizz Siêu Nhân Thiên Hà

Fizz Siêu Nhân Thiên Hà
Nidalee Siêu Nhân Thiên Hà

Nidalee Siêu Nhân Thiên Hà
Shyvana Siêu Nhân Thiên Hà

Shyvana Siêu Nhân Thiên Hà
Gnar Siêu Nhân Thiên Hà

Gnar Siêu Nhân Thiên Hà
Shen Hỏa Ngục

Shen Hỏa Ngục
Yasuo Kiếm Khách Không Gian

Yasuo Kiếm Khách Không Gian
SKT T1 Ryze

SKT T1 Ryze
SKT T1 Elise

SKT T1 Elise
iG Fiora

iG Fiora
Shen Huyết Nguyệt

Shen Huyết Nguyệt
Zilean Huyết Nguyệt

Zilean Huyết Nguyệt
Xin Zhao Đồ Long

Xin Zhao Đồ Long
KhaZix Máy Móc
Pantheon Nướng Bánh

Pantheon Nướng Bánh
Pentakill Olaf

Pentakill Olaf
Galio Địa Ngục

Galio Địa Ngục
riven thần kiếm

riven thần kiếm
Zed Lôi Kiếm

Zed Lôi Kiếm
Mundo Hoàng Tử Đóng Băng

Mundo Hoàng Tử Đóng Băng
Bard Thần Rừng

Bard Thần Rừng
Meokai

Meokai
Lulu Pháp Sư Vũ Trụ

Lulu Pháp Sư Vũ Trụ
Alistar Vàng

Alistar Vàng
Jayce Chiến Binh Ánh Sáng

Jayce Chiến Binh Ánh Sáng
Xin Zhao Triệu Tử Long

Xin Zhao Triệu Tử Long
Nunu & Willump Thây Ma

Nunu & Willump Thây Ma
Poppy Kẹo Mút

Poppy Kẹo Mút
Evelynn Dạ Vũ

Evelynn Dạ Vũ
Evelynn Cạy Két

Evelynn Cạy Két
Graves Đánh Thuê

Graves Đánh Thuê
Jax Du Côn

Jax Du Côn
KhaZix Vệ Binh Sa Mạc
Leona Chiến Thần

Leona Chiến Thần
Ngộ Không Bá Nhật

Ngộ Không Bá Nhật
Morgana Lưu Đày

Morgana Lưu Đày
Nunu & Willump Mẫu Giáo

Nunu & Willump Mẫu Giáo
Nunu & Willump Hủy Diệt

Nunu & Willump Hủy Diệt
Quinn Phượng Hoàng

Quinn Phượng Hoàng
Renekton Huyết Nộ

Renekton Huyết Nộ
Riven Đặc Nhiệm Đỏ

Riven Đặc Nhiệm Đỏ
Shen Băng Giá

Shen Băng Giá
Spectacular Sivir

Spectacular Sivir
Sona Đêm An Lành

Sona Đêm An Lành
Soraka Thánh Nữ

Soraka Thánh Nữ
Teemo Thỏ Phục Sinh

Teemo Thỏ Phục Sinh
Warwick Bà Ngoại

Warwick Bà Ngoại
Warwick Linh Cẩu

Warwick Linh Cẩu
Azir Đinh Dậu

Azir Đinh Dậu
Ashe Hoang Dã

Ashe Hoang Dã
Chúa Tể Darius

Chúa Tể Darius
Mun Đô Vật

Mun Đô Vật
Ornn Thần Sấm

Ornn Thần Sấm
Riot Kayle

Riot Kayle
Twitch Trung Cổ

Twitch Trung Cổ
Annie Sinh Nhật

Annie Sinh Nhật
Volibear Dị Giáo Ác Thần

Volibear Dị Giáo Ác Thần',
N'',
'imgproduct/130838/1.jpg','imgproduct/130838/2.jpg','imgproduct/130838/3.jpg','','','','',''),

(130844,
N'Lux Thập Đại Nguyên Tố
Master Yi Thanh Lịch

Master Yi Thanh Lịch
Zed Thanh Lịch

Zed Thanh Lịch
Heimerdinger Luyện Rồng

Heimerdinger Luyện Rồng
Arcane Caitlyn

Arcane Caitlyn
Arcane Jayce

Arcane Jayce
Arcane Vi

Arcane Vi
Arcane Jinx

Arcane Jinx
Yasuo Phản Diện

Yasuo Phản Diện
Veigar Phi Hành Gia

Veigar Phi Hành Gia
Soraka Hội Chuối Cả Nải

Soraka Hội Chuối Cả Nải
Blitzcrank Mũi Khoan Ánh Sáng

Blitzcrank Mũi Khoan Ánh Sáng
Ahri Giả Lập

Ahri Giả Lập
KhaZix Hắc Tinh
Syndra Vệ Binh Tinh Tú

Syndra Vệ Binh Tinh Tú
Zoe Vệ Binh Tinh Tú

Zoe Vệ Binh Tinh Tú
Garen Học Viện Chiến Binh

Garen Học Viện Chiến Binh
Graves Hiệu Phó Chiến Binh

Graves Hiệu Phó Chiến Binh
Ashe Toán Cướp Hắc Ám

Ashe Toán Cướp Hắc Ám
SKT T1 Jax

SKT T1 Jax
Gragas Tổ Đội Quản Ngục

Gragas Tổ Đội Quản Ngục
Yasuo Huyết Nguyệt

Yasuo Huyết Nguyệt
Teemo Biệt Đội Omega

Teemo Biệt Đội Omega
Malphite Bắc Cực

Malphite Bắc Cực
Lux Vũ Trụ Hủy Diệt

Lux Vũ Trụ Hủy Diệt
iBlitzcrank

iBlitzcrank
Graves Cận Vệ Thép

Graves Cận Vệ Thép
Kayle Thiên Sứ Công Nghệ

Kayle Thiên Sứ Công Nghệ
Rengar Vệ Binh Sa Mạc

Rengar Vệ Binh Sa Mạc
Yorick Hồ Quang

Yorick Hồ Quang
Fiddlesticks Cận Vệ Thép

Fiddlesticks Cận Vệ Thép
Leona Nguyệt Thực

Leona Nguyệt Thực
Pantheon Thợ Săn Xác Sống

Pantheon Thợ Săn Xác Sống
Evelynn Dạ Vũ

Evelynn Dạ Vũ
Evelynn Cạy Két

Evelynn Cạy Két
Ashe Cao Bồi

Ashe Cao Bồi
Jayce Thanh Lịch

Jayce Thanh Lịch
Leona Chiến Thần

Leona Chiến Thần
Thần Đèn Malzahar

Thần Đèn Malzahar
Mordekaiser Địa Ngục

Mordekaiser Địa Ngục
Rammus Nham Thạch

Rammus Nham Thạch
Syndra Đầm Rô

Syndra Đầm Rô
Chúa Tể Vladimir

Chúa Tể Vladimir
Annie Lửa Băng

Annie Lửa Băng
Annie Sinh Nhật

Annie Sinh Nhật',
'',
'imgproduct/130844/1.jpg','imgproduct/130844/2.jpg','imgproduct/130844/3.jpg','','','','',''),

(130877,
N'DJ Sona
KhaZix Quán Quân
Ryze Quán Quân

Ryze Quán Quân
Garen Sư Vương

Garen Sư Vương
Miss Fortune Nữ Thần Không Gian

Miss Fortune Nữ Thần Không Gian
Lee Sin Tuyệt Vô Thần

Lee Sin Tuyệt Vô Thần
Lucian Vinh Quang

Lucian Vinh Quang
Renekton Đồ Chơi

Renekton Đồ Chơi
Đâu Phải VelKoz
Karma Mùa Đông Kỳ Diệu

Karma Mùa Đông Kỳ Diệu
Neeko Mùa Đông Kỳ Diệu

Neeko Mùa Đông Kỳ Diệu
Kindred Lang Dương Vô Thường

Kindred Lang Dương Vô Thường
Hecarim Cao Bồi

Hecarim Cao Bồi
Mordekaiser Pentakill III: Cấm Thư

Mordekaiser Pentakill III: Cấm Thư
SIÊU PHẨM: Jhin

SIÊU PHẨM: Jhin
SIÊU PHẨM: Akali

SIÊU PHẨM: Akali
Arcane Vi

Arcane Vi
Arcane Jayce

Arcane Jayce
Yasuo Phản Diện

Yasuo Phản Diện
ChoGath Hồ Lốc-nét
Vi Đặc Vụ Siêu Linh

Vi Đặc Vụ Siêu Linh
Blitzcrank Mũi Khoan Ánh Sáng

Blitzcrank Mũi Khoan Ánh Sáng
Lee Sin Ma Sứ

Lee Sin Ma Sứ
Tryndamere Quan Vũ

Tryndamere Quan Vũ
K/DA Evelynn

K/DA Evelynn
Anivia Chòm Thiên Nga

Anivia Chòm Thiên Nga
Veigar Trùm Cuối

Veigar Trùm Cuối
Thresh Hắc Tinh

Thresh Hắc Tinh
Taric Tiệc Bể Bơi

Taric Tiệc Bể Bơi
Annie Siêu Nhân Thiên Hà

Annie Siêu Nhân Thiên Hà
SKT T1 Zed

SKT T1 Zed
iG LeBlanc

iG LeBlanc
True Damage Ekko

True Damage Ekko
True Damage Yasuo

True Damage Yasuo
Pantheon Đồ Long

Pantheon Đồ Long
Olaf Thái Thịt

Olaf Thái Thịt
Veigar Biệt Đội Omega

Veigar Biệt Đội Omega
Lux Vũ Trụ Hủy Diệt

Lux Vũ Trụ Hủy Diệt
Talon Huyền Kiếm

Talon Huyền Kiếm
Jayce Giả Kim

Jayce Giả Kim
Morgana Khổng Tước Hoàng Hậu

Morgana Khổng Tước Hoàng Hậu
Siêu Nhân Teemo

Siêu Nhân Teemo
Hecarim Thần Rừng

Hecarim Thần Rừng
Master Yi Kiếm Sĩ Vũ Tru

Master Yi Kiếm Sĩ Vũ Tru
Graves Thế Giới Ngầm

Graves Thế Giới Ngầm
Ahri Hàn Triều

Ahri Hàn Triều
Lee Sin Quyền Thái

Lee Sin Quyền Thái
LeBlanc Nàng Quạ Đen

LeBlanc Nàng Quạ Đen
Nocturne Hồn Ma

Nocturne Hồn Ma
Jinx Thợ Săn Xác Sống

Jinx Thợ Săn Xác Sống
Ezreal Thanh Lịch

Ezreal Thanh Lịch
Yasuo Cao Bồi

Yasuo Cao Bồi
Galio Ma Pháp

Galio Ma Pháp
Jax Du Côn

Jax Du Côn
Malphite Rêu Phong

Malphite Rêu Phong
Miss Fortune Đường Phố

Miss Fortune Đường Phố
Morgana Lưu Đày

Morgana Lưu Đày
Nunu & Willump Mẫu Giáo

Nunu & Willump Mẫu Giáo
Renekton Hủy Diệt

Renekton Hủy Diệt
Giáo Sư Ryze

Giáo Sư Ryze
Shaco Quân Bài Bí Ẩn

Shaco Quân Bài Bí Ẩn
Sion Man Di

Sion Man Di
Sivir Tướng Cướp

Sivir Tướng Cướp
Soraka Thánh Nữ

Soraka Thánh Nữ
Talon Ngoài Vòng Pháp Luật

Talon Ngoài Vòng Pháp Luật
Varus Cung Thủ Thần Tốc

Varus Cung Thủ Thần Tốc
Veigar Quỷ Lùn

Veigar Quỷ Lùn
Viktor Mẫu Thử

Viktor Mẫu Thử
Ashe Freljord

Ashe Freljord
Brand Lõi Băng

Brand Lõi Băng
Sĩ Quan Caitlyn

Sĩ Quan Caitlyn
Cassiopeia Quý Tỵ

Cassiopeia Quý Tỵ
Annie Sinh Nhật

Annie Sinh Nhật',
'',
'imgproduct/130877/1.jpg','imgproduct/130877/2.jpg','imgproduct/130877/3.jpg','imgproduct/130877/4.jpg','','','',''),

(130886,
N'Lux Thập Đại Nguyên Tố
Ashe Quán Quân

Ashe Quán Quân
Garen Sư Vương

Garen Sư Vương
Kayn Hung Thần Không Gian

Kayn Hung Thần Không Gian
SIÊU PHẨM: Jhin

SIÊU PHẨM: Jhin
Arcane Vi

Arcane Vi
Arcane Caitlyn

Arcane Caitlyn
Arcane Jayce

Arcane Jayce
Arcane Jinx

Arcane Jinx
K/DA KaiSa
Malphite Hắc Tinh

Malphite Hắc Tinh
Mundo Tiệc Bể Bơi

Mundo Tiệc Bể Bơi
Nidalee Siêu Nhân Thiên Hà

Nidalee Siêu Nhân Thiên Hà
SKT T1 Jax

SKT T1 Jax
SSG Ezreal

SSG Ezreal
True Damage Yasuo

True Damage Yasuo
Akali Huyết Nguyệt

Akali Huyết Nguyệt
Kayle Đồ Long

Kayle Đồ Long
riven thần kiếm

riven thần kiếm
Xin Zhao Triệu Tử Long

Xin Zhao Triệu Tử Long
Fizz Thỏ Phục Sinh

Fizz Thỏ Phục Sinh
Tahm Kench Thần Tài

Tahm Kench Thần Tài
Ezreal Thám Hiểm

Ezreal Thám Hiểm
Yasuo Cao Bồi

Yasuo Cao Bồi
Fizz Hư Không

Fizz Hư Không
Garen Huyết Kiếm

Garen Huyết Kiếm
Irelia Băng Kiếm

Irelia Băng Kiếm
Jayce Thanh Lịch

Jayce Thanh Lịch
Lux Hoàng Tộc

Lux Hoàng Tộc
Malphite Nham Thạch

Malphite Nham Thạch
Mordekaiser Kị Sĩ Rồng

Mordekaiser Kị Sĩ Rồng
Nasus Ngân Hà

Nasus Ngân Hà
Nasus Hiệp Sĩ Đen

Nasus Hiệp Sĩ Đen
Rammus Vệ Binh Sa Mạc

Rammus Vệ Binh Sa Mạc
Talon Ngoài Vòng Pháp Luật

Talon Ngoài Vòng Pháp Luật
Blitzcrank Xe Độ

Blitzcrank Xe Độ
ChoGath Thời Tiền Sử
Darius Vũ Khí Sinh Học

Darius Vũ Khí Sinh Học
Ryze Xác Sống

Ryze Xác Sống
Annie Sinh Nhật

Annie Sinh Nhật',
'',
'imgproduct/130886/1.jpg','imgproduct/130886/2.jpg','imgproduct/130886/3.jpg','','','','',''),

(130892,
N'Hecarim Thánh Kị Sĩ
Lee Sin Nộ Long Cước

Lee Sin Nộ Long Cước
Thresh Nguyền Hồn Hắc Ám

Thresh Nguyền Hồn Hắc Ám
Ryze Quán Quân

Ryze Quán Quân
Shyvana Quán Quân

Shyvana Quán Quân
Lucian Cao Bồi

Lucian Cao Bồi
Garen Sư Vương

Garen Sư Vương
Yasuo Ma Kiếm

Yasuo Ma Kiếm
Zed Tử Thần Không Gian

Zed Tử Thần Không Gian
Alistar Chinh Phục

Alistar Chinh Phục
Yi Người Tuyết

Yi Người Tuyết
Kindred Lang Dương Vô Thường

Kindred Lang Dương Vô Thường
Hecarim Cao Bồi

Hecarim Cao Bồi
Senna Cao Bồi

Senna Cao Bồi
Qiyana Nữ Thần Chiến Binh

Qiyana Nữ Thần Chiến Binh
Ekko Vũ Khí Tối Thượng

Ekko Vũ Khí Tối Thượng
Sona Pentakill III: Cấm Thư

Sona Pentakill III: Cấm Thư
SIÊU PHẨM: Pyke

SIÊU PHẨM: Pyke
SIÊU PHẨM: Renekton

SIÊU PHẨM: Renekton
SIÊU PHẨM: Lucian

SIÊU PHẨM: Lucian
SIÊU PHẨM: Akali

SIÊU PHẨM: Akali
SIÊU PHẨM: Yasuo

SIÊU PHẨM: Yasuo
Sion Người Máy Biến Hình

Sion Người Máy Biến Hình
Arcane Jayce

Arcane Jayce
Arcane Jinx

Arcane Jinx
Arcane Vi

Arcane Vi
Sona Đặc Vụ Siêu Linh

Sona Đặc Vụ Siêu Linh
Vi Đặc Vụ Siêu Linh

Vi Đặc Vụ Siêu Linh
Lux Vệ Binh Pyjama

Lux Vệ Binh Pyjama
Miss Fortune Vệ Binh Pyjama

Miss Fortune Vệ Binh Pyjama
Beemo

Beemo
Blitzcrank Mũi Khoan Bóng Tối

Blitzcrank Mũi Khoan Bóng Tối
Jhin Vũ Trụ Hắc Ám

Jhin Vũ Trụ Hắc Ám
Ashe Nữ Hoàng Vũ Trụ

Ashe Nữ Hoàng Vũ Trụ
Nami Lốt Urf

Nami Lốt Urf
K/DA KaiSa
RekSai Sương Đen
KaiSa Giả Lập
Ezreal Giả Lập

Ezreal Giả Lập
Veigar Trùm Cuối

Veigar Trùm Cuối
Mordekaiser Hắc Tinh

Mordekaiser Hắc Tinh
KhaZix Hắc Tinh
Jinx Vệ Binh Tinh tú

Jinx Vệ Binh Tinh tú
Ahri Vệ Binh Tinh Tú

Ahri Vệ Binh Tinh Tú
Ezreal Vệ Binh Tinh Tú

Ezreal Vệ Binh Tinh Tú
Miss Fortune Tiệc Bể Bơi

Miss Fortune Tiệc Bể Bơi
Renekton Tiệc Bể Bơi

Renekton Tiệc Bể Bơi
Caitlyn Tiệc Bể Bơi

Caitlyn Tiệc Bể Bơi
Xayah Uyên Ương

Xayah Uyên Ương
Jayce Học Viện Chiến Binh

Jayce Học Viện Chiến Binh
Shyvana Siêu Nhân Thiên Hà

Shyvana Siêu Nhân Thiên Hà
Galio Hỏa Ngục

Galio Hỏa Ngục
Olaf Toán Cướp Hắc Ám

Olaf Toán Cướp Hắc Ám
Ashe Toán Cướp Hắc Ám

Ashe Toán Cướp Hắc Ám
Soraka Siêu Máy Tính

Soraka Siêu Máy Tính
iG Irelia

iG Irelia
SSG Xayah

SSG Xayah
True Damage Yasuo

True Damage Yasuo
Sivir Tổ Đội Quản Ngục

Sivir Tổ Đội Quản Ngục
Nautilus Tổ Đội Quản Ngục

Nautilus Tổ Đội Quản Ngục
Elise Huyết Nguyệt

Elise Huyết Nguyệt
Jhin Huyết Nguyệt

Jhin Huyết Nguyệt
Master Yi Huyết Nguyệt

Master Yi Huyết Nguyệt
Pantheon Đồ Long

Pantheon Đồ Long
Veigar Biệt Đội Omega

Veigar Biệt Đội Omega
Teemo Biệt Đội Omega

Teemo Biệt Đội Omega
Tristana Biệt Đội Omega

Tristana Biệt Đội Omega
Pentakill Olaf

Pentakill Olaf
Kayle Thiên Sứ Công Nghệ

Kayle Thiên Sứ Công Nghệ
Galio Địa Ngục

Galio Địa Ngục
Pyke Hồn Ma Sa Mạc

Pyke Hồn Ma Sa Mạc
Talon Huyền Kiếm

Talon Huyền Kiếm
Heimerdinger Ngoài Hành Tinh

Heimerdinger Ngoài Hành Tinh
Zyra Mẹ Rồng

Zyra Mẹ Rồng
Akali Y Tá

Akali Y Tá
Lux Quân Đoàn Thép

Lux Quân Đoàn Thép
Rengar Ánh Sáng Tối Cao

Rengar Ánh Sáng Tối Cao
Mundo Mundo

Mundo Mundo
Brand Thây Ma

Brand Thây Ma
Ezreal Thanh Lịch

Ezreal Thanh Lịch
Quý Ông Gragas

Quý Ông Gragas
Kayle Lục Bảo

Kayle Lục Bảo
KhaZix Vệ Binh Sa Mạc
Malphite San Hô

Malphite San Hô
Morgana Lưu Đày

Morgana Lưu Đày
Rammus Vệ Binh Sa Mạc

Rammus Vệ Binh Sa Mạc
Rumble Bên Bờ Hồ

Rumble Bên Bờ Hồ
Ryze Pha Lê Đen

Ryze Pha Lê Đen
Singed Tai Họa

Singed Tai Họa
Talon Ngoài Vòng Pháp Luật

Talon Ngoài Vòng Pháp Luật
Teemo Hướng Đạo Sinh

Teemo Hướng Đạo Sinh
Udyr Hoang Dã

Udyr Hoang Dã
Volibear Đô Vật Sấm Sét

Volibear Đô Vật Sấm Sét
Warwick Bà Ngoại

Warwick Bà Ngoại
Warwick Sói Lãnh Nguyên

Warwick Sói Lãnh Nguyên
Xin Zhao Hoàng Gia

Xin Zhao Hoàng Gia
Ziggs Bác Học Điên

Ziggs Bác Học Điên
Kayn Thợ Săn Linh Hồn

Kayn Thợ Săn Linh Hồn
Annie Gô-tích

Annie Gô-tích
Ashe Rừng Xanh

Ashe Rừng Xanh
ChoGath Thời Tiền Sử
Darius Vũ Khí Sinh Học

Darius Vũ Khí Sinh Học
Mundo Giám Đốc

Mundo Giám Đốc
Twitch Trung Cổ

Twitch Trung Cổ
Annie Sinh Nhật

Annie Sinh Nhật',
N'Tiểu Tiên Cá 3*
Hộ Vệ Vinh Quang  1*

Hộ Vệ Vinh Quang 1*
Hồn Ma Đại Vinh Quang 1*

Hồn Ma Đại Vinh Quang 1*
Hồn Ma Vinh Quang 1*

Hồn Ma Vinh Quang 1*
Tiên Linh Linh Đại Vinh Quang 1*

Tiên Linh Linh Đại Vinh Quang 1*
Tiên Linh Linh Vinh Quang 1*

Tiên Linh Linh Vinh Quang 1*
Thạch Dẻo 1*

Thạch Dẻo 1*
Kỳ Nhông 1*

Kỳ Nhông 1*
Cánh Cụt Viêm Hỏa Trạng Nguyên 1*

Cánh Cụt Viêm Hỏa Trạng Nguyên 1*
Rùa Địa Thạch Trạng Nguyên 2*

Rùa Địa Thạch Trạng Nguyên 2*
Rùa Địa Thạch Trạng Nguyên 1*

Rùa Địa Thạch Trạng Nguyên 1*
Rùa Hắc Ám Trạng Nguyên 1*

Rùa Hắc Ám Trạng Nguyên 1*
Fuwa Tiên Tộc 1*

Fuwa Tiên Tộc 1*
Hồn Ma Lửa 1*

Hồn Ma Lửa 1*
Hồn Ma Nguyệt Trảo 1*

Hồn Ma Nguyệt Trảo 1*
Hồn Ma Mặt Nạ 1*

Hồn Ma Mặt Nạ 1*
Hồn Ma Vật Chất Tối 1*

Hồn Ma Vật Chất Tối 1*
Tiểu Tiên Cá  1*

Tiểu Tiên Cá 1*
Tiểu Tiên Cá  2*

Tiểu Tiên Cá 2*
Chuột Nhanh Nhạy Ma Sứ  1*

Chuột Nhanh Nhạy Ma Sứ 1*
Tiên Linh Linh Tiên Cá 1*

Tiên Linh Linh Tiên Cá 1*
Tiên Linh Linh Siêu Cay 2*

Tiên Linh Linh Siêu Cay 2*
Thần Lộc Huyết Nguyệt 1*

Thần Lộc Huyết Nguyệt 1*
Hiệp Sĩ Cú Thiên Hà 1*

Hiệp Sĩ Cú Thiên Hà 1*
Cá Voi Cổ Đại 1*

Cá Voi Cổ Đại 1*
Bé Bọ Ixtal 1*

Bé Bọ Ixtal 1*
Gà Máy Hóa Kỹ 1*

Gà Máy Hóa Kỹ 1*
Người Đá Sương Đen 1*

Người Đá Sương Đen 1*
Người Đá Công Nghệ 2*

Người Đá Công Nghệ 2*
Melisma Phá Cách 1*

Melisma Phá Cách 1*
DJ Ossia 1*

DJ Ossia 1*
QiQi Đơn Ca 1*

QiQi Đơn Ca 1*
QiQi Phá Cách 1*

QiQi Phá Cách 1*
Dango Kẹo Cao Su 1*

Dango Kẹo Cao Su 1*
Dango Bánh Quy Gừng 2*

Dango Bánh Quy Gừng 2*
Dango Bánh Quy Gừng 1*

Dango Bánh Quy Gừng 1*
Fuwa Pháo Hoa 1*

Fuwa Pháo Hoa 1*
Fuwa Nguyện Ước 1*

Fuwa Nguyện Ước 1*
Fuwa 1*

Fuwa 1*
Rùa Thủy Triều 1*

Rùa Thủy Triều 1*
Cáo Tiên Hoang Dã 1*

Cáo Tiên Hoang Dã 1*
Cáo Tiên Nguyệt Dạ 1*

Cáo Tiên Nguyệt Dạ 1*
Cáo Tiên U Hồn 1*

Cáo Tiên U Hồn 1*
Hộ Vệ Đá Quý 1*

Hộ Vệ Đá Quý 1*
Hiệp Sĩ Cánh Cụt Chân Băng 1*

Hiệp Sĩ Cánh Cụt Chân Băng 1*
Hiệp Sĩ Cánh Cụt Siêu Cay 1*

Hiệp Sĩ Cánh Cụt Siêu Cay 1*
Chuột Chũi Độc Hại 1*

Chuột Chũi Độc Hại 1*
Tinh Linh Bánh Sinh Nhật 1*

Tinh Linh Bánh Sinh Nhật 1*
Tinh Linh Băng Giá 2*

Tinh Linh Băng Giá 2*
Tinh Linh Băng Giá 1*

Tinh Linh Băng Giá 1*
Cánh Bạc Lạc Lối 1*

Cánh Bạc Lạc Lối 1*
Quái Sừng Dung Nham 1*

Quái Sừng Dung Nham 1*
Quái Sừng Tim Sư Tử 1*

Quái Sừng Tim Sư Tử 1*
Quái Sừng Lãnh Nguyên 1*

Quái Sừng Lãnh Nguyên 1*
Shisa Siêu Anh Hùng 2*

Shisa Siêu Anh Hùng 2*
Shisa Siêu Anh Hùng 1*

Shisa Siêu Anh Hùng 1*
Shisa Giả Hành Tôn 1*

Shisa Giả Hành Tôn 1*',
'imgproduct/130892/1.jpg','imgproduct/130892/2.jpg','imgproduct/130892/3.jpg','imgproduct/130892/4.jpg','imgproduct/130892/5.jpg','imgproduct/130892/6.jpg','','')


--Orders
drop table Orders
create table Orders(id int identity(1,1) primary key, userid int foreign key references Account(id), orderdate DATETIME DEFAULT CURRENT_TIMESTAMP)

--OrderDetail
drop table OrderDetail
create table OrderDetail(orderid int foreign key references Orders(id), productid int foreign key references Product(id))

--MangerAccount
drop table ManagerAccount
create table ManagerAccount(productid int foreign key references Product(id), name nvarchar(50), pass nvarchar(50))

--select
select * from Product p, ProductDetail pd
where p.id = pd.productid and p.id = 1
select p.id,p.categoryid,p.rankdd,p.rankdtcl,p.champion,p.RP,p.skin,p.little,p.price from Product p, ProductDetail pd
where
p.rankdd like '%?%'
and p.rankdtcl like '%?%'
p.champion like
and p.rp between ? and ?
and p.skin between ? and ?
and p.little between ? and ?
and price between ? and ?
and pd.totalskin like '%?%'
and pd.totallittle like '%?%'

select top(8)* from Product p
where p.price = ?

select * from ManagerUser
where accountid = 2


select * from  Product p, Category c
where p.rankdd like '%%'
and p.rankdtcl like '%%'
and p.champion between 0 and 200
and p.rp between 0 and 100
and p.skin between 0 and 100
and p.little between 0 and 100
and p.price between 50000 and 1000000
order by p.price
offset 0 rows
fetch next 12 rows only

select * from Product

update Product
set rankdd = N'chưa có', rankdtcl = N'chưa có',champion=0,RP=0, skin=0, little=0
where id = 26112001

delete from Account
where ID = 3

select * from Product
where rankdd like '%vàng%'

update Account
set name = N'Quang',email = 'quangtranhhpt2@gmail.com',phone='0326736588',accountbalance=9999999
where ID = 4


-- insert order, insert orderdetail, update accountbalance, update status, xoa gio hang

delete from Orders
where id = 3


insert into Orders values (?,GETDATE())
insert into OrderDetail values (5,1)
update Product set status = 1 where id = 1
UPDATE Account set accountbalance = accountbalance - ? 
where ID = ?

select count(*) from Account a, Orders o
where a.ID = o.userid and userid = ?

select *from Account
select * from orders
select * from orderdetail
delete from OrderDetail
delete from Orders

select * from Product p, ProductDetail pd
where p.id = pd.productid and pd.totalskin like N'%lux thập đại nguyên tố%'

select o.id, o.orderdate, od.productid, p.price from Orders o, OrderDetail od, Product p
where o.id = od.orderid and p.id = od.productid and o.userid = 5
order by o.id
offset 0 rows
fetch next 7 rows only


select o.id, o.orderdate, od.productid, p.price from Orders o, OrderDetail od, Product p
where o.id = od.orderid and p.id = od.productid and o.userid = 5
and o.orderdate between '2022-03-01' and '2022-03-20'

