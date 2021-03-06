# CREATE TABLE students(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100) UNIQUE
# );

# CREATE TABLE papers(
#     student_id INT,
#     title VARCHAR(100) PRIMARY KEY,
#     grade INT,
#     FOREIGN KEY(student_id) 
        # REFERENCES students(id)
        # --추가
        # ON DELETE CASCADE
# );


# INSERT INTO students (first_name) VALUES 
# ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

# INSERT INTO papers (student_id, title, grade ) VALUES
# (1, 'My First Book Report', 60),
# (1, 'My Second Book Report', 75),
# (2, 'Russian Lit Through The Ages', 94),
# (2, 'De Montaigne and The Art of The Essay', 98),
# (4, 'Borges and Magical Realism', 89);


# SELECT first_name, title, grade FROM students
# JOIN papers ON students.id = papers.student_id
# ORDER BY grade DESC;

# SELECT first_name, title, grade FROM students
# LEFT JOIN papers ON students.id = papers.student_id;

# SELECT first_name, 
#        IFNULL(title, 'MISSING'), 
#        IFNULL(grade, 0)
# FROM students
# LEFT JOIN papers ON students.id = papers.student_id;

-- 추가
# SELECT first_name, 
#        IFNULL(title, 'MISSING'), 
#        IFNULL(grade, 0)
# FROM students s
# LEFT JOIN papers p ON s.id = p.student_id;


# SELECT first_name, 
#        AVG(grade)
# FROM students
# LEFT JOIN papers ON students.id = papers.student_id
# GROUP BY first_name
# ORDER BY AVG(grade) DESC;


-- 추가

# SELECT
#     first_name,
#     IFNULL(AVG(grade), 0) AS average
# FROM students
# LEFT JOIN papers
#     ON students.id = papers.student_id
# GROUP BY students.id
# ORDER BY average DESC;


# SELECT first_name, 
#        AVG(grade),
#        CASE 
#            WHEN AVG(grade) >= 75 THEN "PASSIN"
#            ELSE "FAILING"
#        END AS "passing_status"
# FROM students
# LEFT JOIN papers ON students.id = papers.student_id
# GROUP BY first_name
# ORDER BY AVG(grade) DESC;


-- 추가 

# SELECT first_name, 
#        Ifnull(Avg(grade), 0) AS average, 
#        CASE 
#          WHEN Avg(grade) IS NULL THEN 'FAILING' 
#          WHEN Avg(grade) >= 75 THEN 'PASSING' 
#          ELSE 'FAILING' 
#        end                   AS passing_status 
# FROM   students 
#        LEFT JOIN papers 
#               ON students.id = papers.student_id 
# GROUP  BY students.id 
# ORDER  BY average DESC;



