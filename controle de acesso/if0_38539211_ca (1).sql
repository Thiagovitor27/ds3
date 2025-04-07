-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.infinityfree.com
-- Tempo de geração: 07/04/2025 às 10:52
-- Versão do servidor: 10.6.19-MariaDB
-- Versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_38539211_ca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `morador`
--

CREATE TABLE `morador` (
  `id_morador` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `bloco` varchar(1) DEFAULT NULL,
  `apartamento` int(3) DEFAULT NULL,
  `telefone` int(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `morador`
--

INSERT INTO `morador` (`id_morador`, `nome`, `cpf`, `bloco`, `apartamento`, `telefone`) VALUES
(1, 'Talla Santana', 987654321, '1', 12, 43215678),
(2, 'Aurelio Duarte', 123456789, '1', 37, 87655432),
(3, 'Márcia Santos', 999888777, '2', 110, 22334455),
(4, 'Lucia Almeida', 333444555, '1', 71, 78693415),
(5, 'Carlos Andrade', 244477766, '2', 98, 51512323),
(6, 'Lilian Farias', 888222111, '2', 26, 65435698);

-- --------------------------------------------------------

--
-- Estrutura para tabela `visita`
--

CREATE TABLE `visita` (
  `id_visita` int(11) NOT NULL,
  `id_visitante` int(11) DEFAULT NULL,
  `id_morador` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `obs` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `visitante`
--

CREATE TABLE `visitante` (
  `id_visitante` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `telefone` int(9) DEFAULT NULL,
  `foto` blob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `morador`
--
ALTER TABLE `morador`
  ADD PRIMARY KEY (`id_morador`);

--
-- Índices de tabela `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`id_visita`);

--
-- Índices de tabela `visitante`
--
ALTER TABLE `visitante`
  ADD PRIMARY KEY (`id_visitante`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `morador`
--
ALTER TABLE `morador`
  MODIFY `id_morador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `visita`
--
ALTER TABLE `visita`
  MODIFY `id_visita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `visitante`
--
ALTER TABLE `visitante`
  MODIFY `id_visitante` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
