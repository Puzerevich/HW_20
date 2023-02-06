#create database HW_20; 
#use HW_20;
#----- Task #1 -----
create table Homework(
             id int primary key auto_increment,
             name varchar(128),
             description varchar(256)
);
insert into Homework (name, description) values('Lesson_1', 'Description lesson_1'),
                                               ('Lesson_2', 'Description lesson_2'),
                                               ('Lesson_3', 'Description lesson_3'),
                                               ('Lesson_4', 'Description lesson_4');

#----- Task #2 ----- 
create table Lesson(
             id int primary key auto_increment,
             homework_id int,
			 foreign key(homework_id) references Homework(id),    
             name varchar(128), 
             updatedAt date
);  
insert into Lesson (homework_id, name, updatedAt) values(1,'Lesson_1 info', '2023-01-01'),
					                (2,'Lesson_2 info', '2023-01-05'),
                                                        (3,'Lesson_3 info', '2023-01-10'),
                                                        (4,'Lesson_4 info', '2023-01-17');  

#----- Task #3 -----                                                         
create table Schedule(
			   id int primary key auto_increment,
               name varchar(256), 
               updatedAt date,
               lessons_id int,
               foreign key(lessons_id) references Lesson(id)
);
insert into Schedule(name, updatedAt, lessons_id) values('Schedule_1 info', '2023-01-01',1),
							('Schedule_2 info', '2023-01-05',2),
                                                        ('Schedule_3 info', '2023-01-10',3),
                                                        ('Schedule_4 info', '2023-01-17',4);  
              
#----- Task #3.1 -----                
CREATE TABLE Schedule_Lesson (
id INT PRIMARY KEY AUTO_INCREMENT,
lessonId INT,
scheduleId INT,
FOREIGN KEY (lessonId) REFERENCES Lesson(id),
FOREIGN KEY (scheduleId) REFERENCES Schedule(id)
);

insert into Schedule_Lesson(lessonId, scheduleId) values(1, 15),
					                (2, 16),
                                                        (3, 17),
                                                        (4, 18);  
                                                        
 
