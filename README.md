**dvdrental Örnek Veritabanı**

[İndirme Linki](https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip)


### 📖 PRATİK 1 - dvdrental Veritabanı
<hr>

#### ❓SORU

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

- **film** tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
-   **film** tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
-   **film** tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
-   **customer** tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
-   **film** tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.




🟩 **CEVAP**
<details>
  <summary>Kodu görmek için tıklayınız.</summary>

```sql
-- film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
SELECT title, description FROM film;

-- film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
SELECT * FROM film WHERE length>60 AND length<75;

-- film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
SELECT * FROM film WHERE rental_rate=0.99 AND (replacement_cost=12.99 OR replacement_cost=28.99);

-- customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
SELECT last_name FROM customer WHERE first_name='Mary'; -- Smith

-- film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.
SELECT * FROM film WHERE NOT length > 50 AND NOT (rental_rate=2.99 OR rental_rate=4.99);

```
</details>
<hr>

### 📖 PRATİK 2 - dvdrental Veritabanı
<hr>

#### ❓SORU

Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

- **film** tablosunda bulunan tüm sütunlardaki verileri replacement cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)
- **actor** tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)
- **film** tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)




🟩 **CEVAP**
<details>
  <summary>Kodu görmek için tıklayınız.</summary>

```sql
-- film tablosunda bulunan tüm sütunlardaki verileri replacement_cost değeri 12.99 dan büyük eşit ve 16.99 küçük olma koşuluyla sıralayınız ( BETWEEN - AND yapısını kullanınız.)
SELECT * FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99;

-- actor tablosunda bulunan first_name ve last_name sütunlardaki verileri first_name 'Penelope' veya 'Nick' veya 'Ed' değerleri olması koşuluyla sıralayınız. ( IN operatörünü kullanınız.)
SELECT first_name, last_name FROM actor 
WHERE first_name IN ('Penelope', 'Nick', 'Ed');

-- film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olma koşullarıyla sıralayınız. ( IN operatörünü kullanınız.)
SELECT * FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99 ) AND replacement_cost IN (12.99, 15.99, 28.99);
```
</details>
<hr>


### 📖 PRATİK 3 - dvdrental Veritabanı
<hr>

#### ❓SORU


Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

- **country** tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
- **country** tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
- **film** tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
- **film** tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.



🟩 **CEVAP**
<details>
  <summary>Kodu görmek için tıklayınız.</summary>

```sql
-- country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
SELECT * FROM country
WHERE country LIKE 'A%a';

-- country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
SELECT * FROM country
WHERE LENGTH(country)>=6 
AND country LIKE '%n';

-- film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
SELECT title FROM film
WHERE title ILIKE '%T%T%T%T';

-- film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
SELECT * FROM film
WHERE title LIKE 'C%'
AND length > 90
AND rental_rate = 2.99;
```
</details>
<hr>


### 📖 PRATİK 4 - dvdrental Veritabanı
<hr>

#### ❓SORU


Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

- **film** tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
- **film** tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
- **film** tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
- **country** tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
- **city** tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?



🟩 **CEVAP**
<details>
  <summary>Kodu görmek için tıklayınız.</summary>

```sql
-- film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
SELECT DISTINCT replacement_cost FROM film;

-- film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
SELECT COUNT(*) FROM film
WHERE title LIKE 'T%'
AND rating='G';

-- country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT COUNT(*) FROM country
WHERE LENGTH(country)=5;

-- city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
SELECT COUNT(*) FROM city
WHERE city ILIKE '%R'; 
```
</details>
<hr>


### 📖 PRATİK 5 - dvdrental Veritabanı
<hr>

#### ❓SORU


Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

- **film** tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
- **film** tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
- **customer** tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.



🟩 **CEVAP**
<details>
  <summary>Kodu görmek için tıklayınız.</summary>

```sql
-- film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
SELECT title, length FROM film
WHERE title LIKE '%n'
ORDER BY length DESC 
LIMIT 5;

-- film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
SELECT title, length FROM film
WHERE title LIKE '%n'
ORDER BY length ASC 
OFFSET 5
LIMIT 5;

-- customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
SELECT * FROM customer
WHERE store_id=1
ORDER BY last_name DESC 
LIMIT 4;

```
</details>
<hr>



