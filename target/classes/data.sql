INSERT INTO USER (ACTIVE, EMAIL, LAST_NAME, NAME, PASSWORD) VALUES (1, 'email@email.com', 'User', 'user', '$2a$10$Ggk6/JYDI0bKPYJ8XgiEF.ygJy1l6It5rl/IaXihBnpJAMND/9I7K');
INSERT INTO ROLE (ROLE) VALUES ('admin');
INSERT INTO ROLE (ROLE) VALUES ('ROLE_USER');
INSERT INTO USER_ROLE VALUES(1, 1);