-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 10:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE `acl` (
  `ai` int(10) UNSIGNED NOT NULL,
  `action_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `action_id` int(10) UNSIGNED NOT NULL,
  `action_code` varchar(100) NOT NULL COMMENT 'No periods allowed!',
  `action_desc` varchar(100) NOT NULL COMMENT 'Human readable description',
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_categories`
--

CREATE TABLE `acl_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_code` varchar(100) NOT NULL COMMENT 'No periods allowed!',
  `category_desc` varchar(100) NOT NULL COMMENT 'Human readable description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_sessions`
--

CREATE TABLE `auth_sessions` (
  `id` varchar(128) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` varchar(45) NOT NULL,
  `user_agent` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_sessions`
--

INSERT INTO `auth_sessions` (`id`, `user_id`, `login_time`, `modified_at`, `ip_address`, `user_agent`) VALUES
('um8tb9g0selsispg75s0ske15s39mi2m', 2147484848, '2019-02-12 13:09:13', '2019-02-12 12:09:13', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('djorhvlpe96ggdesc56t3ohm7efkl64p', 2147484848, '2019-02-12 13:10:43', '2019-02-12 12:10:43', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('vpqcnvs2nefvk02amlinv4dpu8gvnf6o', 2147484848, '2019-02-12 13:12:51', '2019-02-12 12:12:51', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('f3od9ao7fptri25dlb2ohuu31tkbhqkk', 2147484848, '2019-02-12 13:15:36', '2019-02-12 12:15:36', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('56jaeibitg182al5dofv7fum2ul5hb9o', 2147484848, '2019-02-12 13:16:07', '2019-02-12 12:16:07', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('733dnm6j1mf4llq35oo1ouu65vkrna8d', 2147484848, '2019-02-12 13:16:33', '2019-02-12 12:16:34', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('ohv6v6t6eamu71pqnhr0hn49s3hrgu51', 2147484848, '2019-02-12 13:17:44', '2019-02-12 12:17:44', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('hcqurcdg103kdd18med9ojjaudnuhcfc', 2147484848, '2019-02-12 13:22:20', '2019-02-12 12:22:20', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('u5qj6lrmbsq3alkk2jot3adoq8350b3u', 2147484848, '2019-02-12 13:25:37', '2019-02-12 12:25:37', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('nirfqv4lhat0eg79b5rcovi713tegvub', 2147484848, '2019-02-12 13:34:36', '2019-02-12 12:34:36', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('5qpd40htnr5jg3rjhpasfoul7ue4071u', 2147484848, '2019-02-12 13:35:44', '2019-02-12 12:35:44', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('caplinq187fj0gita1c2jfsu63ufs38j', 2147484848, '2019-02-12 13:37:22', '2019-02-12 12:37:22', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('675s9j3a4dtvtpjqjhdinp3as9mfagdh', 2147484848, '2019-02-12 13:37:43', '2019-02-12 12:37:43', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('4qn05ee8jmgugu2u1e6n1al8k19j03gi', 2147484848, '2019-02-12 13:46:29', '2019-02-12 12:46:29', '::1', 'Chrome 71.0.3578.98 on Windows 7'),
('ej81c1hd77r2dqq6v3dj6kpr5o00sda4', 2147484848, '2019-02-12 16:25:09', '2019-02-12 15:34:04', '::1', 'Chrome 71.0.3578.98 on Windows 7');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(10) UNSIGNED NOT NULL,
  `blog_title` text NOT NULL,
  `blog_desc` text NOT NULL,
  `blog_image` varchar(50) DEFAULT NULL,
  `blog_created_at` datetime DEFAULT NULL,
  `blog_modified_at` datetime DEFAULT NULL,
  `blog_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `blog_created_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_title`, `blog_desc`, `blog_image`, `blog_created_at`, `blog_modified_at`, `blog_deleted`, `blog_created_by`) VALUES
(1, 'Tittle goes here', 'Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla aspernatur.', 'image1.jpg', '2021-12-28 21:01:42', NULL, 0, NULL),
(2, 'Tittle goes here', 'Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla aspernatur.', 'image2.jpg', '2021-12-28 21:01:42', NULL, 0, NULL),
(3, 'Mfao huu duuu', 'kdh dfsogf dvjdsgosdhsdl djvbdsjl tuu xx', 'b6902f3f60a6791c0862cabeffeb6eb9.jpg', NULL, NULL, 0, NULL),
(5, 'ya mwisho sasa dksafbsaf lfbsalfbsafas skv skdvbsdkvjbsd vsdkvbsdkvbsdkb vjdsbdl', 'khsbdkasb skfbsakfbasfb skabfsakbfasbf skabfsakbfsaf fksabfaksfbaskbfa sksafas fskvbfsakvs skfvsak', 'db204442621e57816afb3dfbbc33a419.jpg', '2021-12-28 22:38:45', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('hq9ceu8t3jnjbppi7f77ej1587fvn9sh', '::1', 1640727909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732373636343b),
('v5lch1tr4goqgr85j8m40357qte9c2j4', '::1', 1640727664, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732373636343b),
('9qbtgvbbdmau3b81t2q01qab6lstk2ov', '::1', 1640720174, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732303137343b),
('2eh4ntublltfio1vvkgrrc0fefiror07', '::1', 1640720518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732303531383b),
('bu4smujeu7ku46qnoogl2h2so6eseujv', '::1', 1640720865, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732303836353b),
('e2vvt480hm39oom593fup2q09q7fe7fm', '::1', 1640723600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732333630303b),
('bqi1rchcbr07qhl6dr69qogh23g6rlcv', '::1', 1640723909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732333930393b),
('rdat429l0la59cp9nophb87o9gcoi2e0', '::1', 1640724265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732343236353b),
('e827ajgt5e5a6b8bdrk3qd58fqjvmqbh', '::1', 1640724921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732343932313b),
('kv035hk7ut25ift0kt7p88q3vk8415no', '::1', 1640725368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732353336383b),
('e12e1anljbauuoi4kej5v9egcg4sr55u', '::1', 1640726130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732363133303b),
('1aboje19sikim8o08mbobomebr7vjhpm', '::1', 1640726552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732363535323b),
('oamcej4dvtes7055oagrs290ab1re9ji', '::1', 1640727030, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732373033303b),
('9e06b63fvbolj03rog7v50ekmvvqgc7o', '::1', 1640727354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634303732373335343b);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(10) NOT NULL,
  `course_key` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(60) NOT NULL,
  `course_duration` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_key`, `course_name`, `course_duration`) VALUES
(1, 1446224187, 'vvvvvvvvv', 'ttttt'),
(2, 2147484848, 'adasdasd', 'dfgd');

-- --------------------------------------------------------

--
-- Table structure for table `courses_students`
--

CREATE TABLE `courses_students` (
  `cs_id` int(10) NOT NULL,
  `cs_course_key` int(10) UNSIGNED NOT NULL,
  `cs_student_key` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_students`
--

INSERT INTO `courses_students` (`cs_id`, `cs_course_key`, `cs_student_key`) VALUES
(1, 1446224187, 1174657407),
(2, 2147484848, 1174657407);

-- --------------------------------------------------------

--
-- Table structure for table `denied_access`
--

CREATE TABLE `denied_access` (
  `ai` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `reason_code` tinyint(1) UNSIGNED DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ips_on_hold`
--

CREATE TABLE `ips_on_hold` (
  `ai` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_errors`
--

CREATE TABLE `login_errors` (
  `ai` int(10) UNSIGNED NOT NULL,
  `username_or_email` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_errors`
--

INSERT INTO `login_errors` (`ai`, `username_or_email`, `ip_address`, `time`) VALUES
(4, '', '::1', '2019-02-12 13:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `username_or_email_on_hold`
--

CREATE TABLE `username_or_email_on_hold` (
  `ai` int(10) UNSIGNED NOT NULL,
  `username_or_email` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(12) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `auth_level` tinyint(3) UNSIGNED NOT NULL,
  `banned` enum('0','1') NOT NULL DEFAULT '0',
  `passwd` varchar(60) NOT NULL,
  `passwd_recovery_code` varchar(60) DEFAULT NULL,
  `passwd_recovery_date` datetime DEFAULT NULL,
  `passwd_modified_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `firstname`, `middlename`, `lastname`, `auth_level`, `banned`, `passwd`, `passwd_recovery_code`, `passwd_recovery_date`, `passwd_modified_at`, `last_login`, `created_at`, `modified_at`) VALUES
(1174657407, 'ierique', 'ejkaika@gmail.com', 'Derrick', '', 'Kwesiga', 1, '0', '$2y$11$qyngP2K6qCvfLHiNxEixXOkzntxwEhaVjaPogVEGYDajVkw9pQOW6', NULL, NULL, NULL, NULL, '2019-02-12 16:24:39', '2019-02-12 15:24:39'),
(2147484848, 'admin', 'kaika@lockminds.com', 'Kaika', '', 'Juniour', 9, '0', '$2y$11$Qh3Y3cVYLpdQ3mPkQxjeOuGrJU.vvcWtkUNtyzfqc8lb7zsBEJrFq', NULL, NULL, NULL, '2019-02-12 16:25:09', '2019-02-12 12:47:26', '2019-02-12 15:25:09');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `ca_passwd_trigger` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
    IF ((NEW.passwd <=> OLD.passwd) = 0) THEN
        SET NEW.passwd_modified_at = NOW();
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`ai`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `acl_categories`
--
ALTER TABLE `acl_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_code` (`category_code`),
  ADD UNIQUE KEY `category_desc` (`category_desc`);

--
-- Indexes for table `auth_sessions`
--
ALTER TABLE `auth_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_key` (`course_key`);

--
-- Indexes for table `courses_students`
--
ALTER TABLE `courses_students`
  ADD PRIMARY KEY (`cs_id`),
  ADD KEY `cs_course_key` (`cs_course_key`),
  ADD KEY `cs_student_key` (`cs_student_key`);

--
-- Indexes for table `denied_access`
--
ALTER TABLE `denied_access`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `ips_on_hold`
--
ALTER TABLE `ips_on_hold`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `login_errors`
--
ALTER TABLE `login_errors`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `username_or_email_on_hold`
--
ALTER TABLE `username_or_email_on_hold`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acl_actions`
--
ALTER TABLE `acl_actions`
  MODIFY `action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acl_categories`
--
ALTER TABLE `acl_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses_students`
--
ALTER TABLE `courses_students`
  MODIFY `cs_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `denied_access`
--
ALTER TABLE `denied_access`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ips_on_hold`
--
ALTER TABLE `ips_on_hold`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_errors`
--
ALTER TABLE `login_errors`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `username_or_email_on_hold`
--
ALTER TABLE `username_or_email_on_hold`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acl`
--
ALTER TABLE `acl`
  ADD CONSTRAINT `acl_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `acl_actions` (`action_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `acl_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD CONSTRAINT `acl_actions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `acl_categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `courses_students`
--
ALTER TABLE `courses_students`
  ADD CONSTRAINT `courses_students_ibfk_1` FOREIGN KEY (`cs_course_key`) REFERENCES `courses` (`course_key`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_students_ibfk_2` FOREIGN KEY (`cs_student_key`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
