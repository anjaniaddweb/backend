-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2021 at 07:32 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anjani`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get` ()  begin select * from employee; end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get1` ()  begin select * from employee; end$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `daily_wages` (`wage` DECIMAL(10,2)) RETURNS DECIMAL(10,2) begin
declare daily_wage decimal(10,2);
set daily_wage=wage*8;
return(daily_wage);
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `average_age`
--

CREATE TABLE `average_age` (
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `c_id` int(11) NOT NULL,
  `c_fname` varchar(30) NOT NULL,
  `c_lname` varchar(30) NOT NULL,
  `c_city` varchar(20) NOT NULL,
  `c_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`c_id`, `c_fname`, `c_lname`, `c_city`, `c_phone`) VALUES
(1, 'anjani', 'patel', 'ahmedabad', '8488057116'),
(2, 'shriya', 'patel', 'rajkot', '9876543234'),
(3, 'kajal', 'panchal', 'gandhinagar', '9988776655'),
(4, 'nisha', 'rajuput', 'surat', '9808765432'),
(5, 'priyanka', 'chauhan', 'kutch', '8976543214'),
(6, 'manav', 'chabra', 'mumbai', '8987636263'),
(7, 'rashika', 'modi', 'vadodara', '9876655334'),
(8, 'richa', 'thakur', 'surat', '9888332345'),
(9, 'sanket', 'mehta', 'mumbai', '98383891193'),
(10, 'radhika', 'mehta', 'jamnagar', '9098765432');

-- --------------------------------------------------------

--
-- Table structure for table `docter`
--

CREATE TABLE `docter` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `d_city` varchar(50) NOT NULL,
  `d_email` varchar(50) NOT NULL,
  `d_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `docter`
--

INSERT INTO `docter` (`d_id`, `d_name`, `d_city`, `d_email`, `d_phone`) VALUES
(1, 'anjani', 'ahmedbad', 'anjani@gmail.com', '932893893'),
(2, 'radhika', 'mumbai', 'radhika@gmail.com', '98381383'),
(3, 'mansi', 'jaipur', 'mansi@gmail.com', '838921393'),
(4, 'rahul', 'surat', 'rahul@gmail.com', '9838239238'),
(5, 'miral', 'bhavnagar', 'miral@gmail.com', '283938098'),
(6, 'rakesh', 'kutch', 'rakesh@gmail.com', '381931831'),
(7, 'nishit', 'gandhinagar', 'nishit@gmail.com', '83823823832'),
(8, 'ranjan', 'surat', 'ranjan@gmail.com', '3818313099'),
(9, 'mahesh', 'jaipur', 'mahesh@gmail.com', '34782482384'),
(10, 'rishi', 'ahmedabad', 'rishi@gmail.com', '38838380');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_city` varchar(20) NOT NULL,
  `e_salary` varchar(50) NOT NULL,
  `e_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `e_name`, `e_city`, `e_salary`, `e_phone`) VALUES
(1, 'anjani', 'ahmedabad', '25000', '9932323333'),
(2, 'shriya', 'surat', '15000', '9988776655'),
(3, 'kajal', 'gandhinagar', '24000', '9870987890'),
(4, 'riya', 'rajkot', '30000', '9822345789'),
(5, 'avni', 'rajkot', '26000', '8388328282'),
(6, 'shreyanshi', 'surat', '30000', '9082322111'),
(7, 'devarsh', 'ahmedabad', '25500', '9293949595'),
(8, 'manish', 'vadodara', '33000', '9032457865'),
(9, 'jaydeep', 'kutch', '23000', '8989323244'),
(10, 'ranjeet', 'ahmedabad', '25000', '8908765432');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `f_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `f_email` varchar(50) NOT NULL,
  `f_pwd` varchar(50) NOT NULL,
  `f_dept` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`f_id`, `f_name`, `f_email`, `f_pwd`, `f_dept`) VALUES
(1, 'anjani', 'anjani@gmail.com', 'anjani123', 'information technology'),
(2, 'riya', 'riya@gmail.com', 'riya123', 'information technology'),
(3, 'kajal', 'kajal@gmail.com', 'kajal123', 'information technology'),
(4, 'nisha', 'nisha@gmail.com', 'nisha123', 'computer engineering'),
(5, 'rashi', 'rashi@gmail.com', 'rashi123', 'Chemical engineering'),
(6, 'raj', 'raj@gmail.com', 'raj123', 'Civil engineering'),
(7, 'poonam', 'poonam@gmail.com', 'poonam123', 'Mechanical engineering'),
(8, 'rishi', 'rishi@gmail.com', 'rishi123', 'Electrical/electronic engineering'),
(9, 'meet', 'meet@gmail.com', 'meet123', 'Aerospace/aeronautical engineering'),
(10, 'sanket', 'sanket@gmail.com', 'sanket123', 'information technology');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `birthDate`) VALUES
(1, 'John Doe', 'john.doe@example.com', NULL);

