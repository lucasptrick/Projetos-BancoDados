-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/11/2023 às 00:14
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ufc`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `arte_marcial`
--

CREATE TABLE `arte_marcial` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'PESO GALO'),
(2, 'PESO LEVE'),
(3, 'PESO MEIO MEDIO'),
(4, 'PESO PESADO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `evento`
--

INSERT INTO `evento` (`id`, `nome`, `data`) VALUES
(1, 'UFC 1', '2022-11-15'),
(2, 'UFC 2', '2021-07-22'),
(3, 'UFC 3', '2023-10-25'),
(4, 'UFC 4', '2023-01-03'),
(5, 'UFC 5', '2022-11-16'),
(6, 'UFC 6', '2021-08-22'),
(7, 'UFC 7', '2021-10-03'),
(8, 'UFC 8', '2022-04-18'),
(9, 'UFC 9', '2022-10-13'),
(10, 'UFC 10', '2021-07-19'),
(11, 'UFC 11', '2022-09-17'),
(12, 'UFC 12', '2021-05-22'),
(13, 'UFC 13', '2021-10-12'),
(14, 'UFC 14', '2021-11-10'),
(15, 'UFC 15', '2021-06-24'),
(16, 'UFC 16', '2022-03-27'),
(17, 'UFC 17', '2022-10-03'),
(18, 'UFC 18', '2022-08-16'),
(19, 'UFC 19', '2022-02-11'),
(20, 'UFC 20', '2021-12-17'),
(21, 'UFC 21', '2023-04-17'),
(22, 'UFC 22', '2021-02-08'),
(23, 'UFC 23', '2022-02-23'),
(24, 'UFC 24', '2023-10-19'),
(25, 'UFC 25', '2022-05-11'),
(26, 'UFC 26', '2021-11-07'),
(27, 'UFC 27', '2022-03-19'),
(28, 'UFC 28', '2021-01-27'),
(29, 'UFC 29', '2021-05-13'),
(30, 'UFC 30', '2021-09-08'),
(31, 'UFC 31', '2021-02-14'),
(32, 'UFC 32', '2021-04-23'),
(33, 'UFC 33', '2021-04-13'),
(34, 'UFC 34', '2022-05-28'),
(35, 'UFC 35', '2023-02-19'),
(36, 'UFC 36', '2021-04-06'),
(37, 'UFC 37', '2022-08-08'),
(38, 'UFC 38', '2021-09-13'),
(39, 'UFC 39', '2023-03-14'),
(40, 'UFC 40', '2023-04-24'),
(41, 'UFC 41', '2023-07-12'),
(42, 'UFC 42', '2022-04-17'),
(43, 'UFC 43', '2022-08-19'),
(44, 'UFC 44', '2023-10-20'),
(45, 'UFC 45', '2022-10-08'),
(46, 'UFC 46', '2022-03-28'),
(47, 'UFC 47', '2021-02-13'),
(48, 'UFC 48', '2022-06-19'),
(49, 'UFC 49', '2023-07-20'),
(50, 'UFC 50', '2022-12-22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `local`
--

CREATE TABLE `local` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `local`
--

INSERT INTO `local` (`id`, `nome`) VALUES
(1, 'Las Vegas'),
(2, 'Londres'),
(3, 'Kallang'),
(4, 'Phoenix'),
(5, 'Houston'),
(6, 'Abu Dhabi'),
(7, 'Brasilia'),
(8, 'Auckland'),
(9, 'São Paulo'),
(10, 'Montevidéu'),
(11, 'Moscou'),
(12, 'Vancouver'),
(13, 'Toronto'),
(14, 'São Petersburgo'),
(15, 'Adelaide'),
(16, 'Rio de Janeiro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `luta`
--

CREATE TABLE `luta` (
  `id` int(11) NOT NULL,
  `bolsa_vencedor` int(11) NOT NULL,
  `bolsa_perdedor` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_evento` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_lutador1` int(11) NOT NULL,
  `id_lutador2` int(11) NOT NULL,
  `n_rounds` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `luta`
--

INSERT INTO `luta` (`id`, `bolsa_vencedor`, `bolsa_perdedor`, `id_categoria`, `id_evento`, `id_local`, `id_lutador1`, `id_lutador2`, `n_rounds`) VALUES
(1, 2302155, 1419954, 2, 1, 10, 19, 16, 3),
(2, 2475707, 1966948, 1, 1, 10, 13, 9, 5),
(3, 1692256, 1574105, 3, 1, 8, 26, 28, 3),
(4, 2024932, 1003872, 4, 1, 5, 37, 39, 12),
(5, 1844150, 1047950, 2, 2, 12, 21, 14, 6),
(6, 882932, 396810, 1, 2, 11, 8, 3, 6),
(7, 1867366, 819718, 3, 2, 5, 25, 26, 7),
(8, 306971, 199298, 4, 2, 16, 44, 38, 1),
(9, 2277816, 1538549, 2, 3, 15, 15, 14, 7),
(10, 1429330, 1342836, 1, 3, 9, 13, 12, 4),
(11, 2286508, 2258705, 3, 3, 14, 31, 26, 4),
(12, 827590, 257869, 4, 3, 10, 42, 38, 8),
(13, 1870009, 1337516, 2, 4, 5, 14, 22, 12),
(14, 2279014, 1401977, 1, 4, 12, 4, 9, 4),
(15, 964216, 578789, 3, 4, 3, 26, 31, 4),
(16, 1731977, 174985, 4, 4, 13, 43, 34, 9),
(17, 308515, 97722, 2, 5, 5, 21, 18, 4),
(18, 1034174, 480085, 1, 5, 4, 6, 5, 12),
(19, 259415, 128907, 3, 5, 3, 25, 29, 4),
(20, 1611331, 647411, 4, 5, 8, 39, 38, 7),
(21, 1319805, 260332, 2, 6, 11, 22, 14, 2),
(22, 681503, 400254, 1, 6, 14, 13, 1, 4),
(23, 2076870, 1216634, 3, 6, 6, 29, 26, 1),
(24, 907056, 474053, 4, 6, 13, 37, 38, 2),
(25, 800086, 449221, 2, 7, 1, 15, 14, 7),
(26, 2210849, 1010127, 1, 7, 8, 8, 9, 2),
(27, 2537633, 1450271, 3, 7, 7, 25, 23, 3),
(28, 1101511, 184012, 4, 7, 10, 41, 40, 2),
(29, 904223, 264557, 2, 8, 14, 17, 16, 11),
(30, 970466, 486141, 1, 8, 3, 1, 9, 5),
(31, 609006, 245498, 3, 8, 13, 26, 31, 3),
(32, 1258305, 122397, 4, 8, 12, 39, 36, 11),
(33, 987181, 374495, 2, 9, 2, 14, 17, 6),
(34, 2169580, 1696119, 1, 9, 4, 11, 7, 2),
(35, 927907, 471977, 3, 9, 5, 23, 24, 1),
(36, 1137091, 78681, 4, 9, 9, 39, 41, 4),
(37, 167464, 92887, 2, 10, 14, 14, 20, 9),
(38, 931523, 902220, 1, 10, 15, 12, 2, 6),
(39, 362760, 90321, 3, 10, 10, 24, 32, 1),
(40, 1363937, 1051931, 4, 10, 14, 42, 34, 2),
(41, 2049782, 1986869, 2, 11, 6, 15, 18, 4),
(42, 1712398, 1596468, 1, 11, 14, 2, 8, 9),
(43, 467768, 247508, 3, 11, 5, 25, 30, 11),
(44, 607714, 249716, 4, 11, 14, 40, 44, 9),
(45, 995708, 888190, 2, 12, 2, 14, 19, 8),
(46, 1593211, 454461, 1, 12, 5, 8, 3, 3),
(47, 610225, 304520, 3, 12, 12, 32, 26, 6),
(48, 1608691, 1213921, 4, 12, 16, 43, 35, 5),
(49, 1153797, 408592, 2, 13, 13, 16, 20, 4),
(50, 1369833, 676695, 1, 13, 3, 9, 7, 10),
(51, 1800614, 1351296, 3, 13, 13, 30, 23, 9),
(52, 2543199, 121623, 4, 13, 4, 33, 34, 1),
(53, 176666, 82064, 2, 14, 16, 18, 20, 5),
(54, 1894594, 1642828, 1, 14, 5, 7, 10, 10),
(55, 2564776, 695057, 3, 14, 8, 25, 24, 8),
(56, 799601, 140766, 4, 14, 9, 41, 43, 8),
(57, 1909973, 1005326, 2, 15, 12, 22, 17, 11),
(58, 1077781, 335436, 1, 15, 14, 4, 9, 3),
(59, 648362, 52796, 3, 15, 14, 25, 26, 4),
(60, 2574368, 696741, 4, 15, 15, 41, 38, 10),
(61, 1610275, 970957, 2, 16, 6, 20, 22, 6),
(62, 981169, 750127, 1, 16, 8, 4, 10, 9),
(63, 1737255, 615179, 3, 16, 1, 25, 30, 1),
(64, 1721835, 1138191, 4, 16, 10, 44, 35, 12),
(65, 1462438, 751550, 2, 17, 13, 15, 17, 12),
(66, 806740, 83859, 1, 17, 13, 8, 4, 3),
(67, 2284284, 1977883, 3, 17, 14, 29, 27, 3),
(68, 432794, 51151, 4, 17, 5, 38, 39, 10),
(69, 2294142, 2272279, 2, 18, 1, 22, 18, 3),
(70, 2337164, 965626, 1, 18, 2, 10, 11, 2),
(71, 870652, 439763, 3, 18, 16, 31, 30, 12),
(72, 678754, 313437, 4, 18, 4, 41, 34, 2),
(73, 1251633, 292837, 2, 19, 8, 16, 14, 1),
(74, 555654, 352516, 1, 19, 10, 11, 2, 10),
(75, 1330704, 949075, 3, 19, 5, 26, 28, 8),
(76, 1519553, 1174019, 4, 19, 6, 38, 35, 10),
(77, 1033395, 726690, 2, 20, 12, 19, 17, 1),
(78, 970057, 171184, 1, 20, 10, 8, 2, 3),
(79, 1407242, 567343, 3, 20, 4, 28, 25, 4),
(80, 820279, 773830, 4, 20, 7, 35, 40, 12),
(81, 2527080, 775612, 2, 21, 8, 17, 19, 2),
(82, 317472, 254529, 1, 21, 8, 3, 8, 12),
(83, 2521643, 623960, 3, 21, 3, 28, 23, 12),
(84, 1596734, 351654, 4, 21, 3, 42, 34, 7),
(85, 1815031, 249214, 2, 22, 14, 22, 16, 7),
(86, 1700775, 836500, 1, 22, 11, 3, 4, 10),
(87, 2111730, 536237, 3, 22, 7, 30, 27, 5),
(88, 1342227, 462321, 4, 22, 1, 37, 39, 10),
(89, 1673094, 688518, 2, 23, 9, 17, 22, 12),
(90, 2027622, 339275, 1, 23, 8, 2, 4, 12),
(91, 2015588, 219823, 3, 23, 11, 29, 26, 4),
(92, 1334505, 964490, 4, 23, 9, 40, 44, 2),
(93, 559401, 375171, 2, 24, 14, 19, 18, 12),
(94, 1860939, 1715443, 1, 24, 5, 12, 7, 4),
(95, 622539, 252906, 3, 24, 8, 30, 29, 5),
(96, 452206, 299969, 4, 24, 9, 40, 41, 7),
(97, 632021, 594532, 2, 25, 3, 16, 22, 8),
(98, 1873438, 544899, 1, 25, 16, 1, 6, 12),
(99, 274845, 118466, 3, 25, 15, 26, 23, 6),
(100, 545531, 360579, 4, 25, 14, 35, 33, 12),
(101, 1292372, 470798, 2, 26, 11, 14, 17, 8),
(102, 1485921, 361849, 1, 26, 3, 3, 12, 2),
(103, 2336514, 43486, 3, 26, 14, 25, 32, 5),
(104, 1342677, 978633, 4, 26, 5, 40, 42, 11),
(105, 1372825, 400553, 2, 27, 11, 21, 22, 6),
(106, 2498839, 1397129, 1, 27, 16, 8, 7, 1),
(107, 2554866, 2182314, 3, 27, 14, 30, 31, 6),
(108, 2650147, 1491694, 4, 27, 6, 35, 40, 12),
(109, 2107650, 1399708, 2, 28, 6, 22, 21, 11),
(110, 1152741, 126284, 1, 28, 7, 10, 9, 6),
(111, 1178551, 1150519, 3, 28, 5, 27, 30, 12),
(112, 1908600, 800693, 4, 28, 6, 33, 36, 10),
(113, 1870828, 726206, 2, 29, 6, 20, 18, 2),
(114, 2228931, 1324411, 1, 29, 15, 10, 8, 2),
(115, 1337772, 908647, 3, 29, 14, 32, 26, 2),
(116, 1461960, 512242, 4, 29, 2, 33, 34, 7),
(117, 1000925, 911750, 2, 30, 16, 16, 21, 1),
(118, 75156, 41841, 1, 30, 14, 7, 4, 12),
(119, 1306571, 701151, 3, 30, 1, 31, 25, 7),
(120, 1057311, 654699, 4, 30, 1, 39, 35, 7),
(121, 1180696, 118697, 2, 31, 12, 22, 18, 6),
(122, 2321145, 1376581, 1, 31, 4, 1, 7, 5),
(123, 1799749, 552029, 3, 31, 12, 27, 31, 1),
(124, 1904880, 1679446, 4, 31, 7, 35, 40, 6),
(125, 1726542, 66486, 2, 32, 3, 21, 22, 3),
(126, 785234, 178514, 1, 32, 10, 2, 1, 3),
(127, 2581801, 2258225, 3, 32, 16, 23, 32, 8),
(128, 2298274, 795708, 4, 32, 15, 40, 33, 11),
(129, 1176495, 490103, 2, 33, 10, 21, 15, 6),
(130, 1672508, 451235, 1, 33, 12, 9, 1, 11),
(131, 917828, 74967, 3, 33, 15, 31, 32, 9),
(132, 1123592, 313825, 4, 33, 7, 36, 44, 9),
(133, 691904, 159862, 2, 34, 6, 14, 22, 5),
(134, 2414909, 1468193, 1, 34, 16, 4, 12, 9),
(135, 796126, 52814, 3, 34, 8, 24, 32, 3),
(136, 959847, 234646, 4, 34, 12, 33, 43, 10),
(137, 346914, 218613, 2, 35, 12, 16, 15, 1),
(138, 2456470, 1773828, 1, 35, 3, 3, 12, 8),
(139, 1103531, 843795, 3, 35, 7, 32, 30, 8),
(140, 711914, 390903, 4, 35, 9, 38, 36, 12),
(141, 2582177, 1755896, 2, 36, 14, 17, 14, 7),
(142, 2103932, 2066608, 1, 36, 15, 8, 7, 7),
(143, 2698844, 1300596, 3, 36, 9, 31, 23, 7),
(144, 845987, 474970, 4, 36, 8, 39, 40, 3),
(145, 1947265, 1776033, 2, 37, 6, 22, 14, 4),
(146, 2153785, 1740088, 1, 37, 14, 6, 3, 4),
(147, 2155516, 2152009, 3, 37, 9, 31, 27, 3),
(148, 193058, 60436, 4, 37, 3, 34, 44, 11),
(149, 1904540, 280027, 2, 38, 13, 17, 19, 9),
(150, 1979678, 124330, 1, 38, 2, 12, 11, 3),
(151, 2414623, 2124515, 3, 38, 1, 28, 30, 5),
(152, 1443502, 1368615, 4, 38, 9, 42, 39, 11),
(153, 111529, 51059, 2, 39, 16, 20, 21, 7),
(154, 1065246, 292713, 1, 39, 2, 3, 12, 9),
(155, 1146721, 1041047, 3, 39, 1, 30, 28, 1),
(156, 1133782, 560426, 4, 39, 13, 33, 39, 7),
(157, 863020, 338968, 2, 40, 9, 20, 22, 2),
(158, 637253, 457267, 1, 40, 7, 7, 9, 5),
(159, 778818, 193762, 3, 40, 3, 25, 24, 10),
(160, 2492671, 2274678, 4, 40, 11, 39, 44, 4),
(161, 1367587, 572414, 2, 41, 16, 19, 18, 4),
(162, 149048, 47915, 1, 41, 16, 8, 11, 4),
(163, 1137250, 1112369, 3, 41, 9, 25, 27, 3),
(164, 2694069, 1057830, 4, 41, 13, 36, 44, 7),
(165, 2083355, 329759, 2, 42, 11, 17, 16, 2),
(166, 2364240, 668761, 1, 42, 16, 11, 5, 11),
(167, 1379218, 142957, 3, 42, 9, 29, 32, 1),
(168, 1272300, 1108207, 4, 42, 16, 35, 39, 1),
(169, 930068, 774361, 2, 43, 13, 21, 19, 8),
(170, 2564933, 606343, 1, 43, 13, 2, 13, 2),
(171, 2282401, 1847614, 3, 43, 3, 31, 25, 4),
(172, 2671175, 1819548, 4, 43, 10, 41, 43, 12),
(173, 88055, 61786, 2, 44, 10, 14, 16, 8),
(174, 988468, 358440, 1, 44, 3, 2, 8, 11),
(175, 813166, 801863, 3, 44, 6, 28, 31, 10),
(176, 650909, 182261, 4, 44, 10, 37, 36, 4),
(177, 883067, 579330, 2, 45, 10, 20, 18, 6),
(178, 419006, 153382, 1, 45, 13, 6, 2, 9),
(179, 1303084, 1074604, 3, 45, 10, 30, 27, 8),
(180, 637973, 580181, 4, 45, 9, 40, 35, 9),
(181, 2525199, 2235549, 2, 46, 1, 14, 18, 9),
(182, 1402629, 827130, 1, 46, 3, 10, 6, 9),
(183, 2250789, 349678, 3, 46, 11, 29, 24, 5),
(184, 195303, 159261, 4, 46, 16, 41, 34, 6),
(185, 1429075, 817575, 2, 47, 2, 18, 22, 4),
(186, 966418, 298844, 1, 47, 13, 4, 1, 2),
(187, 2133601, 688385, 3, 47, 16, 25, 32, 11),
(188, 2650057, 449016, 4, 47, 13, 38, 34, 3),
(189, 507717, 145412, 2, 48, 6, 19, 20, 2),
(190, 515943, 156631, 1, 48, 16, 9, 12, 9),
(191, 1575716, 1062623, 3, 48, 12, 31, 29, 5),
(192, 2472289, 107631, 4, 48, 5, 35, 42, 5),
(193, 1822835, 1424424, 2, 49, 1, 22, 17, 11),
(194, 735886, 646429, 1, 49, 15, 2, 3, 11),
(195, 1696977, 86265, 3, 49, 8, 25, 29, 3),
(196, 176886, 43126, 4, 49, 4, 34, 38, 2),
(197, 2693232, 162936, 2, 50, 16, 21, 19, 11),
(198, 129842, 102698, 1, 50, 1, 6, 12, 4),
(199, 538178, 117330, 3, 50, 4, 31, 28, 12),
(200, 815369, 201743, 4, 50, 1, 37, 41, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lutador`
--

