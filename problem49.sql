SELECT H.HACKER_ID, H.NAME,NT.P
FROM Hackers AS H
JOIN (
SELECT HACKER_ID,COUNT(Challenge_ID) AS P
FROM Challenges
GROUP BY HACKER_ID
ORDER BY COUNT(Challenge_ID)
) AS NT ON H.HACKER_ID = NT.HACKER_ID 
WHERE NT.P = (SELECT MAX(P) FROM (
    SELECT HACKER_ID ,COUNT(Challenge_ID) AS P
    FROM Challenges
GROUP BY HACKER_ID
)AS NNT) OR NT.P IN (
    SELECT UNIQUE_COUNT

    FROM (

        SELECT COUNT(Challenge_ID) AS UNIQUE_COUNT

        FROM Challenges

        GROUP BY HACKER_ID

    ) AS T

    GROUP BY UNIQUE_COUNT

    HAVING COUNT(UNIQUE_COUNT) = 1
)
ORDER BY NT.P DESC,H.HACKER_ID;