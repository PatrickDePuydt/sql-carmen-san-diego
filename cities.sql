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


SELECT *  FROM cities 
WHERE countrycode='ITA';
-- +------+-----------------------+---------------+----------------------+--------------+
-- | id   | name                  | countrycode   | district             | population   |
-- |------+-----------------------+---------------+----------------------+--------------|
-- | 1464 | Roma                  | ITA           | Latium               | 2643581      |
-- | 1465 | Milano                | ITA           | Lombardia            | 1300977      |
-- | 1466 | Napoli                | ITA           | Campania             | 1002619      |
-- | 1467 | Torino                | ITA           | Piemonte             | 903705       |
-- | 1468 | Palermo               | ITA           | Sisilia              | 683794       |
-- | 1469 | Genova                | ITA           | Liguria              | 636104       |
-- | 1470 | Bologna               | ITA           | Emilia-Romagna       | 381161       |
-- | 1471 | Firenze               | ITA           | Toscana              | 376662       |
-- | 1472 | Catania               | ITA           | Sisilia              | 337862       |
-- | 1473 | Bari                  | ITA           | Apulia               | 331848       |
-- | 1474 | Venezia               | ITA           | Veneto               | 277305       |
-- | 1475 | Messina               | ITA           | Sisilia              | 259156       |
-- | 1476 | Verona                | ITA           | Veneto               | 255268       |
-- | 1477 | Trieste               | ITA           | Friuli-Venezia Giuli | 216459       |
-- | 1478 | Padova                | ITA           | Veneto               | 211391       |
-- | 1479 | Taranto               | ITA           | Apulia               | 208214       |
-- | 1480 | Brescia               | ITA           | Lombardia            | 191317       |
-- | 1481 | Reggio di Calabria    | ITA           | Calabria             | 179617       |
-- | 1482 | Modena                | ITA           | Emilia-Romagna       | 176022       |
-- | 1483 | Prato                 | ITA           | Toscana              | 172473       |
-- | 1484 | Parma                 | ITA           | Emilia-Romagna       | 168717       |
-- | 1485 | Cagliari              | ITA           | Sardinia             | 165926       |
-- | 1486 | Livorno               | ITA           | Toscana              | 161673       |
-- | 1487 | Perugia               | ITA           | Umbria               | 156673       |
-- | 1488 | Foggia                | ITA           | Apulia               | 154891       |
-- | 1489 | Reggio nell� Emilia   | ITA           | Emilia-Romagna       | 143664       |
-- | 1490 | Salerno               | ITA           | Campania             | 142055       |
-- | 1491 | Ravenna               | ITA           | Emilia-Romagna       | 138418       |
-- | 1492 | Ferrara               | ITA           | Emilia-Romagna       | 132127       |
-- | 1493 | Rimini                | ITA           | Emilia-Romagna       | 131062       |
-- | 1494 | Syrakusa              | ITA           | Sisilia              | 126282       |
-- | 1495 | Sassari               | ITA           | Sardinia             | 120803       |
-- | 1496 | Monza                 | ITA           | Lombardia            | 119516       |
-- | 1497 | Bergamo               | ITA           | Lombardia            | 117837       |
-- | 1498 | Pescara               | ITA           | Abruzzit             | 115698       |
-- | 1499 | Latina                | ITA           | Latium               | 114099       |
-- | 1500 | Vicenza               | ITA           | Veneto               | 109738       |
-- | 1501 | Terni                 | ITA           | Umbria               | 107770       |
-- | 1502 | Forl�                 | ITA           | Emilia-Romagna       | 107475       |
-- | 1503 | Trento                | ITA           | Trentino-Alto Adige  | 104906       |
-- | 1504 | Novara                | ITA           | Piemonte             | 102037       |
-- | 1505 | Piacenza              | ITA           | Emilia-Romagna       | 98384        |
-- | 1506 | Ancona                | ITA           | Marche               | 98329        |
-- | 1507 | Lecce                 | ITA           | Apulia               | 98208        |
-- | 1508 | Bolzano               | ITA           | Trentino-Alto Adige  | 97232        |
-- | 1509 | Catanzaro             | ITA           | Calabria             | 96700        |
-- | 1510 | La Spezia             | ITA           | Liguria              | 95504        |
-- | 1511 | Udine                 | ITA           | Friuli-Venezia Giuli | 94932        |
-- | 1512 | Torre del Greco       | ITA           | Campania             | 94505        |
-- | 1513 | Andria                | ITA           | Apulia               | 94443        |
-- | 1514 | Brindisi              | ITA           | Apulia               | 93454        |
-- | 1515 | Giugliano in Campania | ITA           | Campania             | 93286        |
-- | 1516 | Pisa                  | ITA           | Toscana              | 92379        |
-- | 1517 | Barletta              | ITA           | Apulia               | 91904        |
-- | 1518 | Arezzo                | ITA           | Toscana              | 91729        |
-- | 1519 | Alessandria           | ITA           | Piemonte             | 90289        |
-- | 1520 | Cesena                | ITA           | Emilia-Romagna       | 89852        |
-- | 1521 | Pesaro                | ITA           | Marche               | 88987        |
-- +------+-----------------------+---------------+----------------------+--------------+