CREATE TABLE `lutador` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `lutador`
--

INSERT INTO `lutador` (`id`, `nome`) VALUES
(1, 'Sean O\'Malley'),
(2, 'Aljamain Sterling'),
(3, 'Merab Dvalishvili'),
(4, 'Henry Cejudo'),
(5, 'Cory Sandhagen'),
(6, 'Petr Yan'),
(7, 'Marlon Vera'),
(8, 'Song Yadong'),
(9, 'Rob Font'),
(10, 'Dominick Cruz'),
(11, 'Pedro Munhoz'),
(12, 'Ricky Simón'),
(13, 'Umar Nurmagomedov'),
(14, 'Islam Makhachev'),
(15, 'Charles Oliveira'),
(16, 'Max Holloway'),
(17, 'Rafael dos Anjos'),
(18, 'Justin Gaethje'),
(19, 'Dustin Poirier'),
(20, 'Michael Chandler'),
(21, 'Rafael Fiziev'),
(22, 'Renato Moicano'),
(23, 'Kamaru Usman'),
(24, 'Khamzat Chimaev'),
(25, 'Dan Henderson'),
(26, 'Robbie Lawler'),
(27, 'Johny Hendricks'),
(28, 'Jake Ellenberger'),
(29, 'Kazushi Sakuraba'),
(30, 'Eric Spicely'),
(31, 'Tom Lawlor'),
(32, 'Yoel Romero'),
(33, 'Jon Jones'),
(34, 'Ciryl Gane'),
(35, 'Sergei Pavlovich'),
(36, 'Stipe Miocic'),
(37, 'Tom Aspinall'),
(38, 'Curtis Blaydes'),
(39, 'Alexander Volkov'),
(40, 'Sergey Spivak'),
(41, 'Tai Tuivasa'),
(42, 'Jailton Almeida'),
(43, 'Derrick Lewis'),
(44, 'Marcin Tybura');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lutador_arte_marcial`
--

CREATE TABLE `lutador_arte_marcial` (
  `id` int(11) NOT NULL,
  `id_lutador` int(11) NOT NULL,
  `id_arte_marcial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `metodo`
