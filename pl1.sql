/*drop procedure if exists pro1;
delimiter $
create procedure pro1()
BEGIN
	declare x int;
	declare y varchar(10) default 'Pune';
	set @z := 10;
	
	select x, y, @z;
end $
delimiter ;



drop procedure if exists pro2;
delimiter $
create procedure pro2(in x int)
BEGIN
	select ename, job, sal, deptno from emp where deptno=x;
end $
delimiter ;


drop procedure if exists pro3;
delimiter $
create procedure pro3(in _deptno int)
BEGIN
	declare flag bool;
	select distinct true into flag from emp where deptno=_deptno;
	
	if flag THEN
		select ename, job, sal, deptno from emp where deptno=_deptno;
	ELSE
		select "Department number not found.." as MessageBox;
	end if;
end $
delimiter ;

drop procedure if exists pro4;
delimiter $
create procedure pro4(in x int, in y varchar(10), in z varchar(10))
BEGIN 
	declare exit handler for 1062 select "deptno present" as MessageBox;
	
	insert into dept values(x, y, z);
	select "record inserted" R1;
end $
delimiter ;


drop procedure if exists pro5;
delimiter $
create procedure pro5(in x int, in y varchar(10), in z varchar(10))
BEGIN 
	if x > 55 THEN
		insert into dept values(x, y, z);
	ELSE
		SELECT "invalid number";
	end if;
end $
delimiter ;


drop procedure if exists pro6;
delimiter $
create procedure pro6(in x int, in y int)
BEGIN 
	select ename, job, sal, deptno from emp limit x, y;
end $
delimiter ;



drop procedure if exists pro7;
delimiter $
create procedure pro7()
BEGIN 
	declare x int;
	
	select count(*) - 2 into x from emp;
	
	select ename, job, sal, deptno from emp limit x, 2;
end $
delimiter ;


drop procedure if exists pro8;
delimiter $
create procedure pro8(in x int)
BEGIN 
	declare ex condition for sqlstate '45000';
	
	if x <=1000 THEN
		signal ex set message_text = "Invalid Balance";
	ELSE
		select "OK";
	end if;
	select "Out of If block";
end $
delimiter ;



drop procedure if exists pro9;
delimiter $
create procedure pro9()
BEGIN 
	declare cnt int default 1;
	lbl:loop
		select cnt;
		set cnt := cnt+1;
		if cnt > 10 THEN
			leave lbl;
		end if;
	end loop lbl;
end $
delimiter ;



drop procedure if exists pro10;
delimiter $
create procedure pro10(x varchar(10))
BEGIN 
	declare l int;
	declare cnt int default 1;
	
	set l = length(x);
	
	lbl:loop
		if cnt > l THEN
			leave lbl;
		end if;
		select substr(x, cnt, 1), ascii(substr(x, cnt, 1));
		set cnt := cnt +1;
	end loop lbl;
	

end $
delimiter ;



drop procedure if exists pro11;
delimiter $
create procedure pro11()
BEGIN 
	prepare x from "select ename, job, sal, deptno from emp";
	execute x;
	
end $
delimiter ;



drop procedure if exists pro13;
delimiter $
create procedure pro13(in dno int)
BEGIN 
	declare flag bool;
	select distinct true into flag from emp where deptno = dno;
	if flag THEN
		set @x := dno;
		prepare statement from "select ename, job, sal, deptno from emp where deptno = ?";
		execute statement using @x;
	ELSE
		select "Not found" R1;
	end if;
end $
delimiter ;
*/

drop procedure if exists pro14;
delimiter $
create procedure pro14(in cName varchar(1000), in tName varchar(64))
BEGIN 
	SET @query := concat("select ", cName, " from ", tName);
	prepare statement from @query;
	execute statement;
end $
delimiter ;
