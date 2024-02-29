-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/10/2023 às 12:19
-- Versão do servidor: 5.6.17
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `meu_condominio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id` int(6) UNSIGNED NOT NULL,
  `dataa` date NOT NULL,
  `nome` varchar(30) NOT NULL,
  `opcao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id`, `dataa`, `nome`, `opcao`) VALUES
(28, '2023-05-17', 'Alberto Zimbuculo', 'Biblioteca');

-- --------------------------------------------------------

--
-- Estrutura para tabela `angola`
--

CREATE TABLE `angola` (
  `email` text NOT NULL,
  `nome` text NOT NULL,
  `hjg` text NOT NULL,
  `data` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `angola`
--

INSERT INTO `angola` (`email`, `nome`, `hjg`, `data`) VALUES
('hgggggggggggggggffffgfgfhgfgjtrfhggf', 'hffffffffffffffuiiiiiiiiiiiiiijftnjuy', '', 0),
('hjjjttttgfg', 'hgggggggggggg', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `bloco`
--

CREATE TABLE `bloco` (
  `id` int(6) UNSIGNED NOT NULL,
  `bloco` varchar(20) NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `bloco`
--

INSERT INTO `bloco` (`id`, `bloco`, `descricao`) VALUES
(1, 'A', 'Bloco Administrativo'),
(2, 'B', 'Bloco Academico'),
(3, 'D', 'Bloco Financeiro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `escola`
--

CREATE TABLE `escola` (
  `Nome` varchar(40) NOT NULL,
  `Idade` int(12) NOT NULL,
  `obs` text NOT NULL,
  `senha` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `contrato` enum('Mensal','Semanal','Diario') NOT NULL,
  `nif` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imovel`
--

CREATE TABLE `imovel` (
  `id` int(11) NOT NULL,
  `descri` varchar(40) DEFAULT NULL,
  `estatos` varchar(40) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `dataa` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `imovel`
--

INSERT INTO `imovel` (`id`, `descri`, `estatos`, `numero`, `dataa`) VALUES
(18, 'lindo', 'Inacabada', 2147483647, '2023-04-18'),
(19, 'Casa com alvenaria', 'Inacabada', 0, '2023-05-31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `moradores2`
--

CREATE TABLE `moradores2` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `bi` varchar(13) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `apartamento` varchar(40) DEFAULT NULL,
  `contacto` varchar(40) DEFAULT NULL,
  `obs` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `moradores2`
--

INSERT INTO `moradores2` (`id`, `nome`, `bi`, `senha`, `apartamento`, `contacto`, `obs`) VALUES
(45, 'Fabio Da Costa', '0098585656565', 'dddfdfdfdfdffdf', '22b', NULL, 'bom morador'),
(50, 'Cristiano Ronaldo', '0098585656565', 'jhjjhhjhj', '33444', NULL, 'Mauu'),
(51, 'Alberto Zimbuculo', '0098585656565', '1234', '8887', NULL, 'Executivo'),
(52, 'Alberto Zimbuculo', '0098585656565', '1234', '8887', NULL, 'Executivo'),
(53, 'Alberto Zimbuculo', '0098585656565', '1234', '8887', NULL, 'Executivo'),
(58, 'Cristiano Ronaldo', '0000444888888', '4444444444555', '4rrrrrrr', NULL, 'Famoso');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id` int(11) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `salario` int(40) NOT NULL,
  `aumento` varchar(40) NOT NULL,
  `desconto` varchar(40) NOT NULL,
  `dataa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `pagamento`
--

INSERT INTO `pagamento` (`id`, `usuario`, `salario`, `aumento`, `desconto`, `dataa`) VALUES
(1, 'Alberto Zimbuculo ', 200, '0%', '0%', '0000-00-00'),
(2, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(3, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(4, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(5, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(6, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(7, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(8, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(9, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(10, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(11, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(12, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(13, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(14, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(15, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(16, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(17, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(18, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(19, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(20, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(21, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(22, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(23, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(24, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(25, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(26, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(27, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(28, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(29, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(30, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(31, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(32, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(33, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(34, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(35, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(36, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(37, 'Alberto Zimbuculo ', 200, '0%', '0%', '2023-04-30'),
(38, 'Maria Rosa BrÃ¡s ', 200, '0%', '0%', '2023-04-30'),
(39, 'Maria Rosa BrÃ¡s ', 200, '0%', '0%', '2023-04-30'),
(40, 'Maria Rosa BrÃ¡s ', 0, '0%', '0%', '2023-04-30'),
(41, 'Alberto Zimbuculo ', 0, '0%', '0%', '2023-05-30'),
(42, 'Alberto Zimbuculo ', 0, '0%', '0%', '2023-05-31'),
(43, 'Alberto Zimbuculo ', 300, '15%', '3%', '2023-05-02'),
(44, 'kelvio ', 300, '5%', '0%', '2023-05-31'),
(45, 'Alberto Zimbuculo ', 0, '0%', '0%', '2023-05-31'),
(46, '', 0, '', '', '0000-00-00'),
(47, 'celestino teca ', 300, '30%', '0%', '2023-05-24'),
(48, 'Pedro Mabanza ', 40, '6%', '0%', '2023-09-20'),
(49, 'Pedro Mabanza ', 40, '6%', '0%', '2023-09-20');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `id` int(11) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `salario` decimal(18,0) NOT NULL,
  `aumento` varchar(40) NOT NULL,
  `desconto` varchar(40) NOT NULL,
  `   data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `pagamentos`
--

INSERT INTO `pagamentos` (`id`, `usuario`, `salario`, `aumento`, `desconto`, `   data`) VALUES
(0, 'dddd', 0, '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagar_contas`
--

CREATE TABLE `pagar_contas` (
  `id` int(6) UNSIGNED NOT NULL,
  `morador` varchar(50) NOT NULL,
  `taxas` varchar(50) NOT NULL,
  `iban` varchar(30) NOT NULL,
  `numero_da_conta` varchar(30) NOT NULL,
  `proprietario` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagar_contass`
--

CREATE TABLE `pagar_contass` (
  `id` int(11) NOT NULL,
  `morador` varchar(50) NOT NULL,
  `taxas` decimal(10,2) NOT NULL,
  `iban` varchar(20) NOT NULL,
  `conta` varchar(20) NOT NULL,
  `proprietario` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `pagar_contass`
--

INSERT INTO `pagar_contass` (`id`, `morador`, `taxas`, `iban`, `conta`, `proprietario`, `valor`) VALUES
(2, 'Alberto Zimbuculo', 0.00, '3333333', '33333', '3333333', 6666.00),
(3, 'Alberto Zimbuculo', 0.00, '0002588888', '0257888888', 'Sonangol', 2.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `artigo` varchar(255) DEFAULT NULL,
  `descricao` text,
  `data` date DEFAULT NULL,
  `funcionario` varchar(255) DEFAULT NULL,
  `fornecedor` varchar(255) DEFAULT NULL,
  `localizacao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `stock`
--

INSERT INTO `stock` (`id`, `artigo`, `descricao`, `data`, `funcionario`, `fornecedor`, `localizacao`) VALUES
(1, 'Mesa', 'Mesa de 4 lugares', '2023-05-31', 'Alberto Zimbuculo', 'Angomarte', 'Cetor B'),
(2, 'Cama', '4 Camas', '2023-12-31', 'Celestino', 'Jonh Locke', 'Cetor A');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario3`
--

CREATE TABLE `usuario3` (
  `id` int(11) NOT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `senha` varchar(40) DEFAULT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `designacao` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `usuario3`
--

INSERT INTO `usuario3` (`id`, `usuario`, `senha`, `nome`, `email`, `designacao`) VALUES
(14, 'Alberto Kelvio', 'Bernardo10', 'Alberto', 'albertozimbuculo2020@gmail.com', 'Funcionario'),
(16, 'Alberto Zimbuculo', 'Zimbuculo', 'alberto', 'albertozimbuculo2020@gmail.com', 'Gerente'),
(18, 'celestino teca', 'bv', 'celestino ', 'celestino94404@gmail.com', 'Gerente'),
(20, 'wilson', 'bv', 'wilson ', 'celestino94404@gmail.com', 'Funcionario'),
(21, 'Miguel', '123', 'Miguel', 'albertozimbuculo2020@gmail.com', 'Gerente'),
(23, 'Miguel Joao', '123', 'Miguel', 'albertozimbuculo2020@gmail.com', 'Funcionario'),
(24, 'Pedro Mabanza', '1234', 'pedro', 'john.doe@example.com', 'Gerente'),
(25, 'Francisco', 'Zimbuculo', '**', 'albertozimbuculo2020@gmail.com', 'Funcionario');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios2`
--

CREATE TABLE `usuarios2` (
  `id` int(11) DEFAULT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `senha` varchar(30) DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `designacao` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `usuarios2`
--

INSERT INTO `usuarios2` (`id`, `usuario`, `senha`, `nome`, `email`, `designacao`) VALUES
(NULL, 'bjkkkgkgkgtcdrydytfyj', 'dd', 'eeeeee', 'albertozimbuculo2020@gmail.com', 'hbhbgvgh'),
(NULL, 'Alberto', 'dd', 'Bernardo1', 'kellystarlonely@gmail.com', 'Dono do cyber'),
(NULL, 'Bernardo Manuel', 'Bernardo10', 'Bernardo1', 'kellystarlonely@gmail.com', 'hbhbgvgh'),
(NULL, 'Alberto Kelvio Zimbuculo', 'Zimbuculo', 'Alberto', 'albertozimbuculo2020@gmail.com', 'Administrador'),
(NULL, 'kely', 'kellystarlonely20', 'Alberto Zimbuculo', 'kellystarlonely@gmail.com', 'Gerente'),
(NULL, 'Bernardo Manuel', 'berna', 'Bernardo', 'albertozimbuculo2020@gmail.com', 'Dono do cyber'),
(NULL, '', 'gfgfhghghghghghgh', '', '', ''),
(NULL, '', 'gfgfhghghghghghgh', '', '', ''),
(NULL, '', 'gfgfhghghghghghgh', '', '', ''),
(NULL, 'kelly', 'kelly20', '', '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `bloco`
--
ALTER TABLE `bloco`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `moradores2`
--
ALTER TABLE `moradores2`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagar_contas`
--
ALTER TABLE `pagar_contas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pagar_contass`
--
ALTER TABLE `pagar_contass`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario3`
--
ALTER TABLE `usuario3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `bloco`
--
ALTER TABLE `bloco`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `moradores2`
--
ALTER TABLE `moradores2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `pagar_contas`
--
ALTER TABLE `pagar_contas`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pagar_contass`
--
ALTER TABLE `pagar_contass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario3`
--
ALTER TABLE `usuario3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