--

CREATE TABLE `metodo` (
  `id` int(11) NOT NULL,
  `metodo` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `metodo`
--

INSERT INTO `metodo` (`id`, `metodo`) VALUES
(1, 'SUBMISSION'),
(2, 'DECISÃO UNÂNIME'),
(3, 'DECISÃO PARCIAL'),
(4, 'NOCAUTE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `resultado`
--

CREATE TABLE `resultado` (
  `id` int(11) NOT NULL,
  `id_luta` int(11) NOT NULL,
  `id_vencedor` int(11) NOT NULL,
  `id_metodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `resultado`
--

INSERT INTO `resultado` (`id`, `id_luta`, `id_vencedor`, `id_metodo`) VALUES
(1, 1, 16, 2),
(2, 2, 13, 4),
(3, 3, 28, 1),
(4, 4, 37, 1),
(5, 5, 14, 1),
(6, 6, 3, 3),
(7, 7, 25, 1),
(8, 8, 44, 3),
(9, 9, 14, 1),
(10, 10, 13, 1),
(11, 11, 31, 1),
(12, 12, 38, 2),
(13, 13, 14, 4),
(14, 14, 4, 1),
(15, 15, 31, 1),
(16, 16, 43, 2),
(17, 17, 18, 4),
(18, 18, 6, 4),
(19, 19, 29, 4),
(20, 20, 38, 4),
(21, 21, 14, 2),
(22, 22, 1, 2),
(23, 23, 26, 2),
(24, 24, 38, 1),
(25, 25, 15, 2),
(26, 26, 9, 4),
(27, 27, 25, 1),
(28, 28, 40, 3),
(29, 29, 17, 4),
(30, 30, 9, 4),
(31, 31, 26, 2),
(32, 32, 36, 4),
(33, 33, 14, 2),
(34, 34, 11, 4),
(35, 35, 23, 2),
(36, 36, 41, 3),
(37, 37, 20, 4),
(38, 38, 2, 3),
(39, 39, 32, 4),
(40, 40, 34, 2),
(41, 41, 18, 4),
(42, 42, 2, 1),
(43, 43, 30, 2),
(44, 44, 44, 2),
(45, 45, 14, 1),
(46, 46, 8, 3),
(47, 47, 26, 4),
(48, 48, 43, 4),
(49, 49, 20, 1),
(50, 50, 9, 3),
(51, 51, 23, 4),
(52, 52, 34, 4),
(53, 53, 18, 2),
(54, 54, 10, 2),
(55, 55, 24, 2),
(56, 56, 41, 3),
(57, 57, 17, 1),
(58, 58, 4, 4),
(59, 59, 26, 3),
(60, 60, 38, 2),
(61, 61, 22, 3),
(62, 62, 4, 4),
(63, 63, 25, 4),
(64, 64, 44, 4),
(65, 65, 15, 4),
(66, 66, 8, 1),
(67, 67, 27, 2),
(68, 68, 39, 4),
(69, 69, 18, 1),
(70, 70, 11, 4),
(71, 71, 31, 4),
(72, 72, 34, 2),
(73, 73, 16, 3),
(74, 74, 11, 4),
(75, 75, 26, 3),
(76, 76, 35, 4),
(77, 77, 19, 3),
(78, 78, 2, 4),
(79, 79, 28, 3),
(80, 80, 35, 4),
(81, 81, 17, 3),
(82, 82, 3, 4),
(83, 83, 28, 2),
(84, 84, 42, 3),
(85, 85, 16, 2),
(86, 86, 4, 2),
(87, 87, 27, 3),
(88, 88, 37, 4),
(89, 89, 17, 3),
(90, 90, 4, 1),
(91, 91, 26, 1),
(92, 92, 40, 4),
(93, 93, 18, 1),
(94, 94, 12, 4),
(95, 95, 29, 3),
(96, 96, 40, 3),
(97, 97, 22, 2),
(98, 98, 6, 2),
(99, 99, 23, 4),
(100, 100, 33, 3),
(101, 101, 17, 3),
(102, 102, 3, 3),
(103, 103, 25, 3),
(104, 104, 42, 2),
(105, 105, 21, 2),
(106, 106, 8, 1),
(107, 107, 31, 3),
(108, 108, 35, 1),
(109, 109, 22, 2),
(110, 110, 9, 2),
(111, 111, 30, 2),
(112, 112, 36, 2),
(113, 113, 20, 4),
(114, 114, 10, 1),
(115, 115, 32, 3),
(116, 116, 33, 1),
(117, 117, 16, 4),
(118, 118, 7, 3),
(119, 119, 25, 4),
(120, 120, 35, 4),
(121, 121, 18, 2),
(122, 122, 1, 4),
(123, 123, 27, 2),
(124, 124, 40, 4),
(125, 125, 22, 3),
(126, 126, 1, 4),
(127, 127, 32, 2),
(128, 128, 33, 2),
(129, 129, 21, 3),
(130, 130, 9, 1),
(131, 131, 31, 4),
(132, 132, 44, 1),
(133, 133, 14, 2),
(134, 134, 4, 2),
(135, 135, 32, 3),
(136, 136, 33, 1),
(137, 137, 16, 1),
(138, 138, 3, 3),
(139, 139, 32, 4),
(140, 140, 38, 2),
(141, 141, 17, 1),
(142, 142, 8, 4),
(143, 143, 31, 2),
(144, 144, 39, 1),
(145, 145, 22, 3),
(146, 146, 6, 4),
(147, 147, 27, 1),
(148, 148, 34, 1),
(149, 149, 17, 4),
(150, 150, 11, 1),
(151, 151, 28, 3),
(152, 152, 42, 1),
(153, 153, 20, 4),
(154, 154, 3, 2),
(155, 155, 30, 4),
(156, 156, 39, 1),
(157, 157, 22, 1),
(158, 158, 9, 4),
(159, 159, 24, 1),
(160, 160, 39, 1),
(161, 161, 18, 1),
(162, 162, 11, 3),
(163, 163, 27, 2),
(164, 164, 36, 3),
(165, 165, 16, 1),
(166, 166, 11, 1),
(167, 167, 29, 3),
(168, 168, 39, 2),
(169, 169, 21, 1),
(170, 170, 13, 4),
(171, 171, 31, 2),
(172, 172, 43, 1),
(173, 173, 14, 2),
(174, 174, 8, 4),
(175, 175, 28, 1),
(176, 176, 37, 1),
(177, 177, 18, 3),
(178, 178, 2, 4),
(179, 179, 27, 2),
(180, 180, 40, 2),
(181, 181, 14, 2),
(182, 182, 10, 2),
(183, 183, 24, 1),
(184, 184, 34, 2),
(185, 185, 18, 3),
(186, 186, 1, 3),
(187, 187, 32, 2),
(188, 188, 38, 2),
(189, 189, 19, 4),
(190, 190, 9, 1),
(191, 191, 29, 1),
(192, 192, 35, 2),
(193, 193, 17, 4),
(194, 194, 2, 1),
(195, 195, 29, 2),
(196, 196, 38, 1),
(197, 197, 21, 4),
(198, 198, 12, 1),
(199, 199, 31, 1),
(200, 200, 37, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arte_marcial`
--
ALTER TABLE `arte_marcial`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `luta`
--
ALTER TABLE `luta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lutador1` (`id_lutador1`),
  ADD KEY `fk_lutador2` (`id_lutador2`),
  ADD KEY `fk_evento` (`id_evento`),
  ADD KEY `fk_local` (`id_local`),
  ADD KEY `fk_categoria` (`id_categoria`);

--
-- Índices de tabela `lutador`
--
ALTER TABLE `lutador`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lutador_arte_marcial`
--
ALTER TABLE `lutador_arte_marcial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lutador` (`id_lutador`),
  ADD KEY `fk_arte_marcial` (`id_arte_marcial`);

--
-- Índices de tabela `metodo`
--
ALTER TABLE `metodo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vencedor` (`id_vencedor`),
  ADD KEY `fk_luta` (`id_luta`),
  ADD KEY `fk_metodo` (`id_metodo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arte_marcial`
--
ALTER TABLE `arte_marcial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `local`
--
ALTER TABLE `local`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `luta`
--
ALTER TABLE `luta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de tabela `lutador`
--
ALTER TABLE `lutador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `lutador_arte_marcial`
--
ALTER TABLE `lutador_arte_marcial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `metodo`
--
ALTER TABLE `metodo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `resultado`
--
ALTER TABLE `resultado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `luta`
--
ALTER TABLE `luta`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `fk_evento` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`),
  ADD CONSTRAINT `fk_local` FOREIGN KEY (`id_local`) REFERENCES `local` (`id`),
  ADD CONSTRAINT `fk_lutador1` FOREIGN KEY (`id_lutador1`) REFERENCES `lutador` (`id`),
  ADD CONSTRAINT `fk_lutador2` FOREIGN KEY (`id_lutador2`) REFERENCES `lutador` (`id`);

--
-- Restrições para tabelas `lutador_arte_marcial`
--
ALTER TABLE `lutador_arte_marcial`
  ADD CONSTRAINT `fk_arte_marcial` FOREIGN KEY (`id_arte_marcial`) REFERENCES `arte_marcial` (`id`),
  ADD CONSTRAINT `fk_lutador` FOREIGN KEY (`id_lutador`) REFERENCES `lutador` (`id`);

--
-- Restrições para tabelas `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `fk_luta` FOREIGN KEY (`id_luta`) REFERENCES `luta` (`id`),
  ADD CONSTRAINT `fk_metodo` FOREIGN KEY (`id_metodo`) REFERENCES `metodo` (`id`),
  ADD CONSTRAINT `fk_vencedor` FOREIGN KEY (`id_vencedor`) REFERENCES `lutador` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;