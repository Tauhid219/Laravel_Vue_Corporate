-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 08:10 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelvuecorporate`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `headline`, `subtitle`, `list1`, `list2`, `list3`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'WE ARE HERE TO TRANSFORM THE LANDSCAPE OF CONSULTANCY', 'Our vision is to become the preferred partner in providing value-focused, sustainable management solutions through innovation & agility.', 'Offer best in class management solutions through strategic partnership, linking executional roadmaps to long-term goals', 'Unleash the potential of your organization and leaders through transformation and change inculcating operational excellence', 'Partner with your organization for result achievement in defined parameters', 'With a combined experience of over 120 years, we offer solutions in the areas of setting up business, mergers and acquisitions, organizational development, executive search, corporate governance, human resources, transformation & leadership with end-to-en', NULL, '2023-07-17 00:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `photo`, `title`, `name`, `subtitle`, `detail1`, `title2`, `detail2`, `title3`, `detail3`, `created_at`, `updated_at`) VALUES
(1, '1689740544_blog-1.jpg', 'Rise of Online Banking in Bangladesh', 'Mahbub Morshed', 'Online banking is a system that enables bank customers to access accounts and general information on bank products and services through a bank’s website or app. It is a means of banking....', 'Online banking is a system that enables bank customers to access accounts and general information on bank products and services through a bank’s website or app. It is a means of banking through the internet that provides one of the easiest banking systems to clients with low cost and quick services. Online banking in Bangladesh has rapidly grown over the years as the country’s financial sphere is integrating more digital services in the financial sector.', 'Growth of Online Banking in Bangladesh', 'Online banking in Bangladesh first started in the early 2000s and ever since it is rapidly being integrated into the banking industry. The graph below shows how just within a few years the number of online banking transactions rose in Bangladesh.\r\nSource: Bangladesh Bank, Statistics Department, e-Banking and e-Commerce Statistics Unit\r\nThere are several reasons for the rapid increase in online banking in Bangladesh. They are-', 'The pursuit of Digital Bangladesh', 'The government’s initiatives to digitalize the financial service sector such as establishing electronic platforms like NPSB (National Payment Switch Bangladesh) and BEFTN (Bangladesh Electronic Funds Transfer Network) are playing a key role in the rapid progress of internet banking.\r\nInternet penetration in Bangladesh stood at 28.8% in January 2021. The number of internet users in Bangladesh increased by 7.7 million (+19%) between 2020 and 2021- (Source: Datareportal)\r\nThe government’s efforts to increase access to internet services have also been majorly successful. With more people using the internet, the demand for internet banking is bound to rise.', '2023-07-18 22:22:24', '2023-07-18 23:24:00'),
(3, '1689743855_blog-2.jpg', 'Fintech in Bangladesh', 'Rashid Minhaz', 'Technology has transformed the finance industries around the world. Economies like China and the U.S. have massively improved their financial services...', 'Technology has transformed the finance industries around the world. Economies like China and the U.S. have massively improved their financial services by introducing innovative financial technologies in the banking, financial management, and insurance sectors. Fintech in Bangladesh is still lagging behind in comparison with other developed nations in terms of using technology to automate and digitalize financial activities.\r\nThe financial institutions of Bangladesh have been repeatedly criticized for their lack of effort to improve financial inclusion, poor customer care facilities, lack of risk management of information technology (IT), and inefficient operations due to the usage of suboptimal technology. The world is moving on to more digital forms of transactions where financial institutions in Bangladesh are still struggling to gain and keep more customers. It’s time for the country to catch up.', 'What is Fintech?', 'Technology has made it easier for customers to access financial services from anywhere. It’s a technology that replaces existing systems and makes them better. It includes everything from money transfers to server management. Easy transactions or intuitive management systems – you name it, and Fintech delivers.\r\nMobile Financial Services (MFS), like bKash, Trust Axiata Pay (TAP), and Nagad, are very popular and loved by the people of Bangladesh nowadays.  These institutions cater to around 35 million people with an annual credit of over USD 7 billion. They have done an incredible job to successfully bring a vast majority of people under the umbrella of digital financial services. So let’s dive into what is next for Fintech in Bangladesh and how it can improve the financial landscape.', 'Impact of Fintech in Bangladesh', 'Fintech in Bangladesh has totally changed the financial landscape. There have been several growing fintech companies in Bangladesh over the years. Since the pandemic has inspired people into cashless transactions, fintech companies in Bangladesh have welcomed this opportunity to make a meaningful and noteworthy impact in Bangladesh.\r\nDigital banking can radically change the lives of the people working in the informal sector. MFS and Agent banking are considered key drivers in the financial inclusion strategy by providing low-income groups and disadvantaged people access to financial services at affordable costs. MFS transactions rose by around 30% since last year and till March agent banking has seen 108.38% year-on-year growth in deposits.\r\nIt’s no surprise that Big Data, Machine Learning, and Artificial Intelligence are driving many business decisions in the modern age. Financial services in many countries use big data to screen potential clients. The system can do extensive background checks in a flash. All these can help to reduce and prevent money loss for loaners who can assess the viability of a loan or investment. The whole system is intuitive, smooth, and easy to use and most of all, it gives accurate results and predictions.', '2023-07-18 23:17:35', '2023-07-18 23:17:35'),
(4, '1689744060_blog-3.jpg', 'Bridging the academia-industry gap in Bangladesh', 'Habibullah Khan', 'We live in a dynamic and progressive world that is more industrialized than ever before. With an increase in population, higher expectations...', 'We live in a dynamic and progressive world that is more industrialized than ever before. With an increase in population, higher expectations of the consumer base, and several other factors, the job market is very competitive now. The process of grooming up and building people up to get them ready for industries through formal education and academia has been in practice for ages. But, there is a massive academia-industry gap that is leading to a surge in unemployment amongst the youth, this gap needs to be bridged.', 'Transitional conflicts from academia to industry', 'The truth is that the ideologies of academia and industry are different and they are based on slightly different principles. This can make the process of moving from academia to industry very intimidating.\r\nAn age-old societal concept we always had is that academic scores lead to success in life. Now, this ideology was passed on through generations because once upon a time it was the actual case. Knowledge only existed in the world of textbooks and there was no internet so the world was not connected enough for people to learn through other means.\r\nTimes have now changed and the teaching methods which employ largely theoretical education are devoid of practicality and make students unfit for the twenty-first-century market.', 'How to bridge the academia-industry gap', 'To make the process of moving from academia to industry more time and resource-efficient, academic curriculums need to adjust and cater to industry requirements. The need is to make the entire approach practical; institutions need to shift from theoretical knowledge to skill-based education. And curriculums need to be updated with industry progressions regularly.\r\nGuest speakers from different industries should also be invited to share their first-hand experiences to give the students a more relatable and insightful idea about the requirements of the job market.', '2023-07-18 23:21:00', '2023-07-18 23:21:00'),
(5, '1689744204_blog-4.jpg', 'Are virtual events effective?', 'Sharmin Akter', 'Ever since the COVID-19 outbreak, we have seen everything from conferences, concerts, festivals, and courses going virtual. Virtual events have become essential...', 'Ever since the COVID-19 outbreak, we have seen everything from conferences, concerts, festivals, and courses going virtual. Virtual events have become essential in maintaining connections socially and in business. Many organizations have thrived with virtual events because, in addition to offering a safer means to attend, it has many benefits for you and your audience.', 'Cost-Effective and Time-Saving', 'If you have budgetary constraints or a need to roll out an event within a short period of time, virtual events are the key!\r\nThe cost for hosting in-person events can go up to lakhs, while the cost for virtual events is only a fraction of these high-budget in-person events. In fact, virtual events are about 75% less expensive. As virtual events require less direct financial investment, you can allocate your costs more wisely on the technology, streaming, event site, etc. while significantly saving your time.\r\nMany participants are unable to attend an event they are interested in simply because of the location of the event. Getting to the event might lead to hours of commute which is both time-consuming and costly. Virtual events can be attended from anywhere. So an effective virtual event can save time and money for everyone. With a virtual event, the attendee only needs a computer and an Internet connection.', 'Virtual events will make your sponsor happy', 'Your sponsors will definitely want you to collect and measure feedback and engagement. Here’s where virtual events have a big advantage. By hosting a virtual event, you can come up with measurable and accurate information on attendance, impressions, and connections built for your sponsors. As there are fewer costs involved in arranging high-budget exhibitions or booths, virtual events also offer more flexible sponsorship costs.', '2023-07-18 23:23:24', '2023-07-18 23:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `contact_msgs`
--

CREATE TABLE `contact_msgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_msgs`
--

INSERT INTO `contact_msgs` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Reza', 'reza@gmail.com', 'About site', 'This is a good website.', '2023-07-17 01:03:53', '2023-07-17 01:03:53'),
(3, 'Sharif', 'sharif@gmail.com', 'Report', 'This website is not good. Full of bugs!', '2023-07-19 22:37:22', '2023-07-19 22:37:22');

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
-- Table structure for table `general_infos`
--

CREATE TABLE `general_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `htitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsubtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ssubtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tsubtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `csubtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cemail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cphone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_infos`
--

INSERT INTO `general_infos` (`id`, `htitle`, `hsubtitle`, `ssubtitle`, `tsubtitle`, `csubtitle`, `caddress`, `cemail`, `cphone`, `created_at`, `updated_at`) VALUES
(1, 'Welcome to PRESENTO', 'We are team of talented employees making relations with Technology', 'We offer a wide array of services aimed at simplifying your life', 'We are team of talented employees making relations with Technology', 'We can help. Our team of experts is on hand to answer your questions.', 'Lotus Kamal Tower- 2 (Level 6 & 12) 59 & 61 Gulshan South Avenue Dhaka-1212, Bangladesh', 'rezatawhid@gmail.com', '01913925893', NULL, '2023-07-16 01:14:02');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_09_061546_create_products_table', 1),
(6, '2023_07_15_063051_create_services_table', 2),
(7, '2023_07_16_051038_create_general_infos_table', 3),
(8, '2023_07_16_155147_create_why_us_table', 4),
(9, '2023_07_17_035458_create_about_us_table', 5),
(10, '2023_07_17_064006_create_contact_msgs_table', 6),
(11, '2023_07_18_033444_create_team_members_table', 7),
(12, '2023_07_19_031009_create_blogs_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Apple', '300.00', NULL, NULL),
(2, 'Malta', '200.00', NULL, NULL),
(3, 'Meat', '850.00', NULL, '2023-07-09 09:08:54'),
(4, 'Grapes', '400.00', '2023-07-09 08:41:58', '2023-07-09 08:41:58'),
(5, 'Coke', '75.00', '2023-07-09 09:11:57', '2023-07-09 09:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(3, 'bi bi-briefcase', 'Financial Sector', 'Diversified Solutions Offering, Financial Inclusion,  Increasing Efficiency,  Innovation at the Core,  Enhanced Security.', '2023-07-15 21:57:55', '2023-07-16 21:43:39'),
(4, 'bi bi-card-checklist', 'Health Sector', 'Integrated Solution,  HealthTech,  Increasing Efficiency,  Innovation at the Core.', '2023-07-15 22:27:12', '2023-07-15 22:27:12'),
(5, 'bi bi-bar-chart', 'Industrial Automation', 'Integrated Automation,  Increasing Efficiency,  Service Enhancement,  Optimization.', '2023-07-15 22:28:19', '2023-07-15 22:28:19'),
(6, 'bi bi-binoculars', 'Research & Development', 'Invest & Innovate, \nProudly Made in Bangladesh, \nTechnologies: AI, ML, NLP, RPA, \nConcept, Prototype, Pilot, Test, Product. ', '2023-07-15 22:29:52', '2023-07-15 22:29:52'),
(7, 'bi bi-brightness-high', 'Digitization & Archiving', 'Document Digitization & Archiving,  Eased Accessibility & Usage,  Confidentiality & Security Ensured,  Convenient & Robust.', '2023-07-15 22:32:15', '2023-07-15 22:32:15'),
(9, 'bi bi-briefcase', 'Financial Sector', 'Diversified Solutions Offering, Financial Inclusion,  Increasing Efficiency,  Innovation at the Core,  Enhanced Security.', '2023-07-16 21:50:52', '2023-07-16 21:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `photo`, `name`, `position`, `created_at`, `updated_at`) VALUES
(5, '1689662412_team-1.jpg', 'Shayan F Rahman', 'Chairman', '2023-07-18 00:40:12', '2023-07-18 00:40:12'),
(7, '1689662486_team-2.jpg', 'Samira Zuberi Himika', 'Managing Director', '2023-07-18 00:41:26', '2023-07-18 00:41:26'),
(8, '1689662572_team-3.jpg', 'Monzurul Karim Khan', 'Chief Operating Officer', '2023-07-18 00:42:52', '2023-07-18 00:42:52'),
(9, '1689662592_team-4.jpg', 'Kashfia Bashar', 'Head of IT', '2023-07-18 00:43:12', '2023-07-18 00:43:12');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_us`
--

CREATE TABLE `why_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1sub` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2sub` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line3sub` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_us`
--

INSERT INTO `why_us` (`id`, `headline`, `subtitle`, `line1`, `line1sub`, `line2`, `line2sub`, `line3`, `line3sub`, `created_at`, `updated_at`) VALUES
(1, 'WE ARE HERE TO TRANSFORM THE LANDSCAPE OF CONSULTANCY', 'Our vision is to become the preferred partner in providing value-focused, sustainable management solutions through innovation & agility.', 'Punctuality', 'We are good at what we do and we get results, and we want to add value.', 'Effectivity', 'We put a lot of effort into developing relationships with our clients so we can provide meaningful advice.', 'Veracity', 'We work on a ‘no surprises’ policy. No unexpected bills. No budget blow-outs. No missed deadlines.', NULL, '2023-07-16 10:44:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_msgs`
--
ALTER TABLE `contact_msgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_infos`
--
ALTER TABLE `general_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `why_us`
--
ALTER TABLE `why_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_msgs`
--
ALTER TABLE `contact_msgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_infos`
--
ALTER TABLE `general_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `why_us`
--
ALTER TABLE `why_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
