SELECT a.name, COUNT(r.id_competition) as count_competitions
FROM athletes a
Join results r ON a.id = r.id_athlete 
GROUP BY a.id 
ORDER BY count_competitions DESC
LIMIT 5;
