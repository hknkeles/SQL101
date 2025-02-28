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
