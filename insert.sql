INSERT INTO users(user_id,user_name,mob_no,email)
VALUES(1,"vishnu",9597567310,"vishnupriyan1219@gmail.com"),
      (2,"harini",6543783,"harini@gmail.com"),
      (3,"kanimozhi",87210989,"kani@gmail.com"),
      (4,"sunmathy",9845632890,"sun@gmail.com"),
      (5,"keerthi",6378180,"keerthi@gmail.com"),
      (6,"dhanush",997662810,"dhanush@gmail.com"),
      (7,"vicky",65784589,"vicky@gmail.com"),
      (8,"rohit",90873760,"rohit@gmail.com"),
      (9,"kiri",89066791,"kiri9@gmail.com"),
      (10,"saran",655643456,"saran@gmail.com"),
      (11,"adhi",63405289,"adhi@gmail.com"),
      (12,"ghost",80967320,"ghost@gmail.com"),
      (13,"dhaya",959801310,"dhaya@gmail.com"),
      (14,"partha",80326510,"partha@gmail.com"),
      (15,"black",63447589,"black@gmail.com"),
      (16,"mark",96758789,"mark@gmail.com"),
      (17,"google",9545632,"gokul@gmail.com"),
      (18,"daali",893298710,"siva@gmail.com"),
      (19,"manikam",6345989,"manikam@gmail.com"),
      (20,"bhuvi",45398493890,"bhuvan@gmail.com"),
      (21,"prithivi",958947810,"prithivi@gmail.com"),
      (22,"yuvaraj",6512180,"yuvaraj@gmail.com"),
      (23,"cendrayan",91044589,"cendrayan@gmail.com"),
      (24,"srinath",66092760,"srinath@gmail.com"),
      (25,"joy",88730,"joy@gmail.com"),
      (26,"javith",986676456,"javith@gmail.com"),
      (27,"kishore",663421989,"kishore@gmail.com"),
      (28,"krishna",65432890,"krishna@gmail.com"),
      (29,"arul",998745301,"arul@gmail.com"),
      (30,"aishwarya",91298210,"aishu@gmail.com");
      
      INSERT INTO skills(skill_id,skills)
      values(1,"python"),
            (2,"mysql"),
            (3,"pyspark"),
            (4,"tensor flow"),
            (5,"postgresql"),
            (6,"php"),
            (7,"java"),
            (8,"javascript"),
            (9,"c"),
            (10,"c++"),
            (11,"r"),
            (12,"bash"),
            (13,"shell"),
            (14,"html"),
            (15,"css"),
            (16,"node.js"),
            (17,"django"),
            (18,"laravel"),
            (19,"ms sql server"),
            (20,"oracle"),
            (21,"mongodb"),
            (22,"redis"),
            (23,"aws"),
            (24,"docker"),
            (25,"jenkins"),
            (26,"terraform"),
            (27,"ci/cd pipelines"),
            (28,"gcp"),
            (29,"microsoft azure"),
            (30,"excel"),
            (31,"power bi"),
            (32,"pandas"),
            (33,"numpy"),
            (34,"tableau"),
            (35,"qlik"),
            (36,"talend"),
            (37,"apache nifi"),
            (38,"hadoop"),
            (39,"spark"),
            (40,"bigdata"),
            (41,"network security"),
            (42,"ethical hacking"),
            (43,"penetration testing"),
            (44,"splunk"),
            (45,"qradar"),
            (46,"machine learning"),
            (47,"deep learning"),
	    (48,"pytorch"),
            (49,"nlp"),
            (50,"sickit learn"),
            (51,"data visualization"),
            (52,"windows"),
            (53,"linux"),
            (54,"flutter"),
            (55,"react native");
            
