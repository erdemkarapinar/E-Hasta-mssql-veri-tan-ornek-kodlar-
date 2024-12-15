CREATE TABLE ilaclar (
  ilacID int NOT NULL IDENTITY(1,1),    
  ilacAd varchar(255) DEFAULT NULL,
  ilacFirma varchar(255) DEFAULT NULL, 
  ilacFiyat decimal(10,2),
  ilacStok tinyint DEFAULT NULL,
  PRIMARY KEY (ilacID)
  --KEY TC (TC) USING BTREE,
  --KEY klinikID (klinikID) USING BTREE,
  --KEY doktorID (doktorID) USING BTREE,
  --CONSTRAINT randevu_ID FOREIGN KEY (randevuID) REFERENCES randevular (randevuID)  
  )