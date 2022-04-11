-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Abr-2022 às 17:35
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `usuario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tablogin`
--

CREATE TABLE `tablogin` (
  `ID` int(11) NOT NULL,
  `email` varchar(40) COLLATE utf8_bin NOT NULL,
  `usuario` varchar(15) COLLATE utf8_bin NOT NULL,
  `senha` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tablogin`
--

INSERT INTO `tablogin` (`ID`, `email`, `usuario`, `senha`) VALUES
(1, 'joaovictormorenos123@gmail.com', '', '12312'),
(26, '234234234@sefdjsdf.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced'),
(27, 'joaovictormorenos123@gmail.com', 'joaofury', '827ccb0eea8a706c4c34a16891f84e7b'),
(28, 'aadasd@asdsad.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced'),
(29, 'joaovictormorenos123@gmail.com', 'fury', '202cb962ac59075b964b07152d234b70'),
(30, 'joaovictormorenos123@gmail.com', 'aa', '202cb962ac59075b964b07152d234b70');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tablogin`
--
ALTER TABLE `tablogin`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tablogin`
--
ALTER TABLE `tablogin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
