INSERT INTO skill_level (skill_level) VALUES
('beginner'),
('intermediate'),
('advanced');

INSERT INTO instructor_instrument (instrument) VALUES
('guitarr'),
('drums'),
('piano'),
('trumpet'),
('saxophone'),
('bass');

INSERT INTO student_instrument (instrument) VALUES
('guitarr'),
('drums'),
('piano'),
('trumpet'),
('saxophone'),
('bass');

INSERT INTO instrument (instrument) VALUES
('guitarr'),
('drums'),
('piano'),
('trumpet'),
('saxophone'),
('bass');

INSERT INTO level_price (level_price) VALUES 
('beginner'),
('intermediate'),
('advanced');

INSERT INTO type_of_lesson_price (type_of_lesson) VALUES
('individual'),
('group'),
('ensemble');

INSERT INTO genre (genre) VALUES
('Christmas rock'),
('Christmas classics'),
('Christmas hiphop');

insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Derick', 'Astley', '199301021234', 'Maryland', 1998, 'Yulin');
insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Zorine', 'Larkkem', '199002031234', 'Harbort', 2007, 'Tabunok');
insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Gage', 'Stockney', '200012129876', 'American Ash', 2003, 'Suicheng');
insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Sally', 'Schoenrock', '199707210012', 'Transport', 2006, 'Chengjiao');
insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Clevie', 'O''Doran', '202211246743', 'Rusk', 1998, 'Pasarkuok');

insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Alva', 'Alvadottir', '199701021234', 'kistagangen', 1998, 'Stockholm');
insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Hugo', 'Hugosson', '199202031234', 'kungshamra', 2007, 'Ols');
insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Mille', 'Millesson', '200312129876', 'huggarvagen', 2003, 'Ost');
insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Simon', 'Simonsson', '199907210012', 'norrlandsgatan', 2006, 'Chark');
insert into person (first_name, last_name, personal_number, street, zip_code, city) values ('Rikard', 'Rikardsson', '202111246743', 'essingebrogatan', 1998, 'Nordpoolen');

insert into phone (phone_number) values ('3437184031');
insert into phone (phone_number) values ('2802216941');
insert into phone (phone_number) values ('2714494392');
insert into phone (phone_number) values ('9479369938');
insert into phone (phone_number) values ('1714276621');

insert into email (email) values ('aodunneen0@domainmarket.com');
insert into email (email) values ('cantonellini1@blogs.com');
insert into email (email) values ('kovett2@ow.ly');
insert into email (email) values ('hbullent3@dion.ne.jp');
insert into email (email) values ('hpedler4@toplist.cz');

insert into ensamble (min_number, max_number) values (2, 7);

insert into group_lesson (max_number, instrument, min_number) values (29, (SELECT instrument_id FROM instrument WHERE instrument ILIKE 'saxophone'), 2);


insert into induvidual (instrument) values ((SELECT instrument_id FROM instrument WHERE instrument ILIKE 'bass'));

insert into instructor (employment_id, person_id) values (956,1);
insert into instructor (employment_id, person_id) values (5863,2);
insert into instructor (employment_id, person_id) values (1943,3);
insert into instructor (employment_id, person_id) values (2066,4);
insert into instructor (employment_id, person_id) values (6077,5);

/*
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values (3514, 4690, (SELECT level_price_id FROM level_price WHERE level_price_id ILIKE 'beginner'), (SELECT type_of_lesson_price_id FROM type_of_lesson_price WHERE type_of_lesson_price_id ILIKE 'individual'));
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values (112, 2697,  (SELECT level_price_id FROM level_price WHERE level_price_id ILIKE 'intermediate'), (SELECT type_of_lesson_price_id FROM type_of_lesson_price WHERE type_of_lesson_price_id ILIKE 'individual'));
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values (5388, 8797, (SELECT level_price_id FROM level_price WHERE level_price_id ILIKE 'advanced'), (SELECT type_of_lesson_price_id FROM type_of_lesson_price WHERE type_of_lesson_price_id ILIKE 'individual'));
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values (8457, 1673, (SELECT level_price_id FROM level_price WHERE level_price_id ILIKE 'beginner'), (SELECT type_of_lesson_price_id FROM type_of_lesson_price WHERE type_of_lesson_price_id ILIKE 'group_lesson'));
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values (8457, 1673, (SELECT level_price_id FROM level_price WHERE level_price_id ILIKE 'intermediate'), (SELECT type_of_lesson_price_id FROM type_of_lesson_price WHERE type_of_lesson_price_id ILIKE 'group_lesson'));
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values (8457, 1673, (SELECT level_price_id FROM level_price WHERE level_price_id ILIKE 'advanced'), (SELECT type_of_lesson_price_id FROM type_of_lesson_price WHERE type_of_lesson_price_id ILIKE 'group_lesson'));
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values (8457, 1673, null , (SELECT type_of_lesson_price_id FROM type_of_lesson_price WHERE type_of_lesson_price_id ILIKE 'ensamble'));
*/
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values(100,50,1,1);
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values(100,50,2,1);
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values(100,50,3,1);
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values(100,50,1,2);
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values(100,50,2,2);
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values(100,50,3,2);
insert into price (student_pay, instructor_salary, level_price_id, type_of_lesson_price_id) values(100,50,null,3);