+------+-----------------------+---------------+----------------------+--------------+
| id   | name                  | countrycode   | district             | population   |
|------+-----------------------+---------------+----------------------+--------------|
| 1519 | Alessandria           | ITA           | Piemonte             | 90289        |
| 1506 | Ancona                | ITA           | Marche               | 98329        |
| 1513 | Andria                | ITA           | Apulia               | 94443        |
| 1518 | Arezzo                | ITA           | Toscana              | 91729        |
| 1473 | Bari                  | ITA           | Apulia               | 331848       |
| 1517 | Barletta              | ITA           | Apulia               | 91904        |
| 1497 | Bergamo               | ITA           | Lombardia            | 117837       |
| 1470 | Bologna               | ITA           | Emilia-Romagna       | 381161       |
| 1508 | Bolzano               | ITA           | Trentino-Alto Adige  | 97232        |
| 1480 | Brescia               | ITA           | Lombardia            | 191317       |
| 1514 | Brindisi              | ITA           | Apulia               | 93454        |
| 1485 | Cagliari              | ITA           | Sardinia             | 165926       |
| 1472 | Catania               | ITA           | Sisilia              | 337862       |
| 1509 | Catanzaro             | ITA           | Calabria             | 96700        |
| 1520 | Cesena                | ITA           | Emilia-Romagna       | 89852        |
| 1492 | Ferrara               | ITA           | Emilia-Romagna       | 132127       |
| 1471 | Firenze               | ITA           | Toscana              | 376662       |
| 1488 | Foggia                | ITA           | Apulia               | 154891       |
| 1502 | Forl�                 | ITA           | Emilia-Romagna       | 107475       |
| 1469 | Genova                | ITA           | Liguria              | 636104       |
| 1515 | Giugliano in Campania | ITA           | Campania             | 93286        |
| 1510 | La Spezia             | ITA           | Liguria              | 95504        |
| 1499 | Latina                | ITA           | Latium               | 114099       |
| 1507 | Lecce                 | ITA           | Apulia               | 98208        |
| 1486 | Livorno               | ITA           | Toscana              | 161673       |
| 1475 | Messina               | ITA           | Sisilia              | 259156       |
| 1465 | Milano                | ITA           | Lombardia            | 1300977      |
| 1482 | Modena                | ITA           | Emilia-Romagna       | 176022       |
| 1496 | Monza                 | ITA           | Lombardia            | 119516       |
| 1466 | Napoli                | ITA           | Campania             | 1002619      |
| 1504 | Novara                | ITA           | Piemonte             | 102037       |
| 1478 | Padova                | ITA           | Veneto               | 211391       |
| 1468 | Palermo               | ITA           | Sisilia              | 683794       |
| 1484 | Parma                 | ITA           | Emilia-Romagna       | 168717       |
| 1487 | Perugia               | ITA           | Umbria               | 156673       |
| 1521 | Pesaro                | ITA           | Marche               | 88987        |
| 1498 | Pescara               | ITA           | Abruzzit             | 115698       |
| 1505 | Piacenza              | ITA           | Emilia-Romagna       | 98384        |
| 1516 | Pisa                  | ITA           | Toscana              | 92379        |
| 1483 | Prato                 | ITA           | Toscana              | 172473       |
| 1491 | Ravenna               | ITA           | Emilia-Romagna       | 138418       |
| 1481 | Reggio di Calabria    | ITA           | Calabria             | 179617       |
| 1489 | Reggio nell� Emilia   | ITA           | Emilia-Romagna       | 143664       |
| 1493 | Rimini                | ITA           | Emilia-Romagna       | 131062       |
| 1464 | Roma                  | ITA           | Latium               | 2643581      |
| 1490 | Salerno               | ITA           | Campania             | 142055       |
| 1495 | Sassari               | ITA           | Sardinia             | 120803       |
| 1494 | Syrakusa              | ITA           | Sisilia              | 126282       |
| 1479 | Taranto               | ITA           | Apulia               | 208214       |
| 1501 | Terni                 | ITA           | Umbria               | 107770       |
| 1467 | Torino                | ITA           | Piemonte             | 903705       |
| 1512 | Torre del Greco       | ITA           | Campania             | 94505        |
| 1503 | Trento                | ITA           | Trentino-Alto Adige  | 104906       |
| 1477 | Trieste               | ITA           | Friuli-Venezia Giuli | 216459       |
| 1511 | Udine                 | ITA           | Friuli-Venezia Giuli | 94932        |
| 1474 | Venezia               | ITA           | Veneto               | 277305       |
| 1476 | Verona                | ITA           | Veneto               | 255268       |
| 1500 | Vicenza               | ITA           | Veneto               | 109738       |
+------+-----------------------+---------------+----------------------+--------------+