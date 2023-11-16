-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/11/2023 às 22:30
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `campeonatobrasileiroseriea`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `arbitro`
--

CREATE TABLE `arbitro` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `arbitro`
--

INSERT INTO `arbitro` (`ID`, `nome`) VALUES
(1, 'Sandro Meira Ricci'),
(2, 'Ricardo Marques Ribeiro'),
(3, 'Anderson Daronco'),
(4, 'Wilton Pereira Sampaio'),
(5, 'Luiz Flávio de Oliveira'),
(6, 'Heber Roberto'),
(7, 'Rafael Traci'),
(8, 'Rodrigo Nunes'),
(9, 'Dewson Fernando'),
(10, 'Luiz Antônio');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `id_equipe` int(11) DEFAULT NULL,
  `id_posicao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atleta`
--

INSERT INTO `atleta` (`ID`, `nome`, `data_nascimento`, `id_equipe`, `id_posicao`) VALUES
(1, 'Matheus Cavichioli', '1986-07-26', 1, 1),
(2, 'Daniel Borges', '1993-03-23', 1, 2),
(3, 'Marlon Xavier', '1997-05-20', 1, 2),
(4, 'Danilo Avelar', '1989-06-09', 1, 2),
(5, 'Iago Maiadana', '1996-02-06', 1, 2),
(6, 'Javier Méndez', '1994-12-05', 1, 3),
(7, 'Emmanuel Martínez', '1994-06-04', 1, 3),
(8, 'Mateus Henrique', '2002-10-02', 1, 3),
(9, 'Felipe Azevedo', '1987-01-10', 1, 4),
(10, 'Aloísio dos Santos', '1988-06-19', 1, 4),
(11, 'Gonzalo Mastriani', '1993-04-28', 1, 4),
(12, 'Bento', '1999-06-10', 2, 1),
(13, 'Lucas Belezi', '2003-05-08', 2, 2),
(14, 'Zé Ivaldo', '1997-02-21', 2, 2),
(15, 'Kaique Rocha', '2001-02-28', 2, 2),
(16, 'Bruno Peres', '1990-03-01', 2, 2),
(17, 'Fernandinho', '1985-05-04', 2, 3),
(18, 'Gabriel Araujo', '2005-01-18', 2, 3),
(19, 'Alex Santana', '1995-05-13', 2, 3),
(20, 'Marcelo Cirino', '1992-01-22', 2, 4),
(21, 'Vitor Roque', '2005-02-28', 2, 4),
(22, 'Willian Gomes', '1986-11-19', 2, 4),
(23, 'Éverson', '1990-07-22', 3, 1),
(24, 'Bruno Fuchs', '1999-04-01', 3, 2),
(25, 'Guilherme Arana', '1997-04-14', 3, 2),
(26, 'Renzo Saravia', '1993-06-16', 3, 2),
(27, 'Mauricio Lemos', '1995-12-28', 3, 2),
(28, 'Edenilson', '1989-12-18', 3, 3),
(29, 'Otavio', '1994-05-04', 3, 3),
(30, 'Matías Zaracho', '1998-03-10', 3, 3),
(31, 'Hulk', '1986-07-25', 3, 4),
(32, 'Cristian Pavón', '1996-01-21', 3, 4),
(33, 'Paulinho', '2000-07-15', 3, 4),
(34, 'Marcos Felipe', '1996-01-21', 4, 1),
(35, 'Gilberto', '1989-06-05', 4, 2),
(36, 'Kanu', '1997-03-07', 4, 2),
(37, 'Vitor Hugo', '1991-05-20', 4, 2),
(38, 'Camilo Cándido', '1995-06-02', 4, 2),
(39, 'Julio Cesar', '1995-01-02', 4, 3),
(40, 'Cauly Oliveira', '1995-09-15', 4, 3),
(41, 'Thaciano', '1995-05-12', 4, 3),
(42, 'Ademir', '1995-02-16', 4, 4),
(43, 'Everaldo', '1991-07-05', 4, 4),
(44, 'Rafael Ratão', '1995-11-30', 4, 4),
(45, 'Lucas Perri', '1997-12-10', 5, 1),
(46, 'Víctor Cuesta', '1998-11-19', 5, 2),
(47, 'Hugo', '2001-09-20', 5, 2),
(48, 'Fernando Marçal', '1989-02-19', 5, 2),
(49, 'Leonel Di Plácido', '1994-01-28', 5, 2),
(50, 'Philipe Sampaio', '1994-11-11', 5, 3),
(51, 'Danilo', '1996-02-28', 5, 3),
(52, 'Tchê Tchê', '1992-08-30', 5, 3),
(53, 'Joao Victor', '1994-03-27', 5, 4),
(54, 'Tiquinho Soares', '1991-01-17', 5, 4),
(55, 'Diego Costa', '1988-10-07', 5, 4),
(56, 'Cleiton', '1997-08-18', 6, 1),
(57, 'Aderlan', '1990-08-18', 6, 2),
(58, 'André Hurtado', '2001-12-23', 6, 2),
(59, 'Natan', '2001-02-06', 6, 2),
(60, 'Juninho Capixaba', '1997-07-06', 6, 2),
(61, 'Matheus Fernandes', '1998-06-30', 6, 3),
(62, 'Jadson', '1983-10-05', 6, 3),
(63, 'Lucas Evangelista', '1995-02-06', 6, 3),
(64, 'Sorriso', '2001-02-23', 6, 4),
(65, 'Eduardo Sasha', '1992-02-24', 6, 4),
(66, 'Vitinho', '1998-03-24', 6, 4),
(67, 'Cássio', '1987-06-06', 7, 1),
(68, 'Fagner', '1989-06-11', 7, 2),
(69, 'Gil', '1987-06-12', 7, 2),
(70, 'Bruno Méndez', '1999-09-10', 7, 2),
(71, 'Fábio Santos', '1985-09-16', 7, 2),
(72, 'Fausto Vera', '2000-03-26', 7, 3),
(73, 'Giuliano', '1990-05-31', 7, 3),
(74, 'Renato Augusto', '1988-02-08', 7, 3),
(75, 'Maycon', '1997-07-15', 7, 3),
(76, 'Yuri Alberto', '2001-03-18', 7, 4),
(77, 'Róger Guedes', '1996-10-02', 7, 4),
(78, 'Gabriel Vasconcellos', '1992-09-27', 8, 1),
(79, 'Natanael', '2002-01-05', 8, 2),
(80, 'Henrique', '1986-10-14', 8, 2),
(81, 'Benjamín Kuscevic', '1996-05-02', 8, 2),
(82, 'Victor Luís', '1993-06-23', 8, 2),
(83, 'Jamerson Bahia', '1998-09-09', 8, 2),
(84, 'Bruno Gomes', '2001-04-04', 8, 3),
(85, 'Marcelino Moreno', '1994-06-25', 8, 3),
(86, 'Rodrigo Pinho', '1991-05-30', 8, 4),
(87, 'Robson', '1991-05-30', 8, 4),
(88, 'Alef Manga', '1994-11-29', 8, 4),
(89, 'Rafael Cabral', '1990-05-20', 9, 1),
(90, 'Willian Furtado', '1995-04-03', 9, 2),
(91, 'Luciano Castán', '1989-09-13', 9, 2),
(92, 'Neris', '1992-06-17', 9, 2),
(93, 'Lucas Oliveira', '1996-02-02', 9, 2),
(94, 'Marlon', '1997-05-20', 9, 2),
(95, 'Mateus Vital', '1998-02-12', 9, 3),
(96, 'Filipe Machado', '1996-01-20', 9, 3),
(97, 'Gilberto', '1989-06-05', 9, 4),
(98, 'Bruno Rodrigues', '1997-03-07', 9, 4),
(99, 'Wesley Ribeiro', '1999-03-30', 9, 4),
(100, 'Walter', '1987-11-18', 10, 1),
(101, 'Matheus Alexandre', '1999-04-07', 10, 2),
(102, 'Marllon', '1992-04-16', 10, 2),
(103, 'Alan Empereur', '1994-03-10', 10, 2),
(104, 'Rikelme', '2003-07-16', 10, 2),
(105, 'Raniele', '1996-12-31', 10, 3),
(106, 'Denilson Alves', '2001-03-23', 10, 3),
(107, 'Pablo Ceppelini', '1991-09-11', 10, 3),
(108, 'Fernando Sobral', '1994-12-17', 10, 3),
(109, 'Jonathan Cafú', '1991-07-10', 10, 4),
(110, 'Deyverson', '1991-05-08', 10, 4),
(111, 'Matheus Cunha', '2001-05-24', 11, 1),
(112, 'Wesley França', '2003-09-06', 11, 2),
(113, 'Léo Pereira', '1996-01-31', 11, 2),
(114, 'Fabrício Bruno', '1996-02-12', 11, 2),
(115, 'Ayrton Lucas', '1997-06-19', 11, 2),
(116, 'Thiago Maia', '1997-03-23', 11, 3),
(117, 'Éverton Ribeiro', '1989-04-10', 11, 3),
(118, 'De Arrascaeta', '1994-06-01', 11, 3),
(119, 'Gerson', '1997-05-20', 11, 3),
(120, 'Gabriel Barbosa', '1996-08-30', 11, 4),
(121, 'Pedro', '1997-06-20', 11, 4),
(122, 'Fábio', '1980-09-30', 12, 1),
(123, 'Samuel Xavier', '1990-06-06', 12, 2),
(124, 'Felipe Melo', '1983-06-26', 12, 2),
(125, 'Nino', '1997-04-10', 12, 2),
(126, 'André', '2001-07-11', 12, 3),
(127, 'PH Ganso', '1989-10-12', 12, 3),
(128, 'Lima', '1996-06-11', 12, 3),
(129, 'Matheus Martinelli', '2001-10-05', 12, 3),
(130, 'Germán Cano', '1988-01-02', 12, 4),
(131, 'Keno', '1989-09-10', 12, 4),
(132, 'Jhon Arias', '1997-09-21', 12, 4),
(133, 'João Ricardo', '1988-09-06', 13, 1),
(134, 'Tinga', '1993-09-01', 13, 2),
(135, 'Emanuel Brítez', '1992-03-26', 13, 2),
(136, 'Titi', '1988-03-12', 13, 2),
(137, 'Bruno Pacheco', '1991-12-08', 13, 2),
(138, 'Zé Welisson', '1995-03-11', 13, 3),
(139, 'Caio Alexandre', '1999-02-23', 13, 3),
(140, 'Yago Pikachu', '1992-06-05', 13, 3),
(141, 'Tomás Pochettino', '1996-02-01', 13, 3),
(142, 'Thiago Galhardo', '1989-07-20', 13, 4),
(143, 'Juan Martín', '1991-10-10', 13, 4),
(144, 'Tadeu', '1992-02-04', 14, 1),
(145, 'Maguinho', '1992-01-06', 14, 2),
(146, 'Bruno Melo', '1992-10-26', 14, 2),
(147, 'Lucas Halter', '2000-05-02', 14, 2),
(148, 'Sander', '1990-10-03', 14, 2),
(149, 'Hugo', '1997-08-29', 14, 2),
(150, 'Willian Oliveira', '1993-05-16', 14, 3),
(151, 'Zé Ricardo', '1971-03-13', 14, 3),
(152, 'Everton Morelli', '1997-11-04', 14, 3),
(153, 'Julián Palacios', '1999-02-04', 14, 3),
(154, 'Vinícius', '1993-08-03', 14, 4),
(155, 'Gabriel Grando', '2000-03-29', 15, 1),
(156, 'João Pedro', '1996-11-15', 15, 2),
(157, 'Bruno Uvini', '1991-06-03', 15, 2),
(158, 'Wálter Kannemann', '1991-03-14', 15, 2),
(159, 'Bruno Alves', '1991-04-16', 15, 2),
(160, 'Reinaldo', '1989-09-28', 15, 2),
(161, 'Franco Cristaldo', '1996-08-15', 15, 3),
(162, 'Felipe Carballo', '1996-10-04', 15, 3),
(163, 'Mathias Villasanti', '1997-01-24', 15, 3),
(164, 'Bitello', '2000-01-07', 15, 3),
(165, 'Luis Suárez', '1987-01-24', 15, 4),
(166, 'Keiller', '1996-10-29', 16, 1),
(167, 'Fabricio Bustos', '1996-04-28', 16, 2),
(168, 'Gabriel Mercado', '1987-03-18', 16, 2),
(169, 'Vitão', '2000-02-02', 16, 2),
(170, 'Renê', '1992-09-14', 16, 2),
(171, 'Alan Patrick', '1991-05-13', 16, 3),
(172, 'Maurício', '2001-06-22', 16, 3),
(173, 'Johnny', '2001-09-20', 16, 3),
(174, 'Pedro Henrique', '1990-06-16', 16, 4),
(175, 'Wanderson', '1994-10-07', 16, 4),
(176, 'Carlos de Peña', '1992-03-11', 16, 4),
(177, 'Weverton', '1987-12-13', 17, 1),
(178, 'Mayke', '1992-11-10', 17, 2),
(179, 'Luan', '1993-05-10', 17, 2),
(180, 'Gustavo Gómez', '1993-05-06', 17, 2),
(181, 'Murilo', '1997-03-27', 17, 2),
(182, 'Joaquín Piquerez', '1998-08-23', 17, 2),
(183, 'Raphael Veiga', '1995-06-19', 17, 3),
(184, 'Zé Rafael', '1993-06-16', 17, 3),
(185, 'Gabriel Menino', '2000-09-29', 17, 3),
(186, 'Rony', '1995-05-11', 17, 4),
(187, 'Dudu', '1992-01-07', 17, 4),
(188, 'João Paulo', '1995-06-29', 18, 1),
(189, 'Messias Júnior', '1994-11-03', 18, 2),
(190, 'Joaquim Henrique', '1998-12-28', 18, 2),
(191, 'Lucas Pires', '2001-03-24', 18, 2),
(192, 'Dodi', '1996-04-17', 18, 3),
(193, 'Lucas Lima', '1990-07-09', 18, 3),
(194, 'Rodrigo Fernández', '1996-01-03', 18, 3),
(195, 'Stiven Mendoza', '1992-06-27', 18, 4),
(196, 'Marcos Leonardo', '2003-05-02', 18, 4),
(197, 'Yeferson Soteldo', '1997-06-30', 18, 4),
(198, 'Lucas Braga', '1996-11-10', 18, 4),
(199, 'Rafael', '1989-06-23', 19, 1),
(200, 'Rafinha', '1985-09-07', 19, 2),
(201, 'Robert Arboleda', '1991-10-22', 19, 2),
(202, 'Lucas Beraldo', '2003-11-24', 19, 2),
(203, 'Caio Paulista', '1998-05-11', 19, 2),
(204, 'Pablo Maia', '2002-01-10', 19, 3),
(205, 'Alisson', '1993-06-25', 19, 3),
(206, 'Rodrigo Nestor', '2000-08-09', 19, 3),
(207, 'Luciano', '1993-05-18', 19, 4),
(208, 'Jonathan Calleri', '1993-09-23', 19, 4),
(209, 'Wellington Rato', '1992-06-18', 19, 4),
(210, 'Léo Jardim', '1995-03-20', 20, 1),
(211, 'Lucas Piton', '2000-10-09', 20, 2),
(212, 'Pumita Rodríguez', '1997-03-14', 20, 2),
(213, 'Léo', '1996-03-06', 20, 2),
(214, 'Robson Bambu', '1997-11-12', 20, 2),
(215, 'Gary Medel', '1987-08-03', 20, 3),
(216, 'Jair', '1994-08-26', 20, 3),
(217, 'Zé Gabriel', '1999-01-21', 20, 3),
(218, 'Gabriel Pec', '2001-02-11', 20, 4),
(219, 'Pedro Raul', '1996-11-05', 20, 4),
(220, 'Alex Teixeira', '1990-01-06', 20, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tecnico` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`ID`, `nome`, `tecnico`) VALUES
(1, 'América-MG', 'Vagner Mancini'),
(2, 'Athletico-PR', 'Paulo Turra'),
(3, 'Atlético-MG', 'Eduardo Coudet'),
(4, 'Bahia', 'Renato Paiva'),
(5, 'Botafogo', 'Luís Castro'),
(6, 'Bragantino', 'Pedro Caixinha'),
(7, 'Corinthians', 'Fernando Lázaro'),
(8, 'Coritiba', 'António Oliveira'),
(9, 'Cruzeiro', 'Paulo Pezzolano'),
(10, 'Cuiabá', 'Ivo Vieira'),
(11, 'Flamengo', 'Vítor Pereira'),
(12, 'Fluminense', 'Fernando Diniz'),
(13, 'Fortaleza', 'Juan Pablo Vojvoda'),
(14, 'Goiás', 'Guto Ferreira'),
(15, 'Grêmio', 'Renato Gaúcho'),
(16, 'Internacional', 'Mano Menezes'),
(17, 'Palmeiras', 'Abel Ferreira'),
(18, 'Santos', 'Odair Hellmann'),
(19, 'São Paulo', 'Rogério Ceni '),
(20, 'Vasco', 'Maurício Barbieri');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estadio`
--

CREATE TABLE `estadio` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estadio`
--

INSERT INTO `estadio` (`ID`, `nome`) VALUES
(1, 'Maracanã'),
(2, 'Mineirão'),
(3, 'Beira-Rio'),
(4, 'Arena Corinthians'),
(5, 'Morumbi'),
(6, 'Allianz Parque'),
(7, 'Fonte Nova'),
(8, 'Arena da Baixada'),
(9, 'Vila Belmiro'),
(10, 'Estádio Olímpico');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gol`
--

CREATE TABLE `gol` (
  `ID` int(11) NOT NULL,
  `id_atleta` int(11) DEFAULT NULL,
  `id_jogo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `gol`
--

INSERT INTO `gol` (`ID`, `id_atleta`, `id_jogo`) VALUES
(1, 132, 1),
(2, 130, 1),
(3, 131, 1),
(4, 186, 2),
(5, 184, 2),
(6, 105, 2),
(7, 17, 3),
(8, 22, 3),
(9, 140, 4),
(10, 175, 4),
(11, 43, 5),
(12, 63, 5),
(13, 65, 5),
(14, 54, 6),
(15, 208, 6),
(16, 52, 6),
(17, 219, 7),
(18, 218, 7),
(19, 31, 7),
(20, 118, 8),
(21, 120, 8),
(22, 121, 8),
(23, 75, 9),
(24, 77, 9),
(25, 93, 9),
(26, 156, 10),
(27, 132, 11),
(28, 128, 11),
(29, 207, 12),
(30, 208, 12),
(31, 206, 12),
(32, 109, 13),
(33, 64, 13),
(34, 98, 14),
(35, 119, 15),
(36, 173, 15),
(37, 176, 15),
(38, 219, 17),
(39, 218, 17),
(40, 184, 17),
(41, 187, 17),
(42, 142, 18),
(43, 140, 18),
(44, 140, 18),
(45, 77, 19),
(46, 150, 19),
(47, 147, 19),
(48, 154, 19),
(49, 53, 20),
(50, 44, 20),
(51, 52, 20),
(52, 99, 21),
(53, 198, 21),
(54, 99, 21),
(55, 219, 22),
(56, 128, 22),
(57, 10, 23),
(58, 102, 23),
(59, 108, 23),
(60, 37, 24),
(61, 84, 24),
(62, 41, 24),
(63, 43, 24),
(64, 120, 25),
(65, 21, 25),
(66, 22, 25),
(67, 207, 26),
(68, 204, 26),
(69, 53, 27),
(70, 55, 27),
(71, 186, 28),
(72, 181, 28),
(73, 183, 28),
(74, 185, 28),
(75, 187, 28),
(76, 161, 29),
(77, 61, 29),
(78, 65, 29),
(79, 165, 29),
(80, 162, 29),
(81, 66, 29),
(82, 139, 30),
(83, 76, 30),
(84, 198, 31),
(85, 195, 31),
(86, 196, 31),
(87, 10, 32),
(88, 63, 32),
(89, 63, 32),
(90, 10, 32),
(91, 20, 33),
(92, 22, 33),
(93, 31, 34),
(94, 31, 34),
(95, 32, 34),
(96, 33, 34),
(97, 121, 35),
(98, 117, 35),
(99, 127, 36),
(100, 130, 36),
(101, 183, 37),
(102, 164, 37),
(103, 183, 37),
(104, 178, 37),
(105, 179, 37),
(106, 87, 38),
(107, 217, 38),
(108, 54, 39),
(109, 54, 39),
(110, 55, 39),
(111, 119, 41),
(112, 120, 41),
(113, 43, 41),
(114, 115, 41),
(115, 42, 41),
(116, 125, 42),
(117, 127, 42),
(118, 186, 43),
(119, 60, 43),
(120, 30, 44),
(121, 33, 44),
(122, 209, 46),
(123, 77, 46),
(124, 197, 47),
(125, 85, 48),
(126, 21, 48),
(127, 87, 48),
(128, 22, 48),
(129, 18, 48),
(130, 92, 49),
(131, 94, 49),
(132, 97, 49),
(133, 97, 49),
(134, 54, 50),
(135, 146, 50),
(136, 145, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo`
--

CREATE TABLE `jogo` (
  `ID` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `id_equipe1` int(11) DEFAULT NULL,
  `id_equipe2` int(11) DEFAULT NULL,
  `id_estadio` int(11) DEFAULT NULL,
  `id_arbitro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogo`
--

INSERT INTO `jogo` (`ID`, `data`, `id_equipe1`, `id_equipe2`, `id_estadio`, `id_arbitro`) VALUES
(1, '2023-04-15', 1, 12, 1, 1),
(2, '2023-04-15', 17, 10, 2, 2),
(3, '2023-04-15', 2, 14, 3, 3),
(4, '2023-04-15', 13, 16, 4, 4),
(5, '2023-04-15', 6, 4, 5, 5),
(6, '2023-04-15', 5, 19, 6, 6),
(7, '2023-04-15', 3, 20, 7, 7),
(8, '2023-04-16', 11, 8, 8, 8),
(9, '2023-04-16', 7, 9, 9, 9),
(10, '2023-04-16', 15, 18, 10, 10),
(11, '2023-04-22', 12, 2, 10, 10),
(12, '2023-04-22', 19, 1, 9, 9),
(13, '2023-04-22', 10, 6, 8, 8),
(14, '2023-04-22', 9, 15, 7, 7),
(15, '2023-04-23', 16, 11, 6, 6),
(16, '2023-04-23', 18, 3, 5, 5),
(17, '2023-04-23', 20, 17, 4, 4),
(18, '2023-04-23', 8, 13, 3, 3),
(19, '2023-04-23', 14, 7, 2, 2),
(20, '2023-04-24', 4, 5, 1, 1),
(21, '2023-05-06', 9, 18, 1, 1),
(22, '2023-05-06', 12, 20, 2, 2),
(23, '2023-05-07', 1, 10, 3, 3),
(24, '2023-05-07', 4, 8, 4, 4),
(25, '2023-05-07', 2, 11, 5, 5),
(26, '2023-05-07', 19, 16, 6, 6),
(27, '2023-05-07', 5, 3, 7, 7),
(28, '2023-05-07', 14, 17, 8, 8),
(29, '2023-05-07', 15, 6, 9, 9),
(30, '2023-05-08', 7, 13, 10, 10),
(31, '2023-05-10', 18, 4, 10, 10),
(32, '2023-05-10', 6, 1, 9, 9),
(33, '2023-05-10', 16, 2, 8, 8),
(34, '2023-05-10', 10, 3, 7, 7),
(35, '2023-05-10', 11, 14, 6, 6),
(36, '2023-05-10', 9, 12, 5, 5),
(37, '2023-05-10', 17, 15, 4, 4),
(38, '2023-05-11', 8, 20, 3, 3),
(39, '2023-05-11', 5, 7, 2, 2),
(40, '2023-05-11', 13, 19, 1, 1),
(41, '2023-05-13', 4, 11, 1, 1),
(42, '2023-05-13', 12, 10, 2, 2),
(43, '2023-05-13', 17, 6, 3, 3),
(44, '2023-05-13', 3, 16, 4, 4),
(45, '2023-05-14', 15, 13, 5, 5),
(46, '2023-05-14', 7, 19, 6, 6),
(47, '2023-05-14', 20, 18, 7, 7),
(48, '2023-05-14', 2, 8, 8, 8),
(49, '2023-05-14', 1, 9, 9, 9),
(50, '2023-05-14', 14, 5, 10, 10),
(51, '2023-05-20', 4, 14, 10, 10),
(52, '2023-05-20', 6, 2, 9, 9),
(53, '2023-05-20', 8, 3, 8, 8),
(54, '2023-05-20', 1, 13, 7, 7),
(55, '2023-05-20', 19, 20, 6, 6),
(56, '2023-05-20', 5, 12, 5, 5),
(57, '2023-05-20', 18, 17, 4, 4),
(58, '2023-05-21', 11, 7, 3, 3),
(59, '2023-05-21', 15, 16, 2, 2),
(60, '2023-05-22', 9, 10, 1, 1),
(61, '2023-05-27', 13, 20, 1, 1),
(62, '2023-05-27', 2, 15, 2, 2),
(63, '2023-05-27', 11, 9, 3, 3),
(64, '2023-05-27', 10, 8, 4, 4),
(65, '2023-05-27', 19, 14, 5, 5),
(66, '2023-05-28', 16, 4, 6, 6),
(67, '2023-05-28', 7, 12, 7, 7),
(68, '2023-05-28', 6, 18, 8, 8),
(69, '2023-05-28', 3, 17, 9, 9),
(70, '2023-05-28', 5, 1, 10, 10),
(71, '2023-06-03', 13, 4, 1, 1),
(72, '2023-06-03', 9, 3, 2, 2),
(73, '2023-06-03', 2, 5, 3, 3),
(74, '2023-06-03', 1, 7, 4, 4),
(75, '2023-06-03', 18, 16, 5, 5),
(76, '2023-06-04', 15, 19, 6, 6),
(77, '2023-06-04', 12, 6, 7, 7),
(78, '2023-06-04', 17, 8, 8, 8),
(79, '2023-06-04', 14, 10, 9, 9),
(80, '2023-06-05', 20, 11, 10, 10),
(81, '2023-06-10', 8, 18, 10, 10),
(82, '2023-06-10', 7, 10, 9, 9),
(83, '2023-06-10', 3, 6, 8, 8),
(84, '2023-06-10', 4, 9, 7, 7),
(85, '2023-06-10', 5, 13, 6, 6),
(86, '2023-06-11', 1, 2, 5, 5),
(87, '2023-06-11', 19, 17, 4, 4),
(88, '2023-06-11', 16, 20, 3, 3),
(89, '2023-06-11', 14, 12, 2, 2),
(90, '2023-06-11', 11, 15, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `posicao`
--

CREATE TABLE `posicao` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posicao`
--

INSERT INTO `posicao` (`ID`, `nome`) VALUES
(1, 'Goleiro'),
(2, 'Defensor'),
(3, 'Meio-Campista'),
(4, 'Atacante');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_equipe` (`id_equipe`),
  ADD KEY `id_posicao` (`id_posicao`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `gol`
--
ALTER TABLE `gol`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_atleta` (`id_atleta`),
  ADD KEY `id_jogo` (`id_jogo`);

--
-- Índices de tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_equipe1` (`id_equipe1`),
  ADD KEY `id_equipe2` (`id_equipe2`),
  ADD KEY `id_estadio` (`id_estadio`),
  ADD KEY `id_arbitro` (`id_arbitro`);

--
-- Índices de tabela `posicao`
--
ALTER TABLE `posicao`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arbitro`
--
ALTER TABLE `arbitro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `estadio`
--
ALTER TABLE `estadio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `gol`
--
ALTER TABLE `gol`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `posicao`
--
ALTER TABLE `posicao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `atleta_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`ID`),
  ADD CONSTRAINT `atleta_ibfk_2` FOREIGN KEY (`id_posicao`) REFERENCES `posicao` (`ID`);

--
-- Restrições para tabelas `gol`
--
ALTER TABLE `gol`
  ADD CONSTRAINT `gol_ibfk_1` FOREIGN KEY (`id_atleta`) REFERENCES `atleta` (`ID`),
  ADD CONSTRAINT `gol_ibfk_2` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`ID`);

--
-- Restrições para tabelas `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`id_equipe1`) REFERENCES `equipe` (`ID`),
  ADD CONSTRAINT `jogo_ibfk_2` FOREIGN KEY (`id_equipe2`) REFERENCES `equipe` (`ID`),
  ADD CONSTRAINT `jogo_ibfk_3` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`ID`),
  ADD CONSTRAINT `jogo_ibfk_4` FOREIGN KEY (`id_arbitro`) REFERENCES `arbitro` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
