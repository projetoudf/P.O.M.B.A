-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Abr-2019 às 14:12
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
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idCont` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `mensagem` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nomeCurso` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`idCurso`, `nomeCurso`) VALUES
(1, 'ADMINISTRAÇÃO'),
(2, 'ADS - ANÁLISE DE SISTEMAS'),
(3, 'ARQUITETURA E URBANISMO'),
(4, 'BIOMEDICINA'),
(5, 'CIÊNCIA DA COMPUTAÇÃO'),
(6, 'CIÊNCIA POLÍTICA'),
(7, 'CIÊNCIAS BIOLÓGICAS '),
(8, 'CIÊNCIAS CONTÁBEIS'),
(9, 'CIÊNCIAS ECONÔMICAS'),
(10, 'DESIGN DE INTERIORES '),
(11, 'DESIGN GRÁFICO '),
(12, 'DIREITO'),
(13, 'EDUCAÇÃO FÍSICA '),
(14, 'ENFERMAGEM'),
(15, 'ENG. AMBIENTAL '),
(16, 'ENG.CIVIL'),
(17, 'ENG. DE PRODUÇÃO'),
(18, 'ENG. ELÉTRICA'),
(19, 'ENG.MECÂNICA'),
(20, 'ENG.MECATRÔNICA'),
(21, 'ESTÉTICA E COSMÉTICA'),
(22, 'EVENTOS '),
(23, 'FARMÁCIA'),
(24, 'FISIOTERAPIA '),
(25, 'GASTRONOMIA'),
(26, 'GESTÃO DE T.I'),
(27, 'GESTÃO EM RH'),
(28, 'GESTÃO FINANCEIRA '),
(29, 'GESTÃO HOSPITALAR'),
(30, 'GESTÃO PÚBLICA '),
(31, 'IDIOMAS - ALEMÃO'),
(32, 'IDIOMAS - ÁRABE'),
(33, 'IDIOMAS - CHINÊS (MANDARIM)'),
(34, 'IDIOMAS - COREANO'),
(35, 'IDIOMAS - ESPANHOL'),
(36, 'IDIOMAS - ESPANHOL (ESPANHA)'),
(37, 'IDIOMAS - FILIPINO (TAGALO)'),
(38, 'IDIOMAS - FRANCÊS'),
(39, 'IDIOMAS - GREGO'),
(40, 'IDIOMAS - HEBRAICO'),
(41, 'IDIOMAS - HINDI'),
(42, 'IDIOMAS - HOLANDÊS'),
(43, 'IDIOMAS - INGLÊS (EUA)'),
(44, 'IDIOMAS - INGLÊS (INGLATERRA)'),
(45, 'IDIOMAS - IRLANDÊS (GAÉLICO)'),
(46, 'IDIOMAS - ITALIANO'),
(47, 'IDIOMAS - JAPONÊS'),
(48, 'IDIOMAS - PERSA (FARSI)'),
(49, 'IDIOMAS - POLONÊS'),
(50, 'IDIOMAS - PORTUGUÊS (BRASIL)'),
(51, 'IDIOMAS - RUSSO'),
(52, 'IDIOMAS - SUECO'),
(53, 'IDIOMAS - TURCO'),
(54, 'IDIOMAS - VIETNAMITA'),
(55, 'JOGOS DIGITAIS '),
(56, 'JORNALISMO'),
(57, 'LETRAS - PORTUGUÊS E INGLÊS '),
(58, 'MODA '),
(59, 'NUTRIÇÃO'),
(60, 'ODONTOLOGIA'),
(61, 'PEDAGOGIA '),
(62, 'PSICOLOGIA'),
(63, 'PUBLICIDADE E PROPAGANDA'),
(64, 'RADIOLOGIA'),
(65, 'RELAÇÕES INTERNACIONAIS'),
(66, 'RELAÇÕES PÚBLICAS'),
(67, 'SECRETARIADO EXECUTIVO TRILÍNGUE'),
(68, 'SISTEMAS DE INFORMAÇÃO'),
(69, 'TÉCNICO EM ENFERMAGEM'),
(70, 'TÉCNICO EM INFORMÁTICA'),
(71, 'TÉCNICO EM LOGÍSTICA'),
(72, 'TÉCNICO EM MEIO AMBIENTE'),
(73, 'TÉCNICO EM PROGRAMAÇÃO DE JOGOS DIGITAIS'),
(74, 'TÉCNICO EM REDES DE COMPUTADORES');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `idDisciplina` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `idDiscCursada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinahistorico`
--

