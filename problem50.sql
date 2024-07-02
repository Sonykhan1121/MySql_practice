SELECT NT.hacker_id, H.name, SUM(NT.MS) AS SM
FROM Hackers AS H
JOIN 
(SELECT hacker_id,challenge_id,MAX(score) AS MS FROM Submissions
group by hacker_id,challenge_id
HAVING MAX(score)>0) AS NT
ON H.hacker_id = NT.hacker_id
GROUP BY NT.hacker_id, H.name
ORDER BY SM DESC ,NT.hacker_id;
