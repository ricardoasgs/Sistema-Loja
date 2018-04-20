-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 
-- Versão do Servidor: 5.6.12-log
-- Versão do PHP: 5.4.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `loja`
--
CREATE DATABASE `loja` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `loja`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `codigo` int(5) NOT NULL,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codigo`, `nome`) VALUES
(1, 'microcomputador'),
(2, 'celular'),
(3, 'notebook'),
(4, 'impressoras'),
(5, 'monitor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `codigo` int(5) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `numero` int(3) NOT NULL,
  `complemento` varchar(10) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `fone` varchar(13) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`codigo`, `nome`, `sexo`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `fone`, `email`) VALUES
(1, 'Leonardo de Jesus dos Santos', 'm', 'Manoel Moreira Figueiredo', 74, 'nada1', 'Jardim do Vale', 'Guaratinguetá', 'SP', '(12)3105-3105', 'leogeojr@hotmail.com'),
(2, 'Ricardo Augusto Sousa Garcia da Silva', 'm', 'Mario Guedes', 180, '', 'Jardim Paraiba', 'Aparecida', 'SP', '12 31051266', 'ricardoaugustogarcia@hotmail.com'),
(3, 'Flavio Augusto', 'm', 'Purcilia Vieira dos Santos', 37, '', 'Vila Velha', 'Roseira', 'SP', '12 36462378', 'flaviogohmmes@hotmail.com'),
(8, 'joao', 'f', 'blabalbalba', 2, '', 'nada', 'nada', 'SE', '221212', 'sdcsadcfds'),
(21, '121', 'f', '121', 1, '12', '12', '121', 'SP', '12', '121'),
(45, 'fgvbfghfg', 'm', 'cvbdfb', 11, 'fgfdg', 'dsfdsfsd', 'sdfsdf', 'SP', '(21)2121-2121', 'dfdsfsdfsd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE IF NOT EXISTS `funcionarios` (
  `codigo` int(5) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `numero` int(5) NOT NULL,
  `complemento` varchar(10) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `email` varchar(40) NOT NULL,
  `celular` varchar(14) NOT NULL,
  `foneResid` varchar(13) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`codigo`, `nome`, `cpf`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `email`, `celular`, `foneResid`) VALUES
(1, 'a', '111.111.111-12', 'a', 1, 'a', 'a', 'a', 'AC', '12570-000', 'a', '(22)22222-2222', '(12)2222-2222'),
(2, 'b', '111.111.111-55', 'b', 2, 'b', 'b', 'b', 'AC', '12570-123', '25', '(35)41531-3515', '(21)6546-1316'),
(3, 'c', '111.111.111-13', 'c', 3, 'c', 'c', 'c', 'AC', '12570-598', 'c', '(54)98408-4841', '(85)8786-5465'),
(50, 'vbdfbgf', '111.111.111-11', 'fgdfgdf', 45, 'dfgdfg', 'dsfsdfgsdf', 'sdfgsd', 'AC', '54456-446', 'dfgdfgdfg', '(55)55542-4524', '(  )    -    '),
(60, 'jasbndcjhbsadfbhds', '111.111.111-11', '111111111111', 11, '11111111', '111', '111111111111', 'AC', '     -   ', '111111111111111111111', '(11)11111-1111', '(  )    -    ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `codigo` int(5) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `precocusto` decimal(5,2) NOT NULL,
  `precovenda` decimal(5,2) NOT NULL,
  `estoque` int(5) NOT NULL,
  `cadCategoria` int(5) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`codigo`, `nome`, `precocusto`, `precovenda`, `estoque`, `cadCategoria`) VALUES
(1, 'notebook', '700.00', '990.00', 10, 3),
(2, 'micro', '500.00', '800.00', 15, 1),
(3, 'tablet', '250.00', '600.00', 40, 2),
(4, 'Ipad', '900.00', '990.00', 15, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
