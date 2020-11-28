---ADRES BÝLGÝLERÝ---
CREATE TABLE ADRESLER
(
Adres_id int identity(1,1) PRIMARY KEY,
AdresMusteri_id int,  
AdresUlke_id tinyint,
AdresSehir_id smallint,
AdresIlce_id int,
AdresSemt_id int,
PostaKod varchar(20) not null,
Acýk_Adres varchar(500) not null,

CONSTRAINT ADRESLER_FK FOREIGN KEY(AdresMusteri_id)
REFERENCES MUSTERILER(Musteri_id),

CONSTRAINT ADRESLER2_FK FOREIGN KEY(AdresUlke_id)
REFERENCES ULKELER(Ulke_id),

CONSTRAINT ADRESLER3_FK FOREIGN KEY(AdresSehir_id)
REFERENCES SEHIRLER(Sehir_id),

CONSTRAINT ADRESLER4_FK FOREIGN KEY(AdresIlce_id)
REFERENCES ILCELER(Ilce_id),

CONSTRAINT ADRESLER5_FK FOREIGN KEY(AdresSemt_id )
REFERENCES SEMTLER(Semt_id)
)