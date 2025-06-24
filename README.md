# 🗃️ Job Portal Database System (MySQL)

A full-featured SQL project simulating a job portal backend. This includes relational schema design, realistic sample data, advanced SQL queries, stored procedures, and event-based user notifications — all built in MySQL.

---

## 🚀 Features
- ✅ Real-world schema with foreign keys and constraints
- 🔍 Dynamic job search filter using stored procedure
- 🔁 Auto-reminder event for inactive user profiles
- 📊 Analytical queries using joins, ranking, and filters
- 🧠 Job-candidate matching score using CTEs and skill overlap

---

## 🛠️ Technologies Used
- **MySQL 8+**
- SQL Concepts: DDL, DML, Joins, CTEs, Window Functions, Stored Procedures, Events
- Recommended tools: MySQL Workbench / DBeaver

---

## 📄 Files in This Repository

| File Name                  | Description                                           |
|----------------------------|-------------------------------------------------------|
| `schema.sql`               | Creates all tables with relationships and constraints |
| `insert_data.sql`          | Populates users, skills, jobs, applications, etc.     |
| `advanced_queries.sql`     | Business insights, ranking logic, candidate-job match |
| `search_filter.sql`        | Stored procedure to dynamically filter jobs           |
| `notify_users_event.sql`   | Event to remind inactive users to update profiles     |

---

## 🔧 How to Use

1. Open your MySQL tool (Workbench / DBeaver)
2. Run each file in this order:

```sql
SOURCE schema.sql;
SOURCE insert_data.sql;
SOURCE advanced_queries.sql;
SOURCE search_filter.sql;
SOURCE notify_users_event.sql;
```

3. Enable event scheduler (if needed):
```sql
SET GLOBAL event_scheduler = ON;
```

---

## 🔍 Example Query – Top 3 In-Demand Skills
```sql
SELECT *
FROM (
  SELECT s.skills, COUNT(DISTINCT js.job_id) AS job_count,
         DENSE_RANK() OVER (ORDER BY COUNT(js.job_id) DESC) AS skill_rank
  FROM job_skills js
  JOIN skills s ON js.skill_id = s.skill_id
  GROUP BY s.skills
) ranked
WHERE skill_rank <= 3;
```

---

## 🧠 Use Case Highlights

| Scenario                           | SQL Concept Used                  |
|-----------------------------------|-----------------------------------|
| Job filtering by search fields    | Dynamic SQL in Stored Procedure   |
| Candidate-job skill matching      | CTEs, aggregation, scoring        |
| Auto profile reminder             | MySQL `EVENT` + conditional logic |
| Top companies by job count        | `DENSE_RANK()` over `GROUP BY`    |
| Recent applications               | `CURDATE()` with `INTERVAL`       |

---

## 👨‍💻 Author

**Vishnupriyan P**  
SQL Developer & Data Enthusiast  
🔗 [GitHub Profile](https://github.com/Vishnu-u1
) 

---

## 📌 Resume Line Example

```txt
Job Portal Database System | GitHub
Developed a MySQL-based job portal backend with relational schema, realistic data, advanced queries, dynamic job filtering, and scheduled events.
🔗 https://github.com/Vishnu-u1/Job-portal-system/blob/main/README.md

```
