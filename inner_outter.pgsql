beknazar@beknazar-Aspire-A315-42G:~$ sudo -u postgres psql
psql (12.9 (Ubuntu 12.9-0ubuntu0.20.04.1))
Type "help" for help.

postgres=# CREATE DATABASE tourist OWNER Beka;
CREATE DATABASE
postgres=# \dt
Did not find any relations.
postgres=# \du
postgres=# \c tourist
You are now connected to database "tourist" as user "postgres".
tourist=# CREATE TABLE inner_flights(
tourist(# id SERIAL PRIMARY KEY,
tourist(# from_region VARCHAR,
tourist(# to_destination VARCHAR,
tourist(# company VARCHAR,
tourist(# quantity INT);
CREATE TABLE
tourist=# insert into inner_flights(
tourist(# from_region,
tourist(# to_destination,
tourist(# company,
tourist(# quantity)
tourist-# VALUES(
tourist(# 'Bishkek',
tourist(# 'Almaty',
tourist(# 'Kyrgyz AirLines',
tourist(# 127);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Moscow',
'Stambul',
'Turkey AirLines',
167);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Warszaw',
'Bayern',
'German AirLines',
134);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Berlin',
'New York',
'German AirLines',
196);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Madrid',
'London',
'Spain AirLines',
123);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Manchester',
'Rome',
'Italy AirLines',
93);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Sankt Petersburg',
'Liverpool',
'British AirLines',
65);
INSERT 0 1
tourist=# select * from inner_flights;
 id |   from_region    | to_destination |     company      | quantity 
----+------------------+----------------+------------------+----------
  1 | Bishkek          | Almaty         | Kyrgyz AirLines  |      127
  2 | Moscow           | Stambul        | Turkey AirLines  |      167
  3 | Warszaw          | Bayern         | German AirLines  |      134
  4 | Berlin           | New York       | German AirLines  |      196
  5 | Madrid           | London         | Spain AirLines   |      123
  6 | Manchester       | Rome           | Italy AirLines   |       93
  7 | Sankt Petersburg | Liverpool      | British AirLines |       65
(7 rows)

tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Bishkek',
'New Deli',
'Qatar AirLines',
115);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Boston',
'Buenos Aires',
'USA AirLines',
98);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Rio De Janeiro',
'Santiago',
'Brasil AirLines',
91);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Shanhai',
'Pekin',
'China AirLines',
124);
INSERT 0 1
tourist=# select * from inner_flights;
 id |   from_region    | to_destination |     company      | quantity 
----+------------------+----------------+------------------+----------
  1 | Bishkek          | Almaty         | Kyrgyz AirLines  |      127
  2 | Moscow           | Stambul        | Turkey AirLines  |      167
  3 | Warszaw          | Bayern         | German AirLines  |      134
  4 | Berlin           | New York       | German AirLines  |      196
  5 | Madrid           | London         | Spain AirLines   |      123
  6 | Manchester       | Rome           | Italy AirLines   |       93
  7 | Sankt Petersburg | Liverpool      | British AirLines |       65
  8 | Bishkek          | New Deli       | Qatar AirLines   |      115
  9 | Boston           | Buenos Aires   | USA AirLines     |       98
 10 | Rio De Janeiro   | Santiago       | Brasil AirLines  |       91
 11 | Shanhai          | Pekin          | China AirLines   |      124
(11 rows)

tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Bishkek',
'Osh',
'Kyrgyz AirLines',
56);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Bishkek',
'Osh',
'Kyrgyz AirLines');
ERROR:  INSERT has more target columns than expressions
LINE 5: quantity)
        ^
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Bishkek',
'Moscow',
'Kyrgyz AirLines',
87);
INSERT 0 1
tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Vienna',
'Moscow',
'Austria AirLines',
178);
INSERT 0 1
tourist=# select * from inner_flights;
 id |   from_region    | to_destination |     company      | quantity 
----+------------------+----------------+------------------+----------
  1 | Bishkek          | Almaty         | Kyrgyz AirLines  |      127
  2 | Moscow           | Stambul        | Turkey AirLines  |      167
  3 | Warszaw          | Bayern         | German AirLines  |      134
  4 | Berlin           | New York       | German AirLines  |      196
  5 | Madrid           | London         | Spain AirLines   |      123
  6 | Manchester       | Rome           | Italy AirLines   |       93
  7 | Sankt Petersburg | Liverpool      | British AirLines |       65
  8 | Bishkek          | New Deli       | Qatar AirLines   |      115
  9 | Boston           | Buenos Aires   | USA AirLines     |       98
 10 | Rio De Janeiro   | Santiago       | Brasil AirLines  |       91
 11 | Shanhai          | Pekin          | China AirLines   |      124
 12 | Bishkek          | Osh            | Kyrgyz AirLines  |       56
 13 | Bishkek          | Moscow         | Kyrgyz AirLines  |       87
 14 | Vienna           | Moscow         | Austria AirLines |      178