--
-- Triggers `members`
--
DELIMITER $$
CREATE TRIGGER `after_members_insert` AFTER INSERT ON `members` FOR EACH ROW BEGIN
IF NEW.birthDate IS NULL THEN
 INSERT INTO reminders(memberId, message)
VALUES(new.id,CONCAT('Hi ', NEW.name, ', please update your date of birth.'));
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `m_id` int(11) NOT NULL,
  `m_title` varchar(50) NOT NULL,
  `m_cast` varchar(100) NOT NULL,
  `m_review` text NOT NULL,
  `m_releasedate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`m_id`, `m_title`, `m_cast`, `m_review`, `m_releasedate`) VALUES
(1, 'yeh jawani hai deewani', 'ranbir kapoor, deepika padukone', 'awesome', '2013-06-21'),
(2, 'shershaah', 'Sidharth Malhotra, Kiara Advani', 'fabulous ', '2021-08-27'),
(3, 'Bell Bottom', 'Akshay kumar, vaani kapoor', 'nice', '2021-08-09'),
(4, 'Roohi', 'rajkumar rao, jhanvi kapoor', 'good', '2021-06-15'),
(5, 'Radhe', 'salman khan, disha patani', 'not good', '2020-08-18'),
(6, 'Shiddat', 'Sunny Kaushal, Radhika Madan, Mohit Raina, Diana Penty', 'one time watch', '2021-09-17'),
(7, 'Hum Do Hamare Do', 'Rajkummar Rao, Kriti Sanon, Paresh Rawal, Ratna Pathak Shah', 'waiting for movie', '2021-11-05'),
(8, 'Sooryavanshi', 'Akshay Kumar, Katrina Kaif', 'not released yet', '2021-11-19'),
(9, 'Bunty Aur Babli 2', 'Saif Ali Khan, Rani Mukerji, Siddhant Chaturvedi, Sharvari Wagh', 'not released yet', '2021-11-26'),
(10, 'Dhamaka', 'Kartik Aaryan, Mrunal Thakur, Amruta Subhash, Vikas Kumar, Vishwajeet Pradhan', 'nice', '2021-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(11) NOT NULL,
  `p_fname` varchar(50) NOT NULL,
  `p_lname` varchar(50) NOT NULL,
  `p_phone` varchar(50) NOT NULL,
  `p_city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_fname`, `p_lname`, `p_phone`, `p_city`) VALUES
(1, 'anjani', 'patel', '849828784', 'ahmedabad'),
(2, 'kajal', 'panchal', '7328382309', 'gandhinagar'),
(3, 'shriya', 'patel', '87382373', 'ahmedabad'),
(4, 'riya', 'patel', '72772839821', 'rajkot'),
(5, 'avni', 'patel', '748723728398', 'rajkot'),
(6, 'shreyanshi', 'patel', '873287878', 'jaipur'),
(7, 'jaydeep', 'mehta', '8737237328', 'rajkot'),
(8, 'manish', 'thakkar', '8382389389', 'jamnagar'),
(9, 'raj', 'kapoor', '38832828', 'kutch'),
(10, 'nishit', 'mehta', '8438383982', 'bhavnagar');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `age` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`age`, `name`) VALUES
(0, 'sid'),
(30, 'josh');

--
-- Triggers `people`
--
DELIMITER $$
CREATE TRIGGER `agecheck` BEFORE INSERT ON `people` FOR EACH ROW if new.age < 0
then set new.age=0;end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`name`, `age`) VALUES
('Matthew', 25);

--
-- Triggers `person`
--
DELIMITER $$
CREATE TRIGGER `person_ad` AFTER DELETE ON `person` FOR EACH ROW UPDATE average_age SET average = (SELECT AVG(person.age) FROM person)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `person_au` AFTER UPDATE ON `person` FOR EACH ROW UPDATE average_age SET average = (SELECT AVG(age) FROM person)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `person_bd` BEFORE DELETE ON `person` FOR EACH ROW INSERT INTO person_archive (name, age)
VALUES (OLD.name, OLD.age)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `person_bu` BEFORE UPDATE ON `person` FOR EACH ROW IF NEW.age < 18 THEN
SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Person must be older than 18.';
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `person_archive`
--

CREATE TABLE `person_archive` (
  `name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person_archive`
--

INSERT INTO `person_archive` (`name`, `age`) VALUES
('Mark', 27);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `p_prize` varchar(50) NOT NULL,
  `p_category` varchar(50) NOT NULL,
  `p_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_prize`, `p_category`, `p_quantity`) VALUES
(1, 'saree', '500', 'cloth', 2),
(2, 'tshirt', '1000', 'cloth', 4),
(3, 'medicine', '100', 'pharmacy', 2),
(4, 'kajal', '200', 'beauty', 2),
(5, 'lipstick', '500', 'beauty', 3),
(6, 'mobile', '20000', 'electronics', 1),
(7, 'watch', '500', 'accessories', 2),
(8, 'tv', '10000', 'electronics', 1),
(9, 'foundation', '500', 'beauty', 2),
(10, 'shoes', '1000', 'footwear', 2);

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(11) NOT NULL,
  `memberId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `memberId`, `message`) VALUES
