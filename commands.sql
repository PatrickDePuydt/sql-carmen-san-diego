SELECT * FROM countries;

-- SELECT * FROM students WHERE name = 'Bob Jones';
-- SELECT id, name FROM students;


SELECT name, population FROM countries;

SELECT name, population FROM countries ORDER BY population DESC;

SELECT name, population, continent  FROM countries ORDER BY population DESC;

SELECT name, population, continent  FROM countries ORDER BY population DESC WHERE continent="South America";

SELECT name, population, continent FROM countries WHERE continent="South America";

SELECT name, population, continent  FROM countries WHERE continent='South America'
ORDER BY population
;

SELECT name, population, continent  FROM countries;

SELECT name, population, continent  FROM countries WHERE continent='Europe'
ORDER BY population
;

SELECT name, population, region, continent  FROM countries 
WHERE region='Southern Europe'
ORDER BY population
;

--             name               | population |     region      | continent
-- ---------------------------------+------------+-----------------+-----------
--  Holy See (Vatican Cities State) |       1000 | Southern Europe | Europe
--  Gibraltar                       |      25000 | Southern Europe | Europe
--  San Marino                      |      27000 | Southern Europe | Europe
--  Andorra                         |      78000 | Southern Europe | Europe
--  Malta                           |     380200 | Southern Europe | Europe
--  Slovenia                        |    1987800 | Southern Europe | Europe
--  Macedonia                       |    2024000 | Southern Europe | Europe
--  Albania                         |    3401200 | Southern Europe | Europe
--  Bosnia and Herzegovina          |    3972000 | Southern Europe | Europe
--  Croatia                         |    4473000 | Southern Europe | Europe
--  Portugal                        |    9997600 | Southern Europe | Europe
--  Greece                          |   10545700 | Southern Europe | Europe
--  Yugoslavia                      |   10640000 | Southern Europe | Europe
--  Spain                           |   39441700 | Southern Europe | Europe
--  Italy                           |   57680000 | Southern Europe | Europe



\d countrylanguages

--                Table "public.countrylanguages"
--    Column    |     Type     | Collation | Nullable | Default
-- -------------+--------------+-----------+----------+---------
--  countrycode | character(3) |           | not null |
--  language    | text         |           | not null |
--  isofficial  | boolean      |           | not null |
--  percentage  | real         |           | not null |

SELECT countrycode, language, isofficial  FROM countrylanguages 
;
-- VAT

SELECT code, name, population, region, continent  FROM countries 
WHERE region='Southern Europe'
ORDER BY population
;

SELECT countrycode, language, isofficial FROM countrylanguages;

SELECT countrycode, language, isofficial FROM countrylanguages 
WHERE countrycode = 'VAT'
;
-- Italian
--  countrycode | language | isofficial 
-- -------------+----------+------------
--  VAT         | Italian  | t
-- (1 row)


SELECT countrycode, language, isofficial FROM countrylanguages 
WHERE countrycode = 'VAT';



SELECT * FROM cities;

SELECT name, countryCode, district FROM cities
WHERE countryCode='ITA';

SELECT name, countryCode, district FROM cities
WHERE countryCode='ITA' AND district='Latium';

SELECT name, countryCode, district FROM cities
WHERE countryCode='ITA' AND cities.name != cities.district;

SELECT name, countryCode, district FROM cities WHERE countryCode='ITA' AND cities.name != cities.district;

SELECT name, countryCode, district FROM cities WHERE countryCode='ITA' AND cities.name = cities.district;
--  name | countrycode | district 
-- ------+-------------+----------
-- (0 rows)
-- // Hmmmmm

-- Back to the drawing board
-- gnpold
SELECT name, countryCode, gnpold FROM countries;

-- 1157am
SELECT name, population, surfacearea, continent FROM countries WHERE region='Southern Europe' ORDER BY population;
SELECT countrycode, language, isofficial FROM countrylanguages;
-- 1201
SELECT countrycode, language, isofficial FROM countrylanguages WHERE language='Arabic'; 

SELECT countrycode, language, isofficial FROM countrylanguages WHERE language='Arabic' AND isofficial='t'; 


-- countrycode | language | isofficial 
-- -------------+----------+------------
--  DZA         | Arabic   | t
--  ARE         | Arabic   | t
--  BHR         | Arabic   | t
--  EGY         | Arabic   | t
--  IRQ         | Arabic   | t
--  YEM         | Arabic   | t
--  JOR         | Arabic   | t
--  KWT         | Arabic   | t
--  LBN         | Arabic   | t
--  LBY         | Arabic   | t
--  ESH         | Arabic   | t
--  MAR         | Arabic   | t
--  OMN         | Arabic   | t
--  QAT         | Arabic   | t
--  SAU         | Arabic   | t
--  SDN         | Arabic   | t
--  SYR         | Arabic   | t
--  TUN         | Arabic   | t
--  PSE         | Arabic   | f
--  GIB         | Arabic   | f
--  ISR         | Arabic   | t
--  FRA         | Arabic   | f
--  SOM         | Arabic   | t
--  TCD         | Arabic   | t
--  NLD         | Arabic   | f
--  DJI         | Arabic   | t
--  DNK         | Arabic   | f
--  TUR         | Arabic   | f
--  BEL         | Arabic   | f
--  SWE         | Arabic   | f
--  AUS         | Arabic   | f
--  PAN         | Arabic   | f

