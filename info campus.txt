drop table if exists student_order;
drop table if exists student_phone;
drop table if exists student_address;
drop table if exists faculty_phone;
drop table if exists student_Cards;
drop table if exists faculty_address;
drop table if exists batch_students;
drop table if exists course_batches;
drop table if exists student_qualifications;
drop table if exists faculty_qualifications;
drop table if exists course_modules;
drop table if exists modules;
drop table if exists faculty;
drop table if exists student;
drop table if exists course;


CREATE TABLE course (
  ID INT PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  duration INT NULL,
  summery VARCHAR(1024) NULL);


CREATE TABLE student (
  ID INT PRIMARY KEY,
  namefirst VARCHAR(45) NULL,
  namelast VARCHAR(45) NULL,
  DOB DATE NULL,
  emailID VARCHAR(128) NULL);


CREATE TABLE student_order (
  ID INT PRIMARY KEY,
  studentID INT,
  orderdate date,
  amount int,
  FOREIGN KEY(studentID) REFERENCES student(id));


CREATE TABLE student_phone (
  ID INT primary key,
  studentID INT,
  number varchar(45),
  isActive bool,
  FOREIGN KEY(studentID) REFERENCES student(id));
 
 
CREATE TABLE student_Cards (
  ID INT primary key,
  studentID INT,
  name varchar(45),
  isActive bool,
  FOREIGN KEY(studentID) REFERENCES student(id));
  
 
 CREATE TABLE student_address (
  ID INT primary key ,
  studentID INT unique not null,
  address varchar(128) unique not null,
  FOREIGN KEY(studentID) REFERENCES student(id));
  
  
  
CREATE TABLE faculty (
  ID INT PRIMARY KEY,
  namefirst VARCHAR(45) NULL,
  namelast VARCHAR(45) NULL,
  DOB DATE NULL,
  emailID VARCHAR(128) NULL);

  
CREATE TABLE faculty_phone (
  ID INT primary key,
  facultyID INT,
  number varchar(10),
  FOREIGN KEY(facultyID) REFERENCES faculty(id));
  
 
 CREATE TABLE faculty_address (
  ID INT primary key,
  facultyID INT unique not null,
  address varchar(128),
  FOREIGN KEY(facultyID) REFERENCES faculty(id));
  
  
CREATE TABLE modules (
  ID INT PRIMARY KEY,
  name VARCHAR(128) NULL,
  duration INT NULL);


CREATE TABLE course_modules (
  ID INT primary key,
  courseID INT ,
  moduleID INT ,
    FOREIGN KEY (courseID) REFERENCES course(ID),
    FOREIGN KEY (moduleID) REFERENCES modules(ID));


CREATE TABLE student_qualifications (
  ID INT PRIMARY KEY,
  studentID INT NULL,
  name VARCHAR(128) NULL,
  college VARCHAR(128) NULL,
  university VARCHAR(128) NULL,
  marks VARCHAR(45) NULL,
  year int NULL,
   FOREIGN KEY(studentID) REFERENCES student(id));

   
CREATE TABLE faculty_qualifications (
  ID INT PRIMARY KEY,
  facultyID INT NULL,
  name VARCHAR(128) NULL,
  college VARCHAR(128) NULL,
  university VARCHAR(128) NULL,
  marks VARCHAR(45) NULL,
  year int NULL,
   FOREIGN KEY(facultyID) REFERENCES faculty(id));

   
CREATE TABLE course_batches (
  ID INT PRIMARY KEY,
  name VARCHAR(45) NULL,
  courseID INT NULL,
  starton DATE NULL,
  endson DATE NULL,
  capacity INT NULL,
  FOREIGN KEY (courseID) REFERENCES course (ID));


CREATE TABLE batch_students (
  ID INT primary key,
  batchID INT NULL,
  studentID INT NULL,
   FOREIGN KEY (batchID) REFERENCES course_batches (ID),
   FOREIGN KEY (studentID) REFERENCES student (ID));

   
