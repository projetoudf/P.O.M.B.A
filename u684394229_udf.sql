-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Abr-2019 às 15:55
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
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `curso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id`, `curso`) VALUES
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
(67, 'SECRETARIADO EXECUTIVO'),
(68, 'SISTEMAS DE INFORMAÇÃO'),
(69, 'TÉCNICO EM ENFERMAGEM'),
(70, 'TÉCNICO EM INFORMÁTICA'),
(71, 'TÉCNICO EM LOGÍSTICA'),
(72, 'TÉCNICO EM MEIO AMBIENTE'),
(73, 'TÉCNICO DE JOGOS DIGITAIS'),
(74, 'TÉCNICO EM REDES DE PC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dataNascimento` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `dataNascimento`, `sexo`, `email`, `senha`) VALUES
(6, '1', '2019-01-01', 'masculino', '1', '0937afa17f4dc08f3c0e5dc908158370ce64df86'),
(7, '2', '2019-02-02', 'feminino', '2@2', 'df2cd7104536553afde9f7d66133d578eccb4606');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
