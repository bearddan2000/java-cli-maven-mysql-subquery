CREATE VIEW animal.breed_count AS
SELECT c.id, c.breed,
CASE
WHEN a.breedId=1 THEN COUNT(a.breedId)
WHEN a.breedId=2 THEN COUNT(a.breedId)
WHEN a.breedId=3 THEN COUNT(a.breedId)
WHEN a.breedId=4 THEN COUNT(a.breedId)
ELSE COUNT(NULL)
END as 'Breed Count'
FROM animal.dog as a
JOIN animal.breedLookup as c ON c.id = a.breedId
GROUP BY a.breedId;
