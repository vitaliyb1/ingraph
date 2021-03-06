// Q10. Friend recommendation. Find top 10 friends of a friend who posts much about the interests of Person and little about not interesting topics for the user. The search is restricted by the candidate's horoscopeSign. Returns friends for whom the difference between the total number of their posts about the interests of the specified user and the total number of their posts about topics that are not interests of the user, is as large as possible. Sort the result descending by this difference.
MATCH (person:Person)-[:knows*2..2]-(friend:Person)-[:isLocatedIn]->(city:City)
WHERE ((friend.birthday_month = 10 AND friend.birthday_day >= 21)
   OR (friend.birthday_month = (10 + 1) % 12 AND friend.birthday_day < 22))
  AND NOT(friend = person) // I think this condition is unnecessary as Cypher will not travel the same edge twice (szarnyasg)
  AND NOT((friend)-[:knows]-(person))
WITH DISTINCT friend, city, person
OPTIONAL MATCH (friend)<-[:hasCreator]-(post:Post)
WITH
  friend,
  city,
  collect(post) AS posts,
  person
WITH
  friend,
  city,
  length(posts) AS postCount,
  length([p IN posts WHERE (p)-[:hasTag]->(:Tag)<-[:hasInterest]-(person)]) AS commonPostCount
RETURN
  friend.id AS personId,
  friend.firstName AS personFirstName,
  friend.lastName AS personLastName,
  friend.gender AS personGender,
  city.name AS personCityName,
  commonPostCount - (postCount - commonPostCount) AS commonInterestScore
ORDER BY
  commonInterestScore DESC,
  personId ASC
LIMIT 10
