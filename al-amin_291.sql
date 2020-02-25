-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2019 at 06:30 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `al-amin_291`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_pin` varchar(100) NOT NULL,
  `admin_image` varchar(1000) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `admin_password`, `admin_pin`, `admin_image`, `status`) VALUES
(1, 'MD AL-AMIN', 'alu@gmail.com', '123456', 'alamin123', '../gallery/admin/56.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `member_type` varchar(100) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `member_pin` varchar(100) NOT NULL,
  `member_email` varchar(100) NOT NULL,
  `member_username` varchar(100) NOT NULL,
  `member_password` varchar(100) NOT NULL,
  `member_image` varchar(1000) NOT NULL,
  `status` varchar(11) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `member_name`, `member_type`, `faculty_name`, `member_pin`, `member_email`, `member_username`, `member_password`, `member_image`, `status`) VALUES
(3, 'akash', 'teacher', 'science', '123', 'akash@gmail.com', 'akash', '123456', '../gallery/faculty/3.jpeg', 'active'),
(5, 'monoyar saha', 'teacher', 'science', '345678', 'monoyar@gmail.com', 'monoyar', '987654', '', 'active'),
(6, 'akber', 'Teacher', 'Commerce', '4321', 'akber@gmail.com', 'akber', '987654', '../gallery/faculty/alamin.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_auth_info`
--

CREATE TABLE `faculty_auth_info` (
  `id` int(11) NOT NULL,
  `member_name` varchar(100) NOT NULL,
  `member_type` varchar(100) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `member_pin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_auth_info`
--

INSERT INTO `faculty_auth_info` (`id`, `member_name`, `member_type`, `faculty_name`, `member_pin`) VALUES
(1, 'rabindra', 'Teacher', 'Arts', '431567'),
(6, 'akber', 'teacher', 'commerce', '4321'),
(7, 'tanoy', 'Teacher', 'Science', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `post_subject` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `post_description` varchar(10000) CHARACTER SET utf8 NOT NULL,
  `post_link` varchar(1000) DEFAULT NULL,
  `post_file` varchar(1000) DEFAULT NULL,
  `posted_by` varchar(11) CHARACTER SET utf8 NOT NULL,
  `poster_name` varchar(100) NOT NULL,
  `poster_pin` varchar(11) NOT NULL,
  `post_date` varchar(11) NOT NULL,
  `post_time` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_subject`, `post_description`, `post_link`, `post_file`, `posted_by`, `poster_name`, `poster_pin`, `post_date`, `post_time`) VALUES
(8, '1st semister result', 'dear student first semister result has been published', '', '../uploads/admin/7.docx', 'ADMIN', 'MD AL-AMIN', 'alamin123', '03-08-2019', '03:47:36am'),
(9, 'dfghjkdfghj', 'sdfghjksdcvbnmfghj', '', '../uploads/student/7.docx', 'STUDENT', 'kabir', '123456', '03-08-2019', '04:10:46am'),
(10, '1st semister result', '../uploads/faculty/', 'https://www.teamviewer.com/es-mx/comprar-ahora/?pid=taf.americas-cb-commercial-use-generic-aug-es.us-2019-cb-july-es-suspected&context=f4a9dbf3-b9af-4caf-b530-eb556fe7fe4e&gaclientid=1236950612.1565028405&gaclientidtime=1565028405.794&cid=1333166056', '../uploads/student/', 'STUDENT', 'kabir', '123456', '06-08-2019', '12:31:32am'),
(12, '2nd semister result', 'Encuentre la licencia adecuada para sus necesidades. Eche un vistazo a los complementos disponibles, como la asistencia para dispositivos móviles.', 'https://www.teamviewer.com/es-mx/comprar-ahora/?pid=taf.americas-cb-commercial-use-generic-aug-es.us-2019-cb-july-es-suspected&context=f4a9dbf3-b9af-4caf-b530-eb556fe7fe4e&gaclientid=1236950612.1565028405&gaclientidtime=1565028405.794&cid=1333166056', '../uploads/student/phpstorm.key', 'STUDENT', 'kabir', '123456', '06-08-2019', '12:36:52am'),
(14, '1st semister result', 'Notice the WHERE clause in the DELETE syntax: The WHERE clause specifies which record or records that should be deleted. If you omit the WHERE clause, all records will be deleted!', 'https://www.teamviewer.com/es-mx/comprar-ahora/?pid=taf.americas-cb-commercial-use-generic-aug-es.us-2019-cb-july-es-suspected&context=f4a9dbf3-b9af-4caf-b530-eb556fe7fe4e&gaclientid=1236950612.1565028405&gaclientidtime=1565028405.794&cid=1333166056', '../uploads/admin/', 'ADMIN', 'MD AL-AMIN', 'alamin123', '07-08-2019', '12:29:50am'),
(15, 'quiz!!', 'tomorrow at 9:00 pm', 'https://www.teamviewer.com/es-mx/comprar-ahora/?pid=taf.americas-cb-commercial-use-generic-aug-es.us-2019-cb-july-es-suspected&context=f4a9dbf3-b9af-4caf-b530-eb556fe7fe4e&gaclientid=1236950612.1565028405&gaclientidtime=1565028405.794&cid=1333166056', '../uploads/student/', 'STUDENT', 'abdullah farid', '234567', '07-08-2019', '12:55:23am');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_class` varchar(11) NOT NULL,
  `student_roll` int(11) NOT NULL,
  `student_pin` varchar(11) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `student_username` varchar(100) NOT NULL,
  `student_password` varchar(100) NOT NULL,
  `student_image` varchar(100) NOT NULL,
  `status` varchar(11) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `student_class`, `student_roll`, `student_pin`, `student_email`, `student_username`, `student_password`, `student_image`, `status`) VALUES
(3, 'kabir', 'Seven', 45, '123456', 'kabir@gmail.com', 'kabir', '123456', '../gallery/56.jpg', 'active'),
(4, 'monir hasan', 'eight', 45, '123457', 'monir@gmail.com', 'monir', '4567890', '', 'active'),
(5, 'abdullah farid', 'ten', 87, '234567', 'abdullah@gmail.com', 'abdullah', '987654', '../gallery/a2e4de4dd396f8bc1a3bc8a205faffb2-5c3ac7e098e0f.jpg', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `student_auth_info`
--

CREATE TABLE `student_auth_info` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_class` varchar(11) NOT NULL,
  `student_roll` int(11) NOT NULL,
  `student_pin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_auth_info`
--

INSERT INTO `student_auth_info` (`id`, `student_name`, `student_class`, `student_roll`, `student_pin`) VALUES
(5, 'abdullah farid', 'ten', 87, '234567'),
(23, 'kabir ', 'Seven', 45, '123456'),
(24, 'rubel', 'Ten', 51, '956467');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_auth_info`
--
ALTER TABLE `faculty_auth_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_pin` (`member_pin`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_username` (`student_username`),
  ADD UNIQUE KEY `student_pin` (`student_pin`);

--
-- Indexes for table `student_auth_info`
--
ALTER TABLE `student_auth_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_pin` (`student_pin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty_auth_info`
--
ALTER TABLE `faculty_auth_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_auth_info`
--
ALTER TABLE `student_auth_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
