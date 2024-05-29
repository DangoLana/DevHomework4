INSERT INTO worker (NAME, BIRTHDAY, LEVEL, SALARY) VALUES
('John Doe', '1985-01-15', 'Senior', 6000),
('Jane Smith', '1990-02-20', 'Middle', 4500),
('Alice Johnson', '1995-03-25', 'Junior', 2000),
('Robert Brown', '1980-04-30', 'Senior', 8000),
('Emily Davis', '2000-05-10', 'Trainee', 900),
('Michael Wilson', '1983-06-05', 'Middle', 5000),
('Sarah Miller', '1992-07-18', 'Junior', 1800),
('David Martinez', '1978-08-22', 'Senior', 10000),
('Laura Garcia', '1988-09-14', 'Middle', 4000),
('Daniel Lee', '1999-10-30', 'Trainee', 800);

INSERT INTO client (NAME) VALUES
('Client A'),
('Client B'),
('Client C'),
('Client D'),
('Client E');

INSERT INTO project (CLIENT_ID, START_DATE, FINISH_DATE) VALUES
(1, '2022-01-01', '2023-01-01'),
(2, '2022-02-01', '2022-12-01'),
(3, '2022-03-01', '2022-06-01'),
(4, '2022-04-01', '2023-04-01'),
(5, '2022-05-01', '2022-09-01'),
(1, '2022-06-01', '2022-08-01'),
(2, '2022-07-01', '2023-01-01'),
(3, '2022-08-01', '2022-10-01'),
(4, '2022-09-01', '2023-06-01'),
(5, '2022-10-01', '2022-12-01');

INSERT INTO project_worker (PROJECT_ID, WORKER_ID) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(4, 9),
(4, 10),
(5, 1),
(5, 2),
(6, 3),
(6, 4),
(7, 5),
(7, 6),
(8, 7),
(8, 8),
(9, 9),
(9, 10),
(10, 1);