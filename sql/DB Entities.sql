--用户表
create table user(
  user_id int unsigned not null auto_increment primary key,   
  name char(50),
  age int unsigned,
  sex char(15),
  tele_num char(15),
  email char(100),
  score int unsigned,
  comments char(255),
  creation_date datetime not null,
  login_date datetime,
  last_update_date datetime not null
);
--好友关系表
create table relationship(
user_id_1 int unsigned,
user_id_2 int unsigned,
delete_flag char(10),
creation_date datetime not null,
last_update_date datetime not null
);
--地址表
create table location(
location_id int unsigned not null auto_increment primary key,  
location_name char(255),
latitude numeric(10,7),
longitude numeric(10,7),
country char(100),
province char(100),
city char(100),
region char(100),
address char(255),
comments char(255),
creation_date datetime not null,
last_update_date datetime not null
);
--任务表
create table task(
task_id int unsigned not null auto_increment primary key,  
task_name char(100),
content char(200),
task_type char(50),
task_level char(10),
score int unsigned,
image_url char(255),
answer char(255),
comments char(255),
creation_date datetime not null,
last_update_date datetime not null
);

--路线表
create table routine_headers(
routine_id int unsigned not null auto_increment primary key, 
routine_num char(25),            
routine_name char(255),
type char(100),
level char(10),
comments char(255),
creation_date datetime not null,
last_update_date datetime not null
);
--线路点表
create table routine_lines(
routine_header_id int unsigned not null,  
routine_line_id int unsigned not null auto_increment primary key,    
line_num char(50),                        
location_id int,
comments char(255),
creation_date datetime not null,
last_update_date datetime not null
);
--线路点任务表
create table routine_line_tasks(
routine_line_id int unsigned not null,    
line_task_id int unsigned auto_increment primary key,                
line_task_num char(50),  
task_id int unsigned,
creation_date datetime not null,
last_update_date datetime not null
);
--用户路线历史记录
create table routine_history_lists(
list_id int unsigned not null auto_increment primary key,      
list_num char(50),                  
routine_id int unsigned,
user_id int unsigned,
addition_xp_flag char(10),
addition_xp_rate int unsigned,
score int unsigned,
team_flag char(10),
start_date datetime,
list_status char(50),
complete_date datetime,
creation_date datetime not null,
last_update_date datetime not null
);