CREATE DATABASE Covid_19_DB;
USE COVID_19_DB;

DROP DATABASE IF EXISTS COVID_19_DB;

DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS covid_cases;
DROP TABLE IF EXISTS covid_deaths;
DROP TABLE IF EXISTS covid_hospitalization;
DROP TABLE IF EXISTS Covid_testing;
DROP TABLE IF EXISTS Covid_vaccinations;


CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY ,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(200),
    Contact_Number VARCHAR(15)
);


DESCRIBE Patients;

CREATE TABLE Covid_Cases (
    Case_ID INT PRIMARY KEY ,
    Patient_ID INT,
    Date_Reported DATE,
    Location VARCHAR(100),
    Country VARCHAR(100),
    New_Cases INT,
    Total_Cases INT,
    Status VARCHAR(20),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

DESCRIBE Covid_Cases;

CREATE TABLE Covid_Testing (
    Test_ID INT PRIMARY KEY ,
    Patient_ID INT,
    Test_Date DATE,
    Test_Type VARCHAR(20),
    Result VARCHAR(10),
    Country VARCHAR(100),
    New_Cases INT,
    Total_Cases INT,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

DESCRIBE Covid_Testing;

CREATE TABLE Covid_Deaths (
    Death_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Date_Of_Death DATE,
    Cause_Of_Death VARCHAR(100),
    New_Deaths INT,
    Total_Deaths INT,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);


DESCRIBE Covid_Deaths;


CREATE TABLE Covid_Hospitalization (
    Hospitalization_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Admission_Date DATE,
    Discharge_Date DATE,
    Hospital_Name VARCHAR(100),
    Severity VARCHAR(20),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

DESCRIBE Covid_Hospitalization;

CREATE TABLE Covid_Vaccinations (
    Vaccination_ID INT PRIMARY KEY  AUTO_INCREMENT,
    Patient_ID INT,
    Vaccination_Date DATE,
    Vaccine_Type VARCHAR(50),
    Dose_Number INT,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

DESCRIBE Covid_Vaccinations;

SHOW TABLES;

INSERT INTO Patients (Patient_ID, Name, Age, Gender, City, Contact_Number) VALUES
(101, 'John Xavir', 45, 'Male', 'Mumbai', '1234567890'),
(102, 'Tanvi Thakur', 30, 'Female', 'Delhi', '0987654321'),
(103, 'Veda Krishnan', 28, 'Female', 'Bangalore', '1122334455'),
(104, 'Varun Mishra', 50, 'Male', 'Chennai', '2233445566'),
(105, 'Ashish Agarwal', 35, 'Male', 'Kolkata', '3344556677'),
(106, 'Anu Sharma', 40, 'Female', 'Pune', '4455667788'),
(107, 'Bhavya Reddy', 60, 'Male', 'Hyderabad', '5566778899'),
(108, 'Devika Nair', 25, 'Female', 'Ahmedabad', '6677889900'),
(109, 'Ishaan Gupta', 55, 'Male', 'Jaipur', '7788990011'),
(110, 'Aditi Singh', 32, 'Female', 'Lucknow', '8899001122'),
(111, 'Ian Moore', 48, 'Male', 'Surat', '9900112233'),
(112, 'Chitra Desai', 29, 'Female', 'Kanpur', '1011121314'),
(113, 'Dhruv Kapoor', 38, 'Male', 'Nagpur', '1213141516'),
(114, 'Pooja Sinha', 27, 'Female', 'Indore', '1314151617'),
(115, 'Nikhil Chandra', 42, 'Male', 'Thane', '1415161718'),
(116, 'Nisha Roy', 33, 'Female', 'Bhopal', '1516171819'),
(117, 'Vivek Kadam', 36, 'Male', 'Visakhapatnam', '1617181920'),
(118, 'Lakshmi Pillai', 31, 'Female', 'Patna', '1718192021'),
(119, 'Jatin Patel', 44, 'Male', 'Vadodara', '1819202122'),
(120, 'Riya Thakur', 26, 'Female', 'Ghaziabad', '1920212223'),
(121, 'Siddharth Rao', 39, 'Male', 'Ludhiana', '2021222324'),
(122, 'Tina Sharma', 34, 'Female', 'Agra', '2122232425'),
(123, 'Umar Patel', 41, 'Male', 'Nashik', '2223242526'),
(124, 'Vibhuti Das', 37, 'Female', 'Faridabad', '2324252627'),
(125, 'Raghav Bhat', 49, 'Male', 'Meerut', '2425262728'),
(126, 'Kavya Malhotra', 28, 'Female', 'Rajkot', '2526272829'),
(127, 'Asif Patel', 35, 'Male', 'Srinagar', '2627282930'),
(128, 'Zara Khan', 30, 'Female', 'Amritsar', '2728293031'),
(129, 'Kabir Jain', 45, 'Male', 'Ranchi', '2829303132'),
(130, 'Jaya Menon', 32, 'Female', 'Jabalpur', '2930313233'),
(131, 'Hardik Iyer', 38, 'Male', 'Gwalior', '3031323334'),
(132, 'Ananya Patel', 29, 'Female', 'Vijayawada', '3132333435'),
(133, 'Arjun Mehta', 40, 'Male', 'Jodhpur', '3233343536'),
(134, 'Isha Joshi', 27, 'Female', 'Madurai', '3334353637'),
(135, 'Gaurav Rao', 36, 'Male', 'Raipur', '3435363738');




INSERT INTO Covid_Cases (Case_ID, Patient_ID, Date_Reported, Location, Country, New_Cases, Total_Cases, Status) VALUES
(1, 101, '2020-03-15', 'Mumbai', 'India', 50, 500,  'Recovered'),
(2, 102, '2020-04-20', 'Delhi', 'India', 100, 1000,  'Active'),
(3, 103, '2020-05-25', 'Bangalore', 'India', 75, 750, 'Recovered'),
(4, 104, '2020-06-30', 'Chennai', 'India', 60, 600,  'Deceased'),
(5, 105, '2020-07-05', 'Kolkata', 'India', 80, 800,  'Active'),
(6, 106, '2020-08-10', 'Pune', 'India', 90, 900,  'Recovered'),
(7, 107, '2020-09-15', 'Hyderabad', 'India', 70, 700,  'Deceased'),
(8, 108, '2020-10-20', 'Ahmedabad', 'India', 65, 650,  'Active'),
(9, 109, '2020-11-25', 'Jaipur', 'India', 55, 550,  'Recovered'),
(10, 110, '2020-12-30', 'Lucknow', 'India', 85, 850,  'Active'),
(11, 111, '2021-01-05', 'Surat', 'India', 95, 950, 'Recovered'),
(12, 112, '2021-02-10', 'Kanpur', 'India', 45, 450,  'Deceased'),
(13, 113, '2021-03-15', 'Nagpur', 'India', 100, 1000, 'Active'),
(14, 114, '2021-04-20', 'Indore', 'India', 110, 1100,  'Recovered'),
(15, 115, '2021-05-25', 'Thane', 'India', 120, 1200,  'Active'),
(16, 116, '2021-06-30', 'Bhopal', 'India', 130, 1300,  'Recovered'),
(17, 117, '2021-07-05', 'Visakhapatnam', 'India', 140,  14000, 'Deceased'),
(18, 118, '2021-08-10', 'Patna', 'India', 150, 1500,  'Active'),
(19, 119, '2021-09-15', 'Vadodara', 'India', 160, 1600,  'Recovered'),
(20, 120, '2021-10-20', 'Ghaziabad', 'India', 170, 1700,  'Active'),
(21, 121, '2021-11-25', 'Ludhiana', 'India', 180, 1800,  'Recovered'),
(22, 122, '2021-12-30', 'Agra', 'India', 190, 1900, 'Active'),
(23, 123, '2022-01-05', 'Nashik', 'India', 200, 2000,  'Recovered'),
(24, 124, '2022-02-10', 'Faridabad', 'India', 210, 2100,  'Deceased'),
(25, 125, '2022-03-15', 'Meerut', 'India', 220, 2200,  'Active'),
(26, 126, '2022-04-20', 'Rajkot', 'India', 230, 2300,  'Recovered'),
(27, 127, '2022-05-25', 'Srinagar', 'India', 240, 2400,  'Active'),
(28, 128, '2022-06-30', 'Amritsar', 'India', 250, 2500,  'Recovered'),
(29, 129, '2022-07-05', 'Ranchi', 'India', 260, 2600,  'Active'),
(30, 130, '2022-08-10', 'Jabalpur', 'India', 270, 2700,  'Recovered'),
(31, 131, '2022-09-15', 'Gwalior', 'India', 280, 2800,  'Active'),
(32, 132, '2022-10-20', 'Vijayawada', 'India', 290, 2900,  'Recovered'),
(33, 133, '2022-11-25', 'Jodhpur', 'India', 300, 3000,  'Active'),
(34, 134, '2022-12-30', 'Madurai', 'India', 310, 3100,  'Recovered'),
(35, 135, '2023-01-05', 'Raipur', 'India', 320, 3200,  'Active');



INSERT INTO Covid_Testing (Test_ID, Patient_ID, Test_Date, Test_Type, Result, Country, New_Cases, Total_Cases) VALUES
(1, 101, '2020-03-14', 'PCR', 'Positive', 'India', 50, 500),
(2, 102, '2020-04-19', 'Antigen', 'Positive', 'India', 100, 1000),
(3, 103, '2020-05-24', 'PCR', 'Negative', 'India', 75, 750),
(4, 104, '2020-06-29', 'Antigen', 'Positive', 'India', 60, 600),
(5, 105, '2020-07-04', 'PCR', 'Negative', 'India', 80, 800),
(6, 106, '2020-08-09', 'Antigen', 'Positive', 'India', 90, 900),
(7, 107, '2020-09-14', 'PCR', 'Negative', 'India', 70, 700),
(8, 108, '2020-10-19', 'Antigen', 'Positive', 'India', 65, 650),
(9, 109, '2020-11-24', 'PCR', 'Negative', 'India', 55, 550),
(10, 110, '2020-12-29', 'Antigen', 'Positive', 'India', 85, 850),
(11, 111, '2021-01-04', 'PCR', 'Negative', 'India', 95, 950),
(12, 112, '2021-02-09', 'Antigen', 'Positive', 'India', 45, 450),
(13, 113, '2021-03-14', 'PCR', 'Negative', 'India', 100, 1000),
(14, 114, '2021-04-19', 'Antigen', 'Positive', 'India', 110, 1100),
(15, 115, '2021-05-24', 'PCR', 'Negative', 'India', 120, 1200),
(16, 116, '2021-06-29', 'Antigen', 'Positive', 'India', 130, 1300),
(17, 117, '2021-07-04', 'PCR', 'Negative', 'India', 140, 1400),
(18, 118, '2021-08-09', 'Antigen', 'Positive', 'India', 150, 1500),
(19, 119, '2021-09-14', 'PCR', 'Negative', 'India', 160, 1600),
(20, 120, '2021-10-19', 'Antigen', 'Positive', 'India', 170, 1700),
(21, 121, '2021-11-24', 'PCR', 'Negative', 'India', 180, 1800),
(22, 122, '2021-12-29', 'Antigen', 'Positive', 'India', 190, 1900),
(23, 123, '2022-01-04', 'PCR', 'Negative', 'India', 200, 2000),
(24, 124, '2022-02-09', 'Antigen', 'Positive', 'India', 210, 2100),
(25, 125, '2022-03-14', 'PCR', 'Negative', 'India', 220, 2200),
(26, 126, '2022-04-19', 'Antigen', 'Positive', 'India', 230, 2300),
(27, 127, '2022-05-24', 'PCR', 'Negative', 'India', 240, 2400),
(28, 128, '2022-06-29', 'Antigen', 'Positive', 'India', 250, 2500),
(29, 129, '2022-07-04', 'PCR', 'Negative', 'India', 260, 2600),
(30, 130, '2022-08-09', 'Antigen', 'Positive', 'India', 270, 2700),
(31, 131, '2022-09-14', 'PCR', 'Negative', 'India', 280, 2800),
(32, 132, '2022-10-19', 'Antigen', 'Positive', 'India', 290, 2900),
(33, 133, '2022-11-24', 'PCR', 'Negative', 'India', 300, 3000),
(34, 134, '2022-12-29', 'Antigen', 'Positive', 'India', 310, 3100),
(35, 135, '2023-01-04', 'PCR', 'Negative', 'India', 320, 3200);


INSERT INTO Covid_Deaths (Patient_ID, Date_Of_Death, Cause_Of_Death, New_Deaths, Total_Deaths) VALUES
(101, '2020-03-20', 'COVID-19',  5, 5),
(102, '2020-04-25', 'COVID-19',  10, 15),
(103, '2020-05-30', 'COVID-19',  8, 23),
(104, '2020-06-15', 'COVID-19',  12, 35),
(105, '2020-07-10', 'COVID-19',  15, 50),
(106, '2020-08-05', 'COVID-19',  20, 70),
(107, '2020-09-01', 'COVID-19',  18, 88),
(108, '2020-10-10', 'COVID-19',  22, 110),
(109, '2020-11-15', 'COVID-19',  25, 135),
(110, '2020-12-20', 'COVID-19',  30, 165),
(111, '2021-01-25', 'COVID-19',  35, 200),
(112, '2021-02-28', 'COVID-19',  40, 240),
(113, '2021-03-30', 'COVID-19',  45, 285),
(114, '2021-04-25', 'COVID-19',  50, 335),
(115, '2021-05-30', 'COVID-19',  55, 390),
(116, '2021-06-25', 'COVID-19',  60, 450),
(117, '2021-07-30', 'COVID-19',  65, 515),
(118, '2021-08-25', 'COVID-19',  70, 585),
(119, '2021-09-30', 'COVID-19',  75, 660),
(120, '2021-10-25', 'COVID-19',  80, 740),
(121, '2021-11-30', 'COVID-19',  85, 825),
(122, '2021-12-25', 'COVID-19',  90, 915),
(123, '2022-01-30', 'COVID-19',  95, 1010),
(124, '2022-02-25', 'COVID-19',  100, 1110),
(125, '2022-03-30', 'COVID-19',  105, 1215),
(126, '2022-04-25', 'COVID-19', 110, 1325),
(127, '2022-05-30', 'COVID-19',  115, 1440),
(128, '2022-06-25', 'COVID-19',  120, 1560),
(129, '2022-07-30', 'COVID-19',  125, 1685),
(130, '2022-08-25', 'COVID-19',  130, 1815),
(131, '2022-09-30', 'COVID-19',  135, 1950),
(132, '2022-10-25', 'COVID-19',  140, 2090),
(133, '2022-11-30', 'COVID-19',  145, 2235),
(134, '2022-12-25', 'COVID-19',  150, 2385),
(135, '2023-01-30', 'COVID-19',  155, 2540);



INSERT INTO Covid_Hospitalization (Patient_ID, Admission_Date, Discharge_Date, Hospital_Name, Severity) VALUES
(101, '2020-03-15', '2020-03-30', 'KEM Hospital', 'Severe'),
(102, '2020-04-20', '2020-05-05', 'AIIMS Delhi', 'Moderate'),
(103, '2020-05-25', '2020-06-10', 'Manipal Hospital', 'Mild'),
(104, '2020-06-30', '2020-07-15', 'Apollo Hospital', 'Severe'),
(105, '2020-07-05', '2020-07-20', 'Fortis Hospital', 'Moderate'),
(106, '2020-08-10', '2020-08-25', 'Ruby Hall Clinic', 'Mild'),
(107, '2020-09-15', '2020-09-30', 'NIMS Hyderabad', 'Severe'),
(108, '2020-10-20', '2020-11-05', 'Sterling Hospital', 'Moderate'),
(109, '2020-11-25', '2020-12-10', 'SMS Hospital', 'Mild'),
(110, '2020-12-30', '2021-01-15', 'SGPGI Lucknow', 'Severe'),
(111, '2021-01-05', '2021-01-20', 'Surat Municipal Institute', 'Moderate'),
(112, '2021-02-10', '2021-02-25', 'Kanpur Medical College', 'Mild'),
(113, '2021-03-15', '2021-03-30', 'Nagpur Medical College', 'Severe'),
(114, '2021-04-20', '2021-05-05', 'Indore Medical College', 'Moderate'),
(115, '2021-05-25', '2021-06-10', 'Thane Civil Hospital', 'Mild'),
(116, '2021-06-30', '2021-07-15', 'Bhopal Memorial Hospital', 'Severe'),
(117, '2021-07-05', '2021-07-20', 'King George Hospital', 'Moderate'),
(118, '2021-08-10', '2021-08-25', 'Patna Medical College', 'Mild'),
(119, '2021-09-15', '2021-09-30', 'Vadodara Civil Hospital', 'Severe'),
(120, '2021-10-20', '2021-11-05', 'Yashoda Hospital', 'Moderate'),
(121, '2021-11-25', '2021-12-10', 'Christian Medical College', 'Mild'),
(122, '2021-12-30', '2022-01-15', 'Nashik Civil Hospital', 'Severe'),
(123, '2022-01-05', '2022-01-20', 'Faridabad Civil Hospital', 'Moderate'),
(124, '2022-02-10', '2022-02-25', 'Meerut Medical College', 'Mild'),
(125, '2022-03-15', '2022-03-30', 'Rajkot Civil Hospital', 'Severe'),
(126, '2022-04-20', '2022-05-05', 'Srinagar Medical College', 'Moderate'),
(127, '2022-05-25', '2022-06-10', 'Amritsar Medical College', 'Mild'),
(128, '2022-06-30', '2022-07-15', 'Ranchi Medical College', 'Severe'),
(129, '2022-07-05', '2022-07-20', 'Jabalpur Medical College', 'Moderate'),
(130, '2022-08-10', '2022-08-25', 'Gwalior Medical College', 'Mild'),
(131, '2022-09-15', '2022-09-30', 'Vijayawada Medical College', 'Severe'),
(132, '2022-10-20', '2022-11-05', 'Jodhpur Medical College', 'Moderate'),
(133, '2022-11-25', '2022-12-10', 'Madurai Medical College', 'Mild'),
(134, '2022-12-30', '2023-01-15', 'Raipur Medical College', 'Severe'),
(135, '2023-01-05', '2023-01-20', 'Coimbatore Medical College', 'Moderate');


INSERT INTO Covid_Vaccinations (Patient_ID, Vaccination_Date, Vaccine_Type, Dose_Number) VALUES
(101, '2021-01-15', 'Covaxin', 1),
(101, '2021-02-15', 'Covaxin', 2),
(102, '2021-01-20', 'Covishield', 1),
(102, '2021-02-20', 'Covishield', 2),
(103, '2021-01-25', 'Sputnik V', 1),
(103, '2021-02-25', 'Sputnik V', 2),
(104, '2021-01-30', 'Covaxin', 1),
(104, '2021-03-01', 'Covaxin', 2),
(105, '2021-02-05', 'Covishield', 1),
(105, '2021-03-05', 'Covishield', 2),
(106, '2021-02-10', 'Sputnik V', 1),
(106, '2021-03-10', 'Sputnik V', 2),
(107, '2021-02-15', 'Covaxin', 1),
(107, '2021-03-15', 'Covaxin', 2),
(108, '2021-02-20', 'Covishield', 1),
(108, '2021-03-20', 'Covishield', 2),
(109, '2021-02-25', 'Sputnik V', 1),
(109, '2021-03-25', 'Sputnik V', 2),
(110, '2021-03-01', 'Covaxin', 1),
(110, '2021-04-01', 'Covaxin', 2),
(111, '2021-03-05', 'Covishield', 1),
(111, '2021-04-05', 'Covishield', 2),
(112, '2021-03-10', 'Sputnik V', 1),
(112, '2021-04-10', 'Sputnik V', 2),
(113, '2021-03-15', 'Covaxin', 1),
(113, '2021-04-15', 'Covaxin', 2),
(114, '2021-03-20', 'Covishield', 1),
(114, '2021-04-20', 'Covishield', 2),
(115, '2021-03-25', 'Sputnik V', 1),
(115, '2021-04-25', 'Sputnik V', 2),
(116, '2021-04-01', 'Covaxin', 1),
(116, '2021-05-01', 'Covaxin', 2),
(117, '2021-04-05', 'Covishield', 1),
(117, '2021-05-05', 'Covishield', 2),
(118, '2021-04-10', 'Sputnik V', 1),
(118, '2021-05-10', 'Sputnik V', 2),
(119, '2021-04-15', 'Covaxin', 1),
(119, '2021-05-15', 'Covaxin', 2),
(120, '2021-04-20', 'Covishield', 1),
(120, '2021-05-20', 'Covishield', 2),
(121, '2021-04-25', 'Sputnik V', 1),
(121, '2021-05-25', 'Sputnik V', 2),
(122, '2021-04-30', 'Covaxin', 1),
(122, '2021-05-30', 'Covaxin', 2),
(123, '2021-05-05', 'Covishield', 1),
(123, '2021-06-05', 'Covishield', 2),
(124, '2021-05-10', 'Sputnik V', 1),
(124, '2021-06-10', 'Sputnik V', 2),
(125, '2021-05-15', 'Covaxin', 1),
(125, '2021-06-15', 'Covaxin', 2),
(126, '2021-05-20', 'Covishield', 1),
(126, '2021-06-20', 'Covishield', 2),
(127, '2021-05-25', 'Sputnik V', 1),
(127, '2021-06-25', 'Sputnik V', 2),
(128, '2021-05-30', 'Covaxin', 1),
(128, '2021-06-30', 'Covaxin', 2),
(129, '2021-06-05', 'Covishield', 1),
(129, '2021-07-05', 'Covishield', 2),
(130, '2021-06-10', 'Sputnik V', 1),
(130, '2021-07-10', 'Sputnik V', 2),
(131, '2021-06-15', 'Covaxin', 1),
(131, '2021-07-15', 'Covaxin', 2),
(132, '2021-06-20', 'Covishield', 1),
(132, '2021-07-20', 'Covishield', 2),
(133, '2021-06-25', 'Sputnik V', 1),
(133, '2021-07-25', 'Sputnik V', 2),
(134, '2021-06-30', 'Covaxin', 1),
(134, '2021-07-30', 'Covaxin', 2),
(135, '2021-07-05', 'Covishield', 1),
(135, '2021-08-05', 'Covishield', 2);

SELECT * FROM patients;
SELECT * FROM Covid_cases;
SELECT * FROM Covid_deaths;
SELECT * FROM Covid_hospitalization;
SELECT * FROM Covid_testing;
SELECT * FROM Covid_vaccinations;


-- Questions 


-- Subquiries --

-- Question 1 .  Find Patients with Severe Hospitalization

SELECT Name, Age, Gender FROM patients 
WHERE Patient_ID IN (SELECT Patient_ID FROM covid_hospitalization
WHERE Severity = 'Severe');


-- Question 2 .  Find the Patients Who Tested Positive and Were Hospitalized

SELECT  Name, Age, Gender FROM patients 
WHERE Patient_ID IN (SELECT Patient_ID from covid_testing
WHERE Result = 'positive') 
AND Patient_ID IN (SELECT Patient_ID FROM Covid_hospitalization);


--  Question 3 .  Find the Patients Who Received Covaxin

SELECT Name, Age, Gender
FROM Patients
WHERE Patient_ID IN ( SELECT Patient_ID FROM Covid_Vaccinations
WHERE Vaccine_Type = 'Covaxin');




--  Question 4 .  Find the Patients Who Took Both Doses of Covishield

SELECT Name, Age, Gender
FROM Patients
WHERE Patient_ID IN (SELECT Patient_ID FROM Covid_Vaccinations
WHERE Vaccine_Type = 'Covishield' AND Dose_Number = 2);


--  Question 5 .  Find the Average Age of Patients Who Died.

SELECT ROUND(AVG(Age)) AS Average_Age FROM Patients
WHERE Patient_ID IN (SELECT Patient_ID FROM Covid_Deaths);


--  Question 5 .  Find the Cities with More Than 1000 Total Cases   -- normal query

SELECT Location, SUM(Total_Cases) AS Total_Cases_of_Covid19 FROM Covid_Cases
GROUP BY Location
HAVING SUM(Total_Cases) > 1000;




-- JOINS 

--  Question 1 .  Find the Cities with Highest Number of Deaths  

SELECT location, SUM(New_Deaths) AS Total_Deaths
FROM Covid_Deaths AS CD
JOIN covid_cases AS CC
ON CD.patient_ID = CC.patient_ID
GROUP BY Location
HAVING SUM(New_Deaths) > (SELECT AVG(New_Deaths) FROM Covid_Deaths);


--  Question 2 .  List Patients with Their Vaccination Details

SELECT P.Name, P.Age, P.Gender, CV.Vaccination_Date, CV.Vaccine_Type, CV.Dose_Number FROM Patients AS P
JOIN Covid_Vaccinations AS CV 
ON P.Patient_ID = CV.Patient_ID;


--  Question 3 .  List of Patients and Their Covid Cases Status

SELECT p.Name, p.Age, p.Gender, cc.Date_Reported, cc.Status
FROM Patients AS p
JOIN Covid_Cases AS cc ON p.Patient_ID = cc.Patient_ID;


--  Question 4 .  Find the total Number of Cases Reported in Each City--- xxx

SELECT cc.Location, COUNT(cc.Case_ID) AS Total_Cases
FROM Covid_Cases AS  cc
JOIN Patients AS p ON cc.Patient_ID = p.Patient_ID
GROUP BY cc.Location;


--  Question 5 .  Find the Patients Who Were Hospitalized and Later Died ---xxxxx

SELECT p.Name, p.Age, p.Gender, h.Hospital_Name, d.Date_Of_Death, d.Cause_Of_Death
FROM Patients AS p
JOIN Covid_hospitalization AS h 
ON p.Patient_ID = h.Patient_ID
JOIN Covid_Deaths AS d
 ON p.Patient_ID = d.Patient_ID;


--  Question 6 .  Find the Patients Who Tested Positive and Their Test Details:

SELECT p.Name, p.Age, p.Gender, t.Test_Date, t.Test_Type, t.Result
FROM Patients AS  p
JOIN Covid_Testing AS t 
ON p.Patient_ID = t.Patient_ID
WHERE t.Result = 'Positive';


--  Question 7 .  Find the Patients Who Died After Testing Positive


SELECT p.Name, p.Age, p.Gender, t.Test_Date, t.Result, d.Date_Of_Death, d.Cause_Of_Death
FROM Patients AS p
JOIN Covid_Testing AS t ON p.Patient_ID = t.Patient_ID
JOIN Covid_Deaths AS d ON p.Patient_ID = d.Patient_ID
WHERE t.Result = 'Positive';


-- Normal Queries --

--  Question 1.  List All Patients Above 50 Years

SELECT * FROM Patients WHERE Age > 50;


--  Question 2.  find the Total Counts of Deaths Due to Covid

SELECT COUNT(*) AS Total_Deaths FROM Covid_Deaths 
WHERE Cause_Of_Death = 'COVID-19';


--  Question 3. Find the  Patients Aged Between 35 and 50

SELECT * FROM Patients 
WHERE Age BETWEEN 35 AND 50;


--  Question 4. Find the Sum of New Cases Reported in 2021

SELECT SUM(New_Cases) AS Total_New_Cases2021 FROM Covid_Cases 
WHERE YEAR(Date_Reported) = 2021;


-- Question 5. Find the Patients Admitted Between Two Dates

SELECT * FROM Covid_Hospitalization
WHERE Admission_Date BETWEEN '2021-01-01' AND '2021-12-31';
 
 -- Question 6. Find the Sum of Total Deaths in 2020

SELECT SUM(Total_Deaths) AS TotalDeaths2020 FROM Covid_Deaths 
WHERE YEAR(Date_Of_Death) = 2020;
