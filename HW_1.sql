create table employees(
	id serial primary key,
	employee_name varchar(50) not null
	);


select * from employees;

insert into employees (employee_name)
	values 
	('Milton'), ('Joseph'), ('Clifton'), ('Leslie'), ('Esmond'), ('Peter'),
('Michael'), ('Peregrine'), ('Peter'), ('Malcolm'), ('George'), ('Valentine'),
('Michael'), ('Edwin'), ('Ethan'), ('Oldas'), ('David'), ('Russell'), ('Donald'),
('Wesley'), ('Claude'), ('William'), ('Henry'), ('George'), ('Michael'), ('Peter'),
('Christopher'), ('Matthew'), ('Jonathan'), ('Colin'), ('Ronald'), ('Homer'),
('Jeremiah'), ('Corey'), ('Oliver'), ('Joshua'), ('Osborne'), ('Joseph'), ('Jessie'),
('Michael'), ('William'), ('Charles'), ('Joseph'), ('Peter'), ('Trevor'), ('Gilbert'),
('Kelly'), ('Christopher'), ('Eric'), ('Ethane'), ('Roland'), ('Jeremiah'), ('Flor'),
('David'), ('Peter'), ('Charles'), ('Daniel'), ('Oliver'), ('Christopher'), ('Jack'),
('John'), ('Simon'), ('James'), ('Matthew'), ('Nicholas'), ('Eugene'), ('Christian'),
('Anthony'), ('Matthew'), ('Peter');


create table salary(
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

insert into salary (monthly_salary)
	values
	(1000), (1100), (1200), (1300), (1400),
	(1500), (1600), (1700), (1800), (1900),
	(2000), (2100), (2200), (2300), (2400), (2500);
	

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

select * from employee_salary;

insert into employee_salary (employee_id, salary_id)
	values
	(1, (random()*(16-1)+1)), (2, (random()*(16-1)+1)), (3, (random()*(16-1)+1)), (4, (random()*(16-1)+1)), (5, (random()*(16-1)+1)),
	(6, (random()*(16-1)+1)), (7, (random()*(16-1)+1)), (8, (random()*(16-1)+1)), (9, (random()*(16-1)+1)), (10, (random()*(16-1)+1)),
	(11, (random()*(16-1)+1)), (12, (random()*(16-1)+1)), (13, (random()*(16-1)+1)), (14, (random()*(16-1)+1)), (15, (random()*(16-1)+1)),
	(16, (random()*(16-1)+1)), (17, (random()*(16-1)+1)), (18, (random()*(16-1)+1)), (19, (random()*(16-1)+1)), (20, (random()*(16-1)+1)),
	(21, (random()*(16-1)+1)), (22, (random()*(16-1)+1)), (23, (random()*(16-1)+1)), (24, (random()*(16-1)+1)), (25, (random()*(16-1)+1)),
	(26, (random()*(16-1)+1)), (27, (random()*(16-1)+1)), (28, (random()*(16-1)+1)), (29, (random()*(16-1)+1)), (30, (random()*(16-1)+1)),
	(71, (random()*(16-1)+1)), (72, (random()*(16-1)+1)), (73, (random()*(16-1)+1)), (74, (random()*(16-1)+1)), (75, (random()*(16-1)+1)),
	(76, (random()*(16-1)+1)), (77, (random()*(16-1)+1)), (78, (random()*(16-1)+1)), (79, (random()*(16-1)+1)), (80, (random()*(16-1)+1));
	

create table roles(
	id serial primary key,
	role_name int unique not null
);

select * from roles;

alter table roles alter column role_name type varchar(30);

insert into roles (role_name)
	values
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');
	

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id) references employees(id),
	foreign key (role_id) references roles(id)
);

select * from roles_employee;

insert into roles_employee (employee_id, role_id) 
	values
	(32, random()*(20-1)+1), 
	(51, random()*(20-1)+1),
	(10, random()*(20-1)+1),
	(46, random()*(20-1)+1),
	(68, random()*(20-1)+1),
	(24, random()*(20-1)+1),
	(17, random()*(20-1)+1),
	(15, random()*(20-1)+1),
	(59, random()*(20-1)+1),
	(26, random()*(20-1)+1),
	(41, random()*(20-1)+1),
	(14, random()*(20-1)+1),
	(70, random()*(20-1)+1),
	(43, random()*(20-1)+1),
	(64, random()*(20-1)+1),
	(20, random()*(20-1)+1),
	(39, random()*(20-1)+1),
	(1, random()*(20-1)+1),
	(47, random()*(20-1)+1),
	(11, random()*(20-1)+1),
	(65, random()*(20-1)+1),
	(36, random()*(20-1)+1),
	(61, random()*(20-1)+1),
	(40, random()*(20-1)+1),
	(16, random()*(20-1)+1),
	(7, random()*(20-1)+1),
	(52, random()*(20-1)+1),
	(67, random()*(20-1)+1),
	(29, random()*(20-1)+1),
	(35, random()*(20-1)+1),
	(55, random()*(20-1)+1),
	(22, random()*(20-1)+1),
	(23, random()*(20-1)+1),
	(13, random()*(20-1)+1),
	(69, random()*(20-1)+1),
	(42, random()*(20-1)+1),
	(18, random()*(20-1)+1),
	(9, random()*(20-1)+1),
	(6, random()*(20-1)+1),
	(27, random()*(20-1)+1);
