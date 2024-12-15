CREATE TABLE hastalar (
  TC varchar(255) NOT NULL,
  hastaAd varchar(255) DEFAULT NULL,
  hastaSoyad varchar(255) DEFAULT NULL,
  hastaCinsiyet varchar(50) DEFAULT NULL,
  hastaDogumyer varchar(255) DEFAULT NULL,
  hastaDogumTarih date DEFAULT NULL,
  hastaBabaad varchar(255) DEFAULT NULL,
  hastaAnneAd varchar(255) DEFAULT NULL,
  hastaCeptel varchar(255) DEFAULT NULL,
  hastaEposta varchar(255) DEFAULT NULL,  
  PRIMARY KEY (TC))