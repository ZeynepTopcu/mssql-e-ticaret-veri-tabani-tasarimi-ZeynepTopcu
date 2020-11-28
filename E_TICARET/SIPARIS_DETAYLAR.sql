---SÝPARÝÞÝN DETAYLARI---
CREATE TABLE SIPARIS_DETAYLAR
(
Detay_id int identity(1,1) PRIMARY KEY,
SiparisDetay_Siparis_id int,
SiparisDetay_Urun_id int,
Siparis_Adet int not null,
Siparis_Birim_Fiyat float not null,
Siparis_SatýrToplam as Siparis_Adet * Siparis_Birim_Fiyat,

CONSTRAINT SIPARIS_DETAYLAR_FK FOREIGN KEY(SiparisDetay_Siparis_id)
REFERENCES SIPARISLER(Sýparis_id),

CONSTRAINT SIPARIS_DETAYLAR2_FK FOREIGN KEY(SiparisDetay_Urun_id)
REFERENCES URUNLER(Urun_id)
)
