-- Challenge 1 

SELECT DATA_FORMAT(MIN(created_at), "%M %D %Y") as earliest_date
FROM users;

-- Challenge 2

SELECT *
FROM users 
where created_at = (SELECT MIN(created_at) from users);

-- Challenge 3 

SELECT 
    MONTHNAME(created_at) AS month,
    COUNT(*) AS count
FROM users
GROUP BY month
ORDER BY count DESC;

-- Challenge 4

-- SELECT COUNT(*) AS yahoo_users 
-- FROM users
-- WHERE email LIKE '%yahoo%';

-- yahootime@gmail.com도 검색 될 수 있기 때문에..
-- 목적을 명확히 하기 위해서 좀 더 자세하게 써준다.

SELECT COUNT(*) AS yahoo_users 
FROM users
WHERE email LIKE '%@yahoo.com%';

-- Challenge 5

SELECT 
    CASE 
        WHEN email LIKE '%@gmail.com%' THEN 'gamil'
        WHEN email LIKE '%@yahoo.com%' THEN 'yahoo'
        WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
        ELSE 'other'
    END AS provider,
    COUNT(*) AS total_users
FROM users
GROUP BY provider
ORDER BY total_users DESC;