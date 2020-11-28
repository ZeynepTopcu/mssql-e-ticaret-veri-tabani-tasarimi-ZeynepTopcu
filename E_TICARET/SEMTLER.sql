---SEMT BÝLGÝLERÝ---
CREATE TABLE SEMTLER
(
Semt_id int identity(1,1) PRIMARY KEY,
SemtIlce_id int,  
Semt varchar(50) not null,

CONSTRAINT SEMTLER_FK FOREIGN KEY(SemtIlce_id)
REFERENCES ILCELER(Ilce_id )
)