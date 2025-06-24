DROP DATABASE IF EXISTS linkedin;
CREATE DATABASE linkedin;
use linkedin;
CREATE TABLE users(
                user_id INT AUTO_INCREMENT PRIMARY KEY,
                user_name VARCHAR(50) NOT NULL,
                mob_no BIGINT NOT NULL UNIQUE,
                email VARCHAR(50) NOT NULL UNIQUE
);


CREATE TABLE skills(
                skill_id INT AUTO_INCREMENT PRIMARY KEY,
                skills VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE user_skill(
                user_skill_id INT AUTO_INCREMENT PRIMARY KEY,
                user_id INT,
                skill_id INT,
                user_mini_exp INT ,
                user_maxi_exp INT ,
				CHECK(user_mini_exp IS NULL OR user_maxi_exp IS NULL OR user_mini_exp<= user_maxi_exp),
                inserted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                FOREIGN KEY(user_id) References users(user_id),
                FOREIGN KEY(skill_id)References skills(skill_id)
);


CREATE TABLE salary(
                salary_id INT AUTO_INCREMENT PRIMARY KEY,
                min_salary INT NOT NULL,
                max_salary INT NOT NULL
);

CREATE TABLE emp_count(
                ec_id INT AUTO_INCREMENT PRIMARY KEY,
                emp_min INT NOT NULL,
                emp_max INT NOT NULL
);

CREATE TABLE companies(
                comp_id INT AUTO_INCREMENT PRIMARY KEY,
                comp_name VARCHAR(50) NOT NULL,
                location VARCHAR(50) NOT NULL,
                industry_type enum('IT SERVICES AND CONSULTING','IT SERVICES AND TELECOM SOLUTIONS','CLOUD COMPUTING AND IT SERVICES','INTERNET AND CLOUD TECHONOLOGY','SOFTWARE AND CLOUD COMPUTING','CLOUD SERVICES AND INFRASTRUCTURE','SOFTWARE AS A SERVICE','SOFTWARE AND PRODUCT ENGINEERING'),
                ec_id INT NOT NULL,
                FOREIGN KEY(ec_id) References emp_count(ec_id)
);

CREATE TABLE jobs(
                job_id INT AUTO_INCREMENT PRIMARY KEY,
                job_title VARCHAR(50) NOT NULL,
                job_description TEXT NOT NULL,
                salary_id INT NOT NULL,
                comp_id INT NOT NULL,
                job_type VARCHAR (50),
                FOREIGN KEY(salary_id) REFERENCES salary(salary_id),
                FOREIGN KEY(comp_id) REFERENCES companies(comp_id)
);

CREATE TABLE job_skills(
                job_skill_id INT AUTO_INCREMENT PRIMARY KEY,
                job_id INT NOT NULL,
                skill_id INT NOT NULL,
                mini_req_exp INT ,
                max_req_exp INT ,
                CHECK(mini_req_exp IS NULL OR max_req_exp IS NULL OR mini_req_exp<= max_req_exp),
                FOREIGN KEY(job_id) References jobs(job_id),
                FOREIGN KEY(skill_id) References skills(skill_id)
);

CREATE TABLE applications(
                app_id INT AUTO_INCREMENT PRIMARY KEY,
                user_id INT NOT NULL,
                job_id INT NOT NULL,
                app_status ENUM('SUBMITTED','VIEWED'),
                app_date DATE NOT NULL DEFAULT(CURDATE()),
                FOREIGN KEY(user_id) References users(user_id),
                FOREIGN KEY(job_id) References jobs(job_id)
);

CREATE TABLE notifications(
                notification_id INT AUTO_INCREMENT PRIMARY KEY,
                user_id INT NOT NULL,
                notification_details TEXT NOT NULL,
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                FOREIGN KEY(user_id) References users(user_id)
);


