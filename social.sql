-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2020 at 10:03 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'comment', 'darshan_naik', 'darshan_naik', '2019-12-10 21:29:37', 'no', 40),
(2, 'something\r\n', 'darshan_naik', 'darshan_naik', '2019-12-10 21:47:22', 'no', 40),
(3, 'kjgg67r8w5iu', 'chethan_hb', 'chethan_hb', '2019-12-19 14:12:42', 'no', 65),
(4, 'what is this man!', 'darshan_naik', 'karthik_mathers', '2019-12-19 23:36:22', 'no', 41),
(5, 'hey', 'sharan_bv', 'sharan_bv', '2019-12-20 13:19:26', 'no', 80),
(6, 'hii darshan naik', 'sharan_bv', 'darshan_naik', '2019-12-20 13:21:21', 'no', 70),
(7, 'nice video', 'karthik_mathers', 'sharan_bv', '2019-12-20 13:40:14', 'no', 82),
(8, 'comment 1', 'prashant_raj', 'prashant_raj', '2019-12-20 22:00:20', 'no', 87),
(9, 'comment 2', 'prashant_raj', 'prashant_raj', '2019-12-20 22:00:53', 'no', 87),
(10, 'helo\r\n', 'lekhak_mv', 'lekhak_mv', '2019-12-21 13:19:19', 'no', 93);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(14, 'darshan_gn', 'chethan_hb'),
(15, 'darshan_gn', 'darshan_naik'),
(18, 'darshan_gn', 'karthik_mahesh'),
(20, 'karthik_mathers', 'karthik_sathish'),
(21, 'darshan_gn', 'karthik_sathish'),
(25, 'karthik_mahesh', 'sharan_bv'),
(26, 'darshan_gn', 'karthik_mathers');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(12, 'darshan_naik', 40),
(13, 'darshan_naik', 39),
(16, 'darshan_naik', 41),
(17, 'darshan_naik', 44),
(19, 'darshan_gn', 50),
(20, 'darshan_naik', 57),
(21, 'darshan_naik', 54),
(23, 'karthik_mathers', 41),
(25, 'darshan_naik', 66),
(27, 'karthik_sathish', 68),
(28, 'sharan_bv', 80),
(29, 'sharan_bv', 70),
(30, 'karthik_mathers', 82),
(31, 'prashant_raj', 87),
(32, 'lekhak_mv', 91),
(33, 'lekhak_mv', 93),
(34, 'darshan_naik', 93),
(35, 'dhanush_patel', 95);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'karthik_mathers', 'darshan_naik', 'hello', '2019-12-12 02:42:51', 'yes', 'yes', 'no'),
(4, 'sharan_bv', 'darshan_naik', 'hello sharan', '2019-12-12 02:58:32', 'yes', 'yes', 'no'),
(5, 'darshan_naik', 'darshan_naik', 'hello\r\n', '2019-12-12 22:49:58', 'yes', 'yes', 'no'),
(6, 'darshan_naik', 'karthik_mathers', 'hi Darshan', '2019-12-12 22:54:01', 'yes', 'yes', 'no'),
(7, 'darshan_naik', 'nithin_mp', 'hello from nithin', '2019-12-13 19:23:39', 'yes', 'yes', 'no'),
(8, 'darshan_naik', 'darshan_gn', 'hello from darshan__gn', '2019-12-13 19:31:24', 'yes', 'yes', 'no'),
(9, 'darshan_naik', 'karthik_mathers', 'notification badge test', '2019-12-13 19:50:54', 'yes', 'yes', 'no'),
(12, 'karthik_mathers', 'darshan_naik', 'notification badge passed', '2019-12-13 19:59:13', 'yes', 'yes', 'no'),
(15, 'karthik_mathers', 'darshan_naik', 'helo\r\n', '2019-12-14 13:49:46', 'yes', 'yes', 'no'),
(16, 'darshan_naik', 'karthik_mathers', 'hi', '2019-12-19 15:59:46', 'yes', 'yes', 'no'),
(17, 'karthik_mathers', 'karthik_mahesh', 'Hi karthik mahesh', '2019-12-19 23:47:57', 'yes', 'yes', 'no'),
(18, 'karthik_sathish', 'karthik_sathish', 'hi karthik sathish', '2019-12-20 00:05:33', 'yes', 'yes', 'no'),
(19, 'karthik_mathers', 'darshan_naik', 'how are you man\r\n', '2019-12-20 00:15:05', 'yes', 'yes', 'no'),
(20, 'darshan_naik', 'darshan_naik', 'hi', '2019-12-20 00:15:57', 'yes', 'yes', 'no'),
(21, 'karthik_mahesh', 'darshan_naik', 'hi karthik m', '2019-12-20 00:17:33', 'yes', 'yes', 'no'),
(22, 'darshan_naik', 'karthik_mahesh', 'hi darshan naik', '2019-12-20 00:19:09', 'yes', 'yes', 'no'),
(23, 'karthik_sathish', 'karthik_mahesh', 'hi karthik sathish, this is karthik mahesh', '2019-12-20 00:19:54', 'yes', 'yes', 'no'),
(24, 'karthik_mahesh', 'karthik_sathish', 'hi karthik m, this is karthik sathish', '2019-12-20 00:31:35', 'no', 'no', 'no'),
(25, 'karthik_mahesh', 'karthik_mathers', 'hello', '2019-12-20 12:35:17', 'no', 'no', 'no'),
(26, 'darshan_naik', 'sharan_bv', 'hello darshan', '2019-12-20 13:22:47', 'no', 'yes', 'no'),
(27, 'darshan_naik', 'lekhak_mv', 'hi from lekhak', '2019-12-21 10:19:50', 'yes', 'yes', 'no'),
(28, 'darshan_naik', 'lekhak_mv', 'helo', '2019-12-21 13:21:11', 'no', 'yes', 'no'),
(29, 'dhanush_patel', 'dhanush_patel', 'hi\r\n', '2019-12-31 09:42:38', 'yes', 'yes', 'no'),
(30, 'darshan_naik', 'dhanush_patel', 'hi', '2019-12-31 09:42:59', 'yes', 'yes', 'no'),
(31, 'dhanush_patel', 'darshan_naik', 'hello\r\n', '2019-12-31 10:24:34', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'hello karthika\r\n', 'darshan_naik', 'none', '2019-11-29 09:20:54', 'no', 'no', 0, ''),
(2, 'hello', 'darshan_naik', 'none', '2019-11-29 09:23:11', 'no', 'no', 0, ''),
(3, 'hello', 'darshan_naik', 'none', '2019-11-29 09:24:43', 'no', 'no', 0, ''),
(26, 'testing post\r\n', 'darshan_naik', 'none', '2019-11-30 22:49:35', 'no', 'no', 0, ''),
(27, 'test 1\r\n', 'darshan_naik', 'none', '2019-11-30 22:49:41', 'no', 'no', 0, ''),
(28, 'post 1', 'darshan_naik', 'none', '2019-11-30 22:49:46', 'no', 'no', 0, ''),
(29, 'post 2\r\n', 'darshan_naik', 'none', '2019-11-30 22:49:51', 'no', 'no', 0, ''),
(30, 'post 3', 'darshan_naik', 'none', '2019-11-30 22:50:03', 'no', 'no', 0, ''),
(31, 'Post 4', 'darshan_naik', 'none', '2019-11-30 22:50:17', 'no', 'no', 0, ''),
(32, 'Post 5', 'darshan_naik', 'none', '2019-11-30 22:50:21', 'no', 'no', 0, ''),
(33, 'post 6', 'darshan_naik', 'none', '2019-11-30 22:50:33', 'no', 'no', 0, ''),
(34, 'Post7\r\n', 'darshan_naik', 'none', '2019-11-30 22:50:44', 'no', 'no', 0, ''),
(35, 'Post 8', 'darshan_naik', 'none', '2019-11-30 22:50:58', 'no', 'no', 0, ''),
(36, 'Post 8', 'darshan_naik', 'none', '2019-11-30 22:57:26', 'no', 'no', 0, ''),
(37, 'post 9\r\n', 'darshan_naik', 'none', '2019-12-10 20:48:08', 'no', 'no', 0, ''),
(38, 'post 10\r\n', 'darshan_naik', 'none', '2019-12-10 20:48:19', 'no', 'no', 0, ''),
(41, 'Post 11 by Karthika', 'karthik_mathers', 'none', '2019-12-10 23:43:49', 'no', 'no', 2, ''),
(43, 'post 13', 'darshan_naik', 'none', '2019-12-11 22:06:10', 'no', 'no', 0, ''),
(65, 'iugyuglj', 'chethan_hb', 'none', '2019-12-19 14:12:27', 'no', 'no', 0, ''),
(66, 'karthika', 'chethan_hb', 'none', '2019-12-19 14:14:14', 'no', 'no', 1, 'assets/images/posts/5dfb385e150c2karthik.jpeg'),
(68, 'hi', 'karthik_sathish', 'none', '2019-12-20 00:06:06', 'no', 'no', 1, ''),
(69, 'hi', 'karthik_sathish', 'none', '2019-12-20 00:10:40', 'no', 'yes', 0, ''),
(70, 'namaskara bengaluru', 'darshan_naik', 'none', '2019-12-20 00:13:10', 'no', 'no', 1, ''),
(73, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/YGBE6cHDG6A\'></iframe><br>', 'karthik_mahesh', 'none', '2019-12-20 00:24:15', 'no', 'no', 0, ''),
(74, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/hhIq_rSEyKI\'></iframe><br>', 'karthik_mahesh', 'none', '2019-12-20 00:28:28', 'no', 'no', 0, ''),
(75, 'hello', 'karthik_mahesh', 'none', '2019-12-20 00:28:40', 'no', 'no', 0, ''),
(77, 'hi<br /> ', 'darshan_gn', 'none', '2019-12-20 12:27:11', 'no', 'no', 0, ''),
(79, 'welcome', 'karthik_mathers', 'none', '2019-12-20 12:34:25', 'no', 'no', 0, ''),
(80, 'hello', 'sharan_bv', 'none', '2019-12-20 13:19:05', 'no', 'no', 1, ''),
(87, 'nandi hills', 'prashant_raj', 'none', '2019-12-20 21:53:15', 'no', 'no', 1, 'assets/images/posts/5dfcf5734d6d0Prashant .jpg'),
(88, 'post 15', 'kaushik_kr', 'none', '2019-12-20 22:13:57', 'no', 'no', 0, ''),
(89, 'post', 'lekhak_mv', 'none', '2019-12-21 10:18:20', 'no', 'no', 0, ''),
(90, 'circular', 'darshan_naik', 'none', '2019-12-21 10:21:32', 'no', 'no', 0, 'assets/images/posts/5dfda4d4a69d4group.jpg'),
(91, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/4DyShMh7Jqs\'></iframe><br>', 'lekhak_mv', 'none', '2019-12-21 10:24:50', 'no', 'no', 1, ''),
(92, 'this is image post', 'lekhak_mv', 'none', '2019-12-21 13:18:49', 'no', 'no', 0, 'assets/images/posts/5dfdce613a5dcgroup.jpg'),
(93, 'hey', 'lekhak_mv', 'none', '2019-12-21 13:19:07', 'no', 'no', 2, ''),
(94, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/nDre9I5ovLU\'></iframe><br>', 'darshan_naik', 'none', '2019-12-31 09:49:29', 'no', 'no', 0, ''),
(95, 'post from dhanush patel', 'dhanush_patel', 'none', '2019-12-31 09:51:20', 'no', 'no', 1, 'assets/images/posts/5e0accc090fd4srk.jpg'),
(96, 'image', 'dhanush_patel', 'none', '2019-12-31 10:26:03', 'no', 'no', 0, 'assets/images/posts/5e0ad4e3007d11.jpg'),
(97, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/EQdVXPO6vg8\'></iframe><br>', 'dhanush_patel', 'none', '2019-12-31 10:26:33', 'no', 'no', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(250) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(4, 'Karthik', 'Mathers', 'karthik_mathers', 'Karthikam.mca17@rvce.edu.in', '51f72172bd0c4b0a03afabcd51623ceb', '2019-09-25', 'assets/images/profile_pics/karthik_mathers99218d720b3fc3195d50811fa7d7482bn.jpeg', 5, 2, 'no', ',chethan_hb,karthik_mathers,karthik_mathers,darshan_naik,sharan_bv,karthik_mahesh,'),
(5, 'Nithin', 'Mp', 'nithin_mp', 'Nithinmp.mca17@rvce.edu.in', '51f72172bd0c4b0a03afabcd51623ceb', '2019-09-25', 'assets/images/profile_pics/defaults/head_deep_blue.png', 1, 0, 'yes', ',darshan_naik,'),
(6, 'Darshan', 'Naik', 'darshan_naik', 'Darshans.mca17@rvce.edu.in', '51f72172bd0c4b0a03afabcd51623ceb', '2019-09-28', 'assets/images/profile_pics/darshan_naik0191269bdcc872fa7058de51b185d0e2n.jpeg', 61, 6, 'no', ',chethan_hb,sharan_bv,nithin_mp,chethan_hb,chethan_hb,chethan_hb,karthik_mahesh,karthik_sathish,karthik_mathers,kaushik_kr,lekhak_mv,dhanush_patel,'),
(12, 'Sharan', 'Bv', 'sharan_bv', 'Sharanb.mca17@rvce.edu.in', '51f72172bd0c4b0a03afabcd51623ceb', '2019-12-11', 'assets/images/profile_pics/sharan_bvfded55bd94b9173d3b261e41d0d48f36n.jpeg', 5, 2, 'no', ',darshan_naik,karthik_mathers,'),
(13, 'Darshan', 'Gn', 'darshan_gn', 'Darshang.mca17@rvce.edu.in', '51f72172bd0c4b0a03afabcd51623ceb', '2019-12-13', 'assets/images/profile_pics/darshan_gnaadf96b9aea2d5d868c7d46256f40132n.jpeg', 2, 1, 'no', ','),
(14, 'Chethan', 'Hb', 'chethan_hb', 'Chethanhb.mca17@rvce.edu.in', '51f72172bd0c4b0a03afabcd51623ceb', '2019-12-19', 'assets/images/profile_pics/chethan_hb1488fcb5998b9663ece891340bc14d91n.jpeg', 2, 1, 'no', ',darshan_naik,darshan_naik,darshan_naik,'),
(15, 'Karthik', 'Mahesh', 'karthik_mahesh', 'Karthikm.mca17@rvce.edu.in', '72791c276282ed43e22ecf0b5716bb9a', '2019-12-19', 'assets/images/profile_pics/karthik_mahesh315ffad33f874731109effd28ffdebadn.jpeg', 5, 0, 'no', ',karthik_sathish,darshan_naik,karthik_mathers,'),
(16, 'Karthik', 'Sathish', 'karthik_sathish', 'Karthiksathish.mca17@rvce.edu.in', '29328cb31ec412c5688d464573e4e4a8', '2019-12-19', 'assets/images/profile_pics/karthik_sathish62fe113d949914327a05a1bbf49c66f5n.jpeg', 2, 1, 'no', ',karthik_mahesh,darshan_naik,'),
(17, 'Prashant', 'Raj', 'prashant_raj', 'Prashantp.mca17@rvce.edu.in', '51f72172bd0c4b0a03afabcd51623ceb', '2019-12-20', 'assets/images/profile_pics/prashant_raj327ffbdfc947efd4260a44b714e8ea14n.jpeg', 4, 1, 'no', ','),
(18, 'Kaushik', 'Kr', 'kaushik_kr', 'Kaushikk.mca17@rvce.edu.iin', '51f72172bd0c4b0a03afabcd51623ceb', '2019-12-20', 'assets/images/profile_pics/kaushik_kre0b2849e5a6fcfe2cff4dc54e8107e54n.jpeg', 1, 0, 'no', ',darshan_naik,'),
(19, 'Abhishek', 'Sa', 'abhishek_sa', 'Abhisheks.mca17@rvce.edu.in', '51f72172bd0c4b0a03afabcd51623ceb', '2019-12-20', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(20, 'Lekhak', 'Mv', 'lekhak_mv', 'Lekhakm.mca17@rvce.edu.iin', '51f72172bd0c4b0a03afabcd51623ceb', '2019-12-20', 'assets/images/profile_pics/lekhak_mvec70cf2186bb1468381a4254fd8a7127n.jpeg', 4, 3, 'no', ',darshan_naik,'),
(21, 'Dhanush', 'Patel', 'dhanush_patel', 'Dhanushpatel.mca17@rvce.edu.in', '51f72172bd0c4b0a03afabcd51623ceb', '2019-12-31', 'assets/images/profile_pics/dhanush_patel8abf5da22fcc616606dec8808c1e1b16n.jpeg', 3, 1, 'no', ',darshan_naik,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
