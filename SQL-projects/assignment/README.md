# 🏫 SQL Database Project - Nairobi Academy

## 📋 Project Overview

This project is a complete database implementation for a secondary school in Nairobi. It demonstrates fundamental SQL concepts including database design, data manipulation, and advanced querying techniques.

## 🗂️ Project Structure
SQL-projects/
└── assignment/
├── assignment.sql # Complete SQL script with all queries

## 📊 Database Schema

**Schema Name:** `nairobi_academy`

### Table 1: students
| Column | Type | Description |
|--------|------|-------------|
| student_id | INT | Primary key |
| first_name | VARCHAR(50) | Student's first name |
| last_name | VARCHAR(50) | Student's last name |
| gender | CHAR(1) | 'M' or 'F' |
| class | VARCHAR(10) | Form 1, 2, 3, or 4 |
| city | VARCHAR(50) | Student's city of residence |

### Table 2: subjects
| Column | Type | Description |
|--------|------|-------------|
| subject_id | INT | Primary key |
| subject_name | VARCHAR(100) | Name of the subject |
| department | VARCHAR(50) | Academic department |
| credit_hours | INT | Credit hours for the subject |

### Table 3: exam_results
| Column | Type | Description |
|--------|------|-------------|
| result_id | INT | Primary key |
| student_id | INT | Foreign key to students |
| subject_id | INT | Foreign key to subjects |
| exam_date | DATE | Date of the exam |
| marks | INT | Exam score |

## 🛠️ Technologies Used

- **Database:** MySQL / MariaDB / PostgreSQL
- **Version Control:** Git & GitHub
- **Documentation:** Markdown

## 📝 SQL Concepts Covered

### DDL (Data Definition Language)
- CREATE SCHEMA and CREATE TABLE
- ALTER TABLE (ADD, RENAME, DROP columns)
- PRIMARY KEY and FOREIGN KEY constraints

### DML (Data Manipulation Language)
- INSERT (single and multiple rows)
- UPDATE with WHERE clause
- DELETE with WHERE clause
- SELECT queries with various filters

### Query Techniques
- Basic WHERE filtering (=, >, >=, AND, OR)
- BETWEEN for range queries
- IN and NOT IN for list membership
- LIKE for pattern matching
- COUNT for aggregation
- CASE WHEN for conditional logic

## 🚀 How to Run the Project

### Prerequisites
- MySQL Server (or any SQL database)
- MySQL Workbench (or any SQL client)
- Git (for version control)

### Steps

1. **Clone the repository**
```bash
git clone https://github.com/yourusername/SQL-projects.git
cd SQL-projects/assignment