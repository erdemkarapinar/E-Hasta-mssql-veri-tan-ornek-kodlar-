CREATE TABLE doktorlar (
  doktorID int PRIMARY KEY NOT NULL IDENTITY(1,1),    
  doktorUnvan varchar(255) DEFAULT NULL,
  doktorAd varchar(255) DEFAULT NULL,
  doktorSoyad varchar(255) DEFAULT NULL,
  doktorMaas decimal(10,2) DEFAULT NULL,
  klinikID int DEFAULT NULL,
  --PRIMARY KEY (doktorID),
  --KEY klinikID (klinikID) USING BTREE,
  --KEY doktorID (doktorID)
  --ENGINE=InnoDB IDENTITY(1,1)=2 DEFAULT CHARSET=utf8;	
  CONSTRAINT klinik_id FOREIGN KEY (klinikID) REFERENCES klinikler (klinikID)
  )