insert into person_email (person_id, email_id) values(1,2);
insert into person_email (person_id, email_id) values(2,3);
insert into person_email (person_id, email_id) values(3,4);
insert into person_email (person_id, email_id) values(4,5);

insert into person_phone (person_id, phone_id) values(1,2);
insert into person_phone (person_id, phone_id) values(2,3);
insert into person_phone (person_id, phone_id) values(3,4);
insert into person_phone (person_id, phone_id) values(4,5);

insert into student (enrollment_id, contactperson_phonenumber, contactperson_email, contactperson_name, person_id, student_instrument_id) values (15, '4138754762', 'komara0@yolasite.com', 'Karney O''Mara', 6, 5);
insert into student (enrollment_id, contactperson_phonenumber, contactperson_email, contactperson_name, person_id, student_instrument_id) values (73, '4291772211', 'rkunz1@myspace.com', 'Ruthy Kunz', 7, 3);
insert into student (enrollment_id, contactperson_phonenumber, contactperson_email, contactperson_name, person_id, student_instrument_id) values (17, '4668318688', 'gmalicki2@privacy.gov.au', 'Gwendolin Malicki', 10, 4);
insert into student (enrollment_id, contactperson_phonenumber, contactperson_email, contactperson_name, person_id, student_instrument_id) values (37, '2442430655', 'jshewring3@guardian.co.uk', 'Joel Shewring', 8, 1);
insert into student (enrollment_id, contactperson_phonenumber, contactperson_email, contactperson_name, person_id, student_instrument_id) values (11, '3725369850', 'ptindley4@whitehouse.gov', 'Petronilla Tindley', 9, 2);

insert into renting_instrument (instrument_id, instrument_brand, form_date, to_date, student_adress, instrument_price, max_time, amount_of_instrument, available, student_id) values (1696, 'Avaveo', '2021-01-02', '2022-01-01', '053 Loomis Crossing', 9541, '2022-01-02', 1, 0, 1);
insert into renting_instrument (instrument_id, instrument_brand, form_date, to_date, student_adress, instrument_price, max_time, amount_of_instrument, available, student_id) values (6829, 'Topicblab', '2021-03-04', '2022-01-04', '1166 Kropf Lane', 9400, '2022-03-04', 2, 1, 2);
insert into renting_instrument (instrument_id, instrument_brand, form_date, to_date, student_adress, instrument_price, max_time, amount_of_instrument, available, student_id) values (3072, 'Divavu', '1971-12-12', '1972-06-12', '994 Hoepker Way', 4495, '1972-12-12', 1, 0, 3);
insert into renting_instrument (instrument_id, instrument_brand, form_date, to_date, student_adress, instrument_price, max_time, amount_of_instrument, available, student_id) values (5984, 'Kwinu', '0001-01-01', '0001-03-01', '9141 Texas Drive', 8802, '0002-01-01', 1, 1, 4);
insert into renting_instrument (instrument_id, instrument_brand, form_date, to_date, student_adress, instrument_price, max_time, amount_of_instrument, available, student_id) values (7495, 'Vitz', '1886-11-23', '1887-01-23', '742 Anniversary Drive', 2540, '1887-11-23', 1, 0, 5);

insert into lesson (level_id, induvidual_id, group_id, instrument_id, price_id, ensamble_id) values (1, 1, null, 1, 1, null);
insert into lesson (level_id, induvidual_id, group_id, instrument_id, price_id, ensamble_id) values (2, null, 1, 2, 2, null);
insert into lesson (level_id, induvidual_id, group_id, instrument_id, price_id, ensamble_id) values (3, null, null, 3, 3, 1);

insert into schedule (date, time, personal_schedule_id, instructor_id, student_id, lesson_id) values ('2022-11-03', '12:17', 62, 1, 1, 1);
insert into schedule (date, time, personal_schedule_id, instructor_id, student_id, lesson_id) values ('2022-11-10', '16:05', 42, 2, 2, 3);
insert into schedule (date, time, personal_schedule_id, instructor_id, student_id, lesson_id) values ('2022-12-12', '16:48', 16, 3, 3, 2);
insert into schedule (date, time, personal_schedule_id, instructor_id, student_id, lesson_id) values ('2022-12-24', '15:53', 64, 4, 4, 2);
insert into schedule (date, time, personal_schedule_id, instructor_id, student_id, lesson_id) values ('2022-11-29', '14:52', 69, 5, 5, 1);

insert into sibling_discount (student_id, sibling_id) VALUES
(1,2),
(2,1),
(4,5),
(5,4);
