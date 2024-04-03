INSERT INTO birimler (birim_ad) 
VALUES ('Yaz�l�m'), ('Donan�m'), ('G�venlik');

INSERT INTO calisanlar (ad, soyad, maas, katilma_tarihi, calisan_birim_id) 
VALUES ('�smail', '��eri', 100000, '2014-02-20 00:00:00.000', 1), ('Hami', 'Sat�lm��', 80000, '2014-06-11 00:00:00.000', 1),
('Durmu�', '�ahin', 300000, '2014-02-20 00:00:00.000', 2), ('Ka�an', 'Yazar', 500000, '2014-02-20 00:00:00.000', 3), 
('Meryem', 'Soysald�', 500000, '2014-06-11 00:00:00.000', 3), ('Duygu', 'Ak�ehir', 200000, '2014-06-11 00:00:00.000', 2),
('K�bre', 'Seyhan', 75000, '2014-01-20 00:00:00.000', 1), ('G�lcan', 'Y�ld�z', 90000, '2014-04-11 00:00:00.000', 3);

INSERT INTO ikramiye (ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih)
VALUES (1, 5000, '2016-02-20 00:00:00.000'), (2, 3000, '2016-06-11 00:00:00.000'), (3, 4000, '2016-02-20 00:00:00.000'),
(1, 4500, '2016-02-20 00:00:00.000'), (2, 3500, '2016-06-11 00:00:00.000');

INSERT INTO unvan(unvan_calisan_id, unvan_calisan, unvan_tarih)
VALUES (1, 'Y�netici', '2016-02-20 00:00:00.000'), (2, 'Personel', '2016-06-11 00:00:00.000'),
(8, 'Personel', '2016-02-20 00:00:00.000'), (5, 'M�d�r', '2016-02-20 00:00:00.000'), 
(4, 'Y�netici Yard�mc�s�', '2016-02-20 00:00:00.000'), (7, 'Personel', '2016-02-20 00:00:00.000'),
(6, 'Tak�m Lideri', '2016-02-20 00:00:00.000'), (3, 'Tak�m Lideri', '2016-02-20 00:00:00.000');