INSERT INTO user_skill(user_id,skill_id,user_mini_exp,user_maxi_exp)
values(1,3,0,1),
      (5,9,5,8),
      (2,6,0,1),
      (3,4,5,8),
      (1,2,0,1),
      (7,7,5,8),
      (9,8,2,4),
      (2,5,7,8),
      (6,7,4,6),
      (8,8,4,5),
      (2,4,1,3),
      (2,1,6,8),
      (1,3,0,1),
      (1,3,0,1),
      (5,9,5,8),
      (2,6,0,1),
      (3,4,5,8),
      (1,2,0,1),
      (7,7,5,8),
      (9,8,2,4),
      (2,5,7,8),
      (6,7,4,6),
      (8,8,4,5),
      (2,4,1,3),
      (2,1,6,8),
      (1,3,0,1),
      (3,2,0,1),
      (3,1,2,4),
      (2,1,4,6),
      (5,1,3,6),
      (7,3,4,8),
      (1,4,0,2);
      
INSERT INTO salary(min_salary,max_salary)
VALUES(23000,25000),
      (31000,35000),
      (45000,50000),
      (57000,62000),
      (70000,77000),
      (82000,90000),
      (98000,110000),
      (110000,130000),
      (120000,140000),
      (150000,170000),
      (180000,210000),
      (260000,290000),
      (540000,630000);
      
      
      
     
     

      
      
      
      INSERT INTO user_skill(user_id,skill_id,user_mini_exp,user_maxi_exp)
      values(1,2,0,2),
            (1,3,0,1),
            (1,4,2,6),
            (4,3,1,2),
            (1,5,1,2),
            (1,13,0,1),
            (2,7,2,3),
            (2,17,1,3),
            (2,9,2,4),
            (3,4,6,8),
            (1,53,NULL,2),
            (5,54,0,2),
            (5,55,0,1),
            (6,49,1,2),
            (6,50,1,2),
            (8,28,1,3),
            (7,28,0,2),
            (4,2,NULL,NULL),
            (9,28,1,4),
            (6,32,4,6),
            (3,31,1,2),
            (8,25,1,3),
            (4,38,0,1),
            (4,37,1,1),
            (4,40,0,1),
            (2,32,1,2),
            (2,34,1,2),
            (2,33,0,3),
            (7,41,0,1),
            (7,42,1,2),
            (3,46,0,2),
            (7,52,NULL,NULL),
            (3,47,4,5),
            (3,48,1,3);
            
            
            
            INSERT INTO emp_count(emp_min,emp_max)
            values(50,100),
                  (100,200),
                  (200,400),
                  (500,1000),
                  (1000,1500);
                  
	    INSERT INTO companies(comp_name,location,industry_type,ec_id)
            values("TCS","Mumbai","IT SERVICES AND CONSULTING",1),
                  ("Infosys","Bangalore","SOFTWARE AS A SERVICE",4),
                  ("Wipro","Hyderabad","SOFTWARE AS A SERVICE",5),
                  ("Tech Mahindra","Pune","IT SERVICES AND TELECOM SOLUTIONS",2),
                  ("HCL Technologies","Noida","IT SERVICES AND CONSULTING",5),
                  ("Capgemini","Paris","IT SERVICES AND TELECOM SOLUTIONS",4),
                  ("Accenture","Dublin","IT SERVICES AND TELECOM SOLUTIONS",3),
                  ("IBM ","Armonk","CLOUD SERVICES AND INFRASTRUCTURE",2),
                  ("Cognizant","Teaneck","IT SERVICES AND CONSULTING",1), 
                  ("Oracle","Austin","SOFTWARE AS A SERVICE",2),
		  ("SAP","Walldorf","SOFTWARE AS A SERVICE",2),
                  ("Dell","Technologies","SOFTWARE AS A SERVICE",3),
                  ("Google", "Mountain","CLOUD SERVICES AND INFRASTRUCTURE",5),
                  ("Microsoft","Redmond","CLOUD SERVICES AND INFRASTRUCTURE",4),
                  ("Amazon Web Services","Seattle","CLOUD SERVICES AND INFRASTRUCTURE",4),
                  ("Zoho","Chennai","IT SERVICES AND CONSULTING",5),
		  ("Freshworks"," San Mateo","SOFTWARE AS A SERVICE",3), 
                  ("Mindtree","Bangalore","IT SERVICES AND CONSULTING",3),
                  ("LTIMindtree","Mumbai","SOFTWARE AS A SERVICE",3),
                  ("Persistent Systems","Nagpur","SOFTWARE AS A SERVICE",4);
                  
                  
	    INSERT INTO jobs(job_title,job_description,salary_id,comp_id,job_type)
            VALUES("Backend Developer","Develops server-side logic, APIs, and database interactions.
                    Ensures security, performance, and scalability of web applications.
		    Works with databases, cloud storage, and server deployment.",2,1,"Remote"),
		   ("Frontend Developer","Builds responsive web interfaces using HTML, CSS, and JavaScript.
                     Integrates backend APIs into UI components.
                     Focuses on user experience and cross-browser compatibility.",4,3,"Remote"),
				   ("Mobile App Developer","Develops Android/iOS applications using native or hybrid frameworks (e.g., Flutter, React Native).
                     Optimizes app performance and UI/UX for mobile devices.
                     Works closely with designers and backend teams for integration.",1,1,"onsite"),
				   ("DevOps Engineer","Automates CI/CD pipelines and manages infrastructure as code.
                     Ensures smooth deployment, monitoring, and scaling of applications.
                     Bridges development and operations for faster delivery.",8,8,"Hybrid"),
				   ("Software Tester / QA Engineer","Writes and executes manual or automated test cases.
                     Identifies bugs, regression issues, and ensures product quality.
                     Collaborates with developers to ensure defect resolution.",3,13,"Fulltime"),
				   ("Data Analyst","Cleans and analyzes data to derive actionable insights.
                     Creates reports and dashboards using tools like Excel, Power BI, or Tableau.
                     Uses SQL and Python/R for querying and analysis.",5,11,"Parttime"),
				   ("Data Scientist","Builds statistical models and machine learning algorithms.
                     Performs data wrangling, feature engineering, and predictive analysis.
					 Communicates findings through visualizations and reports.",7,19,"Contract"),
				   ("Data Engineer","Designs and builds data pipelines and ETL processes.
                     Works with big data tools (Spark, Hadoop) and cloud platforms.
					 Ensures reliable data flow and storage for analytics.",8,15,"Internship"),
				   ("Business Intelligence (BI) Developer","Develops dashboards and reports using BI tools (Power BI, Tableau).
                     Transforms raw data into visual insights for decision-making.
                     Works with stakeholders to understand reporting needs.",2,9,"Internship"),
                   ("Machine Learning Engineer","Deploys and scales ML models in production environments.
                     Works with large datasets and model optimization.
                     Collaborates with data scientists and software teams.",13,6,"Internship"),
                   ("Cloud Solutions Architect","Designs cloud infrastructure for scalable, secure applications.
                     Selects appropriate cloud services (AWS, Azure, GCP).
                     Ensures best practices in cost, security, and performance.",12,4,"Onsite"),
                   ("Site Reliability Engineer (SRE)","Monitors system reliability, availability, and uptime.
                     Develops automation tools for system operation tasks.
                     Handles incident response and root cause analysis.",1,5,"Onsite"),
                   ("System Administrator","Manages servers, user access, and system updates.
                     Handles backup, recovery, and security configurations.
                     Supports hardware/software installations and troubleshooting.",2,8,"Remote"),
                   ("Network Engineer","Designs and maintains LAN/WAN networks and firewalls.
					 Monitors network performance and resolves connectivity issues.
					 Ensures network security and uptime.",3,20,"Remote"),
                   ("Security Engineer (Cybersecurity)","Protects systems from unauthorized access and cyber threats.
                     Implements firewalls, encryption, and security protocols.
                     Conducts vulnerability assessments and penetration testing.",4,13,"Fulltime"),
                   ("UI/UX Designer","Designs wireframes, prototypes, and visual layouts.
					Focuses on usability, accessibility, and aesthetic appeal.
					Collaborates with frontend developers for implementation.",2,7,"Onsite"),
                   ("Full Stack Web Developer","Develops both client-side and server-side logic.
                     Handles databases, APIs, and front-end frameworks.
                     Deploys and maintains web applications end-to-end.",4,8,"Internship"),
                   ("SEO Specialist / Digital Marketer","Optimizes website content for search engines.
                     Uses tools like Google Analytics and SEMrush for traffic analysis.
                     Runs ad campaigns and manages digital outreach.",3,10,"Onsite"),
                   ("Product Manager (Tech)","Defines product vision, roadmap, and user requirements.
					 Works with dev teams to prioritize features and releases.
					 Bridges communication between business and tech teams.",3,15,"Onsite"),
                   ("Technical Support Engineer","Troubleshoots software/hardware issues for end users.
                     Documents incidents and provide",1,15,"Onsite");
            
            INSERT INTO job_skills(job_id,skill_id,mini_req_exp,max_req_exp)
            VALUES(1,1,0,1),
                  (1,2,2,4),
                  (1,8,1,3),
                  (1,14,2,6),
                  (1,15,0,4),
                  (1,16,5,6),
                  (8,1,7,8),
                  (8,2,2,3),
                  (8,3,1,2),
                  (8,4,4,6),
                  (8,29,6,8),
                  (8,38,2,5),
                  (14,41,1,3),
                  (14,42,0,2),
                  (14,52,1,2),
                  (7,36,1,4),
                  (7,50,5,6),
                  (7,46,7,8),
                  (7,39,6,8),
                  (10,46,2,3),
                  (10,1,2,5),
                  (10,47,2,3),
                  (10,48,0,1),
                  (10,2,6,9),
                  (9,1,3,5),
                  (9,2,3,8),
                  (9,36,2,4),
                  (6,31,1,4),
                  (6,1,4,8),
                  (6,35,0,2),
                  (6,2,0,1),
                  (4,41,4,8),
                  (4,23,0,1),
                  (4,9,0,2),
                  (2,8,2,6),
                  (2,14,2,5),
                  (2,15,2,4),
                  (2,16,0,4),
                  (2,17,6,8),
                  (2,21,2,4),
                  (5,9,0,1),
                  (5,55,0,3),
                  (5,27,2,4),
                  (11,19,3,6),
                  (11,29,0,1),
                  (11,40,0,5),
                  (11,24,0,3),
                  (16,14,5,8),
                  (16,27,4,6),
                  (16,53,3,6),
                  (17,14,2,4),
                  (17,15,0,2),
                  (17,16,4,6),
                  (17,21,6,8),
                  (17,54,0,1),
                  (19,9,2,4),
                  (18,15,0,3),
                  (18,16,0,2),
                  (18,17,0,4),
                  (18,14,2,3),
                  (3,1,5,8),
                  (3,2,3,4),
                  (3,55,2,3),
                  (3,14,6,7),
                  (3,17,2,4);
                  
INSERT INTO applications(user_id,job_id,app_status)
VALUES(1,6,"SUBMITTED"),
      (1,8,"SUBMITTED"),
      (2,1,"SUBMITTED"),
      (2,2,"SUBMITTED"),
      (3,6,"SUBMITTED"),
      (3,8,"SUBMITTED"),
      (4,14,"SUBMITTED"),
      (4,19,"SUBMITTED"),
      (5,3,"SUBMITTED"),
      (5,16,"SUBMITTED"),
      (6,10,"SUBMITTED"),
      (6,11,"SUBMITTED"),
      (7,13,"SUBMITTED"),
      (7,17,"SUBMITTED"),
      (8,7,"SUBMITTED"),
      (8,11,"SUBMITTED"),
      (9,4,"SUBMITTED"),
      (9,9,"SUBMITTED"),
      (10,16,"SUBMITTED"),
      (10,18,"SUBMITTED");
