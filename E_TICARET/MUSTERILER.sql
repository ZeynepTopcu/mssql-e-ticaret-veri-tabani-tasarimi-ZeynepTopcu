---MÜÞTERÝ BÝLGÝLERÝ---
CREATE TABLE MUSTERILER 
(
Musteri_id int identity(1,1) PRIMARY KEY,
Ad nvarchar(50) not null,
Soyad nvarchar(50) not null,
Cinsiyet varchar(1) not null,
Dogum_Tarih date not null,
MusteriMeslek_id smallint,
Olusturma_Tarih datetime not null,
Email varchar(50) not null,
TelNo varchar(15) not null,

CONSTRAINT MUSTERILER_FK FOREIGN KEY(MusteriMeslek_id)
REFERENCES MESLEKLER(Meslek_id)
)