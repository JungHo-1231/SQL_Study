-- TV Joins Challenge 1

# SELECT 
#     title, 
#     rating 
# FROM series s
# INNER JOIN reviews r 
#     on r.series_id = s.id 
# LIMIT 15;

-- TV Joins Challenge 2 
    
# SELECT 
#     title, 
#     AVG(rating) as avg_rating
# FROM series s
# INNER JOIN reviews r 
#     on r.series_id = s.id 
# GROUP BY s.id 
# ORDER BY avg_rating;


-- TV Joins Challenge 3

# SELECT 
#     first_name,
#     last_name,
#     rating
# from reviewers 
# JOIN reviews
# ON reviewers.id = reviews.reviewer_id;


-- TV Joins Challenge 4

# SELECT series.title FROM series
# LEFT JOIN reviews
# ON series.id = reviews.series_id
# WHERE reviews.rating IS NULL;


-- TV Joins Challenge 5

# SELECT genre, 
#        ROUND(
#            AVG(rating), 
#            2
#        ) AS avg_rating
# FROM series
# JOIN reviews
#     on series.id = reviews.series_id
# GROUP BY series.genre;


-- TV Joins Challenge 6

# SELECT first_name,
#        last_name,
#        IFNULL(COUNT(reviews.id),0) AS COUNT,
#        IFNULL(MAX(reviews.rating),0) AS MAX,
#        IFNULL(MIN(reviews.rating),0) AS MIN,
#        IFNULL(AVG(reviews.rating),0) AS AVG,
#        CASE
# 	   WHEN COUNT(reviews.id) = 0 THEN 'INACTIVE'
# 	   ELSE 'ACTIVE'
# 	   END AS STATUS
# FROM reviewers
# LEFT JOIN reviews
# ON reviewers.id = reviews.reviewer_id
# GROUP BY reviewers.id;


# SELECT first_name, 
#        last_name, 
#        Count(rating)                               AS COUNT, 
#        Ifnull(Min(rating), 0)                      AS MIN, 
#        Ifnull(Max(rating), 0)                      AS MAX, 
#        Round(Ifnull(Avg(rating), 0), 2)            AS AVG, 
#        IF(Count(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS 
# FROM   reviewers 
#        LEFT JOIN reviews 
#               ON reviewers.id = reviews.reviewer_id 
# GROUP  BY reviewers.id; 


# SELECT first_name, 
#        last_name, 
#        Count(rating)                    AS COUNT, 
#        Ifnull(Min(rating), 0)           AS MIN, 
#        Ifnull(Max(rating), 0)           AS MAX, 
#        Round(Ifnull(Avg(rating), 0), 2) AS AVG, 
#        CASE 
#          WHEN Count(rating) >= 10 THEN 'POWER USER' 
#          WHEN Count(rating) > 0 THEN 'ACTIVE' 
#          ELSE 'INACTIVE' 
#        end                              AS STATUS 
# FROM   reviewers 
#        LEFT JOIN reviews 
#               ON reviewers.id = reviews.reviewer_id 
# GROUP  BY reviewers.id; 


-- TV Joins Challenge 7

# SELECT 
#     title, 
#     rating,
#     CONCAT(first_name, " " , last_name)
# FROM series 
# JOIN reviews 
#     ON reviews.series_id = series.id 
# JOIN reviewers
#     ON reviews.reviewer_id = reviewers.id
# ORDER BY title;


