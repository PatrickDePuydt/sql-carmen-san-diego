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

-- 🤌 or Arabic? English?
--  countrycode | language | isofficial 
-- -------------+----------+------------
--  GIB         | English  | t
--  GIB         | Arabic   | f
-- (2 rows)

-- Clue #4: We're booking the first flight out: maybe we've actually got a chance to catch her this time. There are only two cities she could be flying to in the country. One is named the same as the country – that would be too obvious. We're following our gut on this one; find out what other city in that country she might be flying to.