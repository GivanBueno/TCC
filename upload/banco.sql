-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18-Ago-2020 às 22:17
-- Versão do servidor: 5.7.31-0ubuntu0.18.04.1
-- versão do PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `obu`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm`
--

CREATE TABLE `adm` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` text NOT NULL,
  `senha` text NOT NULL,
  `profile_pic` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `adm`
--

INSERT INTO `adm` (`id`, `nome`, `email`, `senha`, `profile_pic`, `created`, `modified`) VALUES
(1, 'sadafs', 'eqomeqtrab@gmail.com', 'sadf', 'asdf', '2020-08-16 20:54:50', '2020-08-16 20:54:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id` int(11) NOT NULL,
  `txt` text NOT NULL,
  `pagina` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `edit` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `conteudo`
--

INSERT INTO `conteudo` (`id`, `txt`, `pagina`, `created`, `modified`, `edit`) VALUES
(5, 'asfas', 'home', '2020-08-16 20:25:43', '2020-08-16 20:25:43', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(14) NOT NULL,
  `birthdate` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `hood` varchar(100) NOT NULL,
  `zip_code` int(8) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `phone` int(13) NOT NULL,
  `mobile` int(13) NOT NULL,
  `ie` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `customers`
--

INSERT INTO `customers` (`id`, `name`, `cpf_cnpj`, `birthdate`, `address`, `hood`, `zip_code`, `city`, `state`, `phone`, `mobile`, `ie`, `created`, `modified`) VALUES
(1, 'Fulano de Tal', '123.456.789-00', '1989-01-01', 'Rua da Web, 123 ass', 'Internet', 1234568, 'Teste', 'Teste', 5555555, 55555555, 123456, '2016-05-24 00:00:00', '2020-08-16 19:53:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `filo` varchar(25) NOT NULL,
  `link` text NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `img` text NOT NULL,
  `edit` varchar(60) NOT NULL,
  `nomeclatura` varchar(60) NOT NULL,
  `classe` varchar(60) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`id`, `titulo`, `filo`, `link`, `tipo`, `img`, `edit`, `nomeclatura`, `classe`, `created`, `modified`) VALUES
(97, 'A BIODIVERSIDADE E O TURISMO REGIONALFATORES DE RESILIÊNCIA URBANA NAS CIDADES DE CABREUVA, ITU E SALTO.', '-', '/OBU/upload/artigos/biodiversidade/P01.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 16:17:43', NULL),
(98, 'A Biota Aquática em um Riacho Tropical e suas Relações com Fatores Ambientais', '-', '/OBU/upload/artigos/biodiversidade/P02.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(99, 'A educação que vem do lixo Um estudo do programa “Piedade sem lixo” e a formação da cidadania ambiental.', '-', '/OBU/upload/artigos/biodiversidade/P03.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(100, 'A transformação do município de Sorocaba e a interferência nas relações socioambientais da população no período de 1654-2014', '-', '/OBU/upload/artigos/biodiversidade/P04.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(101, 'A_HISTORIA_AMBIENTAL_DE_SOROCABA.', '-', '/OBU/upload/artigos/biodiversidade/P05.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(102, 'ANÁLISE DA SUSCETIBILIDADE DO SOLO A PROCESSOS EROSIVOS DO PARQUE NATURAL MUNICIPAL CORREDORES DE BIODIVERSIDADE (PNMCBIO) DE SOROCABA (SP)', '-', '/OBU/upload/artigos/biodiversidade/P06.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(103, 'Ant communities Hymenoptera - Formicidae in urban centers.', '-', '/OBU/upload/artigos/biodiversidade/P07.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(104, 'Aporte de serapilheira como indicador ambiental em fragmentos de floresta estacional semidecidual em Sorocaba, SP', '-', '/OBU/upload/artigos/biodiversidade/P08.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(105, 'AVALIAÇÃO SIMPLIFICADA DE IMPACTOS AMBIENTAIS NA BACIA DO ALTO SOROCABA (SP).', '-', '/OBU/upload/artigos/biodiversidade/P09.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(106, 'Biodiversidade e mudanças climáticas: contexto evolutivo, histórico e político', '-', '/OBU/upload/artigos/biodiversidade/P10.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(107, 'Biodiversidade nos Museus.', '-', '/OBU/upload/artigos/biodiversidade/P11.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(108, 'CENÁRIOS AMBIENTAIS PARA O ORDENAMENTO TERRITORIAL DE ÁREAS DE PRESERVAÇÃO PERMANENTE NO MUNICÍPIO DE SOROCABA, SP1', '-', '/OBU/upload/artigos/biodiversidade/P12.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(109, 'CENÁRIOS AMBIENTAIS PARA O ORDENAMENTO TERRITORIAL DE ÁREAS DE PRESERVAÇÃO PERMANENTE NO MUNICIPIO DE SOROCABA.', '-', '/OBU/upload/artigos/biodiversidade/P13.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(110, 'CONFLITOS DE INTERESSES EM UNIDADES DE CONSERVAÇÃO DO MUNICÍPIO DE PARATI, ESTADO DO RIO DE JANEIRO1', '-', '/OBU/upload/artigos/biodiversidade/P14.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(111, 'conservacao da biodiversidade no Brasil.', '-', '/OBU/upload/artigos/biodiversidade/P15.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(112, 'DESAFIOS DA AGRICULTURA EM ÁREAS FORTEMENTE URBANIZADAS: a Região do Alto Tietê-Cabeceiras1', '-', '/OBU/upload/artigos/biodiversidade/P16.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(113, 'GESTÃO DAS ÁGUAS NA REGIÃO METROPOLITANA DE SOROCABA.', '-', '/OBU/upload/artigos/biodiversidade/P17.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(114, 'Uma análise sobre a história e a situação das unidades de conservação no brasil', '-', '/OBU/upload/artigos/biodiversidade/P18.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(115, 'Indicadores socioambientais na gestão integrada das sub bacias da região metropolitana de Sorocaba, SP.', '-', '/OBU/upload/artigos/biodiversidade/P19.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(116, 'INFLUÊNCIA DA PRECIPITAÇÃO E TEMPERATURA DO AR NA PRODUÇÃO DE SERAPILHEIRA EM TRECHO DE FLORESTA ESTACIONAL EM SOROCABA, SP', '-', '/OBU/upload/artigos/biodiversidade/P20.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(117, 'lazer e ucs.', '-', '/OBU/upload/artigos/biodiversidade/P21.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(118, 'Biodiversity and phytogeography of the alpine flora of Iran', '-', '/OBU/upload/artigos/biodiversidade/P22.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(119, 'Oferta de Parques Urbanos e Naturais em Sorocaba (SP) alavanca para políticas de uso público.', '-', '/OBU/upload/artigos/biodiversidade/P23.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(120, 'papel do município na conservação da biodiversidade', '-', '/OBU/upload/artigos/biodiversidade/P24.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(121, 'PERCEPÇÃO AMBIENTAL DA BIODIVERSIDADE EM QUATRO CIDADES PAULISTAS.', '-', '/OBU/upload/artigos/biodiversidade/P25.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(122, 'UNIDADES DE CONSERVAÇÃO: UMA DISCUSSÃO TEÓRICA À LUZ DOS CONCEITOS DE TERRITÓRIO E DE POLÍTICAS PÚBLICAS', '-', '/OBU/upload/artigos/biodiversidade/P26.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(123, 'pracas e espacoes verdes.', '-', '/OBU/upload/artigos/biodiversidade/P27.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(124, 'Proposição de Corredor Ecológico entre duas Unidades de Conservação na Região Metropolitana de Sorocaba', '-', '/OBU/upload/artigos/biodiversidade/P28.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(125, 'Proteção da biodiversidade, legislação e políticas públicas na região metropolitana de Sorocaba - SP, Brasil.', '-', '/OBU/upload/artigos/biodiversidade/P29.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(126, 'Sorocaba e a biodiversidade', '-', '/OBU/upload/artigos/biodiversidade/P30.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(127, 'TÉCNICAS USUAIS DE ESTIMATIVA DA BIODIVERSIDADE.', '-', '/OBU/upload/artigos/biodiversidade/P31.pdf', ' - ', '', 'Kamila Nascimento', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(128, 'Avifauna associada a um trecho urbano do Rio Sorocaba, sudeste do Brasil', 'Aves', '/OBU/upload/artigos/fauna/Aves/P01.pdf', 'Fauna', '', 'Kamila Nascimento', 'Aves', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(129, 'Avifauna em uma Área de Cerrado no Bairro do Central Parque, Município de  Sorocaba, São Paulo, Brasil_', 'Aves', '/OBU/upload/artigos/fauna/Aves/P02.pdf', 'Fauna', '', 'Kamila Nascimento', 'Aves', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(130, 'Carrapatos em aves selvagens no Zoológico de Sorocaba – São Paulo, Brasil', 'Aves', '/OBU/upload/artigos/fauna/Aves/P03.pdf', 'Fauna', '', 'Kamila Nascimento', 'Aves', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(131, 'Enriquecimento Ambiental no Recinto do Mutum-de-Penacho (Crax fasciolata) do Parque Zoológico Municipal “Quinzinho de Barros”,  Sorocaba-SP', 'Aves', '/OBU/upload/artigos/fauna/Aves/P04.pdf', 'Fauna', '', 'Kamila Nascimento', 'Aves', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(132, 'INVENTÁRIO DA AVIFAUNA DO PARQUE NATURAL MUNICIPAL CORREDORES DE BIODIVERSIDADE, SOROCABA, SP, BRASIL', 'Aves', '/OBU/upload/artigos/fauna/Aves/P05.pdf', 'Fauna', '', 'Kamila Nascimento', 'Aves', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(133, 'MALÓFAGOS PARASITAS DE AVES CAMPESTRES CATIVAS DO ZOOLÓGICO MUNICIPAL QUINZINHO DE BARROS, SOROCABA,  ESTADO DE SÃO PAULO, BRASIL', 'Aves', '/OBU/upload/artigos/fauna/Aves/P06.pdf', 'Fauna', '', 'Kamila Nascimento', 'Aves', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(134, 'Dipterofauna de fragmentos vegetacionais da UFSCar - campus  Sorocaba, SP, Brasil.', 'Invertebrados', '/OBU/upload/artigos/fauna/Invertebrados/P01.pdf', 'Fauna', '', 'Kamila Nascimento', 'Invertebrados', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(135, 'Fauna de besouros bioluminescentes (Coleoptera_ Elateroidea_ Lampyridae_ Phengodidae, Elateridae) nos municípios de Campinas, Sorocaba-Votorantim e Rio Claro-Limeira (SP, Brasil)_ biodiversidade e influência da urbanização', 'Invertebrados', '/OBU/upload/artigos/fauna/Invertebrados/P02.pdf', 'Fauna', '', 'Kamila Nascimento', 'Invertebrados', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(136, 'Inventário da biodiversidade de lacraias (Arthropoda, Chilopoda) em parques ecológicos do município de Sorocaba, São Paulo, Brasil', 'Invertebrados', '/OBU/upload/artigos/fauna/Invertebrados/P03.pdf', 'Fauna', '', 'Kamila Nascimento', 'Invertebrados', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(137, 'Ocorrência de um molusco invasor (Melanoides tuberculata, Müller, 1774), em diferentes sistemas aquáticos da bacia hidrográfica do Rio  Sorocaba, SP, Brasil', 'Invertebrados', '/OBU/upload/artigos/fauna/Invertebrados/P04.pdf', 'Fauna', '', 'Kamila Nascimento', 'Invertebrados', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(138, 'ESTRUTURAS DAS COMUNIDADES DE PEQUENOS MAMÍFEROS ROEDORES DO PARQUE MUNICIPAL CORREDORES DA BIODIVERSIDADE SOROCABA_SP', 'Mamíferos', '/OBU/upload/artigos/fauna/Mamíferos/P01.pdf', 'Fauna', '', 'Kamila Nascimento', 'Mamíferos', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(139, 'Inventário mastofaunístico do fragmento de mata adjacente à Universidade Paulista-UNIP em Sorocaba_ inferências ecológicas baseadas na presença de cachorro-do-mato (Cerdocyon thous (Linnaeus, 1706) (Carnívora, Canidae))', 'Mamíferos', '/OBU/upload/artigos/fauna/Mamíferos/P02.pdf', 'Fauna', '', 'Kamila Nascimento', 'Mamíferos', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(140, 'Inventário mastofaunístico do fragmento de mata adjacente à Universidade Paulista-UNIP em Sorocaba_ inferências ecológicas baseadas na presença de cachorro-do-mato (Cerdocyon thous (Linnaeus, 1706) (Carnívora, Canidae))', 'Mamíferos', '/OBU/upload/artigos/fauna/Mamíferos/P03.pdf', 'Fauna', '', 'Kamila Nascimento', 'Mamíferos', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(141, 'Alimentação de Serrasalmus maculatus (Kner, 1858) (Characiformes_ Serrasalmidae) no trecho inferior bacia do rio Sorocaba, São Paulo, Brasil', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P01.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(142, 'Biological aspects of Schizodon nasutus Kner, 1858 (Characiformes, Anostomidae) in the low Sorocaba river basin, São Paulo state, Brazil', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P02.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(143, 'Comunidades de peixes como indicadoras de poluição ambiental_', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P03.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(144, 'Conhecimento Etnoictiológico dos Pescadores Desportivos do Trecho  Superior da Bacia do Rio Sorocaba', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P04.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(145, 'Deslocamento reprodutivo da ictiofauna migradora do rio Sorocaba,  São Paulo, Brasil', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P05.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(146, 'Estudo da dieta natural da ictiofauna de um reservatório centenário, São  Paulo, Brasil', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P06.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(147, 'Fish, Sorocaba river sub-basin, state of São Paulo, Brazil', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P07.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(148, 'Food ecology and presence of microplastic in the stomach content of neotropical fish in an urban river of the upper Paraná River Basin', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P08.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(149, 'Introdução de espécies de peixes_ o caso da bacia do rio Sorocaba', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P09.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(150, 'Length-weight relationship for two fish species from Ipanema National Forest, São Paulo state, Brazil', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P10.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(151, 'Peixes do Rio Piragibu-Mirim em Sorocaba_SP', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P11.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(152, 'The fish community of the Sorocaba River Basin in different habitats (State of São Paulo, Brazil)', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P12.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(153, 'THE ICHTHYOFAUNA OF THE MARGINAL LAGOONS OF THE SOROCABA RIVER, SP, BRAZIL_ COMPOSITION, ABUNDANCE AND EFFECT OF THE ANTHROPOGENIC  ACTIONS', 'Peixes', '/OBU/upload/artigos/fauna/Peixes/P13.pdf', 'Fauna', '', 'Kamila Nascimento', 'Peixes', 'Artigos Científicos', '2020-08-18 14:18:05', NULL),
(154, 'A comunidade Fitoplantônica no Reservatório de Itapararanga (Bacia do Rio Sorocaba, SP)', '-', '/OBU/upload/Livros/P01.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 16:34:39', NULL),
(155, 'Asas da cidade', '-', '/OBU/upload/Livros/P02.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(156, 'Biodiversidade do Município de Sorocaba', '-', '/OBU/upload/Livros/P03.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(157, 'Biodiversidade na APA Itupararanga - Condições atuais e perspectivas futuras', '-', '/OBU/upload/Livros/P04.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(158, 'Conectando Peixes, Rios e Pessoas - 2014', '-', '/OBU/upload/Livros/P05.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(159, 'II SEMINÁRIO CONECTANDO PEIXES RIOS E PESSOAS “A importância de rios livres e várzeas conservadas”', '-', '/OBU/upload/Livros/P06.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(160, 'Jardins que fazem a cidade de Sorocaba', '-', '/OBU/upload/Livros/P07.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(161, 'Livro Vermelho de Fauna Brasileira Ameaçada de Extinção - 2018', '-', '/OBU/upload/Livros/P08.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(162, 'Mamíferos do Brasil - 2006', '-', '/OBU/upload/Livros/P09.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(163, 'Observatório da Biodiversidade UCs', '-', '/OBU/upload/Livros/P10.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(164, 'Panorama da Biodiversidade nas Cidades (livro)', '-', '/OBU/upload/Livros/P11.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(165, 'Parque Natural Municipal Corredores da Biodiversidade', '-', '/OBU/upload/Livros/P12.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(166, 'Peixes de Água Doce - 1999', '-', '/OBU/upload/Livros/P12.pdf', '-', '', 'Kamila Nascimento', '-', 'Livros', '2020-08-18 15:41:09', NULL),
(167, '5º Relatório Nacional Para a Convenção Sobre Diversidade Biológica - Brasil', '-', '/OBU/upload/documentos/P01.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(168, 'A adequação da legislação ambiental à Conservação Sobre a Biodiversidade', '-', '/OBU/upload/documentos/P02.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(169, 'Análise comparativa as estratégias nacionais parabodiversidade de diversos países', '-', '/OBU/upload/documentos/P03.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(170, 'Estratégia e Plano de Ação Nacional para a Biodiversidade', '-', '/OBU/upload/documentos/P04.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(171, 'Estudo sobre formas de Repartição de Benefícios em atividades de Prospecção Biológica', '-', '/OBU/upload/documentos/P05.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(172, 'LEI Nº 12.059 - Institui o programa Refúgios da Biodiversidade no município de Sorocaba e dá outras providências', '-', '/OBU/upload/documentos/P06.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(173, 'Lista brasileira de Herpetologia 2018', '-', '/OBU/upload/documentos/P07.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(174, 'Lista brasileira de Herpetologia 2019', '-', '/OBU/upload/documentos/P08.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(175, 'Lista das Aves do Brasil 2014', '-', '/OBU/upload/documentos/P09.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(176, 'Os Saberes Tradicionais e a Biodiversidade no Brasil_', '-', '/OBU/upload/documentos/P10.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(177, 'Plano Diretor Sorocaba - Vol. I', '-', '/OBU/upload/documentos/P11.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(178, 'Plano Diretor Sorocaba - Vol. II', '-', '/OBU/upload/documentos/P12.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(179, 'Política Nacional de Biodiversidade', '-', '/OBU/upload/documentos/P13.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(180, 'POLÍTICAS PÚBLICAS E BIODIVERSIDADE NO BRASIL', '-', '/OBU/upload/documentos/P14.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(181, 'Prefeitura de Sorocaba - Plano de Arborização Urbana 2009 - 2020', '-', '/OBU/upload/documentos/P15.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(182, 'Programa Municipal de Educação Ambiental de Sorocaba', '-', '/OBU/upload/documentos/P16.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(183, 'Projeto Sorocaba Cidade de Biodiversidade', '-', '/OBU/upload/documentos/P17.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(184, 'Revista - Meio Ambiente de Sorocaba Rumo a Sustentabilidade Ambiental', '-', '/OBU/upload/documentos/P18.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(185, 'VALORAÇÃO ECONÔMICA DA BIODIVERSIDADE - Estudos de Caso no Brasil', '-', '/OBU/upload/documentos/P19.pdf', '-', '', 'Kamila Nascimento', '-', 'documentos e refencia', '2020-08-18 18:13:59', NULL),
(186, 'Secretaria do Meio Ambiente, Parques e Jardins', '-', 'https://meioambiente.sorocaba.sp.gov.br/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(187, 'CBEE – Centro Brasileiro de Estudos em Ecologia de Estradas', '-', 'http://cbee.ufla.br/portal/index.php', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(188, 'Cidade de São Paulo Verde e Meio Ambiente', '-', 'https://www.prefeitura.sp.gov.br/cidade/secretarias/meio_ambiente/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(189, 'Portal da Biodiversidade', '-', 'https://www.infraestruturameioambiente.sp.gov.br/biodiversidade/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(190, 'ICMBio – Instituto Chico Mendes de Conservação da Biodiversidade', '-', 'http://www.icmbio.gov.br/portal/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(191, 'IBAMA – Instituto Brasileiro do Meio Ambiente e dos Recursos Naturais Renováveis', '-', 'http://ibama.gov.br/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(192, 'CONABIO – Comissão Nacional da Biodiversidade', '-', 'https://www.mma.gov.br/biodiversidade/comissao-nacional-de-biodiversidade', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(193, 'MMA – Ministérios do Meio Ambiente', '-', 'https://www.mma.gov.br/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(194, 'Agência Nacional de Águas', '-', 'https://www.ana.gov.br/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(195, 'Flora do Brasil 2020', '-', 'http://floradobrasil.jbrj.gov.br/reflora/listaBrasil/PrincipalUC/PrincipalUC.do#CondicaoTaxonCP', '-', '', 'Kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(196, 'Parque da Água Vermelha', '-', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-da-agua-vermelha/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(197, 'Parque da Biquinha', '-', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-da-biquinha/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(198, 'Parque Natural Chico Mendes', '-', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-natural-chico-mendes/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(199, 'Parque Natural Ouro Fino', '-', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-ecologico-ouro-fino/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(200, 'Estação Ecológica Bráulio Guedes da Silva', '-', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-braulio-guedes-da-silva/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(201, 'Estação Ecológica Governador Mário Covas', '-', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-governador-mario-covas/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(202, 'Parque Zoológico Municipal Quinzinho de Barros', '-', 'http://www.sorocaba.sp.gov.br/zoo/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(203, 'Jardim Botânico Irmãos Vilas Boas', '-', 'http://meioambiente.sorocaba.sp.gov.br/jardimbotanico/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:44:01', NULL),
(204, 'Catálogo Taxonômico da Fauna do Brasil', '-', 'http://fauna.jbrj.gov.br/fauna/listaBrasil/PrincipalUC/PrincipalUC.do?lingua=pt', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:45:07', NULL),
(205, 'FUNBIO – Fundo Brasileiro para a Biodiversidade', '-', 'https://www.funbio.org.br/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:45:07', NULL),
(206, 'Parque Natural Municipal Corredores da Biodiversidade – “Parque da Biodiversidade”', '-', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-da-biodiversidade/', '-', '', 'kamila nascimento', '-', 'Link', '2020-08-18 19:45:07', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(60) NOT NULL,
  `imagem` text NOT NULL,
  `conteudo` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `edit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `Titulo`, `imagem`, `conteudo`, `created`, `modified`, `edit`) VALUES
(1, 'III SEMINARIO CONECTANDO PEIXES,RUIS E PESSOAS', 'https://conectando-peixes-rios-e-pessoas-20203.webnode.com/_files/200000145-d28cfd28d1/Semin%C3%A1rio%20I.png?t=1', '<div class=\"b-c b-text-c b-s b-s-t60 b-s-b60 cf\"><p dir=\"ltr\" class=\"wnd-align-center\"><strong>O Dia Mundial da Migração de Peixes</strong> trata-se de um evento comemorativo a nível mundial e tem como principal objetivo despertar a opinião de governantes, academia e população sobre a importância de se manter os rios saudáveis e livres, propiciando a conectividade entre os mesmos e possibilitando aos peixes reprodução, alimentação e refúgio.<br></p><p dir=\"ltr\" class=\"wnd-align-center\"> A exemplo do último evento, realizado em abril de 2018, será realizado um Seminário com a presença de pesquisadores de várias partes do Brasil, sendo o mesmo direcionado para a comunidade científica e para o público em geral. Também serão feitas ações de Educação Ambiental para o público escolar com o intuito de envolver crianças e adolescentes nas temáticas abordadas, além de uma visita técnica a uma escada de peixes no rio Sorocaba., localizada na cidade de Cerquilho/SP. Haverá também o lançamento de Selos Comemorativos dos Correios, com ilustrações das espécies de peixes mais encontradas no rio Sorocaba. Assim como nos anos anteriores, serão publicados todos os trabalhos científicos apresentados no Seminário, além de um compilado com todas as atividades desenvolvidas para que se possa conseguir uma ampla divulgação.&nbsp;</p><p dir=\"ltr\" class=\"wnd-align-center\">Essa será a primeira vez que o Brasil, por meio do Seminário a ser realizado em Sorocaba, será o Head Quarter do <strong>World Fish Migration Day</strong> na América Latina. Ser Head Quarter (HQ) consiste em conectar o Brasil e a América Latina aos diversos eventos que estarão ocorrendo em todos os continentes. Seremos o centro de transmissão para os HQ de outros continentes e os responsáveis pela coleta e transmissão de dados para a mídia social, sites, YouTube, etc. Sendo assim, é a partir do Seminário em Sorocaba que será feita toda a divulgação para a imprensa antes e durante o Evento, além da transmissão simultânea para outros países, com o intuito de se discutir em tempo real as ideias e as propostas apresentadas em relação a conservação dos rios, dos peixes migradores e dos ecossistemas aquáticos em geral. Como embaixador do Seminário em 2020, contaremos com o ator sorocabano Paulo Betti!&nbsp;<br></p></div>', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Kamila');

-- --------------------------------------------------------

--
-- Estrutura da tabela `parametros`
--

CREATE TABLE `parametros` (
  `id` int(11) NOT NULL,
  `nomeclatura` varchar(30) NOT NULL,
  `classe` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `spawpoint`
--

CREATE TABLE `spawpoint` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `localizacao` text NOT NULL,
  `txt` text NOT NULL,
  `foto` text NOT NULL,
  `criado` datetime NOT NULL,
  `modificado` datetime NOT NULL,
  `autor` varchar(60) NOT NULL,
  `lng` text NOT NULL,
  `lat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `spawpoint`
--

INSERT INTO `spawpoint` (`id`, `nome`, `localizacao`, `txt`, `foto`, `criado`, `modificado`, `autor`, `lng`, `lat`) VALUES
(1, 'Capivara city', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '-23.496664', '-47.4704447'),
(2, 'Capivara city', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '-47.4704447', '-23.496664'),
(3, 'quinzinho di barrus', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '-47.4468756', '-23.5047575'),
(4, 'quinzinho di barrus', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '-23.5047575', '-47.4468756');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sugestoes`
--

CREATE TABLE `sugestoes` (
  `id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `local` text NOT NULL,
  `email` text NOT NULL,
  `nome` varchar(60) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `animal` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `spawpoint`
--
ALTER TABLE `spawpoint`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sugestoes`
--
ALTER TABLE `sugestoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adm`
--
ALTER TABLE `adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `spawpoint`
--
ALTER TABLE `spawpoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sugestoes`
--
ALTER TABLE `sugestoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
