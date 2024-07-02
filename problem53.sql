SELECT s.name
FROM Students AS s
JOIN Packages AS p ON p.ID = s.ID
JOIN (
    SELECT f.ID, pp.Salary
    FROM Friends AS f
    JOIN Packages AS pp ON pp.ID = f.Friend_id
) AS fp ON fp.id = s.id
where 
p.Salary<fp.Salary
order by fp.Salary
