---ÝLÇE BÝLGÝLERÝ---
CREATE TABLE ILCELER
(
Ilce_id int identity(1,1) PRIMARY KEY,
IlceSehir_id smallint, 
Ilce varchar(50) not null,

CONSTRAINT ILCELER_FK FOREIGN KEY(IlceSehir_id)
REFERENCES SEHIRLER(Sehir_id )
)