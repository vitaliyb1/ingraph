UNWIND ['male', 'female', null] AS gen
RETURN toString(coalesce(gen, 'x')) AS result
