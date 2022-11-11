-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 04:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caps`
--

-- --------------------------------------------------------

--
-- Table structure for table `anecdotal_records`
--

CREATE TABLE `anecdotal_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `observation_date_time` datetime DEFAULT NULL,
  `description_of_incident` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_of_incidents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actions_taken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommendations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career_interest_test_results`
--

CREATE TABLE `career_interest_test_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `interest_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_reports`
--

CREATE TABLE `case_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `victim_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_reported` date DEFAULT NULL,
  `resp_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resp_grade_section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resp_sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nature_of_complaint` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actions_taken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommendations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_reports`
--

INSERT INTO `case_reports` (`id`, `user_id`, `victim_name`, `grade_section`, `sex`, `date_reported`, `resp_name`, `resp_grade_section`, `resp_sex`, `nature_of_complaint`, `actions_taken`, `recommendations`, `created_at`, `updated_at`) VALUES
(1, 1, 'John', 'Grade 11-wisdom', 'Male', '2022-11-10', 'John', 'Grade11-charity', 'Female', 'Bullyjng', 'Callnto office', 'Anti bullying symposium', '2022-11-10 02:47:40', '2022-11-10 02:47:40'),
(3, 1, 'Nathan Holt', 'Venus Mckinney', 'Tatum Richard', '1976-12-11', 'Chancellor Manning', 'Kirk Hays', 'Arthur Poole', 'Adrian Charles', 'Voluptatem optio v', 'Numquam fuga Mollit', '2022-11-10 19:00:38', '2022-11-10 19:00:38'),
(4, 1, 'Jana Miles', 'Dorian Gamble', 'Shafira Bartlett', '2009-03-16', 'Katelyn Horton', 'Ria Mayer', 'Thaddeus Baker', 'Rowan Macias', 'In eos corrupti dig', 'Eaque eos amet des', '2022-11-10 19:01:20', '2022-11-10 19:01:20'),
(5, 1, 'Bianca Everett', 'Donovan Sexton', 'Magee Hammond', '2013-11-11', 'Britanni Pacheco', 'Benedict Mcleod', 'Natalie Franklin', 'Jaquelyn Wooten', 'Rerum consectetur do', 'Ut exercitationem qu', '2022-11-10 19:01:25', '2022-11-10 19:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counseling_anecdotal_records`
--

CREATE TABLE `counseling_anecdotal_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `date_time_called` datetime DEFAULT NULL,
  `reasons_for_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reasons_for_referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_up_counseling_session` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behavior_observed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interview_findings` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clinical_impressions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommendation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title_of_the_meeting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_date_time` datetime DEFAULT NULL,
  `location_of_the_meeting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_09_020733_create_meetings', 1),
(6, '2022_09_24_232859_create_students', 1),
(7, '2022_10_10_053607_create_anecdotal_records', 1),
(8, '2022_10_14_235130_create_counseling_anecdotal_records', 1),
(9, '2022_10_25_042858_create_parent_conference_records', 1),
(10, '2022_10_31_103340_create_career_interest_test_results', 1),
(11, '2022_11_01_030934_create_personality_test_results', 1),
(12, '2022_11_02_021432_create_student_information_sheets', 1),
(13, '2022_11_05_999999_add_active_status_to_users', 1),
(14, '2022_11_05_999999_add_avatar_to_users', 1),
(15, '2022_11_05_999999_add_dark_mode_to_users', 1),
(16, '2022_11_05_999999_add_messenger_color_to_users', 1),
(17, '2022_11_05_999999_create_favorites_table', 1),
(18, '2022_11_05_999999_create_messages_table', 1),
(19, '2022_11_10_022059_create_case_reports', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parent_conference_records`
--

CREATE TABLE `parent_conference_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `relation_to_student` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_for_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inquiries_referral_appointment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem_concern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topics_discussed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suggested_resolution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_taken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personality_test_results`
--

CREATE TABLE `personality_test_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `personality_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image18.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `firstname`, `lastname`, `middlename`, `gender`, `age`, `year_section`, `email`, `parent_name`, `parent_email`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Amber', 'Jacob', 'McKenzie', 'Male', 'Carolyn', 'Grade 11 - Wisdom', 'weve@mailinator.com', 'Althea', 'zuwapyto@mailinator.com', 'Cathleen', 'image18.png', '2022-11-10 02:39:59', '2022-11-10 02:39:59'),
(2, 1, 'Brenda', 'Prescott', 'Chastity', 'Female', 'Ishmael', 'Grade 11 - Wisdom', 'xoconafaru@mailinator.com', 'Heather', 'weneteneq@mailinator.com', 'Isabella', 'image18.png', '2022-11-10 02:40:04', '2022-11-10 02:40:04'),
(3, 1, 'Flynn', 'Zahir', 'Kasper', 'Male', 'Emily', 'Grade 11 - Wisdom', 'kapumynys@mailinator.com', 'Amaya', 'kici@mailinator.com', 'Reuben', 'image18.png', '2022-11-10 02:40:09', '2022-11-10 02:40:09'),
(4, 1, 'Ella', 'Ferdinand', 'Candice', 'Female', 'Phyllis', 'Grade 11 - Wisdom', 'zapu@mailinator.com', 'Rahim', 'mepyjusomu@mailinator.com', 'Daria', 'image18.png', '2022-11-10 02:40:13', '2022-11-10 02:40:13'),
(5, 1, 'Cynthia', 'Ashton', 'Lavinia', 'Female', 'Yolanda', 'Grade 11 - Wisdom', 'bijupo@mailinator.com', 'Zena', 'cedyfiva@mailinator.com', 'Vanna', 'image18.png', '2022-11-10 02:40:19', '2022-11-10 02:40:19'),
(6, 1, 'Louis', 'Wyoming', 'Shafira', 'Male', 'Brynn', 'Grade 11 - Wisdom', 'nujazek@mailinator.com', 'Emery', 'zupykahela@mailinator.com', 'Ruby', 'image18.png', '2022-11-10 02:40:23', '2022-11-10 02:40:23'),
(7, 1, 'Keane', 'Griffith', 'Eric', 'Male', 'Isabella', 'Grade 11 - Wisdom', 'doqilomi@mailinator.com', 'Kennan', 'gegoguw@mailinator.com', 'Noah', 'image18.png', '2022-11-10 02:40:28', '2022-11-10 02:40:28'),
(8, 1, 'Winifred', 'Summer', 'Alexa', 'Male', 'Isadora', 'Grade 11 - Wisdom', 'funewyzefi@mailinator.com', 'Emerald', 'kebam@mailinator.com', 'Leo', 'image18.png', '2022-11-10 02:40:33', '2022-11-10 02:40:33'),
(9, 1, 'Abel', 'Grant', 'Allistair', 'Female', 'Kyle', 'Grade 11 - Wisdom', 'riwavafe@mailinator.com', 'Jerome', 'qana@mailinator.com', 'Quintessa', 'image18.png', '2022-11-10 02:40:41', '2022-11-10 02:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `student_information_sheets`
--

CREATE TABLE `student_information_sheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `type_of_student` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_attended_school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elementary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elem_honors_rec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secon_honors_rec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elem_year_grad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secon_year_grad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_last_attended` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_add` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reasons_for_transfer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_sub` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `most_dif_sub` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobbies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dislikes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_off_ad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_off_ad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_educ_stat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_educ_stat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mar_parents_stat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_brothers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_sisters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `living_with` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_are_you_supp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_with_father` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_with_mother` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_with_brother` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_with_sister` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_comp_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `past_disease` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `injuries` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mens_history` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_signed` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `approved_at` timestamp NULL DEFAULT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advisory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'author',
  `last_seen` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `approved_at`, `contact_no`, `advisory`, `avatar`, `role`, `last_seen`, `remember_token`, `created_at`, `updated_at`, `active_status`, `dark_mode`, `messenger_color`) VALUES
(1, 'Kenn Secusana', 'kennbassist@gmail.com', '2022-11-10 02:39:22', '$2y$10$5ZtnDbJGaLOtlEVuG1I4IuCg4RDjZ4xQ1sfNF9f5XtL9Eh8u.eHIW', 1, '2022-11-10 02:39:22', '09361652609', 'Grade 11 - Wisdom', 'avatar.png', 'editor', '2022-11-10 19:07:26', NULL, '2022-11-10 02:39:22', '2022-11-10 19:07:26', 0, 0, '#2180f3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anecdotal_records`
--
ALTER TABLE `anecdotal_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anecdotal_records_student_id_foreign` (`student_id`);

--
-- Indexes for table `career_interest_test_results`
--
ALTER TABLE `career_interest_test_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `career_interest_test_results_student_id_foreign` (`student_id`);

--
-- Indexes for table `case_reports`
--
ALTER TABLE `case_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counseling_anecdotal_records`
--
ALTER TABLE `counseling_anecdotal_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counseling_anecdotal_records_student_id_foreign` (`student_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_conference_records`
--
ALTER TABLE `parent_conference_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_conference_records_student_id_foreign` (`student_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personality_test_results`
--
ALTER TABLE `personality_test_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personality_test_results_student_id_foreign` (`student_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_parent_email_unique` (`parent_email`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indexes for table `student_information_sheets`
--
ALTER TABLE `student_information_sheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_information_sheets_student_id_foreign` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_advisory_unique` (`advisory`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anecdotal_records`
--
ALTER TABLE `anecdotal_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `career_interest_test_results`
--
ALTER TABLE `career_interest_test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_reports`
--
ALTER TABLE `case_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `counseling_anecdotal_records`
--
ALTER TABLE `counseling_anecdotal_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `parent_conference_records`
--
ALTER TABLE `parent_conference_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personality_test_results`
--
ALTER TABLE `personality_test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_information_sheets`
--
ALTER TABLE `student_information_sheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anecdotal_records`
--
ALTER TABLE `anecdotal_records`
  ADD CONSTRAINT `anecdotal_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `career_interest_test_results`
--
ALTER TABLE `career_interest_test_results`
  ADD CONSTRAINT `career_interest_test_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `case_reports`
--
ALTER TABLE `case_reports`
  ADD CONSTRAINT `case_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `counseling_anecdotal_records`
--
ALTER TABLE `counseling_anecdotal_records`
  ADD CONSTRAINT `counseling_anecdotal_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parent_conference_records`
--
ALTER TABLE `parent_conference_records`
  ADD CONSTRAINT `parent_conference_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `personality_test_results`
--
ALTER TABLE `personality_test_results`
  ADD CONSTRAINT `personality_test_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_information_sheets`
--
ALTER TABLE `student_information_sheets`
  ADD CONSTRAINT `student_information_sheets_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
