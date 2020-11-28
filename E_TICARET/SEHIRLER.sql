---ÞEHÝR BÝLGÝLERÝ---
CREATE TABLE SEHIRLER
(
Sehir_id smallint identity(1,1) PRIMARY KEY,
SehirUlke_id tinyint,
Sehir varchar(50) not null,

CONSTRAINT SEHIRLER_FK FOREIGN KEY(SehirUlke_id)
REFERENCES ULKELER(Ulke_id)
)