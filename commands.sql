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

SELECT countrycode, language, isofficial  FROM countrylanguages 
;

SELECT countrycode, language, isofficial  FROM countrylanguages 
;