-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10-Abr-2019 às 16:51
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u684394229_udf`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `idAvaliacao` int(11) NOT NULL,
  `notaTirada` double DEFAULT NULL,
  `notaProva` double DEFAULT NULL,
  `idNota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idCont` int(11) NOT NULL,
  `mensagem` varchar(2000) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `idDiscCursada` int(11) NOT NULL,
  `diaSemana` varchar(20) DEFAULT NULL,
  `nomeDisc` varchar(100) DEFAULT NULL,
  `horario` int(11) DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  `nomeProfessor` varchar(20) DEFAULT NULL,
  `emailProfessor` varchar(100) DEFAULT NULL,
  `idCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faltas`
--

CREATE TABLE `faltas` (
  `idFalta` int(11) NOT NULL,
  `qtdFalta` int(11) DEFAULT NULL,
  `diaFalta` date DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `idDiscCursada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `frasesmotivacionais`
--

CREATE TABLE `frasesmotivacionais` (
  `idFrases` int(11) NOT NULL,
  `frase` varchar(2000) DEFAULT NULL,
  `idAluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lembrentes`
--

CREATE TABLE `lembrentes` (
  `idlembrete` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `conteudo` varchar(2000) DEFAULT NULL,
  `idAluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

CREATE TABLE `log` (
  `idAluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `idNota` int(11) NOT NULL,
  `semestre` int(11) DEFAULT NULL,
  `idDiscCursada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pri`
--

CREATE TABLE `pri` (
  `idPRI` int(11) NOT NULL,
  `notaMax` double DEFAULT NULL,
  `notaTirada` double DEFAULT NULL,
  `idNota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recupsenha`
--

CREATE TABLE `recupsenha` (
  `Id_Aluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resumo`
--

CREATE TABLE `resumo` (
  `idResumo` int(11) NOT NULL,
  `tituloResumo` varchar(100) DEFAULT NULL,
  `conteudoResumo` varchar(2000) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `idDiscCursada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariocurso`
--

CREATE TABLE `usuariocurso` (
  `idCurso` int(11) DEFAULT NULL,
  `idAluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idAluno` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`idAvaliacao`),
  ADD KEY `idNota` (`idNota`);

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idCont`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idDiscCursada`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Indexes for table `faltas`
--
ALTER TABLE `faltas`
  ADD PRIMARY KEY (`idFalta`),
  ADD KEY `idDiscCursada` (`idDiscCursada`);

--
-- Indexes for table `frasesmotivacionais`
--
ALTER TABLE `frasesmotivacionais`
  ADD PRIMARY KEY (`idFrases`),
  ADD KEY `idAluno` (`idAluno`);

--
-- Indexes for table `lembrentes`
--
ALTER TABLE `lembrentes`
  ADD PRIMARY KEY (`idlembrete`),
  ADD KEY `idAluno` (`idAluno`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD KEY `idAluno` (`idAluno`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`idNota`),
  ADD KEY `idDiscCursada` (`idDiscCursada`);

--
-- Indexes for table `pri`
--
ALTER TABLE `pri`
  ADD PRIMARY KEY (`idPRI`),
  ADD KEY `idNota` (`idNota`);

--
-- Indexes for table `recupsenha`
--
ALTER TABLE `recupsenha`
  ADD KEY `Id_Aluno` (`Id_Aluno`);

--
-- Indexes for table `resumo`
--
ALTER TABLE `resumo`
  ADD PRIMARY KEY (`idResumo`),
  ADD KEY `idDiscCursada` (`idDiscCursada`);

--
-- Indexes for table `usuariocurso`
--
ALTER TABLE `usuariocurso`
  ADD KEY `idCurso` (`idCurso`),
  ADD KEY `idAluno` (`idAluno`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idAluno`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`idNota`) REFERENCES `nota` (`idNota`);

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`);

--
-- Limitadores para a tabela `faltas`
--
ALTER TABLE `faltas`
  ADD CONSTRAINT `faltas_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplina` (`idDiscCursada`);

--
-- Limitadores para a tabela `frasesmotivacionais`
--
ALTER TABLE `frasesmotivacionais`
  ADD CONSTRAINT `frasesmotivacionais_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idAluno`);

--
-- Limitadores para a tabela `lembrentes`
--
ALTER TABLE `lembrentes`
  ADD CONSTRAINT `lembrentes_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idAluno`);

--
-- Limitadores para a tabela `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idAluno`);

--
-- Limitadores para a tabela `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplina` (`idDiscCursada`);

--
-- Limitadores para a tabela `pri`
--
ALTER TABLE `pri`
  ADD CONSTRAINT `pri_ibfk_1` FOREIGN KEY (`idNota`) REFERENCES `nota` (`idNota`);

--
-- Limitadores para a tabela `recupsenha`
--
ALTER TABLE `recupsenha`
  ADD CONSTRAINT `recupsenha_ibfk_1` FOREIGN KEY (`Id_Aluno`) REFERENCES `usuarios` (`idAluno`);

--
-- Limitadores para a tabela `resumo`
--
ALTER TABLE `resumo`
  ADD CONSTRAINT `resumo_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplina` (`idDiscCursada`);

--
-- Limitadores para a tabela `usuariocurso`
--
ALTER TABLE `usuariocurso`
  ADD CONSTRAINT `usuariocurso_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  ADD CONSTRAINT `usuariocurso_ibfk_2` FOREIGN KEY (`idAluno`) REFERENCES `usuarios` (`idAluno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
