-- 1. Finding 5 oldest users 

# SELECT * 
# FROM users 
# ORDER BY created_at 
# LIMIT 5;


-- 2. Most Popular Registation Date

# SELECT 
#     DAYNAME(created_at) AS day,
#     COUNT(*) AS total
# FROM users
# GROUP BY day
# ORDER BY total DESC;


-- 3. Identify Inactive Users (users with no photos)
# SELECT users.id, photos.id FROM users
# left join photos 
# on users.id = photos.user_id
# AND photos.id IS NULL;


# SELECT username
# FROM users
# LEFT JOIN photos
# ON users.id = photos.user_id
# WHERE photos.id IS NULL;

-- 4. Identify most popular phto (and user who created it)



# SELECT 
#     photo_id,
      # image_url, 
      # COUNT(*) AS total
# FROM
#     photos
#         INNER JOIN
#     likes ON likes.photo_id = photos.id
# GROUP BY photos.id
# ORDER BY total DESC
# LIMIT 1;


# SELECT 
#     username,
#     photos.id,
#     photos.image_url, 
#     COUNT(*) AS total
# FROM photos
# INNER JOIN likes
#     ON likes.photo_id = photos.id
# INNER JOIN users
#     ON photos.user_id = users.id
# GROUP BY photos.id
# ORDER BY total DESC
# LIMIT 1;


-- 5 Calculate avg number of photos per user
-- total number of photos / total number of users

# SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;


-- 6 Find the five most popular hashtags

# SELECT COUNT(tag_id) as countTag_id, tag_id, tag_name FROM photo_tags
# JOIN tags
# ON tags.id = photo_tags.tag_id
# GROUP BY tag_id
# ORDER BY countTag_id DESC;


# SELECT tags.tag_name, 
#        Count(*) AS total 
# FROM   photo_tags 
#        JOIN tags 
#          ON photo_tags.tag_id = tags.id 
# GROUP  BY tags.id 
# ORDER  BY total DESC 
# LIMIT  5; 


-- 7 Finding the bots - the users who have liked every single photo

# select count(likes.user_id) as countedUser_id, username 
# from likes 
# join users
# on likes.user_id = users.id
# GROUP by likes.user_id
# HAVING countedUser_id = (select count(id) from photos);


# SELECT username, 
#        Count(*) AS num_likes 
# FROM   users 
#        INNER JOIN likes 
#                ON users.id = likes.user_id 
# GROUP  BY likes.user_id 
# HAVING num_likes = (SELECT Count(*) 
#                     FROM   photos); 


