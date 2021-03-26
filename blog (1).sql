-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2021 年 3 月 26 日 18:44
-- サーバのバージョン： 5.7.32
-- PHP のバージョン: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `blog_app`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `post_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `publish_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `category`, `post_at`, `publish_status`) VALUES
(2, 'テスト', 'テスト', 1, '2021-03-25 11:13:18', 1),
(3, 'テスト', 'テストです。', 1, '2021-03-25 11:13:54', 1),
(4, 'お散歩', '今日は妹と一緒にお散歩に行ってきたよ', 1, '2021-03-25 11:31:47', 1),
(5, 'お買い物', '今日は前から欲しかった春服を買いに行ってきたよ', 2, '2021-03-25 13:16:23', 1),
(6, 'ありがとう', '感謝の気持ちを持って行動', 1, '2021-03-25 13:17:12', 1),
(7, 'test', 'これはテストです。', 1, '2020-03-23 15:00:00', 1),
(8, 'テスト2', 'これはテスト2の内容です。', 2, '2021-03-26 06:59:16', 1),
(9, 'テスト3', 'これはテスト3の内容です', 1, '2021-03-26 07:01:36', 1),
(10, 'テスト4', 'これはテスト4の内容です', 1, '2021-03-26 07:03:53', 1),
(11, 'こんにちは', 'こんにちは！', 1, '2021-03-26 08:41:49', 1),
(12, 'テスト1', '初めての投稿です。', 1, '2021-03-26 08:42:42', 1),
(13, 'あああ', 'こんにちは', 2, '2021-03-26 08:47:43', 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
