CREATE DATABASE flower;
SELECT * FROM flower.iris;
SELECT COUNT(*) AS "No. of Ids" FROM flower.iris;

DELETE FROM flower.iris
WHERE Id NOT IN (
 SELECT * FROM
  (
  SELECT MIN(Id) FROM flower.iris GROUP BY SepalLengthCm, SepalWidthCm, PetalLengthCm, PetalWidthCm, Species
  ) AS Subquery
);