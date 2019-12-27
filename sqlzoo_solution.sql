/*SELECT basic*/
/*1*/
SELECT population FROM world
  WHERE name = 'Germany'
/*2*/
SELECT name, population FROM world
  WHERE name IN ('Sweden','Norway','Denmark');
/*3*/
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000




/*SELECT from WORLD*/
/*1*/
SELECT name, continent, population FROM world
/*2*/
SELECT name
 FROM world
WHERE population >= 200000000;
/*3*/
SELECT name, (gdp/population) AS `per capita GDP`
FROM world
WHERE population >= 200000000;
/*4*/
SELECT name, (population/1000000) AS population_milions
FROM world
WHERE continent = 'South America';
/*5*/
SELECT name, population
FROM world
WHERE name IN ('France','Germany','Italy');
/*6*/
SELECT name
FROM world
WHERE name LIKE '%United%'
/*7*/
SELECT name, population, area
FROM world
WHERE area >= 3000000 OR population >= 250000000;
/*8*/
SELECT name, population, area
FROM world
WHERE (NOT(population >= 250000000) AND (area >= 3000000)) OR (NOT(area >= 3000000) AND (population >= 250000000));
/*9*/
SELECT name, ROUND(population/1000000,2) AS `population in millions`, ROUND(gdp/1000000000,2) AS `GDP in billions`
FROM world
WHERE continent = 'South America';
/*10*/
SELECT name, ROUND(gdp/population,-3) AS `per-capita GDP`
FROM world
WHERE gdp >= 1000000000000;
/*11*/
SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital)
/*12*/
SELECT name, capital
FROM world
WHERE name <> capital AND LEFT(name,1) = LEFT(capital,1)
/*13*/
SELECT name
FROM world
WHERE name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %'
                                                                                         
                                                                                         
                                                                                         
                                                                                         
/*SELECT from Nobel*/
/*1*/
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950
/*2*/
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'
/*3*/
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';
/*4*/
SELECT winner
FROM nobel
WHERE subject = 'Peace'
AND yr >= 2000;
/*5*/
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature'
AND yr BETWEEN 1980 AND 1989;
/*6*/
SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama');
/*7*/
SELECT winner
FROM nobel
WHERE winner LIKE 'John%'
/*8*/
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Physics' AND yr = 1980
OR
      subject = 'Chemistry' AND yr = 1984;
/*9*/
SELECT *
FROM nobel
WHERE yr = 1980 AND subject <> 'Chemistry' AND subject <> 'Medicine'
/*10*/
SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Medicine' AND yr < 1910
OR
      subject = 'Literature' AND yr >= 2004
/*11*/
SELECT *
FROM nobel
WHERE winner = 'PETER GRÜNBERG'
/*12*/
SELECT *
FROM nobel
WHERE winner LIKE 'EUGENE O''NEILL'
/*13*/
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'sir%'
/*14*/
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'),subject,winner
