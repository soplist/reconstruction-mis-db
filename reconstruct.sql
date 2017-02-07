create table user_login_information(
id int (10) not null auto_increment,
password varchar(100) not null,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table user_information;

alter table 1_item_evaluation_form drop foreign key fk_1_item_evaluation_form_user_id;
alter table 13_item_evaluation_form drop foreign key fk_13_item_evaluation_form_user_id;
alter table 10_item_evaluation_form drop foreign key fk_10_item_evaluation_form_user_id;
alter table performance_appraisal_task drop foreign key fk_performance_appraisal_task_user_id;
alter table 1_item_evaluation_form drop foreign key fk_1_item_evaluation_form_evaluation_task_id;
alter table 13_item_evaluation_form drop foreign key fk_13_item_evaluation_form_evaluation_task_id;
alter table 10_item_evaluation_form drop foreign key fk_10_item_evaluation_form_evaluation_task_id;

delete from 10_item_evaluation_form where 1=1;
delete from 1_item_evaluation_form where 1=1;
delete from 13_item_evaluation_form where 1=1;
alter table 10_item_evaluation_form add constraint fk_10_item_evaluation_form_evaluation_task_id foreign key(evaluation_task_id) references performance_appraisal_task(id);
alter table 1_item_evaluation_form add constraint fk_1_item_evaluation_form_evaluation_task_id foreign key(evaluation_task_id) references performance_appraisal_task(id);
alter table 13_item_evaluation_form add constraint fk_13_item_evaluation_form_evaluation_task_id foreign key(evaluation_task_id) references performance_appraisal_task(id);

alter table 10_item_evaluation_form auto_increment=1;
alter table 1_item_evaluation_form auto_increment=1;
alter table 13_item_evaluation_form auto_increment=1;
alter table performance_appraisal_task auto_increment=1;

alter table performance_appraisal_task change manager_evaluate evaluation_type int(10) not null; 

alter table user_permission add view_finished_performance_appraisal_task boolean default false;
alter table user_permission add view_not_finished_performance_appraisal_task boolean default false;
alter table user_permission add personal_performance_appraisal_task boolean default false;

insert into user_permission values(1,'p1',true,true,true,true,true,true,true,true,true,true,true);
insert into user_permission values(2,'p2',false,false,false,false,true,true,true,true,true,true,true);
alter table user_permission drop column permission_setting; 

alter table user_login_information modify column id int(10) not null auto_increment;
alter table user_login_information add user_id int(10) not null;

alter table user_login_information auto_increment=1;
insert into user_login_information values(1,'MTIzNDU2',1);
insert into user_login_information values(2,'MTIzNDU2',2);
insert into user_login_information values(3,'MTIzNDU2',3);
insert into user_login_information values(4,'MTIzNDU2',4);
insert into user_login_information values(5,'MTIzNDU2',5);
insert into user_login_information values(6,'MTIzNDU2',6);
insert into user_login_information values(7,'MTIzNDU2',7);
insert into user_login_information values(8,'MTIzNDU2',8);
insert into user_login_information values(9,'MTIzNDU2',9);
insert into user_login_information values(10,'MTIzNDU2',10);
insert into user_login_information values(11,'MTIzNDU2',11);
insert into user_login_information values(12,'MTIzNDU2',12);
insert into user_login_information values(13,'MTIzNDU2',13);
insert into user_login_information values(14,'MTIzNDU2',14);
insert into user_login_information values(15,'MTIzNDU2',15);
insert into user_login_information values(16,'MTIzNDU2',16);
insert into user_login_information values(17,'MTIzNDU2',17);
insert into user_login_information values(18,'MTIzNDU2',18);
insert into user_login_information values(19,'MTIzNDU2',19);
insert into user_login_information values(20,'MTIzNDU2',20);
insert into user_login_information values(21,'MTIzNDU2',21);
insert into user_login_information values(22,'MTIzNDU2',22);
insert into user_login_information values(23,'MTIzNDU2',23);
insert into user_login_information values(24,'MTIzNDU2',24);