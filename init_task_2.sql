select * from Homework;

select ls.*, hw.* from Lesson as ls
inner join Homework as hw on ls.homework_id = hw.id;

select * from Lesson as ls
inner join Homework as hw on ls.homework_id = hw.id
order by ls.updatedAt;


select * from Schedule sh
inner join Lesson lss on sh.lessons_id = lss.id;


select sch.name, count(les.id) from Schedule sch
inner join Lesson les on sch.lessons_id = les.id
group by sch.name