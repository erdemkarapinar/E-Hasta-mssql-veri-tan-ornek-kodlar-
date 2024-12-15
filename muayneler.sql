CREATE TABLE muayeneler (
  muayeneID int NOT NULL IDENTITY(1,1),  
  randevuID int NOT NULL,
  aciklama varchar(255) DEFAULT NULL,
  ilacID int DEFAULT NULL,  
  ilacAdet int DEFAULT NULL,  
  PRIMARY KEY (muayeneID),
  --KEY TC (TC) USING BTREE,
  --KEY klinikID (klinikID) USING BTREE,
  --KEY doktorID (doktorID) USING BTREE,
  CONSTRAINT randevu_ID FOREIGN KEY (randevuID) REFERENCES randevular (randevuID),  
  CONSTRAINT ilac_ID FOREIGN KEY (ilacID) REFERENCES ilaclar (ilacID)  
  )