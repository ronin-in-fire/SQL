 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 	select employees.employee_name, salary.monthly_salary 
 	from employees inner join employee_salary on employees.id = employee_salary.employee_id 
 	inner join salary on employee_salary.salary_id = salary.id;
 	
 --2. Вывести всех работников у которых ЗП меньше 2000.
 	select employees.employee_name, salary.monthly_salary 
 	from employees inner join employee_salary on employees.id = employee_salary.employee_id 
 	inner join salary on employee_salary.salary_id = salary.id 
 	where salary.monthly_salary < '2000';
 	
 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 	select salary.monthly_salary, employees.employee_name
    from salary left join employee_salary on salary.id = employee_salary.salary_id
    left join employees on employee_salary.employee_id = employees.id 
    where employees.employee_name is null;
    
 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 	select salary.monthly_salary, employees.employee_name 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	where employees.employee_name is null and salary.monthly_salary < '2000';
 	
 --5. Найти всех работников кому не начислена ЗП.
 	select employees.id, employees.employee_name, salary.monthly_salary 
 	from employees left join employee_salary on employees.id = employee_salary.employee_id 
 	left join salary on employee_salary.salary_id = salary.id 
 	where salary.monthly_salary is null
 	order by 1;
 	
 --6. Вывести всех работников с названиями их должности.
 	select employees.employee_name, roles.role_name 
 	from employees full outer join roles_employee on employees.id = roles_employee.employee_id 
 	full outer join roles on roles_employee.role_id = roles.id;
 	
 --7. Вывести имена и должность только Java разработчиков.
 	select employees.employee_name, roles.role_name 
 	from employees left join roles_employee on employees.id = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like '%Java developer%';
 	
 --8. Вывести имена и должность только Python разработчиков.
 	select employees.employee_name, roles.role_name 
 	from employees full outer join roles_employee on employees.id = roles_employee.employee_id 
 	full outer join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like '%Python developer';
 	
 --9. Вывести имена и должность всех QA инженеров.
 	select employees.employee_name, roles.role_name 
 	from employees left join roles_employee on employees.id = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like '%QA engineer';
 	
 --10. Вывести имена и должность ручных QA инженеров.
 	select employees.employee_name, roles.role_name 
 	from employees left join roles_employee on employees.id = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like '%Manual QA engineer';
 	
 --11. Вывести имена и должность автоматизаторов QA
 	select employees.employee_name, roles.role_name 
 	from employees left join roles_employee on employees.id = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like '%Automation QA engineer';
 	
 --12. Вывести имена и зарплаты Junior специалистов
 	select employees.employee_name, roles.role_name, salary.monthly_salary 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	left join roles_employee on employees.id  = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like 'Junior%';
 	
 --13. Вывести имена и зарплаты Middle специалистов
 	select employees.employee_name, roles.role_name, salary.monthly_salary 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	left join roles_employee on employees.id  = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like 'Middle%';
 	
 --14. Вывести имена и зарплаты Senior специалистов
 	select employees.employee_name, roles.role_name, salary.monthly_salary 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	left join roles_employee on employees.id  = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like 'Senior%';
 	
 --15. Вывести зарплаты Java разработчиков
 	select roles.role_name, salary.monthly_salary 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	left join roles_employee on employees.id  = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like '%Java dev%';
 	
 --16. Вывести зарплаты Python разработчиков
 	select roles.role_name, salary.monthly_salary 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	left join roles_employee on employees.id  = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like '%Python dev%';
 	
 --17. Вывести имена и зарплаты Junior Python разработчиков
 	select employees.employee_name, roles.role_name, salary.monthly_salary 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	left join roles_employee on employees.id  = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like 'Junior Python dev%';
 	
 --18. Вывести имена и зарплаты Middle JS разработчиков
 	select employees.employee_name, roles.role_name, salary.monthly_salary 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	left join roles_employee on employees.id  = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like 'Middle JavaScript dev%';
 	
 --19. Вывести имена и зарплаты Senior Java разработчиков
 	select employees.employee_name, roles.role_name, salary.monthly_salary 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	left join roles_employee on employees.id  = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like 'Senior Java dev%';
 	
 --20. Вывести зарплаты Junior QA инженеров
 	select employees.employee_name, roles.role_name, salary.monthly_salary 
 	from salary left join employee_salary on salary.id = employee_salary.salary_id 
 	left join employees on employee_salary.employee_id = employees.id 
 	left join roles_employee on employees.id  = roles_employee.employee_id 
 	left join roles on roles_employee.role_id = roles.id 
 	where roles.role_name like 'Junior % QA eng%';
 	
 --21. Вывести среднюю зарплату всех Junior специалистов
 	
 	
 --22. Вывести сумму зарплат JS разработчиков
 	
 	
 --23. Вывести минимальную ЗП QA инженеров
 	
 	
 --24. Вывести максимальную ЗП QA инженеров
 	
 	
 --25. Вывести количество QA инженеров
 	
 	
 --26. Вывести количество Middle специалистов.
 	
 	
 --27. Вывести количество разработчиков
 	
 	
 --28. Вывести фонд (сумму) зарплаты разработчиков.
 	
 	
 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 	
 	
 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 	
 	
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 	
 	
 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
	
	
	