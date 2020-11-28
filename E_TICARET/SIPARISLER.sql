---SÝPARÝÞ BÝLGÝLERÝ---
CREATE TABLE SIPARISLER
(
Sýparis_id int identity (1,1) PRIMARY KEY,
SiparisKod varchar(50) not null,
SiparisMusteri_id int, 
SiparisTarih datetime not null default getdate(),
SiparisTutar float not null,
SiparisDurum_id tinyint,

CONSTRAINT SIPARISLER_FK FOREIGN KEY(SiparisMusteri_id)
REFERENCES MUSTERILER(Musteri_id),

CONSTRAINT SIPARISLER2_FK FOREIGN KEY(SiparisDurum_id)
REFERENCES SIPARIS_DURUMLAR(Durum_id)
)
