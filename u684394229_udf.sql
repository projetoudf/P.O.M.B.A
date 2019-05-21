-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Maio-2019 às 16:01
-- Versão do servidor: 10.1.39-MariaDB
-- versão do PHP: 7.3.5

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
  `nome` varchar(150) NOT NULL,
  `mensagem` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nomeCurso` varchar(100) NOT NULL
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
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`idDisciplina`, `nome`) VALUES
(1, 'PORTUGUES'),
(2, 'MATEMATICA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinaHistorico`
--

CREATE TABLE `disciplinaHistorico` (
  `idDiscCursada` int(11) NOT NULL,
  `diaSemana` varchar(50) DEFAULT NULL,
  `horario` varchar(50) DEFAULT NULL,
  `turno` varchar(50) DEFAULT NULL,
  `emailProfessor` varchar(100) DEFAULT NULL,
  `nomeProfessor` varchar(100) DEFAULT NULL,
  `idDisciplina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `disciplinaHistorico`
--

INSERT INTO `disciplinaHistorico` (`idDiscCursada`, `diaSemana`, `horario`, `turno`, `emailProfessor`, `nomeProfessor`, `idDisciplina`) VALUES
(6, 'segunda', 'primeiro', 'matutino', 'a', 'a', 1),
(8, 'segunda', 'primeiro', 'matutino', 'a', 'a', 2),
(9, 'segunda', 'primeiro', 'matutino', 'a', 'a', 1);

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

--
-- Extraindo dados da tabela `falta`
--

INSERT INTO `falta` (`qtdFalta`, `idFalta`, `diaFalta`, `idDiscCursada`) VALUES
(6, 2, '2019-05-21', 6),
(2, 3, '2019-05-17', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `frasesmotivacionais`
--

CREATE TABLE `frasesmotivacionais` (
  `idFrases` int(11) NOT NULL,
  `frases` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lembretes`
--

CREATE TABLE `lembretes` (
  `idlembrete` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `conteudo` varchar(250) NOT NULL,
  `idAluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `lembretes`
--

INSERT INTO `lembretes` (`idlembrete`, `data`, `titulo`, `conteudo`, `idAluno`) VALUES
(2, '2019-05-19 16:51:28', 'prova de portugues', 'dia 5 de junho', 1);

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
  `tipoNota` varchar(50) NOT NULL,
  `valor` double NOT NULL,
  `idDiscCursada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notas`
--

INSERT INTO `notas` (`idNota`, `tipoNota`, `valor`, `idDiscCursada`) VALUES
(1, 'PRI', 2.5, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `recupsenha`
--

CREATE TABLE `recupsenha` (
  `id` int(11) NOT NULL,
  `cod` varchar(100) NOT NULL,
  `valido` tinyint(1) NOT NULL,
  `idAluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resumos`
--

CREATE TABLE `resumos` (
  `idResumo` int(11) NOT NULL,
  `tituloResumo` varchar(50) NOT NULL,
  `conteudoResumo` varchar(700) NOT NULL,
  `idDiscCursada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `resumos`
--

INSERT INTO `resumos` (`idResumo`, `tituloResumo`, `conteudoResumo`, `idDiscCursada`) VALUES
(3, 'teste3', 'teste3', 6),
(4, 'teste3', 'teste3', 6),
(5, 'AULA 26/06 - METODOS DE QUANTIFICAÇÃO', 'TESTE DE CONTEUDO', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `semestre`
--

CREATE TABLE `semestre` (
  `idSemestre` int(11) NOT NULL,
  `numeroSemestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `semestre`
--

INSERT INTO `semestre` (`idSemestre`, `numeroSemestre`) VALUES
(1, 1),
(2, 2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `semestredischistorico`
--

CREATE TABLE `semestredischistorico` (
  `id` int(11) NOT NULL,
  `idSemestre` int(11) DEFAULT NULL,
  `idDiscCursada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `semestredischistorico`
--

INSERT INTO `semestredischistorico` (`id`, `idSemestre`, `idDiscCursada`) VALUES
(3, 1, 6),
(5, 1, 8),
(6, 1, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `telefone` int(11) NOT NULL,
  `idTelefone` int(11) NOT NULL,
  `idCont` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idAluno` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `dataNascimento` date NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `nome` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idAluno`, `email`, `senha`, `dataNascimento`, `sexo`, `nome`) VALUES
(1, '1@1', '0937afa17f4dc08f3c0e5dc908158370ce64df86', '1987-10-28', 'masculino', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariocurso`
--

CREATE TABLE `usuariocurso` (
  `id` int(11) NOT NULL,
  `idSemestre` int(11) DEFAULT NULL,
  `idAluno` int(11) DEFAULT NULL,
  `idCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuariocurso`
--

INSERT INTO `usuariocurso` (`id`, `idSemestre`, `idAluno`, `idCurso`) VALUES
(33, 1, 1, 1),
(35, 1, 1, 2);

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
  ADD PRIMARY KEY (`idDisciplina`);

--
-- Indexes for table `disciplinaHistorico`
--
ALTER TABLE `disciplinaHistorico`
  ADD PRIMARY KEY (`idDiscCursada`),
  ADD KEY `idDisciplina` (`idDisciplina`);

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
  ADD KEY `idDiscCursada` (`idDiscCursada`);

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
-- Indexes for table `semestredischistorico`
--
ALTER TABLE `semestredischistorico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSemestre` (`idSemestre`),
  ADD KEY `idDiscCursada` (`idDiscCursada`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`idTelefone`),
  ADD KEY `idCont` (`idCont`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idAluno`);

--
-- Indexes for table `usuariocurso`
--
ALTER TABLE `usuariocurso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSemestre` (`idSemestre`),
  ADD KEY `idAluno` (`idAluno`),
  ADD KEY `idCurso` (`idCurso`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
  MODIFY `idCont` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `disciplinaHistorico`
--
ALTER TABLE `disciplinaHistorico`
  MODIFY `idDiscCursada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `falta`
--
ALTER TABLE `falta`
  MODIFY `idFalta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `frasesmotivacionais`
--
ALTER TABLE `frasesmotivacionais`
  MODIFY `idFrases` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lembretes`
--
ALTER TABLE `lembretes`
  MODIFY `idlembrete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `idNota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `recupsenha`
--
ALTER TABLE `recupsenha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resumos`
--
ALTER TABLE `resumos`
  MODIFY `idResumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `semestre`
--
ALTER TABLE `semestre`
  MODIFY `idSemestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `semestredischistorico`
--
ALTER TABLE `semestredischistorico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `telefone`
--
ALTER TABLE `telefone`
  MODIFY `idTelefone` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idAluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuariocurso`
--
ALTER TABLE `usuariocurso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `disciplinaHistorico`
--
ALTER TABLE `disciplinaHistorico`
  ADD CONSTRAINT `disciplinaHistorico_ibfk_1` FOREIGN KEY (`idDisciplina`) REFERENCES `disciplina` (`idDisciplina`);

--
-- Limitadores para a tabela `falta`
--
ALTER TABLE `falta`
  ADD CONSTRAINT `falta_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplinaHistorico` (`idDiscCursada`);

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
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplinaHistorico` (`idDiscCursada`);

--
-- Limitadores para a tabela `recupsenha`
--
ALTER TABLE `recupsenha`
  ADD CONSTRAINT `recupsenha_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `usuario` (`idAluno`);

--
-- Limitadores para a tabela `resumos`
--
ALTER TABLE `resumos`
  ADD CONSTRAINT `resumos_ibfk_1` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplinaHistorico` (`idDiscCursada`);

--
-- Limitadores para a tabela `semestredischistorico`
--
ALTER TABLE `semestredischistorico`
  ADD CONSTRAINT `semestredischistorico_ibfk_1` FOREIGN KEY (`idSemestre`) REFERENCES `semestre` (`idSemestre`),
  ADD CONSTRAINT `semestredischistorico_ibfk_2` FOREIGN KEY (`idDiscCursada`) REFERENCES `disciplinaHistorico` (`idDiscCursada`);

--
-- Limitadores para a tabela `telefone`
--
ALTER TABLE `telefone`
  ADD CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`idCont`) REFERENCES `contato` (`idCont`);

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


