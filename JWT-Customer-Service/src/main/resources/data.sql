drop table product;
drop table store;
drop table user;

create table user (user_id integer generated by default as identity, active boolean not null, first_name varchar(255), last_name varchar(255), login_id varchar(255), password varchar(255), role varchar(255), primary key (user_id));

create table product (product_id integer generated by default as identity, available integer not null, price integer not null, product_name varchar(255), store_id integer not null, primary key (product_id));

create table store (store_id integer generated by default as identity, active boolean not null, ADD varchar(255), store_name varchar(255), primary key (store_id));

--alter table product add constraint FKjlfidudl1gwqem0flrlomvlcl foreign key (store_id) references store; 

INSERT INTO USER (USER_ID,ACTIVE,FIRST_NAME,LAST_NAME,LOGIN_ID,PASSWORD, ROLE) VALUES (1,TRUE,'SUPER','ADMIN','admin','admin','ROLE_ADMIN');
INSERT INTO USER (USER_ID,ACTIVE,FIRST_NAME,LAST_NAME,LOGIN_ID,PASSWORD, ROLE) VALUES (2,TRUE,'STORE','MANAGER','manager','manager','ROLE_MANAGER');
INSERT INTO USER (USER_ID,ACTIVE,FIRST_NAME,LAST_NAME,LOGIN_ID,PASSWORD, ROLE) VALUES (3,TRUE,'STORE','USER','user','user','ROLE_USER');

INSERT INTO STORE (STORE_ID,ACTIVE,ADD,STORE_NAME) VALUES (1,TRUE,'STORE_ADD_1','STORE_1');
INSERT INTO STORE (STORE_ID,ACTIVE,ADD,STORE_NAME) VALUES (2,TRUE,'STORE_ADD_2','STORE_2');
INSERT INTO STORE (STORE_ID,ACTIVE,ADD,STORE_NAME) VALUES (3,TRUE,'STORE_ADD_3','STORE_3');


INSERT INTO PRODUCT (PRODUCT_ID,AVAILABLE,PRICE,PRODUCT_NAME,STORE_ID) VALUES (1,TRUE,100,'PRODUCT_1',1);
INSERT INTO PRODUCT (PRODUCT_ID,AVAILABLE,PRICE,PRODUCT_NAME,STORE_ID) VALUES (2,TRUE,132,'PRODUCT_2',1);
INSERT INTO PRODUCT (PRODUCT_ID,AVAILABLE,PRICE,PRODUCT_NAME,STORE_ID) VALUES (3,TRUE,149,'PRODUCT_3',1);


INSERT INTO PRODUCT (PRODUCT_ID,AVAILABLE,PRICE,PRODUCT_NAME,STORE_ID) VALUES (4,TRUE,100,'PRODUCT_4',2);
INSERT INTO PRODUCT (PRODUCT_ID,AVAILABLE,PRICE,PRODUCT_NAME,STORE_ID) VALUES (5,TRUE,132,'PRODUCT_5',2);
INSERT INTO PRODUCT (PRODUCT_ID,AVAILABLE,PRICE,PRODUCT_NAME,STORE_ID) VALUES (6,TRUE,149,'PRODUCT_6',2);


INSERT INTO PRODUCT (PRODUCT_ID,AVAILABLE,PRICE,PRODUCT_NAME,STORE_ID) VALUES (7,TRUE,100,'PRODUCT_7',3);
INSERT INTO PRODUCT (PRODUCT_ID,AVAILABLE,PRICE,PRODUCT_NAME,STORE_ID) VALUES (8,TRUE,132,'PRODUCT_8',3);
INSERT INTO PRODUCT (PRODUCT_ID,AVAILABLE,PRICE,PRODUCT_NAME,STORE_ID) VALUES (9,TRUE,149,'PRODUCT_9',3);