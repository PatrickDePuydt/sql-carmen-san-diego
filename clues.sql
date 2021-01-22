-- Clue #1: We recently got word that someone fitting Carmen Sandiego's description has been traveling through Southern Europe. She's most likely traveling someplace where she won't be noticed, so find the least populated country in Southern Europe, and we'll start looking for her there.

SELECT name, population, region, continent  FROM countries 
WHERE region='Southern Europe'
ORDER BY population;

--  code |              name               | population |     region      | continent
-- ------+---------------------------------+------------+-----------------+-----------
--  VAT  | Holy See (Vatican Cities State) |       1000 | Southern Europe | Europe
--  GIB  | Gibraltar                       |      25000 | Southern Europe | Europe
--  SMR  | San Marino                      |      27000 | Southern Europe | Europe
--  AND  | Andorra                         |      78000 | Southern Europe | Europe
--  MLT  | Malta                           |     380200 | Southern Europe | Europe
--  SVN  | Slovenia                        |    1987800 | Southern Europe | Europe
--  MKD  | Macedonia                       |    2024000 | Southern Europe | Europe
--  ALB  | Albania                         |    3401200 | Southern Europe | Europe
--  BIH  | Bosnia and Herzegovina          |    3972000 | Southern Europe | Europe
--  HRV  | Croatia                         |    4473000 | Southern Europe | Europe
--  PRT  | Portugal                        |    9997600 | Southern Europe | Europe
--  GRC  | Greece                          |   10545700 | Southern Europe | Europe
--  YUG  | Yugoslavia                      |   10640000 | Southern Europe | Europe
--  ESP  | Spain                           |   39441700 | Southern Europe | Europe
--  ITA  | Italy                           |   57680000 | Southern Europe | Europe

-- Vatacin City? -> VAT
-- Gibraltar? -> GIB
SELECT * FROM countries WHERE name='Gibraltar';


-- Clue #2: Now that we're here, we have insight that Carmen was seen attending language classes in this country's officially recognized language. Check our databases and find out what language is spoken in this country, so we can call in a translator to work with you.

SELECT countrycode, language, isofficial FROM countrylanguages WHERE countrycode = 'VAT';
-- Italian 🤌

SELECT countrycode, language, isofficial FROM countrylanguages WHERE countrycode = 'GIB';


-- Clue #3: We have new news on the classes Carmen attended: our gumshoes tell us she's moved on to a different country, a country where people speak only the language she was learning. Find out which nearby country speaks nothing but that language.
SELECT *  FROM countrylanguages
WHERE countrycode='ITA';

-- 🤌 or Arabic? English?
--  countrycode | language | isofficial 
-- -------------+----------+------------
--  GIB         | English  | t
--  GIB         | Arabic   | f
-- (2 rows)

-- Clue #4: We're booking the first flight out: maybe we've actually got a chance to catch her this time. There are only two cities she could be flying to in the country. One is named the same as the country – that would be too obvious. We're following our gut on this one; find out what other city in that country she might be flying to.

SELECT *  FROM countrylanguages
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

-- Clue #5: Oh no, she pulled a switch: there are two cities with very similar names, but in totally different parts of the globe! She's headed to South America as we speak; go find a city whose name is like the one we were headed to, but doesn't end the same. Find out the city, and do another search for what country it's in. Hurry!


SELECT * FROM cities WHERE countrycode='SMR' AND NOT name = 'San Marino';
SELECT * FROM cities WHERE name LIKE 'Serra%' AND NOT name = 'Serravalle';
--RETURN SERRA, BRA
SELECT * FROM countries WHERE code='BRA';
--RETURN BRAZIL



-- Clue #6: We're close! Our South American agent says she just got a taxi at the airport, and is headed towards
 -- the capital! Look up the country's capital, and get there pronto! Send us the name of where you're headed and we'll
 -- follow right behind you!
SELECT capital FROM countries WHERE code = 'BRA';
--RETURN 211

SELECT name FROM cities WHERE id = 211;
--RETURN Brasilia



-- Clue #7: She knows we're on to her – her taxi dropped her off at the international airport, and she beat us to
 -- the boarding gates. We have one chance to catch her, we just have to know where she's heading and beat her to the
 -- landing dock.
-- Lucky for us, she's getting cocky. She left us a note, and I'm sure she thinks she's very clever, but
-- if we can crack it, we can finally put her where she belongs – behind bars.


SELECT name FROM cities WHERE population = 91084

-- Santa Monica?

-- +--------------+
-- | name         |
-- |--------------|
-- | Santa Monica |
-- +--------------+