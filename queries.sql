USE linkuri;
SELECT
u.user_name,j.job_title,
a.app_date,c.comp_name
FROM
users u
INNER JOIN
applications a
ON u.user_id=a.user_id
INNER JOIN jobs j
ON a.job_id=j.job_id
INNER JOIN companies c
ON j.comp_id=c.comp_id;


SELECT
j.job_title,a.job_id,
COUNT(DISTINCT a.user_id) as no_of_applicants
FROM
applications a
INNER JOIN
jobs j
ON
a.job_id=j.job_id
GROUP BY
j.job_title,j.job_id ;


SELECT *
FROM (SELECT
c.comp_id,c.comp_name,
COUNT(j.job_title) AS total_jobs,
DENSE_RANK() OVER (ORDER BY
COUNT(j.job_title)DESC) AS
company_rank
FROM companies c
INNER JOIN jobs j
ON j.comp_id=c.comp_id
GROUP BY c.comp_id,
c.comp_name) AS
ranked_companies
WHERE company_rank<=3;


SELECT
u.user_id,u.user_name
FROM users u
LEFT JOIN applications a
ON u.user_id=a.user_id
WHERE a.app_id IS NULL;


SELECT
app_id,app_date,
job_id,user_id
FROM applications
WHERE app_date BETWEEN
CURDATE()-INTERVAL 7 DAY AND CURDATE();



SELECT *
FROM(SELECT *,
DENSE_RANK()OVER(ORDER
BY job_count DESC) AS skill_rank
FROM(SELECT
js.skill_id,s.skills,
COUNT(DISTINCT job_id) AS
job_count
FROM job_skills js
INNER JOIN skills s
ON js.skill_id=s.skill_id
GROUP BY js.skill_id,s.skills) AS skill_demand
) AS ranked_skills
WHERE skill_rank <=3;



  WITH user_profile AS (
    SELECT u.user_id, u.user_name,
           us.user_mini_exp,
           us.user_maxi_exp, us.skill_id
    FROM users u
    INNER JOIN user_skill us ON u.user_id = us.user_id
    WHERE u.user_id = 2
  ),
  job_profile AS (
    SELECT j.job_id, j.job_title,
           js.mini_req_exp, js.max_req_exp,
           js.skill_id,
           c.comp_name AS company_name,
           c.location
    FROM jobs j
    INNER JOIN companies c ON j.comp_id = c.comp_id
    INNER JOIN job_skills js ON j.job_id = js.job_id
  ),
  matched_skills AS (
    SELECT up.user_id, up.user_name,
           MIN(up.user_mini_exp) AS mini_exp,
           MAX(up.user_maxi_exp) AS max_exp,
           jp.company_name, jp.location,
           jp.job_title, jp.job_id,
           COUNT(DISTINCT jp.skill_id) AS skill_count,
           MIN(jp.mini_req_exp) AS mini_expj,
           MAX(jp.max_req_exp) AS maxi_expj
    FROM user_profile up
    INNER JOIN job_profile jp ON up.skill_id = jp.skill_id
    GROUP BY up.user_id, up.user_name, jp.job_id,
             jp.job_title, jp.location, jp.company_name
  ),
  total_skills AS (
    SELECT job_id,
           COUNT(DISTINCT skill_id) AS all_skills_per_job
    FROM job_skills
    GROUP BY job_id
  )
  SELECT
    ms.user_id, ms.user_name,
    ms.company_name,
    ms.job_id, ms.job_title,
    ms.mini_exp, ms.max_exp,
    ms.mini_expj, ms.maxi_expj,
    CASE
      WHEN (ms.skill_count * 100 / ts.all_skills_per_job) >= 25 THEN 30
      ELSE 0
    END +
    CASE
      WHEN (ms.mini_exp <= ms.maxi_expj AND ms.max_exp >= ms.mini_expj) THEN 20
      ELSE 0
    END AS total_score
    
  FROM matched_skills ms
  INNER JOIN total_skills ts ON ms.job_id = ts.job_id
  WHERE (ms.skill_count * 100 / ts.all_skills_per_job) >= 10
    AND (ms.max_exp >= ms.mini_expj AND ms.mini_expj <= ms.maxi_expj)
  ORDER BY total_score DESC
  LIMIT 10;
  
  
  SET GLOBAL event_scheduler=ON;
  DROP EVENT IF EXISTS notify_users;
  CREATE EVENT notify_users
  ON SCHEDULE EVERY 1 DAY
  STARTS CURRENT_TIMESTAMP
  DO
          INSERT INTO notifications(user_id,notification_details)
          SELECT u.user_id,CONCAT('Hello ', IFNULL(u.user_name ,'user '), ' update your profile to get better job recommendations')
          FROM users u
		  LEFT JOIN user_skill us
          ON u.user_id=us.user_id
          WHERE (us.skill_id IS NULL 
     OR us.user_mini_exp IS NULL 
     OR us.user_maxi_exp IS NULL 
     OR us.inserted_at < CURRENT_DATE() - INTERVAL 30 DAY)
    AND (
      NOT EXISTS (
        SELECT 1 
        FROM notifications n 
        WHERE n.user_id = u.user_id
          AND n.notification_details LIKE '%update your profile%'
      )
      OR EXISTS (
        SELECT 1 
        FROM notifications n 
        WHERE n.user_id = u.user_id
          AND n.notification_details LIKE '%update your profile%'
          AND n.created_at < CURRENT_DATE() - INTERVAL 7 DAY
      )
    )
		  GROUP BY u.user_id,u.user_name
          
DELIMITER $$
DROP PROCEDURE IF EXISTS search_filter;
CREATE PROCEDURE search_filter(
				 IN p_job_title VARCHAR(50),
                 IN p_comp_title VARCHAR(50),
                 IN p_job_type VARCHAR(50),
                 IN p_location VARCHAR(50),
                 IN p_industry VARCHAR(50))
BEGIN
                 DECLARE sql_stmts TEXT;
                 SET sql_stmts='SELECT j.job_id, j.job_title, j.job_type, 
       c.comp_name, c.location, C.industry_type
FROM jobs j
INNER JOIN (
    SELECT DISTINCT job_id FROM job_skills
) js_distinct ON j.job_id = js_distinct.job_id
INNER JOIN companies c ON j.comp_id = c.comp_id
INNER JOIN emp_count emp ON c.ec_id = emp.ec_id
WHERE 1 = 1';
				IF P_job_title is not null and p_job_title != ' ' THEN SET sql_stmts= CONCAT(sql_stmts,' AND j.job_title ="',p_job_title,'"');END IF;
                IF P_comp_title is not null and p_comp_title != ' ' THEN SET sql_stmts= CONCAT(sql_stmts,' AND c.comp_name ="',p_comp_title,'"');END IF;
                IF P_location is not null and p_location != ' ' THEN SET sql_stmts= CONCAT(sql_stmts,' AND c.location ="',p_location,'"');END IF;
                IF p_industry is not null and p_industry != ' ' THEN SET sql_stmts= CONCAT(sql_stmts,' AND emp.industry_type ="',p_industry,'"');END IF;
                
                SET @sql_stmts=sql_stmts;
                PREPARE search_filter from @sql_stmts;
                execute search_filter;
                deallocate PREPARE search_filter;
END$$

DELIMITER ;

call search_filter(' ',' ',' ','MUMBAI',' ');