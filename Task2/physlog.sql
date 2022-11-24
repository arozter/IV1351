CREATE TABLE email (
 email_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 email VARCHAR(345) NOT NULL
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (email_id);


CREATE TABLE genre (
 genre_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 genre VARCHAR(30)
);

ALTER TABLE genre ADD CONSTRAINT PK_genre PRIMARY KEY (genre_id);


CREATE TABLE group_lesson (
 group_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 max_number INT,
 instrument VARCHAR(30),
 min_number INT
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (group_id);


CREATE TABLE induvidual (
 induvidual_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument VARCHAR(30)
);

ALTER TABLE induvidual ADD CONSTRAINT PK_induvidual PRIMARY KEY (induvidual_id);


CREATE TABLE instructor_instrument (
 instructor_instrument_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument CHAR(10)
);

ALTER TABLE instructor_instrument ADD CONSTRAINT PK_instructor_instrument PRIMARY KEY (instructor_instrument_id);


CREATE TABLE instrument (
 instrument_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument VARCHAR(30)
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);


CREATE TABLE level_price (
 level_price_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 level_price VARCHAR(200)
);

ALTER TABLE level_price ADD CONSTRAINT PK_level_price PRIMARY KEY (level_price_id);


CREATE TABLE person (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 first_name VARCHAR(747),
 last_name VARCHAR(747),
 personal_number VARCHAR(12) UNIQUE,
 street VARCHAR(58),
 zip_code VARCHAR(5),
 city VARCHAR(85)
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);


CREATE TABLE person_email (
 person_id INT NOT NULL,
 email_id INT NOT NULL
);

ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (person_id,email_id);


CREATE TABLE phone (
 phone_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 phone_number VARCHAR(10) NOT NULL
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (phone_id);


CREATE TABLE skill_level (
 level_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 skill_level VARCHAR(20)
);

ALTER TABLE skill_level ADD CONSTRAINT PK_skill_level PRIMARY KEY (level_id);


CREATE TABLE student_instrument (
 student_instrument_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument VARCHAR(30)
);

ALTER TABLE student_instrument ADD CONSTRAINT PK_student_instrument PRIMARY KEY (student_instrument_id);


CREATE TABLE type_of_lesson_price (
 type_of_lesson_price_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 type_of_lesson VARCHAR(20)
);

ALTER TABLE type_of_lesson_price ADD CONSTRAINT PK_type_of_lesson_price PRIMARY KEY (type_of_lesson_price_id);


CREATE TABLE ensamble (
 ensamble_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 min_number INT,
 max_number INT,
 genre_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE ensamble ADD CONSTRAINT PK_ensamble PRIMARY KEY (ensamble_id);


CREATE TABLE instructor (
 instructor_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 employment_id  INT UNIQUE NOT NULL,
 person_id INT NOT NULL,
 instructor_instrument_id INT
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);


CREATE TABLE person_phone (
 person_id INT NOT NULL,
 phone_id INT NOT NULL
);

ALTER TABLE person_phone ADD CONSTRAINT PK_person_phone PRIMARY KEY (person_id,phone_id);


CREATE TABLE price (
 price_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_pay INT,
 instructor_salary INT,
 level_price_id INT,
 type_of_lesson_price_id INT NOT NULL
);

ALTER TABLE price ADD CONSTRAINT PK_price PRIMARY KEY (price_id);


CREATE TABLE student (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 enrollment_id INT UNIQUE NOT NULL,
 contactperson_phonenumber VARCHAR(10),
 contactperson_email VARCHAR(345),
 contactperson_name VARCHAR(747),
 person_id INT NOT NULL,
 student_instrument_id INT
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);


CREATE TABLE lesson (
 lesson_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 level_id INT NOT NULL,
 induvidual_id INT,
 group_id INT,
 instrument_id INT ,
 price_id INT,
 ensamble_id INT 
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);


CREATE TABLE renting_instrument (
 renting_instrument_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_id  INT UNIQUE NOT NULL,
 instrument_brand VARCHAR(100),
 form_date DATE,
 to_date DATE,
 student_adress VARCHAR(150),
 instrument_price INT,
 max_time DATE,
 amount_of_instrument INT,
 available INT,
 student_id INT NOT NULL
);

ALTER TABLE renting_instrument ADD CONSTRAINT PK_renting_instrument PRIMARY KEY (renting_instrument_id);


CREATE TABLE schedule (
 schedule_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 date DATE,
 time TIME(6),
 personal_schedule_id  INT UNIQUE NOT NULL,
 instructor_id INT,
 student_id INT,
 lesson_id INT
);

ALTER TABLE schedule ADD CONSTRAINT PK_schedule PRIMARY KEY (schedule_id);


CREATE TABLE sibling_discount (
 sibling_discount_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_id INT,
 sibling_id INT
);

ALTER TABLE sibling_discount ADD CONSTRAINT PK_sibling_discount PRIMARY KEY (sibling_discount_id);


ALTER TABLE person_email ADD CONSTRAINT FK_person_email_0 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE person_email ADD CONSTRAINT FK_person_email_1 FOREIGN KEY (email_id) REFERENCES email (email_id);


ALTER TABLE ensamble ADD CONSTRAINT FK_ensamble_0 FOREIGN KEY (genre_id) REFERENCES genre (genre_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE instructor ADD CONSTRAINT FK_instructor_1 FOREIGN KEY (instructor_instrument_id) REFERENCES instructor_instrument (instructor_instrument_id);


ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_0 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE person_phone ADD CONSTRAINT FK_person_phone_1 FOREIGN KEY (phone_id) REFERENCES phone (phone_id);


ALTER TABLE price ADD CONSTRAINT FK_price_0 FOREIGN KEY (level_price_id) REFERENCES level_price (level_price_id);
ALTER TABLE price ADD CONSTRAINT FK_price_1 FOREIGN KEY (type_of_lesson_price_id) REFERENCES type_of_lesson_price (type_of_lesson_price_id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE student ADD CONSTRAINT FK_student_1 FOREIGN KEY (student_instrument_id) REFERENCES student_instrument (student_instrument_id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (level_id) REFERENCES skill_level (level_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (induvidual_id) REFERENCES induvidual (induvidual_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_2 FOREIGN KEY (group_id) REFERENCES group_lesson (group_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_3 FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_4 FOREIGN KEY (price_id) REFERENCES price (price_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_5 FOREIGN KEY (ensamble_id) REFERENCES ensamble (ensamble_id);


ALTER TABLE renting_instrument ADD CONSTRAINT FK_renting_instrument_0 FOREIGN KEY (student_id) REFERENCES student (student_id);


ALTER TABLE schedule ADD CONSTRAINT FK_schedule_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);
ALTER TABLE schedule ADD CONSTRAINT FK_schedule_1 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE schedule ADD CONSTRAINT FK_schedule_2 FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);


ALTER TABLE sibling_discount ADD CONSTRAINT FK_sibling_discount_0 FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE sibling_discount ADD CONSTRAINT FK_sibling_discount_1 FOREIGN KEY (sibling_id) REFERENCES student (student_id);


