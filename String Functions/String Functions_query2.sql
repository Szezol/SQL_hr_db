SELECT *
FROM locations
WHERE char_length(STREET_ADDRESS)=(SELECT MIN(char_length(STREET_ADDRESS))
	FROM locations);