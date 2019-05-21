-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE disciplina (
idDisciplina INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100)
);

CREATE TABLE telefone (
telefone int,
idTelefone INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idCont INT
);

CREATE TABLE contato (
idCont INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150),
mensagem VARCHAR(500),
email VARCHAR(100)
);

CREATE TABLE lembretes (
idlembrete INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
data DATETIME,
titulo VARCHAR(100),
conteudo VARCHAR(250),
idAluno INT
);

CREATE TABLE frasesMotivacionais (
idFrases int NOT NULL AUTO_INCREMENT PRIMARY KEY,
frases VARCHAR(250)
);

CREATE TABLE usuario (
idAluno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(100),
senha VARCHAR(100),
dataNascimento  DATE,
sexo VARCHAR(50),
nome VARCHAR(150)
);

CREATE TABLE LOG (
idLOG INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
dataLogin DATETIME,
dataLogout DATETIME,
idAluno INT,
FOREIGN KEY(idAluno) REFERENCES usuario (idAluno)
);

CREATE TABLE recupSenha (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cod VARCHAR(100),
valido boolean,
idAluno INT,
FOREIGN KEY(idAluno) REFERENCES usuario (idAluno)
);

CREATE TABLE notas (
idNota INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tipoNota VARCHAR(50),
valor DOUBLE,
idDiscCursada INT
);

CREATE TABLE curso (
idCurso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nomeCurso VARCHAR(100)
);

CREATE TABLE falta (
idFalta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
qtdFalta INT,
diaFalta DATE,
idDiscCursada INT
);

CREATE TABLE resumos (
idResumo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
tituloResumo VARCHAR(50),
conteudoResumo VARCHAR(700),
idDiscCursada INT
);

CREATE TABLE disciplinaHistorico (
idDiscCursada INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
diaSemana VARCHAR(50),
horario VARCHAR(50),
turno VARCHAR(50),
emailProfessor VARCHAR(100),
nomeProfessor VARCHAR(100),
idDisciplina INT,
FOREIGN KEY(idDisciplina) REFERENCES disciplina (idDisciplina)
);

CREATE TABLE semestre (
idSemestre INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numeroSemestre INT
);

CREATE TABLE usuarioCurso (
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
idDiscCursada INT,
idSemestre INT,
idAluno INT,
idCurso INT,
FOREIGN KEY(idDiscCursada) REFERENCES disciplinaHistorico (idDiscCursada),
FOREIGN KEY(idSemestre) REFERENCES semestre (idSemestre),
FOREIGN KEY(idAluno) REFERENCES usuario (idAluno),
FOREIGN KEY(idCurso) REFERENCES curso (idCurso)
);

ALTER TABLE telefone ADD FOREIGN KEY(idCont) REFERENCES contato (idCont);
ALTER TABLE lembretes ADD FOREIGN KEY(idAluno) REFERENCES usuario (idAluno);
ALTER TABLE notas ADD FOREIGN KEY(idDiscCursada) REFERENCES disciplinaHistorico (idDiscCursada);
ALTER TABLE falta ADD FOREIGN KEY(idDiscCursada) REFERENCES disciplinaHistorico (idDiscCursada);
ALTER TABLE resumos ADD FOREIGN KEY(idDiscCursada) REFERENCES disciplinaHistorico (idDiscCursada);



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
INSERT INTO `disciplina` (`idDisciplina`, `nome`) VALUES ('1', 'Português'), ('2', 'Matemática');

INSERT INTO `semestre` (`idSemestre`, `numeroSemestre`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);
INSERT INTO `usuario` (`idAluno`, `email`, `senha`, `dataNascimento`, `sexo`, `nome`) VALUES
(1, '1@1', '0937afa17f4dc08f3c0e5dc908158370ce64df86', '1987-10-28', 'masculino', '1');