### 📖 PRATİK 6 - dvdrental Veritabanı
<hr>

#### ❓SORU


Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

- **film** tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
- **film** tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
- **film** tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
- **film** tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?



🟩 **CEVAP**
<details>
  <summary>Kodu görmek için tıklayınız.</summary>

```sql
-- film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT ROUND(AVG(rental_rate),3) FROM film;

-- film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
SELECT COUNT(title) FROM film
WHERE title LIKE 'C%';
-- film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

-- film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length>150;
```
</details>
<hr>

### 📖 PRATİK 7 - dvdrental Veritabanı
<hr>

#### ❓SORU


 Aşağıdaki sorgu senaryolarını **dvdrental** örnek veri tabanı üzerinden gerçekleştiriniz.

1. **film** tablosunda bulunan filmleri **rating** değerlerine göre gruplayınız.
2. **film** tablosunda bulunan filmleri **replacement_cost** sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
3. **customer** tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
4. **city** tablosunda bulunan şehir verilerini **country_id** sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.



🟩 **CEVAP**
<details>
  <summary>Kodu görmek için tıklayınız.</summary>

```sql
-- film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating, COUNT(*) FROM film
GROUP BY rating;

-- film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*)>50;

-- customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
SELECT * FROM customer;

SELECT store_id, COUNT(*) 
FROM customer
GROUP BY store_id;

-- city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id, COUNT(country_id)
FROM city
GROUP BY country_id
ORDER BY COUNT(country_id) DESC
LIMIT 1;
```
</details>
<hr>



### 📖 PRATİK 8 - Tablo Ekleme - Silme - Güncelleme
<hr>

#### ❓SORU


1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.



🟩 **CEVAP**
<details>
  <summary>Kodu görmek için tıklayınız.</summary>