(1, 1, 'Hi John Doe, please update your date of birth.');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `s_id` int(11) NOT NULL,
  `s_fname` varchar(50) NOT NULL,
  `s_lname` varchar(50) NOT NULL,
  `s_email` varchar(50) NOT NULL,
  `s_pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`s_id`, `s_fname`, `s_lname`, `s_email`, `s_pwd`) VALUES
(1, 'kinjal', 'patel', 'k@gmail.com', 'k123'),
(2, 'nensi', 'panchal', 'n@gmail.com', 'n123'),
(3, 'payal', 'parmar', 'p@gmail.com', 'p123'),
(4, 'rakhi', 'bhadoria', 'r@gmail.com', 'r123'),
(5, 'manish', 'thakkar', 'm@gmail.com', 'm123'),
(6, 'richa', 'mehta', 'r@gmail.com', 'r123'),
(7, 'tulsi', 'devi', 't@gmail.com', 't123'),
(8, 'pooja', 'patel', 'pooja@gmail.com', 'pooja123'),
(9, 'prachi', 'mehta', 'prachi@gmail.com', 'pra123'),
(10, 'rina', 'kapoor', 'rina@gmail.com', 'r1234');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(50) NOT NULL,
  `store_phone` varchar(50) NOT NULL,
  `store-email` varchar(50) NOT NULL,
  `store_city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_id`, `store_name`, `store_phone`, `store-email`, `store_city`) VALUES
(1, 'All Things More', '8736464647', 'all@gmail.com', 'ahmedabad'),
(2, 'Beautiful Charm', '83843848484', 'beautiful@gmail.com', 'gandhinagar'),
(3, 'Ambrosia Store', '4298439284', 'ambrosia@gmail.com', 'rajkot'),
(4, 'gurudev', '98321338109', 'guru@gmail.com', 'rajkot'),
(5, 'umiya', '328378813', 'umiya@gmail.com', 'jamnagar'),
(6, 'radhe', '3183813798', 'radhe@gmail.com', 'bhavnagar'),
(7, 'shree', '123331313', 'shree@gmail.com', 'kutch'),
(8, 'mahalakshmi', '3982389137', 'm@gmail.com', 'mumbai'),
(9, 'American Blues', '3723938931', 'american@gmail.com', 'ahmedabad'),
(10, 'Crunchy Cook', '738238723', 'chrunch@gmail.com', 'jaipur');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `s_gender` varchar(20) NOT NULL,
  `s_city` varchar(30) NOT NULL,
  `s_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `s_name`, `s_gender`, `s_city`, `s_phone`) VALUES
(2, 'kajal', 'female', 'gandhinagar', '9876543210'),
(4, 'riya', 'female', 'mumbai', '9988776655'),
(5, 'avni', 'female', 'mumbai', '9090987654'),
(6, 'shreyanshi', 'female', 'surat', '9870986644'),
(9, 'ranjeet', 'male', 'vadodara', '7766335789'),
(10, 'jaydeep', 'male', 'surat', '9876453322'),
(11, 'Ajeet', 'male', 'mumbai', '9999999999'),
(12, 'Ajeet', 'male', 'mumbai', '9999999999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `docter`
--
ALTER TABLE `docter`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`,`memberId`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `docter`
--
ALTER TABLE `docter`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