(14 rows)

tourist=# insert into inner_flights(
from_region,
to_destination,
company,
quantity)
VALUES(
'Kazan',
'Sochi',
'Russia AirLines',
108);
INSERT 0 1
tourist=# select * from inner_flights;
 id |   from_region    | to_destination |     company      | quantity 
----+------------------+----------------+------------------+----------
  1 | Bishkek          | Almaty         | Kyrgyz AirLines  |      127
  2 | Moscow           | Stambul        | Turkey AirLines  |      167
  3 | Warszaw          | Bayern         | German AirLines  |      134
  4 | Berlin           | New York       | German AirLines  |      196
  5 | Madrid           | London         | Spain AirLines   |      123
  6 | Manchester       | Rome           | Italy AirLines   |       93
  7 | Sankt Petersburg | Liverpool      | British AirLines |       65
  8 | Bishkek          | New Deli       | Qatar AirLines   |      115
  9 | Boston           | Buenos Aires   | USA AirLines     |       98
 10 | Rio De Janeiro   | Santiago       | Brasil AirLines  |       91
 11 | Shanhai          | Pekin          | China AirLines   |      124
 12 | Bishkek          | Osh            | Kyrgyz AirLines  |       56
 13 | Bishkek          | Moscow         | Kyrgyz AirLines  |       87
 14 | Vienna           | Moscow         | Austria AirLines |      178
 15 | Kazan            | Sochi          | Russia AirLines  |      108
(15 rows)

