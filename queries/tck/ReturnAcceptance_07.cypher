MATCH (n)
RETURN n.division, max(n.age)
ORDER BY max(n.age)
