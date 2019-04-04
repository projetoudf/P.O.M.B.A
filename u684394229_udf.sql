-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Abr-2019 às 04:02
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

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
  `Id_Avaliacao` varchar(200) NOT NULL,
  `NotaTirada` varchar(200) DEFAULT NULL,
  `NotaProva` varchar(200) DEFAULT NULL,
  `Id_Nota` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `Telefone` varchar(200) DEFAULT NULL,
  `Mensagem` varchar(200) DEFAULT NULL,
  `Nome` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Id_Cont` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `NomeCurso` varchar(200) NOT NULL,
  `Id_Aluno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `DiaSemana` varchar(200) DEFAULT NULL,
  `NomeDisc` varchar(200) DEFAULT NULL,
  `Horario` varchar(200) DEFAULT NULL,
  `Turno` varchar(200) DEFAULT NULL,
  `Id_DiscCursada` varchar(200) NOT NULL,
  `nomeProfessor` varchar(200) DEFAULT NULL,
  `emailProfessor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faltas`
--

CREATE TABLE `faltas` (
  `Qtd_Falta` varchar(200) DEFAULT NULL,
  `Id_Falta` varchar(200) NOT NULL,
  `Dia_Falta` varchar(200) DEFAULT NULL,
  `Id_DiscCursada` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `frasesmotivacionais`
--

CREATE TABLE `frasesmotivacionais` (
  `Frase` varchar(200) DEFAULT NULL,
  `Id_Frases` varchar(200) NOT NULL,
  `Id_Aluno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lembrentes`
--

CREATE TABLE `lembrentes` (
  `Id_lembrete` varchar(200) NOT NULL,
  `Hora` varchar(200) DEFAULT NULL,
  `Data` varchar(200) DEFAULT NULL,
  `Titulo` varchar(200) DEFAULT NULL,
  `Conteudo` varchar(200) DEFAULT NULL,
  `Id_Aluno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

CREATE TABLE `log` (
  `Id_Aluno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `Id_Nota` varchar(200) NOT NULL,
  `Id_DiscCursada` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pri`
--

CREATE TABLE `pri` (
  `Id_PRI` varchar(200) NOT NULL,
  `Nota_Max` varchar(200) DEFAULT NULL,
  `Nota_Tirada` varchar(200) DEFAULT NULL,
  `Id_Nota` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recupsenha`
--

CREATE TABLE `recupsenha` (
  `Id_Aluno` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relação_3`
--

CREATE TABLE `relação_3` (
  `Id_DiscCursada` varchar(200) DEFAULT NULL,
  `Id_Semestre` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resumo`
--

CREATE TABLE `resumo` (
  `Id_Resumo` varchar(200) NOT NULL,
  `TituloResumo` varchar(200) DEFAULT NULL,
  `ConteudoResumo` varchar(200) DEFAULT NULL,
  `Id_DiscCursada` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `semestre`
--

CREATE TABLE `semestre` (
  `Id_Semestre` varchar(200) NOT NULL,
  `QtdMaterias` varchar(200) DEFAULT NULL,
  `NomeCurso` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `Email` varchar(200) DEFAULT NULL,
  `Senha` varchar(200) DEFAULT NULL,
  `DataNascimento` varchar(200) DEFAULT NULL,
  `Id_Aluno` varchar(200) NOT NULL,
  `Sexo` varchar(200) DEFAULT NULL,
  `Nome` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`Id_Avaliacao`),
  ADD KEY `Id_Nota` (`Id_Nota`);

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`Id_Cont`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`NomeCurso`),
  ADD KEY `Id_Aluno` (`Id_Aluno`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`Id_DiscCursada`);

--
-- Indexes for table `faltas`
--
ALTER TABLE `faltas`
  ADD PRIMARY KEY (`Id_Falta`),
  ADD KEY `Id_DiscCursada` (`Id_DiscCursada`);

--
-- Indexes for table `frasesmotivacionais`
--
ALTER TABLE `frasesmotivacionais`
  ADD PRIMARY KEY (`Id_Frases`),
  ADD KEY `Id_Aluno` (`Id_Aluno`);

--
-- Indexes for table `lembrentes`
--
ALTER TABLE `lembrentes`
  ADD PRIMARY KEY (`Id_lembrete`),
  ADD KEY `Id_Aluno` (`Id_Aluno`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD KEY `Id_Aluno` (`Id_Aluno`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`Id_Nota`),
  ADD KEY `Id_DiscCursada` (`Id_DiscCursada`);

--
-- Indexes for table `pri`
--
ALTER TABLE `pri`
  ADD PRIMARY KEY (`Id_PRI`),
  ADD KEY `Id_Nota` (`Id_Nota`);

--
-- Indexes for table `recupsenha`
--
ALTER TABLE `recupsenha`
  ADD KEY `Id_Aluno` (`Id_Aluno`);

--
-- Indexes for table `relação_3`
--
ALTER TABLE `relação_3`
  ADD KEY `Id_DiscCursada` (`Id_DiscCursada`),
  ADD KEY `Id_Semestre` (`Id_Semestre`);

--
-- Indexes for table `resumo`
--
ALTER TABLE `resumo`
  ADD PRIMARY KEY (`Id_Resumo`),
  ADD KEY `Id_DiscCursada` (`Id_DiscCursada`);

--
-- Indexes for table `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`Id_Semestre`),
  ADD KEY `NomeCurso` (`NomeCurso`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Aluno`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `avaliacao_ibfk_1` FOREIGN KEY (`Id_Nota`) REFERENCES `nota` (`Id_Nota`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`Id_Aluno`) REFERENCES `usuarios` (`Id_Aluno`);

--
-- Limitadores para a tabela `faltas`
--
ALTER TABLE `faltas`
  ADD CONSTRAINT `faltas_ibfk_1` FOREIGN KEY (`Id_DiscCursada`) REFERENCES `disciplina` (`Id_DiscCursada`);

--
-- Limitadores para a tabela `frasesmotivacionais`
--
ALTER TABLE `frasesmotivacionais`
  ADD CONSTRAINT `frasesmotivacionais_ibfk_1` FOREIGN KEY (`Id_Aluno`) REFERENCES `usuarios` (`Id_Aluno`);

--
-- Limitadores para a tabela `lembrentes`
--
ALTER TABLE `lembrentes`
  ADD CONSTRAINT `lembrentes_ibfk_1` FOREIGN KEY (`Id_Aluno`) REFERENCES `usuarios` (`Id_Aluno`);

--
-- Limitadores para a tabela `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`Id_Aluno`) REFERENCES `usuarios` (`Id_Aluno`);

--
-- Limitadores para a tabela `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`Id_DiscCursada`) REFERENCES `disciplina` (`Id_DiscCursada`);

--
-- Limitadores para a tabela `pri`
--
ALTER TABLE `pri`
  ADD CONSTRAINT `pri_ibfk_1` FOREIGN KEY (`Id_Nota`) REFERENCES `nota` (`Id_Nota`);

--
-- Limitadores para a tabela `recupsenha`
--
ALTER TABLE `recupsenha`
  ADD CONSTRAINT `recupsenha_ibfk_1` FOREIGN KEY (`Id_Aluno`) REFERENCES `usuarios` (`Id_Aluno`);

--
-- Limitadores para a tabela `relação_3`
--
ALTER TABLE `relação_3`
  ADD CONSTRAINT `relação_3_ibfk_1` FOREIGN KEY (`Id_DiscCursada`) REFERENCES `disciplina` (`Id_DiscCursada`),
  ADD CONSTRAINT `relação_3_ibfk_2` FOREIGN KEY (`Id_Semestre`) REFERENCES `semestre` (`Id_Semestre`);

--
-- Limitadores para a tabela `resumo`
--
ALTER TABLE `resumo`
  ADD CONSTRAINT `resumo_ibfk_1` FOREIGN KEY (`Id_DiscCursada`) REFERENCES `disciplina` (`Id_DiscCursada`);

--
-- Limitadores para a tabela `semestre`
--
ALTER TABLE `semestre`
  ADD CONSTRAINT `semestre_ibfk_1` FOREIGN KEY (`NomeCurso`) REFERENCES `curso` (`NomeCurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
