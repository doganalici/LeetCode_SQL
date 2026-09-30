SELECT cs.name FROM Customer cs
WHERE cs.referee_id !=2 OR cs.referee_id IS NULL
