# Course Management System

## Overview

The Course Management System is a tool designed for use by educational institutions to keep track of courses offered, available sections of the course, and the capacity of the section. It allows for students to register for courses, instructors to see their course lists, and administrators to create new sections of courses. 

## User Stories

- Students can search and register for courses (based on the student's eligibility status)
    - If the section of the course that the student is registering for is full, the student will have the option to be put on the waitlist
    - Students cannot register for sections with overlapping times
    - Students cannot register for more than one section of a course
    - Students can only register if they are eligible to do so
- Students can drop courses that they're registered for
- Students can view the courses they're registered for as well as their status as a full-time or part-time student
- Teachers can view the sections of courses they're teaching, and they can view the list of students who have signed up for a section of a course
- Administrators can view all courses and the students that have registered for each one
- Administrators can view all student information
- Administrators create new sections of a course

## Other important features

- If a student is on the waitlist for a course, but later decides to drop the course, everyone behind that student on the waitlist advances
- If a student is registered for a course, but then drops it, the first student on the waitlist will be added to the course