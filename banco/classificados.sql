-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 06-Set-2018 às 18:03
-- Versão do servidor: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classificados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios`
--

DROP TABLE IF EXISTS `anuncios`;
CREATE TABLE IF NOT EXISTS `anuncios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL DEFAULT '0',
  `id_categoria` int(11) NOT NULL DEFAULT '0',
  `titulo` varchar(100) DEFAULT '0',
  `descricao` text,
  `valor` float DEFAULT '0',
  `estado` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anuncios`
--

INSERT INTO `anuncios` (`id`, `id_usuario`, `id_categoria`, `titulo`, `descricao`, `valor`, `estado`) VALUES
(4, 1, 1, 'Hublo 2', 'dsdsdsdsd', 300, 2),
(5, 1, 2, 'CalÃ§a jeans', 'boa calÃ§a.', 100, 1),
(6, 2, 4, 'Celta', 'Um carro de luxo.', 12000, 2),
(7, 2, 3, 'Celular', 'Em Ã³timo estado. poucas marcas de uso.', 500, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `anuncios_imagens`
--

DROP TABLE IF EXISTS `anuncios_imagens`;
CREATE TABLE IF NOT EXISTS `anuncios_imagens` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_anuncios` int(11) NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anuncios_imagens`
--

INSERT INTO `anuncios_imagens` (`id`, `id_anuncios`, `url`) VALUES
(14, 4, 'e7f1a56ea12b06b79c0d79205be7af92.jpg'),
(19, 5, '5009df743b1e1be84b17bcd7d124a9df.jpg'),
(18, 4, 'e73ddc7f10d521d7d7cb2cb39e0e6810.jpg'),
(17, 4, '526b683d3b7a71a33593aef15c982959.jpg'),
(20, 6, 'f964d2709fe3012cf380c424dddde4a1.jpg'),
(21, 7, '8e4472a077ca067dfd81bd920954479b.jpg'),
(22, 7, 'be41317d5bdfc278ee40e42553e7fd4b.jpg'),
(23, 7, '8e9245082d618f1d47f0aa1ed5db4b7c.jpg'),
(24, 7, 'f269fb5fc437dc037b404f8bd68334a7.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'Relógios'),
(2, 'Roupas'),
(3, 'Eletrônicos'),
(4, 'Carros');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `senha` varchar(32) NOT NULL DEFAULT '0',
  `telefone` varchar(30) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `telefone`) VALUES
(1, 'Adriano', 'eu-a@hotmail.com', '202cb962ac59075b964b07152d234b70', '83-9 9999-9999'),
(2, 'Fulano', 'fulano@gmail.com', '202cb962ac59075b964b07152d234b70', '00-9 1234-5678');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
