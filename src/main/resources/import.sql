INSERT INTO USER_GROUPS(ID,GROUP_NAME,DESCRIPTION) VALUE(201,'ADMIN_GROUP','admin group');
INSERT INTO USER_GROUPS(ID,GROUP_NAME,DESCRIPTION) VALUE(202,'USER_GROUP','user group');

INSERT INTO USERS (ID,USERNAME, PASSWORD, ENABLED) VALUES (101,'admin',md5('admin'),'T');
INSERT INTO USERS (ID,USERNAME, PASSWORD, ENABLED) VALUES (102,'guest',md5('guest'),'T');
INSERT INTO USERS (ID,USERNAME, PASSWORD, ENABLED) VALUES (103,'user',md5('11'),'T');

INSERT INTO USER_PROFILES(ID,USER_ID,FIRST_NAME,LAST_NAME,EMAIL,USER_GROUP_ID) VALUES (301,101,'michael','kim','abc@company.com',201);
INSERT INTO USER_PROFILES(ID,USER_ID,FIRST_NAME,LAST_NAME,EMAIL,USER_GROUP_ID) VALUES (302,102,'michael','kim','abc@company.com',202);
INSERT INTO USER_PROFILES(ID,USER_ID,FIRST_NAME,LAST_NAME,EMAIL,USER_GROUP_ID) VALUES (303,103,'michael','kim','abc@email.com',202);

INSERT INTO AUTHORITIES (USER_PROFILE_ID, AUTHORITY) VALUES (301,'ROLE_ADMIN');
INSERT INTO AUTHORITIES (USER_PROFILE_ID, AUTHORITY) VALUES (301,'ROLE_USER');
INSERT INTO AUTHORITIES (USER_PROFILE_ID, AUTHORITY) VALUES (302,'ROLE_USER');
INSERT INTO AUTHORITIES (USER_PROFILE_ID, AUTHORITY) VALUES (303,'ROLE_USER');

INSERT INTO PERMISSIONS (ID,AUTHORITY) VALUES (301,'ROLE_ADMIN');
INSERT INTO PERMISSIONS (ID,AUTHORITY) VALUES (302,'ROLE_USER');

INSERT INTO USER_GROUPS_PERMISSIONS (USER_GROUP_ID,PERMISSION_ID) VALUES (201,301);
INSERT INTO USER_GROUPS_PERMISSIONS (USER_GROUP_ID,PERMISSION_ID) VALUES (201,302);
INSERT INTO USER_GROUPS_PERMISSIONS (USER_GROUP_ID,PERMISSION_ID) VALUES (202,302);

INSERT INTO MESSAGES (USER_PROFILE_ID,TITLE,BODY) VALUES (301,'Title 1','Body 1');
INSERT INTO MESSAGES (USER_PROFILE_ID,TITLE,BODY) VALUES (301,'Title 2','Body 2');
INSERT INTO MESSAGES (USER_PROFILE_ID,TITLE,BODY) VALUES (302,'Title 3','Body 3');
INSERT INTO MESSAGES (USER_PROFILE_ID,TITLE,BODY) VALUES (302,'Title 4','Body 4');
INSERT INTO MESSAGES (USER_PROFILE_ID,TITLE,BODY) VALUES (303,'Title 5','Body 5');
INSERT INTO MESSAGES (USER_PROFILE_ID,TITLE,BODY) VALUES (303,'Title 6','Body 6');
INSERT INTO MESSAGES (USER_PROFILE_ID,TITLE,BODY) VALUES (303,'Title 7','Body 7');

INSERT INTO PROJECTS (ID,NAME,DESCRIPTION) VALUES (401,'project1','Description');
INSERT INTO PROJECTS (ID,NAME,DESCRIPTION) VALUES (402,'project2','Description');

INSERT INTO TASK_GROUPS (ID,PROJECT_ID,NAME,DESCRIPTION) VALUES (501,401,'Task Group1','Description');
INSERT INTO TASK_GROUPS (ID,PROJECT_ID,NAME,DESCRIPTION) VALUES (502,401,'Task Group2','Description');

INSERT INTO TASKS (ID,NAME,TASK_TYPE,TASK_GROUP_ID) VALUES (601,'summary1','HIVE',501);
INSERT INTO TASKS (ID,NAME,TASK_TYPE,TASK_GROUP_ID) VALUES (602,'summary2','HIVE',501);
INSERT INTO TASKS (ID,NAME,TASK_TYPE,TASK_GROUP_ID) VALUES (603,'summary3','HIVE',501);

INSERT INTO HIVE_TASKS(ID,QUERY) VALUES (601,'select * from emp;');
INSERT INTO HIVE_TASKS(ID,QUERY) VALUES (602,'select * from emp;');
INSERT INTO HIVE_TASKS(ID,QUERY) VALUES (603,'select * from emp;');



