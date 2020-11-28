---ÜRÜN KATEGORÝ BÝLGÝLERÝ---
CREATE TABLE URUN_KATEGORILER
(
Kategori_id tinyint identity (1,1) PRIMARY KEY,
KategoriMarka_id smallint,
Kategori varchar(50) not null,

CONSTRAINT URUN_KATEGORILER_FK FOREIGN KEY(KategoriMarka_id)
REFERENCES URUN_MARKALAR(Marka_id)
)