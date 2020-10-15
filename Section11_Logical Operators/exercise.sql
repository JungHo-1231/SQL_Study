# SELECT 10 != 10;
# SELECT 15 > 14 && 99 - 5 <= 94;
# SELECT 1 in (5,3) || 9 BETWEEN 8 AND 10;


# SELECT * FROM books where released_year < 1980;
# SELECT * FROM books where author_lname in ('Eggers', 'Chabon');
# SELECT * FROM books where author_lname ="Lahiri" AND released_year >2000;


#  (오답) SELECT * FROM books HAVING 100 < COUNT(pages) < 200;
#  (정답) SELECT title, pages FROM books WHERE pages >= 100 AND pages <= 200;

# SELECT * FROM books where author_lname LIKE 'C%' OR 'S%';

# (오답)
# SELECT  title, author_lname 
#     CASE
#         WHEN title LIKE '%stories%' THEN 'Short Stories'
#         WHEN title= "Just Kinds" OR 'Heartbreaking Work' THEN 'Memoir'
#         ELSE 'Novel'
#     END AS TYPE
# FROM books;

# (정답)
# SELECT title, author_lname,
#     CASE 
#         WHEN title LIKE '%stories%' THEN 'Short stories'
#         WHEN title='Just Kids' OR title ='A Heartbreaking Work' THEN 'Memoir'
#         ELSE 'Novel'
#     END AS TYPE
# FROM books;


# SELECT title, author_lname , 
#      CASE
#          WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), " book")
#          ELSE CONCAT(COUNT(*), " books")
#     END AS COUNT
# FROM books GROUP BY author_lname;


