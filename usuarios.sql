-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Abr-2022 às 18:01
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
-- Banco de dados: `usuarios`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tablogin`
--

CREATE TABLE `tablogin` (
  `ID` int(11) NOT NULL,
  `email` varchar(40) COLLATE utf8_bin NOT NULL,
  `usuario` varchar(15) COLLATE utf8_bin NOT NULL,
  `senha` varchar(50) COLLATE utf8_bin NOT NULL,
  `cpf` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `tablogin`
--

INSERT INTO `tablogin` (`ID`, `email`, `usuario`, `senha`, `cpf`) VALUES
(1, 'joaovictormorenos123@gmail.com', 'aaa', '8010166944809d4cf358f95f3e6cbced', 1232),
(2, 'joaovictormorenos123@gmail.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 12),
(3, 'wewrwer@gmail.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 23),
(4, 'asdad@gmail.com', 'aaa', '202cb962ac59075b964b07152d234b70', 2147483647),
(5, 'asdad@gmail.com', 'aaa', '202cb962ac59075b964b07152d234b70', 2147483647),
(6, 'asdad@gmail.com', 'aaa', '202cb962ac59075b964b07152d234b70', 2147483647),
(7, 'asdad@gmail.com', '1111', '202cb962ac59075b964b07152d234b70', 2147483647),
(8, 'joaovictormorenos123@gmail.com', 'wewrwer', '202cb962ac59075b964b07152d234b70', 2147483647),
(9, 'joaovictormorenos123@gmail.com', 'wewrwer', '979d472a84804b9f647bc185a877a8b5', 2147483647),
(10, 'joaovictormorenos123@gmail.com', 'wewrwer', '979d472a84804b9f647bc185a877a8b5', 2147483647),
(11, 'joaovictormorenos123@gmail.com', 'wewrwer', '979d472a84804b9f647bc185a877a8b5', 2147483647),
(12, 'joaovictormorenos123@gmail.com', 'wewrwer', '979d472a84804b9f647bc185a877a8b5', 2147483647),
(13, 'joaovictormorenos123@gmail.com', 'wewrwer', '979d472a84804b9f647bc185a877a8b5', 2147483647),
(14, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(15, 'joaovictormorenos123@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(16, 'teste@teste.com', 'wewrwer', '202cb962ac59075b964b07152d234b70', 2147483647),
(17, 'teste@teste.com', 'wewrwer', '202cb962ac59075b964b07152d234b70', 2147483647),
(18, 'teste@teste.com', 'wewrwer', '202cb962ac59075b964b07152d234b70', 2147483647),
(19, 'teste@teste.com', 'wewrwer', '202cb962ac59075b964b07152d234b70', 2147483647),
(20, 'teste@teste.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 2147483647),
(21, 'joaovictormorenos123@gmail.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 2147483647),
(22, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(23, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(24, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(25, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(26, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(27, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(28, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(29, 'joaovictormorenos321@gmail.com', 'wewrwer', '2321994d85d661d792223f647000c65f', 2147483647),
(30, 'joaovictormorenos123@gmail.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 2147483647),
(31, 'joaovictormorenos123@gmail.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 2147483647);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