```sql
-- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	birthday DATE,
	email VARCHAR(100)
);

-- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday, email) values ('Cindy', '1940-11-17', 'chawley0@github.io');
insert into employee (name, birthday, email) values ('Bartel', '1959-03-11', 'bbristoe1@usa.gov');
insert into employee (name, birthday, email) values ('Carolin', '1930-09-26', 'csherbrooke2@ow.ly');
insert into employee (name, birthday, email) values ('Lorine', '1998-02-19', 'lluisetti3@paginegialle.it');
insert into employee (name, birthday, email) values ('Sloan', '1970-08-17', 'snurse4@bloglines.com');
insert into employee (name, birthday, email) values ('Baxy', '1935-09-14', 'bjurca5@php.net');
insert into employee (name, birthday, email) values ('Melinda', '1935-03-19', 'mcreber6@wired.com');
insert into employee (name, birthday, email) values ('Niccolo', '1908-01-25', 'nfouracres7@domainmarket.com');
insert into employee (name, birthday, email) values ('Selma', '1906-10-03', 'sbuckerfield8@tmall.com');
insert into employee (name, birthday, email) values ('Pearle', '1929-12-22', 'pprati9@wsj.com');
insert into employee (name, birthday, email) values ('Kathye', '1906-12-21', 'kferiaa@amazonaws.com');
insert into employee (name, birthday, email) values ('Gerianna', '2000-07-14', 'gdeversonb@etsy.com');
insert into employee (name, birthday, email) values ('Laurella', '1984-11-23', 'lcarmec@omniture.com');
insert into employee (name, birthday, email) values ('Allyce', '1998-06-28', 'acroleyd@wordpress.com');
insert into employee (name, birthday, email) values ('Dre', '1984-02-19', 'dcragge@mysql.com');
insert into employee (name, birthday, email) values ('Dan', '1946-04-30', 'dacarsonf@biblegateway.com');
insert into employee (name, birthday, email) values ('Antonio', '1973-11-26', 'adingwallg@cpanel.net');
insert into employee (name, birthday, email) values ('Dougie', '1952-03-14', 'dsolleyh@sphinn.com');
insert into employee (name, birthday, email) values ('Randal', '1922-11-26', 'rtwitchingi@ed.gov');
insert into employee (name, birthday, email) values ('Ekaterina', '1909-03-01', 'eomulderrigj@so-net.ne.jp');
insert into employee (name, birthday, email) values ('Eleen', '1954-06-12', 'ejermeyk@ft.com');
insert into employee (name, birthday, email) values ('Chen', '1993-12-13', 'cperfittl@wired.com');
insert into employee (name, birthday, email) values ('Hesther', '2003-05-30', 'hbuttrumm@dot.gov');
insert into employee (name, birthday, email) values ('Dmitri', '1988-05-13', 'djozefowiczn@tuttocitta.it');
insert into employee (name, birthday, email) values ('Ogdan', '1945-02-06', 'othoringtono@blogtalkradio.com');
insert into employee (name, birthday, email) values ('Aleksandr', '1977-04-22', 'aalbertsp@cornell.edu');
insert into employee (name, birthday, email) values ('Maryrose', '1957-03-27', 'mmuttockq@vinaora.com');
insert into employee (name, birthday, email) values ('Reese', '1982-07-16', 'rconaghyr@washingtonpost.com');
insert into employee (name, birthday, email) values ('Kizzie', '1965-02-28', 'kwooduss@geocities.jp');
insert into employee (name, birthday, email) values ('Anna-maria', '1981-11-30', 'agirkinst@alexa.com');
insert into employee (name, birthday, email) values ('Barnaby', '2004-05-25', 'bdycheu@posterous.com');
insert into employee (name, birthday, email) values ('Fremont', '1905-02-24', 'fstricklerv@mac.com');
insert into employee (name, birthday, email) values ('Kameko', '1945-01-03', 'kcorradiw@addthis.com');
insert into employee (name, birthday, email) values ('Jefferey', '1916-04-16', 'jdevenportx@state.gov');
insert into employee (name, birthday, email) values ('Jeromy', '1979-12-31', 'jcrankey@cnet.com');
insert into employee (name, birthday, email) values ('Isidore', '1969-02-14', 'ischoalesz@wp.com');
insert into employee (name, birthday, email) values ('Sadye', '1912-12-02', 'sgounard10@php.net');
insert into employee (name, birthday, email) values ('Debi', '1922-04-07', 'dricci11@icio.us');
insert into employee (name, birthday, email) values ('Dav', '1917-08-13', 'doshea12@cbsnews.com');
insert into employee (name, birthday, email) values ('Rafa', '1934-08-07', 'rbonson13@businessweek.com');
insert into employee (name, birthday, email) values ('Kele', '2002-11-27', 'kryles14@joomla.org');
insert into employee (name, birthday, email) values ('Kerri', '1939-05-05', 'khumberstone15@slashdot.org');
insert into employee (name, birthday, email) values ('Nessa', '1986-09-23', 'nmcgiveen16@phoca.cz');
insert into employee (name, birthday, email) values ('Ignaz', '1966-07-01', 'iheintzsch17@marketwatch.com');
insert into employee (name, birthday, email) values ('Hercules', '2003-09-15', 'hrotham18@etsy.com');
insert into employee (name, birthday, email) values ('Tillie', '1957-04-23', 'tyann19@sogou.com');
insert into employee (name, birthday, email) values ('Zorina', '1971-05-02', 'zpercifull1a@sfgate.com');
insert into employee (name, birthday, email) values ('Lila', '1987-10-30', 'lhenfre1b@cdbaby.com');
insert into employee (name, birthday, email) values ('Orsola', '1933-12-17', 'oivakhin1c@nsw.gov.au');
insert into employee (name, birthday, email) values ('Gayle', '1950-04-29', 'ggosland1d@wufoo.com');
SELECT * FROM employee;

-- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name='', birthday ='2000-10-12', email='hakan@gmail.com'
WHERE id>45;

-- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id BETWEEN 40 AND 45;
```
</details>
<hr>


### 📖 PRATİK # - dvdrental Veritabanı
<hr>

#### ❓SORU


soru



🟩 **CEVAP**
<details>
  <summary>Kodu görmek için tıklayınız.</summary>

```sql
kodu yaz
```
</details>
<hr>