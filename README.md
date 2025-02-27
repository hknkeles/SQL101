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