---ÜRÜN BÝLGÝLERÝ---
CREATE TABLE URUNLER
(
Urun_id int identity(1,1) PRIMARY KEY,
UrunKod varchar(50) not null,
UrunAd varchar(50) not null,
UrunFiyat float not null,
UrunKategori_id tinyint,
UrunMarka_id smallint,

CONSTRAINT URUNLER_FK FOREIGN KEY(UrunKategori_id)
REFERENCES URUN_KATEGORILER(Kategori_id),

CONSTRAINT URUNLER2_FK FOREIGN KEY(UrunMarka_id)
REFERENCES URUN_MARKALAR(Marka_id)
)