-- 1202
SELECT countrycode, language, isofficial FROM countrylanguages WHERE language='Arabic' AND isofficial='t'; 

-- countrycode | language | isofficial 
-- -------------+----------+------------
--  DZA         | Arabic   | t
--  ARE         | Arabic   | t
--  BHR         | Arabic   | t
--  EGY         | Arabic   | t
--  IRQ         | Arabic   | t
--  YEM         | Arabic   | t
--  JOR         | Arabic   | t
--  KWT         | Arabic   | t
--  LBN         | Arabic   | t
--  LBY         | Arabic   | t
--  ESH         | Arabic   | t
--  MAR         | Arabic   | t
--  OMN         | Arabic   | t
--  QAT         | Arabic   | t
--  SAU         | Arabic   | t
--  SDN         | Arabic   | t
--  SYR         | Arabic   | t
--  TUN         | Arabic   | t
--  ISR         | Arabic   | t
--  SOM         | Arabic   | t
--  TCD         | Arabic   | t
--  DJI         | Arabic   | t

SELECT name, code, continent, region, surfacearea FROM countries;
-- 1206
SELECT name, code, continent, region, surfacearea FROM countries WHERE region='Southern Europe';

SELECT name, code, continent, region, surfacearea FROM countries WHERE region='Southern Europe' AND surfacearea < 5000;
--               name               | code | continent |     region      | surfacearea 
-- ---------------------------------+------+-----------+-----------------+-------------
--  Andorra                         | AND  | Europe    | Southern Europe |         468
--  Gibraltar                       | GIB  | Europe    | Southern Europe |           6
--  Malta                           | MLT  | Europe    | Southern Europe |         316
--  San Marino                      | SMR  | Europe    | Southern Europe |          61
--  Holy See (Vatican Cities State) | VAT  | Europe    | Southern Europe |         0.4

SELECT *  FROM cities 
WHERE countrycode='ITA'
ORDER BY name;

SELECT *  FROM countrylanguages
WHERE countrycode='ITA';

SELECT *  FROM countrylanguages
WHERE language='Italian'

;

+---------------+------------+--------------+--------------+
| countrycode   | language   | isofficial   | percentage   |
|---------------+------------+--------------+--------------|
| ITA           | Italian    | True         | 94.1         |
| ITA           | Sardinian  | False        | 2.7          |
| ITA           | Friuli     | False        | 1.2          |
| ITA           | French     | False        | 0.5          |
| ITA           | German     | False        | 0.5          |
| ITA           | Albaniana  | False        | 0.2          |
| ITA           | Slovene    | False        | 0.2          |
| ITA           | Romani     | False        | 0.2          |
+---------------+------------+--------------+--SELECT *  FROM countrylanguages------------+


SELECT *  FROM countrylanguages
WHERE language='Italian' 
AND WHERE isofficial='True';

dreammachine@/tmp:world> SELECT *  FROM countrylanguages
WHERE language='Italian' AND isofficial='True';
+---------------+------------+--------------+--------------+
| countrycode   | language   | isofficial   | percentage   |
|---------------+------------+--------------+--------------|
| ITA           | Italian    | True         | 94.1         |
| SMR           | Italian    | True         | 100.0        |
| VAT           | Italian    | True         | 0.0          |
| CHE           | Italian    | True         | 7.7          |
+---------------+------------+--------------+--------------+

SELECT * FROM countries
WHERE code='SMR';

+--------+------------+-------------+-----------------+---------------+-------------+--------------+------------------+--------+----------+-------------+------------------+---------------+-----------+---------+
| code   | name       | continent   | region          | surfacearea   | indepyear   | population   | lifeexpectancy   | gnp    | gnpold   | localname   | governmentform   | headofstate   | capital   | code2   |
|--------+------------+-------------+-----------------+---------------+-------------+--------------+------------------+--------+----------+-------------+------------------+---------------+-----------+---------|
| SMR    | San Marino | Europe      | Southern Europe | 61.0          | 885         | 27000        | 81.1             | 510.00 | <null>   | San Marino  | Republic         | <null>        | 3171      | SM      |
+--------+------------+-------------+-----------------+---------------+-------------+--------------+------------------+--------+----------+-------------+------------------+---------------+-----------+---------+


SELECT name, capital  FROM countries 
WHERE region='South America';


dreammachine@/tmp:world> SELECT name, capital  FROM countries
 WHERE region='South America';
+------------------+-----------+
| name             | capital   |
|------------------+-----------|
| Argentina        | 69        |
| Bolivia          | 194       |
| Brazil           | 211       |
| Chile            | 554       |
| Ecuador          | 594       |
| Falkland Islands | 763       |
| Guyana           | 928       |
| Colombia         | 2257      |
| Paraguay         | 2885      |
| Peru             | 2890      |
| French Guiana    | 3014      |
| Suriname         | 3243      |
| Uruguay          | 3492      |
| Venezuela        | 3539      |
+------------------+-----------+