CREATE TABLE `disciplinahistorico` (
  `idDiscCursada` int(11) NOT NULL,
  `diaSemana` varchar(50) DEFAULT NULL,
  `horario` int(11) DEFAULT NULL,
  `turno` varchar(50) DEFAULT NULL,
  `emailProfessor` varchar(100) DEFAULT NULL,
  `nomeProfessor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `falta`
--

CREATE TABLE `falta` (
  `qtdFalta` int(11) DEFAULT NULL,
  `idFalta` int(11) NOT NULL,
  `diaFalta` date DEFAULT NULL,
  `idDiscCursada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `frasesmotivacionais`
--

CREATE TABLE `frasesmotivacionais` (
  `idFrases` int(11) NOT NULL,
  `frases` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lembretes`
--

CREATE TABLE `lembretes` (
  `idlembrete` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `conteudo` varchar(250) DEFAULT NULL,
  `idAluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

CREATE TABLE `log` (
  `idLOG` int(11) NOT NULL,
  `dataLogin` datetime DEFAULT NULL,
  `dataLogout` datetime DEFAULT NULL,
  `idAluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notas`
--

CREATE TABLE `notas` (
  `idNota` int(11) NOT NULL,
  `idDiscCursada` int(11) DEFAULT NULL,
  `idTipoNota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recupsenha`
--

CREATE TABLE `recupsenha` (
  `id` int(11) NOT NULL,
  `cod` varchar(100) DEFAULT NULL,
  `valido` tinyint(1) DEFAULT NULL,
  `idAluno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resumos`
--

CREATE TABLE `resumos` (
  `idResumo` int(11) NOT NULL,
  `tituloResumo` varchar(50) DEFAULT NULL,
  `conteudoResumo` varchar(700) DEFAULT NULL,
  `idDiscCursada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `semestre`
--

CREATE TABLE `semestre` (
  `idSemestre` int(11) NOT NULL,
  `numeroSemestre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `semestredisciplinah`
--

CREATE TABLE `semestredisciplinah` (
  `idSemestre` int(11) DEFAULT NULL,
  `idDiscCursada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `telefone` int(11) DEFAULT NULL,
  `idTelefone` int(11) NOT NULL,
  `idCont` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiponotas`
--

CREATE TABLE `tiponotas` (
  `idTipoNota` int(11) NOT NULL,
  `PRI` double DEFAULT NULL,
  `avaliacao` double DEFAULT NULL,
  `trabalho` double DEFAULT NULL,
  `idNota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idAluno` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariocurso`
--

CREATE TABLE `usuariocurso` (
  `idSemestre` int(11) DEFAULT NULL,
  `idAluno` int(11) DEFAULT NULL,
  `idCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`idDisciplina`),
  ADD KEY `idDiscCursada` (`idDiscCursada`);

--
-- Indexes for table `disciplinahistorico`
--
ALTER TABLE `disciplinahistorico`
  ADD PRIMARY KEY (`idDiscCursada`);

--
-- Indexes for table `falta`
--
ALTER TABLE `falta`
  ADD PRIMARY KEY (`idFalta`),
  ADD KEY `idDiscCursada` (`idDiscCursada`);

--
-- Indexes for table `frasesmotivacionais`
--
ALTER TABLE `frasesmotivacionais`
  ADD PRIMARY KEY (`idFrases`);

--
-- Indexes for table `lembretes`
--
ALTER TABLE `lembretes`
  ADD PRIMARY KEY (`idlembrete`),
  ADD KEY `idAluno` (`idAluno`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`idLOG`),
  ADD KEY `idAluno` (`idAluno`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`idNota`),
  ADD KEY `idDiscCursada` (`idDiscCursada`),
  ADD KEY `idTipoNota` (`idTipoNota`);

--
-- Indexes for table `recupsenha`
--
ALTER TABLE `recupsenha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idAluno` (`idAluno`);

--
-- Indexes for table `resumos`
--
ALTER TABLE `resumos`
  ADD PRIMARY KEY (`idResumo`),
  ADD KEY `idDiscCursada` (`idDiscCursada`);

--
-- Indexes for table `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`idSemestre`);

--
-- Indexes for table `semestredisciplinah`
--
ALTER TABLE `semestredisciplinah`
  ADD KEY `idSemestre` (`idSemestre`),
  ADD KEY `idDiscCursada` (`idDiscCursada`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`idTelefone`),
  ADD KEY `idCont` (`idCont`);

--
-- Indexes for table `tiponotas`
--
ALTER TABLE `tiponotas`
  ADD PRIMARY KEY (`idTipoNota`),
  ADD KEY `idNota` (`idNota`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idAluno`);

--
-- Indexes for table `usuariocurso`
--
ALTER TABLE `usuariocurso`
  ADD KEY `idSemestre` (`idSemestre`),
  ADD KEY `idAluno` (`idAluno`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplinahistorico` (`idDiscCursada`);

--
-- Limitadores para a tabela `falta`
--
ALTER TABLE `falta`
  ADD CONSTRAINT `falta_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplinahistorico` (`idDiscCursada`);

--
-- Limitadores para a tabela `lembretes`
--
ALTER TABLE `lembretes`
  ADD CONSTRAINT `lembretes_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuario` (`idAluno`);

--
-- Limitadores para a tabela `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuario` (`idAluno`);

--
-- Limitadores para a tabela `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplinahistorico` (`idDiscCursada`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`idTipoNota`) REFERENCES `tiponotas` (`idTipoNota`);

--
-- Limitadores para a tabela `recupsenha`
--
ALTER TABLE `recupsenha`
  ADD CONSTRAINT `recupsenha_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuario` (`idAluno`);

--
-- Limitadores para a tabela `resumos`
--
ALTER TABLE `resumos`
  ADD CONSTRAINT `resumos_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplinahistorico` (`idDiscCursada`);

--
-- Limitadores para a tabela `semestredisciplinah`
--
ALTER TABLE `semestredisciplinah`
  ADD CONSTRAINT `semestredisciplinah_ibfk_1` FOREIGN KEY (`idSemestre`) REFERENCES `semestre` (`idSemestre`),
  ADD CONSTRAINT `semestredisciplinah_ibfk_2` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplinahistorico` (`idDiscCursada`);

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`idCont`) REFERENCES `contato` (`idCont`);

--
-- Limitadores para a tabela `tiponotas`
--
ALTER TABLE `tiponotas`
  ADD CONSTRAINT `tiponotas_ibfk_1` FOREIGN KEY (`idNota`) REFERENCES `notas` (`idNota`);

--
-- Limitadores para a tabela `usuariocurso`
--
ALTER TABLE `usuariocurso`
  ADD CONSTRAINT `usuariocurso_ibfk_1` FOREIGN KEY (`idSemestre`) REFERENCES `semestre` (`idSemestre`),
  ADD CONSTRAINT `usuariocurso_ibfk_2` FOREIGN KEY (`idAluno`) REFERENCES `usuario` (`idAluno`),
  ADD CONSTRAINT `usuariocurso_ibfk_3` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