tourist=# insert into outter_flights(
tourist(# from_country,
tourist(# to_country,
tourist(# flight_type,
tourist(# company,
tourist(# neighbors)
tourist-# VALUES(
tourist(# 'Senegal',
tourist(# 'Egypt',
tourist(# 'Cargo',
tourist(# 'Egypt Airlines',
tourist(# 2);
ERROR:  relation "outter_flights" does not exist
LINE 1: insert into outter_flights(
                    ^
tourist=# CREATE TABLE outter_flights;
ERROR:  syntax error at or near ";"
LINE 1: CREATE TABLE outter_flights;
                                   ^
tourist=# CREATE TABLE outter_flights(
tourist(# id SERIAL PRIMARY KEYS,
tourist(# from_country VARCHAR,
tourist(# to_country VARCHAR,
tourist(# flight_type VARCHAR,
tourist(# company VARCHAR,
tourist(# neighbors INT);
ERROR:  syntax error at or near "KEYS"
LINE 2: id SERIAL PRIMARY KEYS,
                          ^
tourist=# CREATE TABLE outter_flights(
id SERIAL PRIMARY KEY,
from_country VARCHAR,
to_country VARCHAR,
flight_type VARCHAR,
company VARCHAR,
neighbors INT);
CREATE TABLE
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Senegal',
'Egypt',
'Cargo',
'Egypt Airlines',
2);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Turin',
'Barcelona',
'Passenger',
'Spain Airlines',
122);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Buenos Aires',
'Sevilla',
'Passenger',
'Argentine Airlines',
101);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Krasnodar',
'Santiago',
'Cargo',
'Chile Airlines',
11);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Bilbao',
'Borussia',
'Cargo',
'German Airlines',
1);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Cholpon-Ata',
'Nizhnyi Novgorod',
'Cargo',
'Kyrgyz Airlines',
4);
INSERT 0 1
tourist=# select * from outter_flights;
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'leeds',
'Atalanta',
'Passenger',
'British Airlines',
104);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Rome',
'Birmingham',
'Cargo',
'Italy Airlines',
132);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Paris',
'Valencia',
'Passenger',
'France Airlines',
2);
INSERT 0 1
tourist=# select * from outter_flights;
 id | from_country |    to_country    | flight_type |      company       | neighbors 
----+--------------+------------------+-------------+--------------------+-----------
  1 | Senegal      | Egypt            | Cargo       | Egypt Airlines     |         2
  2 | Turin        | Barcelona        | Passenger   | Spain Airlines     |       122
  3 | Buenos Aires | Sevilla          | Passenger   | Argentine Airlines |       101
  4 | Krasnodar    | Santiago         | Cargo       | Chile Airlines     |        11
  5 | Bilbao       | Borussia         | Cargo       | German Airlines    |         1
  6 | Cholpon-Ata  | Nizhnyi Novgorod | Cargo       | Kyrgyz Airlines    |         4
  7 | leeds        | Atalanta         | Passenger   | British Airlines   |       104
  8 | Rome         | Birmingham       | Cargo       | Italy Airlines     |       132
  9 | Paris        | Valencia         | Passenger   | France Airlines    |         2
(9 rows)

tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Warszaw',
'Leicester',
'Cargo',
'Austria Airlines',
5);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Sporting',
'London',
'Cargo',
'Portugal Airlines',
5);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Amsterdam',
'Machester',
'Cargo',
'Netherland Airlines',
5);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Liverpool',
'Moscow',
'Cargo',
'British Airlines',
5);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Sochi',
'Manchester',
'Cargo',
'British Airlines',
5);
INSERT 0 1
tourist=# insert into outter_flights(
from_country,
to_country,
flight_type,
company,
neighbors)
VALUES(
'Oxford',
'Lille',
'Cargo',
'France Airlines',
5);
INSERT 0 1
tourist=# select * from outter_flights;
 id | from_country |    to_country    | flight_type |       company       | neighbors 
----+--------------+------------------+-------------+---------------------+-----------
  1 | Senegal      | Egypt            | Cargo       | Egypt Airlines      |         2
  2 | Turin        | Barcelona        | Passenger   | Spain Airlines      |       122
  3 | Buenos Aires | Sevilla          | Passenger   | Argentine Airlines  |       101
  4 | Krasnodar    | Santiago         | Cargo       | Chile Airlines      |        11
  5 | Bilbao       | Borussia         | Cargo       | German Airlines     |         1
  6 | Cholpon-Ata  | Nizhnyi Novgorod | Cargo       | Kyrgyz Airlines     |         4
  7 | leeds        | Atalanta         | Passenger   | British Airlines    |       104
  8 | Rome         | Birmingham       | Cargo       | Italy Airlines      |       132
  9 | Paris        | Valencia         | Passenger   | France Airlines     |         2
 10 | Warszaw      | Leicester        | Cargo       | Austria Airlines    |         5
 11 | Sporting     | London           | Cargo       | Portugal Airlines   |         5
 12 | Amsterdam    | Machester        | Cargo       | Netherland Airlines |         5
 13 | Liverpool    | Moscow           | Cargo       | British Airlines    |         5
 14 | Sochi        | Manchester       | Cargo       | British Airlines    |         5
 15 | Oxford       | Lille            | Cargo       | France Airlines     |         5
(15 rows)

tourist=# select * from inner_flights;
 id |   from_region    | to_destination |     company      | quantity 
----+------------------+----------------+------------------+----------
  1 | Bishkek          | Almaty         | Kyrgyz AirLines  |      127
  2 | Moscow           | Stambul        | Turkey AirLines  |      167
  3 | Warszaw          | Bayern         | German AirLines  |      134
  4 | Berlin           | New York       | German AirLines  |      196
  5 | Madrid           | London         | Spain AirLines   |      123
  6 | Manchester       | Rome           | Italy AirLines   |       93
  7 | Sankt Petersburg | Liverpool      | British AirLines |       65
  8 | Bishkek          | New Deli       | Qatar AirLines   |      115
  9 | Boston           | Buenos Aires   | USA AirLines     |       98
 10 | Rio De Janeiro   | Santiago       | Brasil AirLines  |       91
 11 | Shanhai          | Pekin          | China AirLines   |      124
 12 | Bishkek          | Osh            | Kyrgyz AirLines  |       56
 13 | Bishkek          | Moscow         | Kyrgyz AirLines  |       87
 14 | Vienna           | Moscow         | Austria AirLines |      178
 15 | Kazan            | Sochi          | Russia AirLines  |      108
(15 rows)

tourist=# select from inner_flights where id >10;
--
(5 rows)

tourist=# select * from inner_flights where id >10;
 id | from_region | to_destination |     company      | quantity 
----+-------------+----------------+------------------+----------
 11 | Shanhai     | Pekin          | China AirLines   |      124
 12 | Bishkek     | Osh            | Kyrgyz AirLines  |       56
 13 | Bishkek     | Moscow         | Kyrgyz AirLines  |       87
 14 | Vienna      | Moscow         | Austria AirLines |      178
 15 | Kazan       | Sochi          | Russia AirLines  |      108
(5 rows)

tourist=# select * from inner_flights where from_region = 'Osh' or 'Bihkek';
ERROR:  invalid input syntax for type boolean: "Bihkek"
LINE 1: ... * from inner_flights where from_region = 'Osh' or 'Bihkek';
                                                              ^
tourist=# select * from inner_flights where from_region = 'Osh';
 id | from_region | to_destination | company | quantity 
----+-------------+----------------+---------+----------
(0 rows)

tourist=# select * from inner_flights where from_region = 'Bishkek';
 id | from_region | to_destination |     company     | quantity 
----+-------------+----------------+-----------------+----------
  1 | Bishkek     | Almaty         | Kyrgyz AirLines |      127
  8 | Bishkek     | New Deli       | Qatar AirLines  |      115
 12 | Bishkek     | Osh            | Kyrgyz AirLines |       56
 13 | Bishkek     | Moscow         | Kyrgyz AirLines |       87
(4 rows)

tourist=# select * from inner_flights where quantity > 150;
 id | from_region | to_destination |     company      | quantity 
----+-------------+----------------+------------------+----------
  2 | Moscow      | Stambul        | Turkey AirLines  |      167
  4 | Berlin      | New York       | German AirLines  |      196
 14 | Vienna      | Moscow         | Austria AirLines |      178
(3 rows)

tourist=# select * from outter_flights where flight_type = 'Cargo';
 id | from_country |    to_country    | flight_type |       company       | neighbors 
----+--------------+------------------+-------------+---------------------+-----------
  1 | Senegal      | Egypt            | Cargo       | Egypt Airlines      |         2
  4 | Krasnodar    | Santiago         | Cargo       | Chile Airlines      |        11
  5 | Bilbao       | Borussia         | Cargo       | German Airlines     |         1
  6 | Cholpon-Ata  | Nizhnyi Novgorod | Cargo       | Kyrgyz Airlines     |         4
  8 | Rome         | Birmingham       | Cargo       | Italy Airlines      |       132
 10 | Warszaw      | Leicester        | Cargo       | Austria Airlines    |         5
 11 | Sporting     | London           | Cargo       | Portugal Airlines   |         5
 12 | Amsterdam    | Machester        | Cargo       | Netherland Airlines |         5
 13 | Liverpool    | Moscow           | Cargo       | British Airlines    |         5
 14 | Sochi        | Manchester       | Cargo       | British Airlines    |         5
 15 | Oxford       | Lille            | Cargo       | France Airlines     |         5
(11 rows)

tourist=# select * from outter_flights where id < 7;
 id | from_country |    to_country    | flight_type |      company       | neighbors 
----+--------------+------------------+-------------+--------------------+-----------
  1 | Senegal      | Egypt            | Cargo       | Egypt Airlines     |         2
  2 | Turin        | Barcelona        | Passenger   | Spain Airlines     |       122
  3 | Buenos Aires | Sevilla          | Passenger   | Argentine Airlines |       101
  4 | Krasnodar    | Santiago         | Cargo       | Chile Airlines     |        11
  5 | Bilbao       | Borussia         | Cargo       | German Airlines    |         1
  6 | Cholpon-Ata  | Nizhnyi Novgorod | Cargo       | Kyrgyz Airlines    |         4
(6 rows)

tourist=# select * from outter_flights where flight_type = 'Passenger';
 id | from_country | to_country | flight_type |      company       | neighbors 
----+--------------+------------+-------------+--------------------+-----------
  2 | Turin        | Barcelona  | Passenger   | Spain Airlines     |       122
  3 | Buenos Aires | Sevilla    | Passenger   | Argentine Airlines |       101
  7 | leeds        | Atalanta   | Passenger   | British Airlines   |       104
  9 | Paris        | Valencia   | Passenger   | France Airlines    |         2
(4 rows)

tourist=# select * from outter_flights where neighbors > 8;
 id | from_country | to_country | flight_type |      company       | neighbors 
----+--------------+------------+-------------+--------------------+-----------
  2 | Turin        | Barcelona  | Passenger   | Spain Airlines     |       122
  3 | Buenos Aires | Sevilla    | Passenger   | Argentine Airlines |       101
  4 | Krasnodar    | Santiago   | Cargo       | Chile Airlines     |        11
  7 | leeds        | Atalanta   | Passenger   | British Airlines   |       104
  8 | Rome         | Birmingham | Cargo       | Italy Airlines     |       132
(5 rows)

tourist=# select * from outter_flights where neighbors > 3;
 id | from_country |    to_country    | flight_type |       company       | neighbors 
----+--------------+------------------+-------------+---------------------+-----------
  2 | Turin        | Barcelona        | Passenger   | Spain Airlines      |       122
  3 | Buenos Aires | Sevilla          | Passenger   | Argentine Airlines  |       101
  4 | Krasnodar    | Santiago         | Cargo       | Chile Airlines      |        11
  6 | Cholpon-Ata  | Nizhnyi Novgorod | Cargo       | Kyrgyz Airlines     |         4
  7 | leeds        | Atalanta         | Passenger   | British Airlines    |       104
  8 | Rome         | Birmingham       | Cargo       | Italy Airlines      |       132
 10 | Warszaw      | Leicester        | Cargo       | Austria Airlines    |         5
 11 | Sporting     | London           | Cargo       | Portugal Airlines   |         5
 12 | Amsterdam    | Machester        | Cargo       | Netherland Airlines |         5
 13 | Liverpool    | Moscow           | Cargo       | British Airlines    |         5
 14 | Sochi        | Manchester       | Cargo       | British Airlines    |         5
 15 | Oxford       | Lille            | Cargo       | France Airlines     |         5
(12 rows)

tourist=# ss
tourist-# select * from outter_flights;
ERROR:  syntax error at or near "ss"
LINE 1: ss
        ^
tourist=#   
select * from outter_flights;
 id | from_country |    to_country    | flight_type |       company       | neighbors 
----+--------------+------------------+-------------+---------------------+-----------
  1 | Senegal      | Egypt            | Cargo       | Egypt Airlines      |         2
  2 | Turin        | Barcelona        | Passenger   | Spain Airlines      |       122
  3 | Buenos Aires | Sevilla          | Passenger   | Argentine Airlines  |       101
  4 | Krasnodar    | Santiago         | Cargo       | Chile Airlines      |        11
  5 | Bilbao       | Borussia         | Cargo       | German Airlines     |         1
  6 | Cholpon-Ata  | Nizhnyi Novgorod | Cargo       | Kyrgyz Airlines     |         4
  7 | leeds        | Atalanta         | Passenger   | British Airlines    |       104
  8 | Rome         | Birmingham       | Cargo       | Italy Airlines      |       132
  9 | Paris        | Valencia         | Passenger   | France Airlines     |         2
 10 | Warszaw      | Leicester        | Cargo       | Austria Airlines    |         5
 11 | Sporting     | London           | Cargo       | Portugal Airlines   |         5
 12 | Amsterdam    | Machester        | Cargo       | Netherland Airlines |         5
 13 | Liverpool    | Moscow           | Cargo       | British Airlines    |         5
tourist=# select * from outter_flights where quantity < 3 and flight_type = 'Passenger';
ERROR:  column "quantity" does not exist
LINE 1: select * from outter_flights where quantity < 3 and flight_t...
                                           ^
tourist=# select * from outter_flights where neighbors < 3 and flight_type = 'Passenger';
 id | from_country | to_country | flight_type |     company     | neighbors 
----+--------------+------------+-------------+-----------------+-----------
  9 | Paris        | Valencia   | Passenger   | France Airlines |         2
(1 row)

tourist=# select 8 from outter_flights where from_country and company;
ERROR:  argument of AND must be type boolean, not type character varying
LINE 1: select 8 from outter_flights where from_country and company;
                                           ^
tourist=# select * from outter_flights where from_country and company;
ERROR:  argument of AND must be type boolean, not type character varying
LINE 1: select * from outter_flights where from_country and company;
                                           ^
tourist=# select * from outter_flights where from_country or  company;
ERROR:  argument of OR must be type boolean, not type character varying
LINE 1: select * from outter_flights where from_country or  company;
                                           ^
tourist=# select from_country and company  from outter_flights;
ERROR:  argument of AND must be type boolean, not type character varying
LINE 1: select from_country and company  from outter_flights;
               ^
tourist=# select from_country from outter_flights;
 from_country 
--------------
 Senegal
 Turin
 Buenos Aires
 Krasnodar
 Bilbao
 Cholpon-Ata
 leeds
 Rome
 Paris
 Warszaw
 Sporting
 Amsterdam
 Liverpool
 Sochi
 Oxford
(15 rows)

tourist=# select from_country or company from outter_flights;
ERROR:  argument of OR must be type boolean, not type character varying
LINE 1: select from_country or company from outter_flights;
               ^
tourist=# select from_country and  company from outter_flights;
ERROR:  argument of AND must be type boolean, not type character varying
LINE 1: select from_country and  company from outter_flights;
               ^
tourist=# select company from outter_flights;
       company       
---------------------
 Egypt Airlines
 Spain Airlines
 Argentine Airlines
 Chile Airlines
 German Airlines
 Kyrgyz Airlines
 British Airlines
 Italy Airlines
 France Airlines
 Austria Airlines
 Portugal Airlines
 Netherland Airlines
 British Airlines
 British Airlines
 France Airlines
(15 rows)

tourist=# 

