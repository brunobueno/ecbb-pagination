-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15-Out-2016 às 23:57
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paginacao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscrito`
--

CREATE TABLE `inscrito` (
  `id` int(11) NOT NULL,
  `cpf` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `inscrito`
--

INSERT INTO `inscrito` (`id`, `cpf`, `nome`, `telefone`, `email`) VALUES
(1, '094.194.659-26', 'Eduardo Donato Carriel', '(21) 6321-53531', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(2, '076.410.789-58', 'Bruno Bueno', '(43) 9900-8769', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(3, '987.654.321-00', 'Joana Prado', '(23) 2027-43743', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(4, '185.302.491-00', 'Adalberto Alves Dias', '(12) 3213-21321', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(5, '495.854.286-87', 'Adilson Pereira', '(23) 8230-92372', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(6, '297.276.931-72', 'Adauto Gomes Barros', '(12) 3213-21321', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(7, '097.979.041-72', 'Adauto Jose de Abreu', '(12) 3214-12414', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(8, '024.536.146-49', 'Zenaide Martins', '(23) 2840-32472', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(9, '120.848.671-34', 'Adauto Pereira da Silva', '(81) 7638-63182', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(10, '364.607.531-72', 'Beatriz de Souza Santos', '(17) 8263-81263', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(11, '285.493.416-49', 'Roberto Dante', '(34) 3803-47234', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(12, '057.590.131-49', 'Bismark Batista de Oloiveira', '(98) 3479-56378', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(13, '152.926.221-68', 'Carmelia Gomes da Silva', '(87) 3817-39812', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(14, '265.433.706-53', 'Paulo Martins', '(58) 3482-40980', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(15, '610.627.311-15', 'Charles da Silva', '(82) 1973-12863', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(16, '038.081.061-15', 'Dagmar Paiva Marra', '(82) 1738-21372', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(17, '030.339.886-87', 'Joao Paulo', '(23) 4320-42734', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(18, '373.346.461-34', 'Edivande de Lima', '(78) 3183-35104', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(19, '214.909.961-68', 'Florenilson Itacaramby de Almeida', '(36) 1287-64872', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(20, '384.973.871-04', 'Frank Deusdara de Souza', '(21) 7863-87213', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(21, '056.716.716-04', 'Vinicius Pereira', '(32) 4803-40293', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(22, '069.262.233-00', 'Hamilson dos Reis Freitas', '(18) 2376-21838', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(23, '182.362.511-87', 'Iracilda Maria Monteiro', '(87) 4834-98802', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(24, '635.501.486-15', 'Marcos Bueno', '(23) 8120-39804', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(25, '444.200.561-34', 'Irene Gomes de Oliveira', '(12) 7831-29739', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(26, '803.234.486-15', 'Karen Almeida', '(32) 4830-94823', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(27, '799.332.389-49', 'Jacson Bandeira dos Santos', '(29) 3721-83812', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(28, '583.278.436-72', 'Quelen Silva', '(58) 9680-49580', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(29, '079.942.303-34', 'Jeremias Jorge Pereira', '(12) 8733-93379', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(30, '399.759.161-04', 'Joana Graciema', '(21) 8732-17838', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(31, '515.645.035-00', 'Bruno Bueno', '(43) 9900-8769', 'c20590895075069978314@sandbox.pagseguro.com.br'),
(32, '427.800.351-02', 'Davi Ribeiro', '(61) 8129-4164', NULL),
(33, '533.366.289-46', 'Carolina Cardoso', '(41) 2150-2201', NULL),
(34, '990.307.170-17', 'Kauê Santos', '(98) 7843-9504', NULL),
(35, '917.020.863-80', 'Júlio Martins', '(62) 9118-4427', NULL),
(36, '531.136.295-27', 'Livia Dias', '(41) 7613-3280', NULL),
(37, '312.837.758-83', 'Maria Silva', '(19) 2989-6448', NULL),
(38, '591.679.519-02', 'Luiz Pinto', '(11) 9506-7789', NULL),
(39, '409.731.607-99', 'Giovana Cunha', '(11) 9060-3973', NULL),
(40, '440.007.462-51', 'Eduardo Ferreira', '(82) 4720-3792', NULL),
(41, '416.579.776-68', 'Rebeca Costa', '(11) 4979-4307', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inscrito`
--
ALTER TABLE `inscrito`
  ADD PRIMARY KEY (`id`,`cpf`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inscrito`
--
ALTER TABLE `inscrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
