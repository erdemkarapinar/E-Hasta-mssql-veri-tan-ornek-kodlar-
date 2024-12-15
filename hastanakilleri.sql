DROP TABLE IF EXISTS nakiller;
CREATE TABLE nakiller (
  nakilID int NOT NULL IDENTITY(1,1),
  nakilTC varchar(255) DEFAULT NULL,
  nakiledilenHastane varchar(255) DEFAULT NULL,
  doktorID int DEFAULT NULL,
  PRIMARY KEY (nakilID),
  --KEY nakilTC (nakilTC) USING BTREE,
  --KEY doktorID (doktorID) USING BTREE,
  CONSTRAINT doktorID FOREIGN KEY (doktorID) REFERENCES doktorlar (doktorID),
  CONSTRAINT nakilTC FOREIGN KEY (nakilTC) REFERENCES hastalar (TC)
--ENGINE=InnoDB DEFAULT CHARSET=utf8;
)