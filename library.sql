drop database if exists library;
create database library;
use library;

CREATE TABLE  NEWMEMBER(ID INT NOT NULL AUTO_INCREMENT,USERNAME VARCHAR(4000),PASSWORD VARCHAR(4000),REPASSWORD VARCHAR(4000),PHONENUMBER VARCHAR(15), ADDERESS VARCHAR(4000),SYD VARCHAR(4000),PRIMARY KEY (ID));
CREATE TABLE  NEWSTAFFMEMBER(ID INT NOT NULL AUTO_INCREMENT,USERNAME VARCHAR(4000),PASSWORD VARCHAR(4000),REPASSWORD VARCHAR(4000),PHONENUMBER VARCHAR(15), ADDERESS VARCHAR(4000),SYD VARCHAR(4000),PRIMARY KEY (ID));
CREATE TABLE  LIBRARYADMIN(username varchar(10), password varchar(10));
CREATE TABLE  BOOKDETAILS(ID INT NOT NULL AUTO_INCREMENT,BOOKNAME VARCHAR(4000),AUTHORNAME VARCHAR(4000),PRIMARY KEY (ID));


Insert into LIBRARYADMIN values('poorna','poorna');
Insert into BOOKDETAILS values('java','poorna');
Insert into BOOKDETAILS values('c','rao');




use library;
drop table if exists category;
CREATE TABLE category (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  description VARCHAR(255) NULL,
  image_url VARCHAR(50) NOT NULL,
  is_active BIT(1) NOT NULL DEFAULT 0,
constraint pk_category_id
  PRIMARY KEY (id));

  INSERT INTO category (name,description,image_url,is_active) VALUES ('MOBILE', 'this is mobile category', 'mob.png',1);
  INSERT INTO category (name,description,image_url,is_active) VALUES ('LAPTOP', 'this is laptop category', 'lap.png',1);
  INSERT INTO category (name,description,image_url,is_active) VALUES ('TELEVISION', 'this is mobile category', 'tv.png',1);
 
  
