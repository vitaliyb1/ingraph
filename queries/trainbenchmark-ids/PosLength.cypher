MATCH (segment:Segment)
WHERE segment.length <= 0
RETURN segment.id, segment.length AS length
