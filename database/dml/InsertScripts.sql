
#LOCATION
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Visakhapatnam', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Hyderabad', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Mumbai', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Chennai', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Pune', '1') ;
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Banglore', '1');
INSERT INTO TV_DATA.LOCATION (CITYNAME,STATUS) VALUES ('Delhi', '1');

#USERROLES
INSERT INTO TV_DATA.USERROLES (USERROLE,STATUS) VALUES ('admin','1');
INSERT INTO TV_DATA.USERROLES (USERROLE,STATUS) VALUES ('employer','1');
INSERT INTO TV_DATA.USERROLES (USERROLE,STATUS) VALUES ('user','1');

#EMPLOYER
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('Ramana','ramana','ramana',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('siva','siva','siva',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('manoj','manoj','manoj',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('nishant','nishant','nishant',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('vikas','vikas','vikas',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');
INSERT INTO TV_DATA.EMPLOYER (EMP_USERNAME, EMP_PASSWORD, EMP_DISPLAYNAME, USERROLE_ID, STATUS ) VALUES ('pavani','pavani','pavani',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'employer'), '1');

#USERS
INSERT INTO TV_DATA.USERS (USERNAME, DISPLAYNAME, PASSWORD, USERROLE_ID,STATUS) VALUES ('admin','admin','admin123',
    (SELECT USERROLE_ID FROM TV_DATA.USERROLES WHERE USERROLE = 'admin'),1);
	
#CATEGORIES
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Application Development",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Automation",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("BPO",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Business Development",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Content/Journalism",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Copy Writer",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Creative Design",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Client Servicing",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Computers",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Engineering Design",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Finance",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("HR/Administration/IR",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("IT Software - Application Programming",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("IT Software - Ecommerce/Internet",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Marketing/Advertising",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Product Development",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Program Manager",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Product Training",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Sales/BD",10001,1);
INSERT INTO TV_DATA.CATEGORIES (CATEGORYNAME,CREATED_BY,STATUS) VALUES ("Sales Training",10001,1);


#jobs
INSERT INTO TV_DATA.JOBS (CATEGORY_ID,EMPLOYER_ID, JOB_TITLE, SHORTDESC, LONGDESC, REFERAL_AMOUNT, INTRO_AMOUNT, LOCATION_ID,EXPERIENCEREQUIRED,STATUS) 
VALUES ((SELECT CATEGORY_ID FROM TV_DATA.CATEGORIES WHERE CATEGORYNAME = 'Application Development'),
        (SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'Ramana'),'Software Trainee','Software Trainee desc','The roles include development works', 25000, 20000,
        (SELECT LOCATION_ID FROM TV_DATA.LOCATION WHERE LOWER(CITYNAME) = 'visakhapatnam'), 0, '1');
INSERT INTO TV_DATA.JOBS (CATEGORY_ID,EMPLOYER_ID, JOB_TITLE, SHORTDESC, LONGDESC, REFERAL_AMOUNT, INTRO_AMOUNT, LOCATION_ID,EXPERIENCEREQUIRED,STATUS) 
VALUES ((SELECT CATEGORY_ID FROM TV_DATA.CATEGORIES WHERE CATEGORYNAME = 'Application Development'),
        (SELECT EMPLOYER_ID FROM TV_DATA.EMPLOYER WHERE LOWER(EMP_USERNAME) = 'siva'),'Sr.Java Developer','Java Developer','The roles include developing java projects', 25000, 35000,
        (SELECT LOCATION_ID FROM TV_DATA.LOCATION WHERE LOWER(CITYNAME) = 'visakhapatnam'), 0, '1');



