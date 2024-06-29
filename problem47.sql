SELECT 
    t.hacker_id,
    t.name
FROM (
    SELECT 
        SUBMISSIONS.hacker_id,
        Hackers.name,
        COUNT(*) AS matching_score
    FROM 
        SUBMISSIONS
    JOIN 
        Challenges ON Challenges.challenge_id = SUBMISSIONS.challenge_id
    JOIN 
        Difficulty ON Difficulty.difficulty_level = Challenges.difficulty_level
    JOIN 
        Hackers ON Hackers.hacker_id = SUBMISSIONS.hacker_id
    WHERE 
        SUBMISSIONS.score = Difficulty.score
    GROUP BY 
        SUBMISSIONS.hacker_id,
        Hackers.name
) AS t
WHERE 
    t.matching_score > 1
ORDER BY 
    t.matching_score DESC,
    t.hacker_id;
