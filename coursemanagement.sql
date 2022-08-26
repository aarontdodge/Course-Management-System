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
    (DEFAULT, "lwhite", "password", "Laverne", "White", TRUE),
    (DEFAULT, "emontgomery", "password", "Eva", "Montgomery", FALSE),
    (DEFAULT, "jmatthews", "Jan", "Matthews", TRUE);

INSERT INTO admins VALUES (DEFAULT, "atdodge", "password", "Aaron", "Dodge");

INSERT INTO teachers VALUES 
    (DEFAULT, "lkim", "password", "Leslie", "Kim"),
    (DEFAULT, "panderson", "Pamela", "Anderson"),
    (DEFAULT, "ccarter", "password", "Charlie", "Carter");

INSERT INTO courses VALUES 
    ("ENG", 101, "Introductory English"),
    ("CS", 101, "Introduction to Programming"),
    ("MATH", 101, "College Algebra"),
    ("CHEM", 105, "Introduction to Chemistry")
    ("CHEM", 250, "Organic Chemistry"),
    ("ENG", 210, "Ancient Literature"),
    ("BIO" 275, "Genetics")

    --     course_abbrev varchar(10) NOT NULL,
    -- course_num integer NOT NULL,
    -- course_name varchar(30) NOT NULL,
    -- PRIMARY KEY (course_abbrev, course_num)