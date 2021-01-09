world=# \d countries

--                     Table "public.countries"
--      Column     |     Type      | Collation | Nullable | Default
-- ----------------+---------------+-----------+----------+---------
--  code           | character(3)  |           | not null |
--  name           | text          |           | not null |
--  continent      | text          |           | not null |
--  region         | text          |           | not null |
--  surfacearea    | real          |           | not null |
--  indepyear      | smallint      |           |          |
--  population     | integer       |           | not null |
--  lifeexpectancy | real          |           |          |
--  gnp            | numeric(10,2) |           |          |
--  gnpold         | numeric(10,2) |           |          |
--  localname      | text          |           | not null |
--  governmentform | text          |           | not null |
--  headofstate    | text          |           |          |
--  capital        | integer       |           |          |
--  code2          | character(2)  |           | not null |
