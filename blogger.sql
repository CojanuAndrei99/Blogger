-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: ian. 05, 2021 la 11:21 AM
-- Versiune server: 10.4.17-MariaDB
-- Versiune PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `blogger`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `content`, `user_id`, `id_post`) VALUES
(9, '2021-01-05 08:06:16', '2021-01-05 08:06:16', 'You\'re right!', 2, 11),
(10, '2021-01-05 08:15:49', '2021-01-05 08:15:49', 'Felicitari!!!', 2, 8),
(11, '2021-01-05 08:16:18', '2021-01-05 08:16:18', 'Buna dimineata, sunshine!', 2, 6),
(12, '2021-01-05 08:17:27', '2021-01-05 08:17:27', 'Odihna placuta, dar mai avem proiectul la ED!', 3, 7),
(13, '2021-01-05 08:18:50', '2021-01-05 08:18:50', 'Bravo', 3, 8),
(14, '2021-01-05 08:20:04', '2021-01-05 08:20:04', 'Este delicioasa! Am testat-o si este foarte simpla si merge cu o cafelutza dimineata', 3, 12);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_10_233230_create_sessions_table', 1),
(7, '2021_01_02_100559_create_posts_table', 2),
(8, '2021_01_03_094012_create_comments_table', 3);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `body`, `user_id`) VALUES
(6, '2021-01-03 06:36:29', '2021-01-03 06:36:29', '3 Ianuarie', 'Buna dimineata!', 1),
(7, '2021-01-03 06:58:48', '2021-01-03 06:58:48', 'O zi de ianuarie', 'Este ora 10:57. Am reusit sa iau postarile din baza de date. Ce bucurieeee! Acum mai trebuie sa ne ocupam si de comentarii.\r\nPresupun ca maine finalizam, daca merge totul bine. Finally, hai cu sesiunea! Poate ne mai odihnim si noi..', 1),
(8, '2021-01-03 11:29:36', '2021-01-03 11:29:36', 'Comentarii', 'Este ora 3:28 PM. Am terminat si cu partea de comentarii. Yeeey! :)', 1),
(9, '2021-01-03 11:33:37', '2021-01-05 08:14:56', 'Pancakes recipe', 'Ingredients:\r\n400g flour;\r\n250ml milk;\r\n2 eggs;\r\n100g sugar;\r\nSome salt;\r\nSome peach or strawberry jam;\r\nAmestecam faina cu praful de copt, bicarbonatul si zaharul si apoi dam prin sita amestecul obtinut.\r\nSeparam albusurile da galbenusuri. Albusurile le mixam foarte bine, iar galbenusurile le mixam (dar nu mult, cca 3 minute) cu un varf de sare.\r\nAmestecam laptele si uleiul si il adaugam galbenusurilor.\r\nAdaugam mixul de lapte si galbenusuri peste faina, amestecam bine si adaugam la sfarsit albusurile,  amestecand de jos in sus cu grija.\r\nObtinem un aluat mai dens, dar cu o consistenta pufoasa (gen pa\r\nndispan).\r\nIncingem o tigaie teflonata si o ungem cu un cubulet de unt dupa care stergem cu un servetel tot untul din tigaie. In acest fel, vom obtine pancakes cu o suprafata aurie uniforma. Daca ramane untul in tigaie suprafata va arata ca cea de clatite adica cu pete maronii. Ungem tigaia cu unt o singura data, la inceput, cand ne apucam de prajit pancakes.', 2),
(11, '2021-01-04 17:57:18', '2021-01-05 08:04:34', 'How to make a social network', 'Just learn Laravel! It does everything you want!', 3),
(12, '2021-01-05 08:12:34', '2021-01-05 08:12:56', 'Briose cu ciocolata', 'Topesti ciocolata pe baie de aburi si o dai deoparte. Amesteci intr-un vas faina, praful de copt, cacaua si zaharul. Separat, bati oul, adaugi esenta de vanilie, coaja de lamaie, laptele si uleiul. Pui ciocolata topita si omogenizezi. Torni peste compozitia cu faina si amesteci pana devine omogena. Incingi cuptorul. Tapetezi formele de briose cu cosulete de hartie. Torni compozitia in fiecare forma. Le asezi pe toate intr-o tava si le lasi la cuptor, 20-25 de minute.', 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('QCru3T2MRSCMk5IKOVAZSKnfHgc2L5k4vfltHRPF', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiam9uaElyZHc3cDNJOGNCNGw2cWFMVEdxQ29uQXg0bkdHaVo4ajNDbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZy5ndWQ5UmRicUthVTBGWi9CN0tRZVBUOUxVVTNIVi54Ui5GOElXWEdGNDR6TVNyTHB3N2kiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGcuZ3VkOVJkYnFLYVUwRlovQjdLUWVQVDlMVVUzSFYueFIuRjhJV1hHRjQ0ek1TckxwdzdpIjt9', 1609689663);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Naomi Cigolie', 'ncigolie@gmail.com', NULL, '$2y$10$OZNWSVg7oGvH/ZU./ZEuCOEV2AXjV9s963dCH.DOYAFL6jYVnufQy', NULL, NULL, 'XwR6ATuvmqJM3oHSlCjSnKG1VVdSORM7k9TuqW2NaYF0g2Sijex47GqVNz8r', NULL, NULL, '2021-01-02 09:46:19', '2021-01-02 11:48:31'),
(2, 'Teodora Ciubotaru', 'teodora.ciubotaru99@e-uvt.ro', NULL, '$2y$10$qGLcG2WxG.aJCQz2OgpBF.daQivJ5cbEX2.zOOUHkSFkI5kHOet8S', NULL, NULL, NULL, NULL, NULL, '2021-01-03 11:31:08', '2021-01-03 11:31:08'),
(3, 'Andrei Cojanu', 'andrei@gmail.com', NULL, '$2y$10$g.gud9RdbqKaU0FZ/B7KQePT9LUU3HV.xR.F8IWXGF44zMSrLpw7i', NULL, NULL, NULL, NULL, 'profile-photos/n9WlmkXOkowoj9CawXvZczoQcjL8MWwHmqD9BgBx.jpg', '2021-01-03 11:50:11', '2021-01-05 06:50:52');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexuri pentru tabele `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexuri pentru tabele `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexuri pentru tabele `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pentru tabele `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pentru tabele `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pentru tabele `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
