-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/11/2024 às 18:30
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `project`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `nome`, `cargo`, `imagem`) VALUES
(2, 'admin@admin.com', 'admin', '', '', ''),
(4, 'cm417710@gmail.com', '', 'Carlos Daniel Marques da Costa', 'administrador', 'angry-birds.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('6733eec13403e', '6733eec13b92b'),
('6733eec1400d7', '6733eec14098a'),
('6733eec14466c', '6733eec144c04'),
('6733eec148d67', '6733eec14945c'),
('6733eec1504bc', '6733eec15134b'),
('6733eec155c28', '6733eec157888'),
('6733eec15df89', '6733eec160354'),
('6733eec164bdf', '6733eec165af6'),
('6733f8c258bcd', '6733f8c25a919'),
('6733f8c25dc77', '6733f8c25f377'),
('6733f8c27438a', '6733f8c27641f'),
('6733f8c27afaf', '6733f8c27b9f1'),
('6733f8c27e75f', '6733f8c27eda2'),
('6733f8c282038', '6733f8c282bd3'),
('6733f8c286b63', '6733f8c287370'),
('6733f8c288a5f', '6733f8c28ae6d'),
('6733f8c28c9c0', '6733f8c28dde7'),
('6733f8c2906e4', '6733f8c292b3e');

-- --------------------------------------------------------

--
-- Estrutura para tabela `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5589858b6c43b', 'nik', 'nik1@gmail.com', 'good', 'good site', '2015-06-23', '06:12:59pm');

-- --------------------------------------------------------

--
-- Estrutura para tabela `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('yago21@gmail.com', '6733f4a80f890', -1, 10, 3, 7, '2024-11-13 11:54:55'),
('mauri@gmail.com', '6733f4a80f890', -1, 10, 3, 7, '2024-11-13 12:02:39'),
('victoor@gmail.com', '6733ebaeaec08', -2, 8, 3, 5, '2024-11-13 12:05:15'),
('pgomesribeiro77@gmail.com', '6733ebaeaec08', -6, 8, 1, 7, '2024-11-13 12:16:22'),
('izaquenicolas143@gmail.com', '6733f4a80f890', 2, 10, 4, 6, '2024-11-13 12:23:08'),
('ronaldo.pb@ifpi.edu.com', '6733ebaeaec08', 6, 8, 7, 1, '2024-11-13 12:45:06'),
('pedroart@gmail.com', '6733ebaeaec08', 0, 8, 4, 4, '2024-11-13 12:55:39'),
('rangelnunes@gmail.com', '6733f4a80f890', 8, 10, 6, 4, '2024-11-13 13:01:54'),
('gabrielhenryk98@gmail.com', '6733f4a80f890', 8, 10, 6, 4, '2024-11-13 13:07:53'),
('Ph779472@gmail.com', '6733ebaeaec08', 4, 8, 6, 2, '2024-11-13 13:15:04'),
('fernandalealdasilva97@gmail.com', '6733ebaeaec08', -2, 8, 3, 5, '2024-11-13 13:22:50'),
('brunorikelmy123@gmail.com', '6733f4a80f890', -1, 10, 3, 7, '2024-11-13 13:29:52'),
('oelidam4@gmail.com', '6733ebaeaec08', 8, 8, 8, 0, '2024-11-13 13:33:58'),
('cm417710@gmail.com', '6733ebaeaec08', 8, 8, 8, 0, '2024-11-13 13:36:35'),
('cm417710@gmail.com', '6733f4a80f890', -1, 10, 3, 7, '2024-11-13 13:41:24'),
('kleberson@gmail.com', '6733f4a80f890', -1, 10, 3, 7, '2024-11-13 14:00:31'),
('letyciacardosoc@gmail.com', '6733ebaeaec08', -1, 8, 4, 5, '2024-11-13 14:06:33'),
('victorgabriel01@gmail.com', '6733ebaeaec08', 4, 8, 6, 2, '2024-11-13 14:26:52'),
('fabielydesousa@gmail.com', '6733ebaeaec08', -2, 8, 3, 5, '2024-11-13 14:32:10'),
('luisfernando@gmail.com', '6733f4a80f890', -4, 10, 2, 8, '2024-11-13 14:37:37'),
('davi@gmail.com', '6733ebaeaec08', 6, 8, 7, 1, '2024-11-13 16:37:31'),
('qwerry@gmail.com', '6733ebaeaec08', 0, 8, 4, 4, '2024-11-13 16:49:09'),
('bdiddy@gmail.com', '6733f4a80f890', -1, 10, 3, 7, '2024-11-13 18:37:59'),
('isackass@gmail.com', '6733ebaeaec08', 6, 8, 7, 1, '2024-11-13 19:13:10'),
('isackass@gmail.com', '6733f4a80f890', -1, 10, 3, 7, '2024-11-13 19:21:37'),
('caflo@gmail.com', '6733ebaeaec08', 4, 8, 6, 2, '2024-11-13 19:58:58'),
('teste@gmail.com', '6733ebaeaec08', 6, 8, 7, 1, '2024-11-14 11:53:44'),
('rudysgalaxy@gmail.com', '6733ebaeaec08', 0, 8, 4, 4, '2024-11-14 12:11:49'),
('ronalde@gmail.com', '6733f4a80f890', 2, 10, 4, 6, '2024-11-14 12:15:07'),
('caua@gmail.com', '6733f4a80f890', 8, 10, 6, 4, '2024-11-14 13:00:59'),
('tdgdxd710@gmail.com', '6733ebaeaec08', -4, 8, 2, 6, '2024-11-14 13:10:50'),
('cmgddgxgd@gmail.com', '6733ebaeaec08', 4, 8, 6, 2, '2024-11-14 13:15:06'),
('mariafernanda@gmail.com', '6733ebaeaec08', 4, 8, 6, 2, '2024-11-14 13:23:20'),
('cmifpialunos12@gmail.com', '6733ebaeaec08', 0, 8, 4, 4, '2024-11-14 13:32:19'),
('matheus@gmail.com', '6733ebaeaec08', 2, 8, 5, 3, '2024-11-14 13:43:31'),
('cmqwerty@gmail.com', '6733ebaeaec08', -4, 8, 2, 6, '2024-11-14 13:52:14'),
('ddb@gmail.com', '6733ebaeaec08', 8, 8, 8, 0, '2024-11-14 14:15:33'),
('keilalima@gmail.com', '6733f4a80f890', 5, 10, 5, 5, '2024-11-14 14:30:40'),
('cm6417710@gmail.com', '6733f4a80f890', 17, 10, 9, 1, '2024-11-14 14:42:25'),
('cm4177710@gmail.com', '6733ebaeaec08', 0, 8, 4, 4, '2024-11-14 16:25:14'),
('joao123@gmail.com', '6733f4a80f890', -1, 10, 3, 7, '2024-11-14 17:40:19'),
('robsonborges@ifpi.edu.br', '6733f4a80f890', -1, 10, 3, 7, '2024-11-14 17:45:24'),
('cm41454545454@gmail.com', '6733ebaeaec08', 2, 8, 5, 3, '2024-11-14 17:56:53'),
('samiracarvalho@gmail.com', '6733ebaeaec08', 2, 8, 5, 3, '2024-11-14 18:26:34'),
('cm4emrc710@gmail.com', '6733f4a80f890', -7, 10, 1, 9, '2024-11-14 18:37:22'),
('cm4emrc710@gmail.com', '6733ebaeaec08', 1, 1, 1, 0, '2024-11-14 18:38:10'),
('cmasdfg@gmail.com', '6733ebaeaec08', 2, 8, 5, 3, '2024-11-14 19:28:36'),
('cmasdfg@gmail.com', '6733f4a80f890', 11, 10, 7, 3, '2024-11-14 19:38:31'),
('cafhgadjf@gmail.com', '6733ebaeaec08', 6, 8, 7, 1, '2024-11-14 19:56:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('6733eec13403e', 'Amazônia.', '6733eec13b92b'),
('6733eec13403e', 'Caatinga.', '6733eec13b930'),
('6733eec13403e', 'Pantanal.', '6733eec13b931'),
('6733eec13403e', 'Pampa.', '6733eec13b932'),
('6733eec1400d7', 'Caatinga.', '6733eec14098a'),
('6733eec1400d7', 'Amazônia.', '6733eec14098e'),
('6733eec1400d7', 'Cerrado.', '6733eec14098f'),
('6733eec1400d7', 'Mata Atlântica.', '6733eec140990'),
('6733eec14466c', 'Mato Grosso', '6733eec144bff'),
('6733eec14466c', 'Piauí', '6733eec144c03'),
('6733eec14466c', 'Mato Grosso do Sul', '6733eec144c04'),
('6733eec14466c', 'Amazonas', '6733eec144c05'),
('6733eec148d67', 'Amazônia.', '6733eec149458'),
('6733eec148d67', 'Pampa.', '6733eec14945c'),
('6733eec148d67', 'Cerrado.', '6733eec14945d'),
('6733eec148d67', 'Pantanal.', '6733eec14945e'),
('6733eec1504bc', 'Caatinga.', '6733eec151344'),
('6733eec1504bc', 'Cerrado.', '6733eec151349'),
('6733eec1504bc', 'Pampa.', '6733eec15134a'),
('6733eec1504bc', 'Amazônia.', '6733eec15134b'),
('6733eec155c28', 'Mata Atlântica.', '6733eec157883'),
('6733eec155c28', 'Cerrado.', '6733eec157888'),
('6733eec155c28', 'Amazônia.', '6733eec157889'),
('6733eec155c28', 'Pantanal.', '6733eec15788a'),
('6733eec15df89', 'Pantanal.', '6733eec160354'),
('6733eec15df89', 'Caatinga.', '6733eec160359'),
('6733eec15df89', 'Cerrado.', '6733eec16035a'),
('6733eec15df89', 'Amazônia.', '6733eec16035b'),
('6733eec164bdf', 'Amazônia.', '6733eec165aef'),
('6733eec164bdf', 'Cerrado.', '6733eec165af4'),
('6733eec164bdf', 'Pantanal.', '6733eec165af5'),
('6733eec164bdf', 'Caatinga.', '6733eec165af6'),
('6733f8c258bcd', ' Bolívia, Colômbia, Equador, Guiana, Peru, Uruguai e Venezuela.', '6733f8c25a913'),
('6733f8c258bcd', 'Bolívia, Colômbia, Chile, Equador, Guiana, Suriname e Venezuela.', '6733f8c25a918'),
('6733f8c258bcd', 'Bolívia, Colômbia, Equador, Guiana, Peru, Suriname e Venezuela.', '6733f8c25a919'),
('6733f8c258bcd', 'Chile, Bolívia, Equador, Guiana, Suriname, Paraguai e Venezuela.', '6733f8c25a91a'),
('6733f8c25dc77', 'Temperado.', '6733f8c25f372'),
('6733f8c25dc77', ' Tropical.', '6733f8c25f377'),
('6733f8c25dc77', 'Semiárido.', '6733f8c25f378'),
('6733f8c25dc77', 'Equatorial.', '6733f8c25f379'),
('6733f8c27438a', 'Ocorrência de rios intermitentes.', '6733f8c27641f'),
('6733f8c27438a', 'Predomínio do clima subtropical.', '6733f8c276424'),
('6733f8c27438a', 'Presença de espécies temperadas.', '6733f8c276425'),
('6733f8c27438a', 'Registro de elevada pluviosidade.', '6733f8c276426'),
('6733f8c27afaf', 'higrófilas.', '6733f8c27b9ed'),
('6733f8c27afaf', 'caducifólias.', '6733f8c27b9f0'),
('6733f8c27afaf', 'xerófilas.', '6733f8c27b9f1'),
('6733f8c27afaf', 'aciculifoliadas.', '6733f8c27b9f2'),
('6733f8c27e75f', ' radiação.', '6733f8c27ed9f'),
('6733f8c27e75f', 'umidade.', '6733f8c27eda2'),
('6733f8c27e75f', 'glaciação.', '6733f8c27eda3'),
('6733f8c27e75f', 'longitude.', '6733f8c27eda4'),
('6733f8c282038', 'Bacia do Paraguai.', '6733f8c282bd3'),
('6733f8c282038', 'Bacia Tocantins-Araguaia.', '6733f8c282bd8'),
('6733f8c282038', 'Bacia do Prata.', '6733f8c282bd9'),
('6733f8c282038', 'Bacia Mato-grossense.', '6733f8c282bda'),
('6733f8c286b63', 'Mata Atlântica.', '6733f8c28736b'),
('6733f8c286b63', 'Pampa', '6733f8c28736e'),
('6733f8c286b63', 'Caatinga.', '6733f8c28736f'),
('6733f8c286b63', 'Amazônico.', '6733f8c287370'),
('6733f8c288a5f', 'O elevado índice de desmatamento resulta, principalmente, da exploração de madeiras de elevado valor comercial.', '6733f8c28ae67'),
('6733f8c288a5f', 'A pecuária extensiva e a ampliação da área dedicada ao cultivo de arroz figuram entre as principais causas do desmatamento.', '6733f8c28ae6d'),
('6733f8c288a5f', 'O desmatamento vem aumentando a frequência de deslizamentos de terra em suas encostas íngremes, com graves consequências sociais e materiais.', '6733f8c28ae6e'),
('6733f8c288a5f', 'Mais de metade da soja produzida no Brasil é cultivada dentro dos limites originais desse bioma, fato que ajuda a explicar o desmatamento.', '6733f8c28ae6f'),
('6733f8c28c9c0', 'subtropical, com as quatro estações bem definidas.', '6733f8c28dde7'),
('6733f8c28c9c0', 'tropical, com forte influência da continentalidade.', '6733f8c28dded'),
('6733f8c28c9c0', 'semiárido, com elevados volumes anuais de chuvas.', '6733f8c28ddee'),
('6733f8c28c9c0', 'tropical úmido, com duas estações bem definidas.', '6733f8c28ddef'),
('6733f8c2906e4', 'Paraná.', '6733f8c292b37'),
('6733f8c2906e4', 'Mato Grosso do Sul.', '6733f8c292b3c'),
('6733f8c2906e4', 'Tocantins.', '6733f8c292b3d'),
('6733f8c2906e4', 'Rio Grande do Sul.', '6733f8c292b3e');

-- --------------------------------------------------------

--
-- Estrutura para tabela `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('6733ebaeaec08', '6733eec13403e', 'Qual é o maior bioma brasileiro em extensão?', 4, 1),
('6733ebaeaec08', '6733eec1400d7', 'Qual bioma é caracterizado pela presença de cactos e clima semiárido?\r\n', 4, 2),
('6733ebaeaec08', '6733eec14466c', 'Em qual estado está localizada a maior parte do Pantanal?', 4, 3),
('6733ebaeaec08', '6733eec148d67', 'Qual é o bioma predominante na região Sul do Brasil?', 4, 4),
('6733ebaeaec08', '6733eec1504bc', 'Qual bioma brasileiro é conhecido pela sua biodiversidade e árvores de grande porte?', 4, 5),
('6733ebaeaec08', '6733eec155c28', 'Qual bioma ocupa a região central do Brasil e possui savanas e árvores retorcidas?', 4, 6),
('6733ebaeaec08', '6733eec15df89', 'Qual o bioma que possui as maiores inundações sazonais?', 4, 7),
('6733ebaeaec08', '6733eec164bdf', 'Qual bioma é conhecido por sofrer com a desertificação?\r\n', 4, 8),
('6733f4a80f890', '6733f8c258bcd', 'O bioma Amazônia é o maior do Brasil. Ele ocupa, além do território brasileiro, áreas dos seguintes países:', 4, 1),
('6733f4a80f890', '6733f8c25dc77', 'O Cerrado é um bioma que possui clima característico marcado pela dualidade climática. Qual o clima predominante no Cerrado?', 4, 2),
('6733f4a80f890', '6733f8c27438a', 'Assinale a alternativa que apresenta uma característica geográfica do bioma Caatinga:', 4, 3),
('6733f4a80f890', '6733f8c27afaf', 'A vegetação da Caatinga apresenta especificidades importantes quando comparadas às demais vegetações brasileiras. Nesse bioma, há o predomínio de espécies vegetais', 4, 4),
('6733f4a80f890', '6733f8c27e75f', 'A Mata Atlântica é um bioma existente ao longo de grande parte do litoral brasileiro. Nesse sentido, as suas características geográficas sofrem forte influência da', 4, 5),
('6733f4a80f890', '6733f8c282038', 'O bioma Pantanal é conhecido pela grande presença de fontes de água. Qual a principal bacia hidrográfica do Pantanal?', 4, 6),
('6733f4a80f890', '6733f8c286b63', '(Unesp 2014) Mata de terra firme, mata de várzea e igapó são formações vegetais típicas deste bioma. Em razão do processo de uso e ocupação do território brasileiro e das ações dirigidas à preservação dos recursos naturais realizadas nas últimas décadas, este bioma constitui-se também naquele que guarda as maiores extensões de floresta nativa no Brasil, ainda que seu desmatamento não tenha sido completamente cessado. O texto refere-se ao bioma', 4, 7),
('6733f4a80f890', '6733f8c288a5f', '(FGV 2013) De acordo com Indicadores do Desenvolvimento Sustentável 2012, do Instituto Brasileiro de Geografia e Estatística, o Pampa é o segundo bioma com maior índice de desmatamento do país, com cerca de 54% de sua cobertura vegetal removida até 2009. Sobre as causas e as consequências da degradação desse bioma, é correto afirmar:', 4, 8),
('6733f4a80f890', '6733f8c28c9c0', 'O Pampa possui um tipo climático diferente de grande parte do território do Brasil. Esse clima é o', 4, 9),
('6733f4a80f890', '6733f8c2906e4', 'O bioma Pampa possui uma espacialidade geográfica muito específica. Qual estado está localizado no bioma Pampa?', 4, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('6733ebaeaec08', 'Quiz Biomas - Fácil', 1, 1, 8, 4, '', '#fácil', '2024-11-12 23:58:38'),
('6733f4a80f890', 'Quiz Biomas - Dificil', 2, 1, 10, 7, '', '#dificil', '2024-11-13 00:36:56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('cm417710@gmail.com', 7, '2024-11-13 13:41:24'),
('let@gmail.com', 3, '2024-11-04 19:21:29'),
('felip2.br@gmail.com', 0, '2024-11-04 19:36:40'),
('yago21@gmail.com', -1, '2024-11-13 11:54:55'),
('mauri@gmail.com', -1, '2024-11-13 12:02:39'),
('victoor@gmail.com', -2, '2024-11-13 12:05:15'),
('pgomesribeiro77@gmail.com', -6, '2024-11-13 12:16:22'),
('izaquenicolas143@gmail.com', 2, '2024-11-13 12:23:08'),
('ronaldo.pb@ifpi.edu.com', 6, '2024-11-13 12:45:06'),
('pedroart@gmail.com', 0, '2024-11-13 12:55:39'),
('rangelnunes@gmail.com', 8, '2024-11-13 13:01:54'),
('gabrielhenryk98@gmail.com', 8, '2024-11-13 13:07:53'),
('Ph779472@gmail.com', 4, '2024-11-13 13:15:04'),
('fernandalealdasilva97@gmail.com', -2, '2024-11-13 13:22:50'),
('brunorikelmy123@gmail.com', -1, '2024-11-13 13:29:52'),
('oelidam4@gmail.com', 8, '2024-11-13 13:33:58'),
('kleberson@gmail.com', -1, '2024-11-13 14:00:31'),
('letyciacardosoc@gmail.com', -1, '2024-11-13 14:06:33'),
('victorgabriel01@gmail.com', 4, '2024-11-13 14:26:52'),
('fabielydesousa@gmail.com', -2, '2024-11-13 14:32:10'),
('luisfernando@gmail.com', -4, '2024-11-13 14:37:37'),
('davi@gmail.com', 6, '2024-11-13 16:37:31'),
('qwerry@gmail.com', 0, '2024-11-13 16:49:09'),
('bdiddy@gmail.com', -1, '2024-11-13 18:37:59'),
('isackass@gmail.com', 5, '2024-11-13 19:21:37'),
('caflo@gmail.com', 4, '2024-11-13 19:58:58'),
('teste@gmail.com', 6, '2024-11-14 11:53:44'),
('rudysgalaxy@gmail.com', 0, '2024-11-14 12:11:49'),
('ronalde@gmail.com', 2, '2024-11-14 12:15:07'),
('caua@gmail.com', 8, '2024-11-14 13:00:59'),
('tdgdxd710@gmail.com', -4, '2024-11-14 13:10:50'),
('cmgddgxgd@gmail.com', 4, '2024-11-14 13:15:06'),
('mariafernanda@gmail.com', 4, '2024-11-14 13:23:20'),
('cmifpialunos12@gmail.com', 0, '2024-11-14 13:32:19'),
('matheus@gmail.com', 2, '2024-11-14 13:43:31'),
('cmqwerty@gmail.com', -4, '2024-11-14 13:52:14'),
('ddb@gmail.com', 8, '2024-11-14 14:15:33'),
('keilalima@gmail.com', 5, '2024-11-14 14:30:40'),
('cm6417710@gmail.com', 17, '2024-11-14 14:42:25'),
('cm4177710@gmail.com', 0, '2024-11-14 16:25:14'),
('joao123@gmail.com', -1, '2024-11-14 17:40:19'),
('robsonborges@ifpi.edu.br', -1, '2024-11-14 17:45:24'),
('cm41454545454@gmail.com', 2, '2024-11-14 17:56:53'),
('samiracarvalho@gmail.com', 2, '2024-11-14 18:26:34'),
('cm4emrc710@gmail.com', -7, '2024-11-14 18:37:47'),
('cmasdfg@gmail.com', 13, '2024-11-14 19:38:31'),
('cafhgadjf@gmail.com', 6, '2024-11-14 19:56:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Ádria Amorim', 'F', 'IFPI', 'adriaamav@gmail.com', 89988036532, 'a1faf74c573e29be416cf0540b23ac92'),
('Nome', 'M', 'Uespi', 'bdiddy@gmail.com', 40028922, '1afa5c0716003ef56c9ea0b063e4660a'),
('Bruno', 'M', 'ifpi floriano', 'brunorikelmy123@gmail.com', 89994567418, 'e10adc3949ba59abbe56e057f20f883e'),
('Egena', 'F', 'IFPI', 'cafhgadjf@gmail.com', 41564646464, 'e10adc3949ba59abbe56e057f20f883e'),
('Carlos Daniel', 'M', 'ifpi', 'caflo@gmail.com', 1844544848, '3a115dda5b7c4ef65d4b8811b996d607'),
('Caua', 'M', 'instituto federal', 'caua@gmail.com', 828558, '827ccb0eea8a706c4c34a16891f84e7b'),
('Julie', 'M', 'meninos jesus de praga', 'cm41454545454@gmail.com', 545454545454, 'e10adc3949ba59abbe56e057f20f883e'),
('Joao Bento', 'M', 'ifpi', 'cm417710@gmail.com', 89981068203, '15c45c1d20673640aced29edfa3921e6'),
('Alessandra', 'F', 'ifpi', 'cm4177710@gmail.com', 999999999, 'ad1abbec65a719c0f97af26baf9d6c96'),
('Anny Beatriz', 'F', 'raimundinho carvalho', 'cm4emrc710@gmail.com', 154545454, '827ccb0eea8a706c4c34a16891f84e7b'),
('Alessandra', 'M', 'ifpi', 'cm6417710@gmail.com', 8544624816, '827ccb0eea8a706c4c34a16891f84e7b'),
('Neuda', 'F', 'IFPI', 'cmasdfg@gmail.com', 123456789, '827ccb0eea8a706c4c34a16891f84e7b'),
('Luis Gustavo', 'M', 'Monsenhor', 'cmgddgxgd@gmail.com', 141414141414, 'e10adc3949ba59abbe56e057f20f883e'),
('Kayllon', 'M', 'ifpi', 'cmifpialunos12@gmail.com', 141415634, 'e10adc3949ba59abbe56e057f20f883e'),
('Kesia', 'F', 'ifpi', 'cmqwerty@gmail.com', 4989889865251, 'e10adc3949ba59abbe56e057f20f883e'),
('Idiota Da Silva', 'M', 'ifpi', 'davi@gmail.com', 9786875765, 'e10adc3949ba59abbe56e057f20f883e'),
('Deusdebio', 'M', 'ifpi', 'ddb@gmail.com', 89988234877, '827ccb0eea8a706c4c34a16891f84e7b'),
('Fabiely De Sousa Costa ', 'F', 'IFPI-campus floriano ', 'fabielydesousa@gmail.com', 89994168891, '96d3721860aabc189666d7abb4d7e99b'),
('Felipe Gabriel', 'M', 'Potencial', 'felip2.br@gmail.com', 8944433322, '827ccb0eea8a706c4c34a16891f84e7b'),
('Fernanda Leal', 'F', 'instituto federal', 'fernandalealdasilva97@gmail.com', 89994517715, 'd94ead1d272d903068b667ec3be7e4c3'),
('Henryk Gabriel Sousa Santos', 'M', 'IFPI', 'gabrielhenryk98@gmail.com', 89994194754, '391347ae58379add3fca2e88e16561b2'),
('Zacks$kass', 'M', 'IFPI', 'isackass@gmail.com', 40028922, 'e10adc3949ba59abbe56e057f20f883e'),
('Izaque Nicolas', 'M', 'IFPI', 'izaquenicolas143@gmail.com', 8999220570, '3926151eb30ab63c500fae58b9b1a8b4'),
('Joao', 'M', 'ifpi', 'joao123@gmail.com', 89994204457, 'ea84a4c0486cf7fd8bab41dd2eb7b9a6'),
('Keila', 'F', 'ifpi', 'keilalima@gmail.com', 99984083862, '720cac4a4b61a4e95fd900ead17d6d9a'),
('Kleberson', 'M', 'ifpi', 'kleberson@gmail.com', 3434355435, 'c8837b23ff8aaa8a2dde915473ce0991'),
('Letycia', 'F', 'ifpi', 'letyciacardosoc@gmail.com', 0, '827ccb0eea8a706c4c34a16891f84e7b'),
('Luis Fernado', 'M', 'ifpi', 'luisfernando@gmail.com', 89994108357, 'fa898cad4734477c2275af4de586a7a0'),
('Maria Fernanda', 'F', 'instituto federal', 'mariafernanda@gmail.com', 1234567890, '0c1f96f47c629ee3936d842f32b8d627'),
('Matheus', 'M', 'instituto federal', 'matheus@gmail.com', 89999999, '827ccb0eea8a706c4c34a16891f84e7b'),
('Jose', 'M', 'IFPI', 'mauri@gmail.com', 2222222222, '827ccb0eea8a706c4c34a16891f84e7b'),
('Eli', 'F', 'ifpi', 'oelidam4@gmail.com', 89994272019, 'aafea1e82ee6beebcf6333dfd9bbc63b'),
('Pedro', 'M', 'ifpi', 'pedroart@gmail.com', 899990000, '46d204b14e7c11340d69dbd6d9098cf5'),
('Pedro Alexandre', 'M', 'alexandre nunes de almeidapp', 'pgomesribeiro77@gmail.com', 994473547, 'e10adc3949ba59abbe56e057f20f883e'),
('Pedro Henrique', 'M', 'Colegio Paraiso', 'Ph779472@gmail.com', 99985481094, '9ea050f5f762f4b8ad45286b45fc4c33'),
('Guilherme', 'M', 'ifipi', 'qwerry@gmail.com', 12345578889, 'e10adc3949ba59abbe56e057f20f883e'),
('Rangel', 'M', 'ifpi', 'rangelnunes@gmail.com', 899990000, 'e10adc3949ba59abbe56e057f20f883e'),
('Robson', 'M', 'IFPI', 'robsonborges@ifpi.edu.br', 899994241488, 'e10adc3949ba59abbe56e057f20f883e'),
('Ronalde', 'M', 'ifpi', 'ronalde@gmail.com', 89994507078, '7952748ebdb73b88498d4137e3050735'),
('Ronaldo Borges', 'Male', 'Ronaldo', 'ronaldo.pb@ifpi.edu.com', 89994129138, 'e10adc3949ba59abbe56e057f20f883e'),
('Ruda', 'M', 'ifpi', 'rudysgalaxy@gmail.com', 89994089256, '827ccb0eea8a706c4c34a16891f84e7b'),
('Samira ', 'F', 'uespi', 'samiracarvalho@gmail.com', 8994605088, '6dd19340e7a85dd4bee2dba50efab7ec'),
('Francisco', 'Outro', 'e m', 'tdgdxd710@gmail.com', 141414144141, 'e10adc3949ba59abbe56e057f20f883e'),
('Elane', 'F', 'ifpi', 'teste@gmail.com', 54152626, 'e10adc3949ba59abbe56e057f20f883e'),
('User', 'M', 'cimt', 'user@user.com', 11, 'e10adc3949ba59abbe56e057f20f883e'),
('Victor', 'M', 'IFPI', 'victor@gmail.com', 89981068203, '25d55ad283aa400af464c76d713c07ad'),
('Victor Gabriel', 'M', 'ifpi', 'victorgabriel01@gmail.com', 1, 'e10adc3949ba59abbe56e057f20f883e'),
('Wanderson', 'M', 'IFPI', 'wanderson@gmail.com', 999987438, '827ccb0eea8a706c4c34a16891f84e7b'),
('Yago', 'M', 'IFPI', 'yago21@gmail.com', 2222222222, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