INSERT INTO course (ID, name, duration, summery) VALUES ('1', 'PG-DAC', '6', 'This course is designed by CDAC');
INSERT INTO course (ID, name, duration, summery) VALUES ('2', 'DBDA', '6', 'This course is designed by CDAC');
INSERT INTO course (ID, name, duration, summery) VALUES ('3', 'Pre-DAC', '2', 'This course is designed by CDAC');
INSERT INTO course (ID, name, duration, summery) VALUES ('4', 'JAVA', '3', 'This course is designed by Infoway');
INSERT INTO course (ID, name, duration, summery) VALUES ('5', '.NET', '3', 'This course is designed by Infoway');
INSERT INTO course (ID, name, duration, summery) VALUES ('6', 'DMC', '6', 'This course is designed by CDAC');
INSERT INTO course (ID, name, duration, summery) VALUES ('7', 'DSSD', '6', 'This course is designed by CDAC');





INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('1', 'saleel', 'bagde', '1984-06-12', 'saleel.bagde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('2', 'omkar', 'rokde', '1969-10-25', 'omkar.rakde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('3', 'ulka', 'joshi', '1970-10-25', 'ulka.joshi@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('4', 'rahul', 'patil', '1982-10-31', 'rahul.patil@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('5', 'ruhan', 'bagde', '1984-01-12', 'ruhan.bagde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('6', 'lala', 'prasad', '1980-12-01', 'lala.prasad@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('7', 'sharmin', 'bagde', '1986-12-14', 'sharmin.bagde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('8', 'vrushali', 'bagde', '1984-12-29', 'vrushali.bagde@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('9', 'vasant', 'khande', '1992-10-26', 'vasant.khande@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('10', 'nitish', 'patil', '1990-10-26', 'nitish.patil@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('11', 'neel', 'save', '1975-10-30', 'neel.save@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('12', 'deep', 'save', '1986-11-30', 'deep.save@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('13', 'nrupali', 'save', '1981-12-01', 'nrupali.save@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('14', 'supriya', 'karnik', '1983-12-15', 'supriya.karnik@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('15', 'bandish', 'karnik', '1987-12-30', 'bandish.karnik@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('16', 'sangita', 'karnik', '1990-12-01', 'sangita.karnik@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('17', 'sangita', 'menon', '1989-10-26', 'sangita.menon@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('18', 'rahul', 'shah', '1982-06-12', 'rahul.shah@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('19', 'bhavin', 'patel', '1983-11-13', 'bhavin.patel@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('20', 'kaushal', 'patil', '1982-07-30', 'kaushal.patil@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('21', 'pankaj', 'gandhi', '1982-07-30', 'pankaj.gandhi@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('22', 'rajan', 'patel', '1982-07-30', 'rajan.patel@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('23', 'bhavin', 'patel', '1982-07-30', 'bhavin.patel@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('24', 'mukesh', 'bhavsar', '1982-07-30', 'mukesh.bhavsar@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('25', 'dilu', 'khande', '1982-07-30', 'dilu.khande@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('26', 'sonam', 'khan', '1972-05-13', 'sonam.khan@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('27', 'rohit', 'patil', '1976-12-31', 'rohit.patil@gmail.com');
INSERT INTO student (ID, namefirst, namelast, DOB, emailID) VALUES ('28', 'raj', 'bubber', '1982-02-28', 'raj.bubber@gmail.com');




INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('1', '4', '2019-01-12', '2000');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('2', '1', '2019-01-12', '2500');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('3', '6', '2019-08-17', '150');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('4', '2', '2019-05-02', '340');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('5', '12', '2019-05-03', '655');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('6', '12', '2019-05-04', '1000');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('7', '6', '2019-11-11', '4000');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('8', '1', '2019-07-19', '1270');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('9', '5', '2019-04-07', '2000');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('10', '7', '2019-10-10', '2500');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('11', '10', '2019-11-11', '150');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('12', '14', '2019-07-21', '340');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('13', '13', '2019-11-02', '655');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('14', '4', '2019-01-12', '1000');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('15', null, '2019-04-07', '4000');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('16', null,'2019-10-10', '1270');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('17', null,'2019-11-11', '4588');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('18', null,'2019-07-21', '1200');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('19', null,'2019-11-02', '125');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('20', null,'2019-01-12', '350');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('21', '8', '2019-01-12', '4500');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('22', '10', '2019-11-02', '650');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('23', '4', '2019-10-19', '700');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('24', '4', '2019-08-08', '1400');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('25', '1', '2019-06-15', '1999');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('26', '6', '2019-02-02', '280');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('27', '2', '2019-08-21', '175');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('28', '12', '2019-02-02', '45');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('29', '12', '2019-01-12', '190');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('30', '6', '2019-07-10', '750');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('31', '1', '2019-11-12', '575');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('32', '5', '2019-03-03', '635');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('33', '7', '2019-06-23', '945');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('34', '10', '2019-01-19', '225');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('35', '14', '2019-10-10', '325');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('36', '13', '2019-01-12', '180');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('37', '4', '2019-06-23', '500');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('38', '2', '2019-01-19', '400');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('39', '5', '2019-10-10', '320');
INSERT INTO student_order (ID, studentID, orderdate, amount) VALUES ('40', '8', '2019-01-12', '650');





INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('1', '1', '7032300034', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('2', '2', '7032300039', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('3', '3', '7032300050', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('4', '4', '7032300027', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('5', '5', '7032300001', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('6', '6', '7032300079', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('7', '7', '7032300081', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('8', '8', '7032300054', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('9', '9', '7032300059', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('10', '10', '7032300086', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('11', '11', '7032300082', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('12', '12', '7032300042', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('13', '13', '7032300055', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('14', '14', '7032300013', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('15', '15', '7032300099', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('16', '16', '7032300023', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('17', '17', '7032300084', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('18', '18', '7032300011', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('19', '19', '7032300066', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('20', '20', '7032300096', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('21', '1', '7132300034', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('22', '2', '7132300039', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('23', '3', '7132300050', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('24', '4', '7132300027', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('25', '5', '7032300001', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('26', '6', '7132300079', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('27', '7', '7132300081', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('28', '8', '7132300054', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('29', '9', '7132300059', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('30', '10', '7132300086', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('31', '11', '7132300082', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('32', '12', '7132300042', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('33', '13', '7132300055', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('34', '13', '7132300055', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('35', '13', '7132300055', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('36', '6', '7134567123', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('37', '21', '7156567123', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('38', '22', '7156567134', '1');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('39', '23', '7156563423', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('40', '24', '7156567183', '0');
INSERT INTO student_phone (ID, studentID, number, isActive) VALUES ('41', '25', '7146566412', '1');



INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('1', '1', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('2', '1', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('3', '1', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('4', '1', 'Voter ID', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('5', '1', 'Passport', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('6', '1', 'Debit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('7', '1', 'Credit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('8', '2', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('9', '2', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('10', '2', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('11', '2', 'Voter ID', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('12', '2', 'Debit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('13', '3', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('14', '3', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('15', '3', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('16', '3', 'Passport', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('17', '3', 'Debit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('18', '4', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('19', '4', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('20', '4', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('21', '4', 'Passport', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('22', '4', 'Debit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('23', '4', 'Credit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('24', '5', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('25', '5', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('26', '5', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('27', '5', 'Voter ID', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('28', '5', 'Passport', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('29', '5', 'Debit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('30', '5', 'Credit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('31', '6', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('32', '6', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('33', '7', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('34', '7', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('35', '8', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('36', '8', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('37', '8', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('38', '8', 'Voter ID', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('39', '9', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('40', '9', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('41', '9', 'Debit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('42', '9', 'Credit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('43', '10', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('44', '10', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('45', '10', 'Passport', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('46', '10', 'Voter ID', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('47', '11', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('48', '12', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('49', '12', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('50', '12', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('51', '13', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('52', '13', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('53', '13', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('54', '13', 'Voter ID', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('55', '17', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('56', '17', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('57', '17', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('58', '17', 'Voter ID', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('59', '17', 'Passport', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('60', '17', 'Debit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('61', '17', 'Credit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('62', '18', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('63', '18', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('64', '19', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('65', '19', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('66', '19', 'Passport', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('67', '20', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('68', '20', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('69', '20', 'Passport', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('70', '23', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('71', '23', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('72', '23', 'Credit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('73', '24', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('74', '24', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('75', '24', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('76', '24', 'Voter ID', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('77', '24', 'Passport', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('78', '24', 'Credit', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('79', '25', 'Aadhaar', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('80', '14', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('81', '15', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('82', '16', 'Voter ID', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('83', '25', 'Driving Licence', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('84', '25', 'PAN', '1');
INSERT INTO student_cards (ID, studentID, name, isActive) VALUES ('85', '25', 'Voter ID', '1');






INSERT INTO student_address (ID, studentID, address) VALUES ('1', '1', '13758 Dogwood, St, Trona, CA, Los Angeles, 93562');
INSERT INTO student_address (ID, studentID, address) VALUES ('2', '2', '2263 Ga 17 Hwy N, Millen, GA, Atlanta, 30442');
INSERT INTO student_address (ID, studentID, address) VALUES ('3', '3', '409 Berry St, Louisa, KY, San Jose, 41230');
INSERT INTO student_address (ID, studentID, address) VALUES ('4', '4', '7720 Covington Rd, Pink Stand, TN, San Francisco, 37188');
INSERT INTO student_address (ID, studentID, address) VALUES ('5', '5', '15 Hempstead, St, Saugus, MA, Las Vega, 1906');
INSERT INTO student_address (ID, studentID, address) VALUES ('6', '6', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060');
INSERT INTO student_address (ID, studentID, address) VALUES ('7', '7', 'Po Box 83, Faith, NC, New Jersey, 28041');
INSERT INTO student_address (ID, studentID, address) VALUES ('8', '8', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313');
INSERT INTO student_address (ID, studentID, address) VALUES ('9', '9', 'Po Box 77, Linking Road, UK');
INSERT INTO student_address (ID, studentID, address) VALUES ('10', '10', '7710 Covington Rd , New State Road, New York, 37188');
INSERT INTO student_address (ID, studentID, address) VALUES ('11', '11', '15 Hempstead St, Saugus, MA, Boston, 1906');
INSERT INTO student_address (ID, studentID, address) VALUES ('12', '12', '165 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060');
INSERT INTO student_address (ID, studentID, address) VALUES ('13', '13', 'Po Box 83, Faith, NC, null, New York, 28041');
INSERT INTO student_address (ID, studentID, address) VALUES ('14', '14', '808 Rocky Hill Rd, Plymouth 1993 Cross lane, Boston, 32360');
INSERT INTO student_address (ID, studentID, address) VALUES ('15', '15', '118 Lippitt Ave Warwick, 100 S. Main Street, Los Angeles, 12889');
INSERT INTO student_address (ID, studentID, address) VALUES ('16', '16', '5973 Moon Shadow Dr. Herriman, null, Atlanta, 2345');
INSERT INTO student_address (ID, studentID, address) VALUES ('17', '17', '13758 Dogwood St, Trona, null, San Jose, 93562');
INSERT INTO student_address (ID, studentID, address) VALUES ('18', '18', '2263 Ga 17 Hwy N, Millen, null, Las Vega, 30442');
INSERT INTO student_address (ID, studentID, address) VALUES ('19', '19', '321/vimal park, karve road, pune, 411038');
INSERT INTO student_address (ID, studentID, address) VALUES ('20', '20', 'Prashant Society, Kothrud, pune, 411038');
INSERT INTO student_address (ID, studentID, address) VALUES ('21', '21', '8 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address (ID, studentID, address) VALUES ('22', '22', '9 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address (ID, studentID, address) VALUES ('23', '23', '10  vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address (ID, studentID, address) VALUES ('24', '24', '4 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address (ID, studentID, address) VALUES ('25', '25', '7 vaibhav, Ishadan soc, paud road, Pune');
INSERT INTO student_address (ID, studentID, address) VALUES ('26', '26', '19 Hempstead St, go streat, MG, Boston, 19077');
INSERT INTO student_address (ID, studentID, address) VALUES ('27', '27', '1699 Ken city, P.O. Box 942873, 50 Higuera Street, Oakland, 38060');
INSERT INTO student_address (ID, studentID, address) VALUES ('28', '28', 'Po Box 87, Faith, NC, New York, 28045');






INSERT INTO faculty (ID, namefirst, namelast, DOB, emailID) VALUES ('1', 'prachi', 'gupta', '1974-06-12', 'prachi.gupta@gmail.com');
INSERT INTO faculty (ID, namefirst, namelast, DOB, emailID) VALUES ('2', 'ketan', 'shukla', '1972-10-25', 'ketan.shukla@gmail.com');
INSERT INTO faculty (ID, namefirst, namelast, DOB, emailID) VALUES ('3', 'kiran', 'dev', '1971-10-25', 'kiran.dev@gmail.com');
INSERT INTO faculty (ID, namefirst, namelast, DOB, emailID) VALUES ('4', 'parag', 'patil', '1972-10-31', 'parag.patil@gmail.com');


INSERT INTO faculty_phone (ID, facultyID, number) VALUES ('1', '1', '7032300034');
INSERT INTO faculty_phone (ID, facultyID, number) VALUES ('2', '2', '7032300039');
INSERT INTO faculty_phone (ID, facultyID, number) VALUES ('3', '3', '7032300050');
INSERT INTO faculty_phone (ID, facultyID, number) VALUES ('4', '4', '7032300027');
INSERT INTO faculty_phone (ID, facultyID, number) VALUES ('5', '1', '7032301201');
INSERT INTO faculty_phone (ID, facultyID, number) VALUES ('6', '2', '7032303479');
INSERT INTO faculty_phone (ID, facultyID, number) VALUES ('7', '3', '7032306781');
INSERT INTO faculty_phone (ID, facultyID, number) VALUES ('8', '4', '7032390234');
INSERT INTO faculty_phone (ID, facultyID, number) VALUES ('9', '3', '7134567123');




INSERT INTO faculty_address (ID, facultyID, address) VALUES ('1', '1', '165 Village Dr., P.O. Box 3700, Oakland, TN, Oakland, 38060');
INSERT INTO faculty_address (ID, facultyID, address) VALUES ('2', '2', 'Po Box 83, Faith, NC, New Jersey, 28041');
INSERT INTO faculty_address (ID, facultyID, address) VALUES ('3', '3', '3402 Buccaneer Rose Ave, Bakersfield, CA, Boston, 93313');
INSERT INTO faculty_address (ID, facultyID, address) VALUES ('4', '4', 'Po Box 77, Linking Road, UK');



INSERT INTO modules (ID, name, duration) VALUES ('1', 'Oracle', '1');
INSERT INTO modules (ID, name, duration) VALUES ('2', 'PHP', '1');
INSERT INTO modules (ID, name, duration) VALUES ('3', 'MySQL', '1');
INSERT INTO modules (ID, name, duration) VALUES ('4', 'Node', '1');
INSERT INTO modules (ID, name, duration) VALUES ('5', 'C++', '1');
INSERT INTO modules (ID, name, duration) VALUES ('6', 'C', '1');
INSERT INTO modules (ID, name, duration) VALUES ('7', 'JAVA1', '2');
INSERT INTO modules (ID, name, duration) VALUES ('8', 'JAVA2', '2');
INSERT INTO modules (ID, name, duration) VALUES ('9', 'MongoDB', '1');
INSERT INTO modules (ID, name, duration) VALUES ('10', 'NET', '2');
INSERT INTO modules (ID, name, duration) VALUES ('11', 'Hive', '1');
INSERT INTO modules (ID, name, duration) VALUES ('12', 'Python', '1');
INSERT INTO modules (ID, name, duration) VALUES ('13', 'Aptitude', '1');
INSERT INTO modules (ID, name, duration) VALUES ('14', 'OOPs with C++ Programming', '6');
INSERT INTO modules (ID, name, duration) VALUES ('15', 'Data Structures', '6');
INSERT INTO modules (ID, name, duration) VALUES ('16', 'OS Concepts', '6');
INSERT INTO modules (ID, name, duration) VALUES ('17', 'iOS Programming', '6');





INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('1', '1', '1');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('2', '1', '2');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('3', '1', '3');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('4', '1', '4');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('5', '1', '5');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('6', '1', '6');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('7', '1', '7');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('8', '1', '8');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('9', '1', '9');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('10', '2', '1');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('11', '2', '2');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('12', '2', '3');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('13', '2', '11');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('14', '2', '12');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('15', '2', '9');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('16', '3', '13');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('17', '3', '5');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('18', '3', '6');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('19', '4', '1');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('20', '4', '7');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('21', '4', '8');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('22', '5', '1');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('23', '5', '7');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('24', '5', '8');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('25', '6', '14');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('26', '6', '15');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('27', '6', '16');
INSERT INTO course_modules (ID, courseID, moduleID) VALUES ('28', '6', '17');





INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('1', 'Batch1', '1', '2016-02-01', '2016-08-31', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('2', 'Batch2', '2', '2016-02-01', '2016-08-31', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('3', 'Batch3', '3', '2016-02-01', '2016-03-31', '35');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('4', 'Batch4', '4', '2016-07-01', '2016-09-30', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('5', 'Batch5', '5', '2016-07-01', '2016-09-30', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('6', 'Batch6', '1', '2015-02-01', '2015-08-31', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('7', 'Batch7', '2', '2015-02-01', '2015-08-31', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('8', 'Batch8', '3', '2017-04-01', '2017-05-31', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('9', 'Batch9', '4', '2018-07-01', '2018-09-30', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('10', 'Batch10', '5', '2018-09-01', '2018-11-30', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('11', 'Batch11', '1', '2017-08-01', '2018-02-28', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('12', 'Batch12', '2', '2017-08-01', '2018-02-28', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('13', 'Batch13', '3', '2017-07-01', '2017-08-31', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('14', 'Batch14', '4', '2018-05-01', '2018-07-31', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('15', 'Batch15', '5', '2018-06-01', '2018-08-30', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('16', 'Batch16', '1', '2014-08-01', '2015-02-28', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('17', 'Batch17', '2', '2014-08-01', '2015-02-28', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('18', 'Batch18', '3', '2018-03-01', '2018-04-30', '35');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('19', 'Batch19', '4', '2019-01-01', '2019-03-30', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('20', 'Batch20', '5', '2018-12-01', '2019-02-28', '25');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('21', 'Batch21', '1', '2015-08-01', '2016-02-28', '80');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('22', 'Batch22', '2', '2015-08-01', '2016-02-28', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('23', 'Batch23', '3', '2019-03-01', '2019-04-30', '40');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('24', 'Batch24', '4', '2019-01-01', '2019-03-30', '30');
INSERT INTO course_batches (ID, name, courseID, starton, endson, capacity) VALUES ('25', 'Batch25', '6', '2019-01-01', '2019-03-30', '30');





INSERT INTO batch_students (ID, batchID, studentID) VALUES ('1', '1', '1');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('2', '7', '5');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('3', '3', '4');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('4', '6', '3');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('5', '10', '6');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('6', '17', '8');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('7', '20', '12');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('8', '1', '7');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('9', '2', '12');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('10', '4', '15');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('11', '5', '20');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('12', '6', '5');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('13', '7', '3');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('14', '1', '20');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('15', '2', '10');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('16', '3', '5');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('17', '4', '6');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('18', '5', '3');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('19', '6', '1');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('20', '12', '10');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('21', '15', '17');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('22', '15', '18');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('23', '16', '18');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('24', '17', '12');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('25', '3', '20');
INSERT INTO batch_students (ID, batchID, studentID) VALUES ('26', '4', '17');







INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('1', '1', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('2', '1', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('3', '1', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('4', '2', '10', 'Alaska', 'University of Chicago', '68', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('5', '2', '12', 'New York', 'Yale University', '56', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('6', '2', 'B.Com', 'Arkansas', 'Yale University', '64', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('7', '3', '10', 'Arizona', 'Yale University', '75', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('8', '3', '12', 'California', 'California University', '86', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('9', '3', 'BE', 'Florida', 'University of Florida', '67', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('10', '4', '10', 'Idaho', 'Pennsylvania University', '58', '2010');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('11', '4', '12', 'New Hampshire', 'Yale University', '97', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('12', '4', 'M.Com.', 'Montana', 'Columbia University', '77', '2016');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('13', '5', '10', 'Alabama', 'Yale University', '56', '2008');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('14', '5', '12', 'Michigan', 'University of Michigan', '57', '2010');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('15', '5', 'M.Com.', 'Oklahoma', 'Stanford University', '86', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('16', '6', '10', 'Mississippi', 'Harvard University', '56', '2009');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('17', '6', '12', 'Alabama', 'Harvard University', '76', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('18', '6', 'BE', 'Indiana', 'University of Chicago', '87', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('19', '7', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('20', '7', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('21', '7', 'BE', 'Kentucky', 'Harvard University', '97', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('22', '8', '10', 'Maryland', 'University Maryland', '56', '2010');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('23', '8', '12', 'Alabama', 'California University', '60', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('24', '8', 'M.Com.', 'Virginia', 'University of Florida', '87', '2016');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('25', '9', '10', 'Maine', 'Pennsylvania University', '98', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('26', '9', '12', 'Vermont', 'Yale University', '67', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('27', '9', 'BE', 'Kansas', 'Columbia University', '87', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('28', '10', '10', 'Texas', 'Yale University', '65', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('29', '10', '12', 'Oregon', 'University of Michigan', '76', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('30', '10', 'M.Com.', 'New Mexico', 'California University', '61', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('31', '11', '10', 'Nevada', 'University of Florida', '62', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('32', '11', '12', 'Indiana', 'Pennsylvania University', '63', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('33', '11', 'M.Com.', 'Ohio', 'University of Ohio', '56', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('34', '12', '10', 'New Hampshire', 'Yale University', '75', '2010');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('35', '12', '12', 'Montana', 'Stanford University', '45', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('36', '12', 'B.Com.', 'West Virginia', 'Harvard University', '50', '2016');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('37', '13', '10', 'Virginia', 'Harvard University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('38', '13', '12', 'Maine', 'University of Chicago', '78', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('39', '13', 'BE', 'Texas', 'University of Florida', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('40', '14', '10', 'Oregon', 'University of Florida', '67', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('41', '14', '12', 'Florida', 'University of Florida', '87', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('42', '14', 'BE', 'Idaho', 'Yale University', '57', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('43', '15', '10', 'New Hampshire', 'California University', '96', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('44', '15', '12', 'Montana', 'University of Florida', '56', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('45', '15', 'BE', 'Alabama', 'Pennsylvania University', '65', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('46', '16', '10', 'Michigan', 'University of Michigan', '76', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('47', '16', '12', 'Oklahoma', 'Columbia University', '56', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('48', '16', 'BE', 'Mississippi', 'University of Michigan', '76', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('49', '17', '10', 'Alabama', 'University of Michigan', '88', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('50', '17', '12', 'Indiana', 'University of Michigan', '76', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('51', '17', 'BE', 'Ohio', 'University of Ohio', '68', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('52', '18', '10', 'Iowa', 'Stanford University', '86', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('53', '18', '12', 'Kentucky', 'Harvard University', '57', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('54', '18', 'BE', 'Maryland', 'Harvard University', '75', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('55', '19', '10', 'Alabama', 'University of Chicago', '69', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('56', '19', '12', 'Virginia', 'California University', '60', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('57', '19', 'BE', 'Maine', 'University of Florida', '61', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('58', '20', '10', 'Vermont', 'Pennsylvania University', '72', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('59', '20', '12', 'Iowa', 'Yale University', '83', '2015');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('60', '20', 'BE', 'Maryland', 'Columbia University', '72', '2019');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('61', '21', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('62', '21', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('63', '21', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('64', '22', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('65', '22', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('66', '22', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('67', '23', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('68', '23', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('69', '23', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('70', '24', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('71', '24', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('72', '24', 'BE', 'Kentucky', 'Harvard University', '97', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('73', '25', '10', 'Ohio', 'University of Ohio', '87', '2011');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('74', '25', '12', 'Iowa', 'Stanford University', '78', '2013');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('75', '25', 'BE', 'Kentucky', 'Harvard University', '97', '2017');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('76', '26', '10', 'Iowa', 'Stanford University', '56', '1994');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('77', '26', 'DIP', 'Kentucky', 'Harvard University', '67', '1996');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('78', '26', 'BE', 'Maryland', 'Harvard University', '68', '2000');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('79', '27', '10', 'Alabama', 'University of Chicago', '50', '1997');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('80', '27', '12', 'Virginia', 'California University', '55', '1999');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('81', '27', 'DIP', 'Maine', 'University of Florida', '60', '2003');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('82', '27', 'BE', 'Vermont', 'Pennsylvania University', '62', '2006');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('83', '28', '10', 'Iowa', 'Yale University', '65', '2004');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('84', '28', '12', 'Maryland', 'Columbia University', '68', '2006');
INSERT INTO student_qualifications (ID, studentID, name, college, university, marks, year) VALUES ('85', '28', 'MCA', 'Alaska', 'Harvard University', '64', '2009');








INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('1', '1', '10', 'Alabama', 'Stanford University', '67', '2012');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('2', '1', '12', 'Alaska', 'Harvard University', '74', '2014');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('3', '1', 'BE', 'Arizona', 'Harvard University', '68', '2018');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('4', '2', '10', 'Alaska', 'University of Chicago', '68', '2013');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('5', '2', '12', 'New York', 'Yale University', '56', '2015');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('6', '2', 'BE', 'Arkansas', 'Yale University', '64', '2019');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('7', '3', '10', 'Arizona', 'Yale University', '75', '2011');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('8', '3', '12', 'California', 'California University', '86', '2013');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('9', '3', 'BE', 'Florida', 'University of Florida', '67', '2017');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('10', '4', '10', 'Idaho', 'Pennsylvania University', '58', '2010');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('11', '4', '12', 'New Hampshire', 'Yale University', '97', '2012');
INSERT INTO faculty_qualifications (ID, facultyID, name, college, university, marks, year) VALUES ('12', '4', 'BE', 'Montana', 'Columbia University', '77', '2016');



