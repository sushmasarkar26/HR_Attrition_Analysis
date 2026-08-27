CREATE DATABASE PROJECT

USE PROJECT

CREATE TABLE Employees (
Employee_ID INT,
Age INT,
Attrition CHAR(3),
Business_Travel VARCHAR(20),
Department VARCHAR(30),
Distance_From_Home INT,
Education VARCHAR(15),
Environemnt_Satisfaction INT,
Gender VARCHAR(10),
Salary Float,
Job_Involvement INT,
Job_Level INT,
Job_Role VARCHAR(20),
Job_Satisfaction INT,
Marital_Status VARCHAR(30),
Number_of_Companies_Worked_previously INT,
Overtime CHAR(5),
Salary_Hike_in_percent INT,
Total_working_years_exprience INT,
Work_life_balance INT,
No_of_years_worked_at_current_company INT,
No_of_years_in_current_role INT,
Years_since_last_promotion INT
)


SELECT * FROM Employees

BULK INSERT Employees
FROM 'C:\Users\dell\Downloads\HR_Attrition_Analysis\archive\HR_Attrition_dataset.csv'
	WITH (
		FIRSTROW=2,
		FIELDTERMINATOR=',',
		ROWTERMINATOR='\n'
		);


SELECT * FROM Employees


--Updating the table 

INSERT INTO Employees
(
	Employee_ID,Age,Attrition,Business_Travel,Department,Distance_From_Home,Education,
	Environemnt_Satisfaction,Gender,Salary,Job_Involvement,Job_Level,Job_Role,Job_Satisfaction,Marital_Status,
	Number_of_Companies_Worked_previously,Overtime,Salary_Hike_in_percent,Total_working_years_exprience,
	Work_life_balance,No_of_years_worked_at_current_company,No_of_years_in_current_role,Years_since_last_promotion
)
VALUES
-- Employee 10001
(10001, 29, 'No', 'Travel Rarely', 'Sales', 8, 'Graduation', 3, 'Male', 55000, 3, 1, 'HR', 4, 'Single', 1, 'No', 12, 5, 3, 2, 2, 1),

-- Employee 10002
(10002, 41, 'Yes', 'Travel Frequently', 'IT', 15, 'Postgraduate', 2, 'Female', 73000, 2, 2, 'IT', 3, 'Married', 3, 'Yes', 20, 12, 2, 4, 3, 2),

-- Employee 10003
(10003, 34, 'No', 'Non-Travel', 'Finance', 5, 'Doctorate', 4, 'Male', 91000, 4, 3, 'Manager', 4, 'Divorced', 4, 'No', 15, 9, 4, 6, 4, 1),

-- Employee 10004
(10004, 26, 'Yes', 'Travel Rarely', 'Marketing', 20, 'Graduation', 1, 'Female', 48000, 2, 1, 'Developer', 2, 'Single', 2, 'Yes', 10, 3, 2, 1, 1, 0),

-- Employee 10005
(10005, 38, 'No', 'Travel Frequently', 'Operations', 10, 'Postgraduate', 3, 'Male', 82000, 3, 3, 'Business Analyst', 3, 'Married', 5, 'No', 17, 11, 3, 5, 5, 3);

SELECT COUNT(*)
FROM Employees



