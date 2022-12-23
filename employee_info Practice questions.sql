
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

Create database employee;
use employee;
CREATE TABLE `employee_info` (
  `id` int(11) NOT NULL,
  `name` varchar(265) NOT NULL,
  `email` varchar(265) NOT NULL,
  `department` varchar(265) NOT NULL,
  `salary` int(11) NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(265) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`id`, `name`, `email`, `department`, `salary`, `DOB`, `gender`) VALUES
(1, 'Karan Mehta', 'Karan@gmail.com', 'HR', 300000, '1998-05-10', 'M'),
(2, 'Rohit Sharma', 'Rohit@gmail.com', 'Admin', 75000, '1997-01-25', 'M'),
(3, 'Ankush Rajput', 'Ankush@gmail.com', 'Accounts', 60000, '1998-02-09', 'M'),
(4, 'Priyanshi Sharma', 'Priyanshi@gmail.com', 'HR', 500000, '1998-06-15', 'F'),
(5, 'Sanket Gupta', 'Sanket@gmail.com', 'Developer', 100000, '1997-05-07', 'M'),
(6, 'Shruti Kapoor', 'Shruti@gmailcom', 'Admin', 80000, '1995-11-26', 'F'),
(7, 'Rohit Sharma', 'Rohit@gmail.com', 'Admin', 75000, '1997-01-25', 'M'),
(8, 'Sanket Gupta', 'Sanket@gmail.com', 'Developer', 100000, '1997-05-07', 'M'),
(9, 'Geet Gour', 'Geet@gmail.com', 'Tester', 17000, '1998-07-03', 'F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Second highest salary
select * from employee_info;
select max(salary) from employee_info where salary<(select max(salary) from employee_info);
select * from (select salary from employee_info order by salary desc limit 2) a order by a.salary asc limit 1;

-- Duplicate rows in table

select *, count(id) from employee_info group by id having count(id)>1;

-- calculate even and odd records from table

select * from employee_info where mod(id,2)=0;
select * from employee_info where mod(id,2)=1;

-- find first and last record from table

(select * from employee_info order by id limit 1)
union 
(select * from employee_info order by id desc limit 1);

select * from employee_info where id=(select min(id) from employee_info)
union
select * from employee_info where id=(select max(id) from employee_info);

-- copying all rows using sql

create table ravi as select * from employee_info;
select * from ravi;
create table kiran as select * from employee_info where 3=4;
desc kiran;

-- to fetch last 3 records

select * from(select * from employee_info order by id desc limit 3) a order by a.id asc;

-- delete duplicate records from table

delete e1
from employee_info e1,employee_info e2
where e1.email=e2.email
and e1.id>e2.id;


-- query to fetch 50% of records

select * from employee_info where id<(select count(id)/2 from employee_info);

-- retrieve 2 minimum and 2 maximum salary data

(select * from employee_info order by salary desc limit 2)
union
(select * from employee_info order by salary asc limit 2);


