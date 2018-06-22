--get all the todos
select * from todos;

--get one todo by id
select * from todos
where id = 2;

--get all pending todos
select * from todos
where isDone = false;

--get all finished todos
select * from todos
where isDone = true;

--search by title, should have 1 result
select * from todos
where title ilike '%Gollum%';


--search by title, should have 0 results
select * from todos
where title ilike '%zzzz%';

--"uncheck" a todo
update todos
set isDone= false
where id = 3;

--"check" a todo
update todos
set isDone = true
where id = 2;

--change title
update todos
set title='Battle Orcs'
where id = 2;

--delete by id
delete from todos
where id = 4;

--delete all finished todos
delete from todos
where isDone = true; 