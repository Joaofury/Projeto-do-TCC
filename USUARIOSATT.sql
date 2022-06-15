-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jun-2022 às 03:40
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
(187, 'joaovictormorenos123@gmail.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 2147483647),
(188, 'juau@juau.com', 'wewrwer', '8010166944809d4cf358f95f3e6cbced', 2147483647),
(189, 'teste@testeteste.com', 'wewrwer', 'e10adc3949ba59abbe56e057f20f883e', 2147483647),
(190, 'joao@joao', 'joaofury', 'a624772d758d361e0fd9a4a63b1f9d5b', 2147483647),
(191, 'joao@joaoteste.com', 'Joaofury', 'e10adc3949ba59abbe56e057f20f883e', 2147483647),
(192, 'cesar@celke.com.br', 'joaofury2318989', '8010166944809d4cf358f95f3e6cbced', 2147483647),
(193, 'ppinformatizeADM@gmail.com', 'PPINFORMATIZEAD', 'e10adc3949ba59abbe56e057f20f883e', 2147483647);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_controlefinanceiro`
--

CREATE TABLE `tab_controlefinanceiro` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nomemov` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `valor` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tab_controlefinanceiro`
--

INSERT INTO `tab_controlefinanceiro` (`id`, `id_user`, `nomemov`, `data`, `categoria`, `valor`) VALUES
(18, 190, 'teste', '2022-06-20', 'Contas', 111),
(19, 190, 'teste', '2022-06-08', 'Contas', 111112),
(20, 191, 'teste', '2022-06-10', 'Contas', 155),
(21, 192, 'Compras do mercado - Tauste', '2022-06-13', 'Compras', 500),
(22, 192, 'João Victor Moreno Silva', '2022-06-13', 'Salário', 111),
(23, 192, 'salario', '2022-06-13', 'Salário', 111),
(24, 192, 'salario', '2022-06-13', 'Contas', 111),
(25, 192, 'João Victor Moreno Silva', '2022-07-07', 'Contas', 111),
(26, 192, 'sadassd', '2022-07-07', 'Contas', 111213),
(27, 192, '', '0000-00-00', '', 0),
(28, 192, 'e', '2022-05-31', 'Salário', 23423);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tablogin`
--
ALTER TABLE `tablogin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT de tabela `tab_controlefinanceiro`
--
ALTER TABLE `tab_controlefinanceiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tab_controlefinanceiro`
--
ALTER TABLE `tab_controlefinanceiro`
  ADD CONSTRAINT `tab_controlefinanceiro_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tablogin` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
