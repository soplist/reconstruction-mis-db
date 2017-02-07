create table performance_appraisal_task(
id int(10) not null auto_increment,
finish_status boolean default false,
user_id int(10) not null,
manager_evaluate boolean default false,
launch_time date not null,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table 10_item_evaluation_form(
id int(10) not null auto_increment,
user_id int(10) not null,
evaluation_task_id int(10) not null,
finish boolean default false,
evaluation_type int(10) not null,
finish_time date,
item_1 float default 0,
item_2 float default 0,
item_3 float default 0,
item_4 float default 0,
item_5 float default 0,
item_6 float default 0,
item_7 float default 0,
item_8 float default 0,
item_9 float default 0,
item_10 float default 0,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;




create table 1_item_evaluation_form(
id int(10) not null auto_increment,
user_id int(10) not null,
evaluation_task_id int(10) not null,
finish boolean default false,
evaluation_type int(10) not null,
finish_time date,
item_1 float default 0,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;




create table 13_item_evaluation_form(
id int(10) not null auto_increment,
user_id int(10) not null,
evaluation_task_id int(10) not null,
finish boolean default false,
evaluation_type int(10) not null,
finish_time date,
item_1 float default 0,
item_2 float default 0,
item_3 float default 0,
item_4 float default 0,
item_5 float default 0,
item_6 float default 0,
item_7 float default 0,
item_8 float default 0,
item_9 float default 0,
item_10 float default 0,
item_11 float default 0,
item_12 float default 0,
item_13 float default 0,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table user_config_information(
id int(10) not null auto_increment,
username varchar(20) not null,
password varchar(20) not null,
permission_id int(10) not null,
department_id int(10) not null,
performance_appraisal_setting_id int(10) not null,
manager_evaluation_setting_id int(10) not null,
user_resume_information_id int(10) not null,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



create table user_resume_information(
id int(10) not null auto_increment,
name varchar(20) not null,
manager_status boolean default false,
boss_status boolean default false,
position varchar(20) not null,
join_time date,
work_status boolean default false,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table performance_appraisal_setting(
id int (10) not null auto_increment,
setting_time date not null,
personal_evaluation_proportion float not null,
department_evaluation_proportion float not null,
manager_evaluation_proportion float not null,
company_evaluation_proportion float not null,
colleagues_evaluation_proportion float not null,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table user_permission(
id int (10) not null auto_increment,
permission_name varchar(20) not null,
permission_setting boolean default false,
performance_appraisal_setting boolean default false,
view_all_performance_appraisal boolean default false,
manager_evaluation_setting boolean default false,
customer_information_create boolean default false,
customer_information_retrieve boolean default false,
customer_information_update boolean default false,
customer_information_delete boolean default false,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table user_department(
id int (10) not null auto_increment,
department_name varchar(20) not null,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table manager_evaluation_setting(
id int(10) not null auto_increment,
item_1 float default 0,
item_6 float default 0,
item_12 float default 0,
item_13 float default 0,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into user_resume_information values(1,'王康',false,false,'软件工程师','2016-03-21',true);
insert into user_resume_information values(2,'陈旭楠',true,true,'总经理','2006-01-01',true);
insert into user_resume_information values(3,'谢安迪',true,false,'业务总监','2014-05-05',true);
insert into user_resume_information values(4,'陈芳',false,false,'业务经理','2010-12-20',true);
insert into user_resume_information values(5,'汪飞',false,false,'业务经理','2013-11-04',true);
insert into user_resume_information values(6,'刘洪波',false,false,'库管','2015-09-07',false);
insert into user_resume_information values(7,'王丽',false,false,'仓库管理员','2015-04-25',true);
insert into user_resume_information values(8,'董贵琦',true,false,'传媒公司总经理','2015-02-01',false);
insert into user_resume_information values(9,'屈孝霞',true,false,'财务经理','2010-04-28',true);
insert into user_resume_information values(10,'黄烁洁',true,false,'总经办主任','2015-01-26',false);
insert into user_resume_information values(11,'陈晓芳',false,false,'出纳','2015-04-28',true);
insert into user_resume_information values(12,'聂云',false,false,'会计','2016-03-21',false);
insert into user_resume_information values(13,'封海霞',false,false,'行政后勤','2015-09-06',false);
insert into user_resume_information values(14,'汪备军',true,false,'业务经理','2014-02-17',true);
insert into user_resume_information values(15,'汪德林',false,false,'业务经理','2014-11-14',true);
insert into user_resume_information values(16,'王本军',true,false,'业务经理','2014-05-25',true);
insert into user_resume_information values(17,'罗娜',false,false,'商务客服','2014-09-02',true);
insert into user_resume_information values(18,'范正伟',false,false,'仓库管理员','2014-09-01',true);
insert into user_resume_information values(19,'李彩虹',false,false,'客服专员','2015-03-19',true);
insert into user_resume_information values(20,'郭光',false,false,'业务经理','2016-03-03',true);
insert into user_resume_information values(21,'邓玉英',false,false,'客服专员','2016-03-10',true);
insert into user_resume_information values(22,'寇沙沙',false,false,'客服专员','2015-06-08',false);
insert into user_resume_information values(23,'刘翻番',false,false,'业务经理','2016-01-01',true);
insert into user_resume_information values(24,'朿安义',false,false,'业务经理','2016-01-01',true);

select table_name from information_schema.tables where table_schema = 'misdb';

insert into manager_evaluation_setting values(1,0,0,0,0);
insert into manager_evaluation_setting values(2,0,0,0,0);
insert into manager_evaluation_setting values(3,0,0,0,0);
insert into manager_evaluation_setting values(4,0,0,0,0);
insert into manager_evaluation_setting values(5,0,0,0,0);
insert into manager_evaluation_setting values(6,0,0,0,0);

insert into user_department values(1,'业务部');
insert into user_department values(2,'综合部');
insert into user_department values(3,'财务部');
insert into user_department values(4,'研发部');

insert into user_permission values(1,'admin',true,true,true,false,true,true,true,true);
insert into user_permission values(2,'normal',false,false,false,false,true,true,true,false);
insert into user_permission values(3,'super_admin',true,true,true,true,true,true,true,true);

alter table user_config_information drop foreign key fk_user_config_information_performance_appraisal_setting_id;
alter table user_config_information drop column performance_appraisal_setting_id;

insert into user_config_information values(1,'wangkang','123456',3,2,1,1);
insert into user_config_information values(2,'chenxunan','123456',1,2,2,2);
insert into user_config_information values(3,'xieandi','123456',3,1,3,3);
insert into user_config_information values(4,'chenfang','123456',2,1,1,4);
insert into user_config_information values(5,'wangfei','123456',2,1,1,5);
insert into user_config_information values(6,'liuhongbo','123456',2,2,1,6);
insert into user_config_information values(7,'wangli','123456',2,3,1,7);
insert into user_config_information values(8,'dongguiqi','123456',2,3,1,8);
insert into user_config_information values(9,'quxiaoxia','123456',2,3,4,9);
insert into user_config_information values(10,'huangshuojie','123456',2,3,1,10);
insert into user_config_information values(11,'chenxiaofang','123456',2,3,1,11);
insert into user_config_information values(12,'nieyun','123456',2,3,1,12);
insert into user_config_information values(13,'fenghaixia','123456',2,3,1,13);
insert into user_config_information values(14,'wangbeijun','123456',2,1,5,14);
insert into user_config_information values(15,'wangdelin','123456',2,1,1,15);
insert into user_config_information values(16,'wangbenjun','123456',2,1,6,16);
insert into user_config_information values(17,'luona','123456',2,2,1,17);
insert into user_config_information values(18,'fanzhengwei','123456',2,3,1,18);
insert into user_config_information values(19,'licaihong','123456',2,2,1,19);
insert into user_config_information values(20,'guoguang','123456',2,1,1,20);
insert into user_config_information values(21,'dengyuying','123456',2,2,1,21);
insert into user_config_information values(22,'koushasha','123456',2,4,1,22);
insert into user_config_information values(23,'liufanfan','123456',2,1,1,23);
insert into user_config_information values(24,'cianyi','123456',2,1,1,24);


alter table user_config_information drop foreign key fk_user_config_information_permission_id;
alter table user_config_information drop foreign key fk_user_config_information_department_id;
alter table user_config_information drop foreign key fk_user_config_information_performance_appraisal_setting_id;
alter table user_config_information drop foreign key fk_user_config_information_manager_evaluate_setting_id;
alter table user_config_information drop foreign key fk_user_config_information_user_resume_information_id;
alter table 1_item_evaluation_form drop foreign key fk_1_item_evaluation_form_user_id;
alter table 13_item_evaluation_form drop foreign key fk_13_item_evaluation_form_user_id;
alter table 10_item_evaluation_form drop foreign key fk_10_item_evaluation_form_user_id;
alter table 1_item_evaluation_form drop foreign key fk_1_item_evaluation_form_evaluation_task_id;
alter table 13_item_evaluation_form drop foreign key fk_13_item_evaluation_form_evaluation_task_id;
alter table 10_item_evaluation_form drop foreign key fk_10_item_evaluation_form_evaluation_task_id;
alter table performance_appraisal_task drop foreign key fk_performance_appraisal_task_user_id;
drop table if exists user_config_information;

alter table performance_appraisal_task add constraint fk_performance_appraisal_task_user_id foreign key(user_id) references user_config_information(id);
alter table 10_item_evaluation_form add constraint fk_10_item_evaluation_form_user_id foreign key(user_id) references user_config_information(id);
alter table 10_item_evaluation_form add constraint fk_10_item_evaluation_form_evaluation_task_id foreign key(evaluation_task_id) references performance_appraisal_task(id);
alter table 1_item_evaluation_form add constraint fk_1_item_evaluation_form_user_id foreign key(user_id) references user_config_information(id);
alter table 1_item_evaluation_form add constraint fk_1_item_evaluation_form_evaluation_task_id foreign key(evaluation_task_id) references performance_appraisal_task(id);
alter table 13_item_evaluation_form add constraint fk_13_item_evaluation_form_user_id foreign key(user_id) references user_config_information(id);
alter table 13_item_evaluation_form add constraint fk_13_item_evaluation_form_evaluation_task_id foreign key(evaluation_task_id) references performance_appraisal_task(id);
alter table user_config_information add constraint fk_user_config_information_permission_id foreign key(permission_id) references user_permission(id);
alter table user_config_information add constraint fk_user_config_information_department_id foreign key(department_id) references user_department(id);
alter table user_config_information add constraint fk_user_config_information_performance_appraisal_setting_id foreign key(performance_appraisal_setting_id) references performance_appraisal_setting(id);
alter table user_config_information add constraint fk_user_config_information_manager_evaluation_setting_id foreign key(manager_evaluation_setting_id) references manager_evaluation_setting(id);
alter table user_config_information add constraint fk_user_config_information_user_resume_information_id foreign key(user_resume_information_id) references user_resume_information(id);
