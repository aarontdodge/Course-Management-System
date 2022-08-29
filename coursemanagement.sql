BEGIN;

-- Table Creation

CREATE TABLE students (
    student_id serial4 PRIMARY KEY,
    username varchar(30) NOT NULL,
    pword varchar(30) NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    register_eligible boolean
);

CREATE TABLE teachers (
    teacher_id serial4 PRIMARY KEY,
    username varchar(30) NOT NULL,
    pword varchar(30) NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL
);

CREATE TABLE admins (
    admin_id serial4 PRIMARY KEY,
    username varchar(30) NOT NULL,
    pword varchar(30) NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL
);

CREATE TABLE courses (
    course_abbrev varchar(10) NOT NULL,
    course_num integer NOT NULL,
    course_name varchar(30) NOT NULL,
    credits integer NOT NULL,
    PRIMARY KEY (course_abbrev, course_num)
);

CREATE TABLE sections (
    section_id serial4 PRIMARY KEY,
    course_abbrev varchar(10) NOT NULL,
    course_num integer NOT NULL,
    teacher_id serial4 NOT NULL REFERENCES teachers,
    capacity integer NOT NULL,
    schedule varchar(30) NOT NULL,
    FOREIGN KEY (course_abbrev, course_num) REFERENCES courses (course_abbrev, course_num)
);

CREATE TABLE sections_students (
    section_id serial4 REFERENCES sections,
    student_id serial4 REFERENCES students
);

-- Data insertion
INSERT INTO students VALUES
    (DEFAULT, 'lwhite', 'password', 'Laverne', 'White', TRUE),
    (DEFAULT, 'emontgomery', 'password', 'Eva', 'Montgomery', FALSE),
    (DEFAULT, 'jmatthews', 'password', 'Jan', 'Matthews', TRUE);

INSERT INTO admins VALUES (DEFAULT, 'atdodge', 'password', 'Aaron', 'Dodge');

INSERT INTO teachers VALUES 
    (DEFAULT, 'lkim', 'password', 'Leslie', 'Kim'),
    (DEFAULT, 'panderson', 'password', 'Pamela', 'Anderson'),
    (DEFAULT, 'ccarter', 'password', 'Charlie', 'Carter');

INSERT INTO courses VALUES 
    ('ENG', 101, 'Introductory English', 3),
    ('CS', 101, 'Introduction to Programming', 3),
    ('MATH', 101, 'College Algebra', 3),
    ('CHEM', 105, 'Introduction to Chemistry', 4),
    ('CHEM', 250, 'Organic Chemistry', 4),
    ('ENG', 210, 'Ancient Literature', 2),
    ('BIO', 275, 'Genetics', 3);

END;