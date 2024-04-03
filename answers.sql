
--3. soru

SELECT c.ad, c.soyad, c.maas
FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
WHERE b.birim_ad IN ('Yazýlým', 'Donaným');



-- 4. soru


SELECT ad, soyad, maas
FROM calisanlar
WHERE maas = (
    SELECT MAX(maas)
    FROM calisanlar
);


-- 5. soru


SELECT b.birim_ad, COUNT(c.calisan_id) AS calisan_sayisi
FROM birimler b
JOIN calisanlar c ON b.birim_id = c.calisan_birim_id
GROUP BY b.birim_ad;


-- 6. soru


SELECT u.unvan_calisan, COUNT(u.unvan_calisan_id) AS calisan_sayisi
FROM unvan u
GROUP BY u.unvan_calisan
HAVING COUNT(u.unvan_calisan_id) > 1;



-- 7. soru

SELECT ad, soyad, maas
FROM calisanlar
WHERE maas BETWEEN 50000 AND 100000;


--8. soru


SELECT c.ad, c.soyad, b.birim_ad, u.unvan_calisan, i.ikramiye_ucret
FROM calisanlar c
JOIN birimler b ON c.calisan_birim_id = b.birim_id
JOIN unvan u ON c.calisan_id = u.unvan_calisan_id
JOIN ikramiye i ON c.calisan_id = i.ikramiye_calisan_id;


--9. soru


SELECT c.ad, c.soyad, u.unvan_calisan
FROM calisanlar c
JOIN unvan u ON c.calisan_id = u.unvan_calisan_id
WHERE u.unvan_calisan IN ('Yönetici', 'Müdür');


--10. soru


SELECT ad, soyad, maas, birim_ad
FROM (
    SELECT c.ad, c.soyad, c.maas, b.birim_ad,
           ROW_NUMBER() OVER (PARTITION BY b.birim_id ORDER BY c.maas DESC) AS siralama
    FROM calisanlar c
    JOIN birimler b ON c.calisan_birim_id = b.birim_id
) AS temp
WHERE siralama = 1;



