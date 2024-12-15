CREATE TABLE randevular (
  randevuID int NOT NULL IDENTITY(1,1),
  TC varchar(255) DEFAULT NULL,
  klinikID int DEFAULT NULL,  
  doktorID int DEFAULT NULL,
  tarih date DEFAULT NULL,
  saat varchar(255) DEFAULT NULL,
  PRIMARY KEY (randevuID),
  --KEY TC (TC) USING BTREE,
  --KEY klinikID (klinikID) USING BTREE,
  --KEY doktorID (doktorID) USING BTREE,
  CONSTRAINT TC FOREIGN KEY (TC) REFERENCES hastalar (TC),
  CONSTRAINT doktor_ID FOREIGN KEY (doktorID) REFERENCES doktorlar (doktorID),
  CONSTRAINT randevuklinik_id FOREIGN KEY (klinikID) REFERENCES klinikler (klinikID)
)