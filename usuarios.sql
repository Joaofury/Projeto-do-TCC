-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Jun-2022 às 02:56
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

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
(26, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(27, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(28, 'arrumaai@gmail.com', 'sddsdfs', '202cb962ac59075b964b07152d234b70', 2147483647),
(29, 'joaovictormorenos321@gmail.com', 'wewrwer', '2321994d85d661d792223f647000c65f', 2147483647),
(30, 'joaovictormorenos123@gmail.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 2147483647),
(31, 'joaovictormorenos123@gmail.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 2147483647),
(32, '', 'gdfg34', '0c0b3da4ac402bd86191d959be081114', 2147483647);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_controlefinanceiro`
--

CREATE TABLE `tab_controlefinanceiro` (
  `id` int(11) NOT NULL,
  `nomemov` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `data` date NOT NULL,
  `categoria` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `valor` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_controlefinanceiro`
--

INSERT INTO `tab_controlefinanceiro` (`id`, `nomemov`, `data`, `categoria`, `valor`) VALUES
(1, '', '2022-06-08', 'Contas', 150),
(2, '', '2022-06-30', 'Salário', 1200),
(3, 'Teste', '0000-00-00', '', 0),
(4, 'Teste', '2022-06-07', 'Contas', 150),
(5, '', '0000-00-00', '', 0),
(6, '', '0000-00-00', '', 0),
(7, '', '0000-00-00', '', 0),
(8, '', '0000-00-00', '', 0),
(9, '', '0000-00-00', '', 0),
(10, 'gt', '0000-00-00', '', 0),
(11, '', '0000-00-00', '', 0),
(12, '', '0000-00-00', '', 0),
(13, 'rty', '0000-00-00', '', 0),
(14, '', '2022-06-27', 'Contas', 123),
(15, '', '0000-00-00', '', 0),
(16, '', '0000-00-00', '', 0),
(17, '', '2022-05-31', 'Salário', 23421),
(18, 'sdfsd', '2022-05-31', 'Compras', 342),
(19, '', '2022-06-15', 'Contas', 343),
(20, 'a', '1111-11-11', 'Salário', 23),
(21, 'sd', '0011-01-11', 'Contas', 11),
(22, 'Teste', '2022-05-29', 'Salário', 136),
(23, 'Teste', '2022-06-08', 'Compras', 132),
(24, 'teste', '2022-06-07', 'Salário', 1355);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tablogin`
--
ALTER TABLE `tablogin`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tab_controlefinanceiro`
--
ALTER TABLE `tab_controlefinanceiro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tablogin`
--
ALTER TABLE `tablogin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `tab_controlefinanceiro`
--
ALTER TABLE `tab_controlefinanceiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
