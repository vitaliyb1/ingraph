MATCH (advertiser)-[:ADV_HAS_PRODUCT]->(out)-[:AP_HAS_VALUE]->(red)<-[:AA_HAS_VALUE]-(a)
WHERE advertiser.id = $1
AND a.id = $2
AND red.name = 'red'
AND out.name = 'product1'
RETURN out.name
