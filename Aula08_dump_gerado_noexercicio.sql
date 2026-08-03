-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2026 at 03:04 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `idcurso` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int UNSIGNED DEFAULT NULL,
  `totaulas` int UNSIGNED DEFAULT NULL,
  `ano` year DEFAULT '2026',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, '2014'),
(2, 'Algoritmos', 'Lógica de Programação', 20, 15, '2014'),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, '2014'),
(4, 'PHP', 'Curso de PHP para iniciantes', 40, 20, '2015'),
(5, 'Java', 'Introdução à Linguagem Java', 40, 29, '2015'),
(6, 'MySQL', 'Banco de Dados MySQL', 30, 15, '2016'),
(7, 'Word', 'Curso completo de Word', 40, 30, '2016');

-- --------------------------------------------------------

--
-- Table structure for table `individuos`
--

CREATE TABLE IF NOT EXISTS `individuos` (
  `codigo` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `individuos`
--

INSERT INTO `individuos` (`codigo`, `id`, `nome`, `prof`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(NULL, 1, 'Gustavin', 'N/A', '1984-01-02', 'M', 78.50, 1.83, 'Brasil'),
(NULL, 2, 'Maria', 'N/A', '1999-12-30', 'F', 55.20, 1.65, 'Portugal'),
(NULL, 3, 'Creuza', 'N/A', '1920-12-30', 'F', 50.20, 1.65, 'Brasil'),
(NULL, 4, 'Adalgiza', 'N/A', '1930-11-02', 'F', 63.20, 1.75, 'Irlanda'),
(NULL, 5, 'Claudio', 'N/A', '1975-04-22', 'M', 99.00, 2.15, 'Brasil'),
(NULL, 6, 'Pedro', 'N/A', '1999-12-03', 'M', 87.00, 2.00, 'Brasil'),
(NULL, 7, 'Janaína', 'N/A', '1987-11-12', 'F', 75.40, 1.66, 'EUA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
