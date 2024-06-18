# Employee Data Warehouse & Data Mart using PostgreSQL

## 🏢 Business Case
A company aims to optimize human resource management and performance tracking. By leveraging their data warehouse, which includes employee, department, and education information as well as employee performance metrics, they seek to make informed decisions and gain insights into employee performance, department efficiency, and education trends within the organization.

## ❓ Problem Statement
The company lacks a comprehensive understanding of employee performance across different departments and educational backgrounds. They struggle to identify patterns and trends that can help optimize human resource management and improve overall performance.

## 🏅 Objectives
1. Gain insights into employee performance across different departments and educational backgrounds.
2. Identify the best-performing employees, departments, and education levels.
3. Analyze performance trends over time to identify areas for improvement.
4. Optimize employee allocation based on performance and department needs.
5. Assess the impact of education level on employee performance.
6. Develop data-driven strategies to enhance overall employee efficiency and productivity.

## 🗂️ Data Warehouse Structure
The employee data warehouse is visualized in the form of an Entity-Relational Diagram (ERD). The schema consists of one fact table and three dimension tables, organized in a snowflake schema.
<p align="center">
  <img src="ERD%20-%20Employee.png" alt="ERD" width="800"/>
</p>

### 📋 Dimension Tables

1. **dim_department**
    - Stores information about departments where employees work.
    - Columns:
        - `department_id` (int, Primary Key): Employee's department ID.
        - `department_name` (varchar): Name of the department.

2. **dim_education**
    - Stores information about employee education.
    - Columns:
        - `education_id` (int, Primary Key): Employee's education ID.
        - `education_level` (varchar): Employee's education level.

3. **dim_employee**
    - Stores unique employee information.
    - Columns:
        - `employee_id` (int, Primary Key): Identifier for each employee.
        - `first_name` (varchar): Employee's first name.
        - `last_name` (varchar): Employee's last name.
        - `birth_date` (date): Employee's date of birth.
        - `hire_date` (date): Date the employee was hired.
        - `gender` (varchar): Employee's gender.
        - `department_id` (int): Employee's department ID.
        - `education_id` (int): Employee's education ID.

### 📊 Fact Table

4. **fact_employee_performance**
    - Stores aggregate information related to employee performance.
    - Columns:
        - `performance_id` (int, Primary Key): Identifier for each employee performance record.
        - `employee_id` (int): Employee ID.
        - `performance_score` (double precision): Employee's performance score based on KPI.
        - `performance_date` (date): Date when the performance score was assigned.

## 🛠️ Building Data Marts
1. Employee Performance by Department
2. Employee Performance Trends
3. Best Employee
4. Performance Distribution by Education Level
5. Employee Performance by Gender
6. Performance Deviation Analysis
7. New Hire Performance
8. Employee Age Demographics
