CREATE TABLE klinikler (
  klinikID int NOT NULL IDENTITY(1,1) ,
  klinikAdi varchar(255) DEFAULT NULL,
  PRIMARY KEY (klinikID)