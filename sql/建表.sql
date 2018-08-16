CREATE TABLE blog_users(
id INT not NULL auto_increment PRIMARY KEY,
username VARCHAR(64) not null DEFAULT '',
password VARCHAR(128) not null DEFAULT '',
nickname VARCHAR(128) not null DEFAULT '',
intro text DEFAULT '',
avatar VARCHAR(255) not null DEFAULT ''

) ENGINE INNODB CHARSET utf8;


CREATE TABLE blog_categories(
id INT not NULL auto_increment PRIMARY KEY,
name VARCHAR(64) not null DEFAULT '',
created_time int not null DEFAULT 0,
user_id int not null DEFAULT 0,

INDEX(user_id)

) ENGINE INNODB CHARSET utf8;


CREATE TABLE blog_tags(
id INT not NULL auto_increment PRIMARY KEY,
name VARCHAR(64) not null DEFAULT '',
created_time int not null DEFAULT 0,
user_id int not null DEFAULT 0,

INDEX(user_id)

) ENGINE INNODB CHARSET utf8;



CREATE TABLE blog_articles(
id INT not NULL auto_increment PRIMARY KEY,
title VARCHAR(128) not null DEFAULT '',
body text DEFAULT null,
create_time int not null DEFAULT 0,
update_time int not null DEFAULT 0,
category_id int not null DEFAULT 0,
user_id int not null DEFAULT 0,
INDEX(category_id),
INDEX(user_id)

) ENGINE INNODB CHARSET utf8; 



CREATE table blog_article_tag_map(
id int not null auto_increment PRIMARY KEY,
article_id int not null DEFAULT 0,
tag_id int not null DEFAULT 0


)ENGINE INNODB CHARSET utf8; 