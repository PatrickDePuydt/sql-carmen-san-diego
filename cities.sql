world=# \dt
--                 List of relations
--  Schema |       Name       | Type  |    Owner     
-- --------+------------------+-------+--------------
--  public | cities           | table | dreammachine
--  public | countries        | table | dreammachine
--  public | countrylanguages | table | dreammachine

world=# \d cities
--                     Table "public.cities"
--    Column    |     Type     | Collation | Nullable | Default 
-- -------------+--------------+-----------+----------+---------
--  id          | integer      |           | not null | 
--  name        | text         |           | not null | 
--  countrycode | character(3) |           | not null | 
--  district    | text         |           | not null | 
--  population  | integer      |           | not null | 