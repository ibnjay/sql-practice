

### Scalar subquery 

#### Scalar subquery in join and from clause:
```
Select * from employee where salary > (select avg(salary) from employee) ;
```


#### subquery in the join clause (treat it as table)
```
Select * from employee e 
join ( select avg(salary) sal from employeee) avg_sal
	on e.salary > avg_sal.sal ;
```

### multiple row subquery
   	One col multiple row.
	multiple  col multiple row.

```
Select * from employee 
Where (dept_name, salary) in (
							select dept_name, max(salary)
							from employee
							group by dept_name) ;
```


something something

```
Select * 
from department
where dept_name not in (select distinct dept_name from employee) ; 
```


##### Subquery can be used in “select”, “from”, “where”, and “having” clause.

##### Subquery in select has be a scaler subquery.

```
select store_name, sum(quantity) 
from sales
group by store_name
having sum (quantity) > (select avg(quantity) from sales) ;
```