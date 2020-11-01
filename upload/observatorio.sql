-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Nov-2020 às 19:42
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `observatorio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `id` int(11) NOT NULL COMMENT 'Chave da tabela',
  `id_usuario` int(11) NOT NULL COMMENT 'chave estrangeira da tabela usuario',
  `titulo` text NOT NULL COMMENT 'Título do Documento',
  `filo` varchar(25) NOT NULL COMMENT 'Espécie do animal/planta citada no documento',
  `link` text NOT NULL COMMENT 'Link para o documento',
  `image` text NOT NULL COMMENT 'imagem do documento',
  `nomeclatura` varchar(60) NOT NULL COMMENT 'Categoria do documento',
  `classe` varchar(60) NOT NULL COMMENT 'Tipo do documento',
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'data de criação',
  `modifed` datetime DEFAULT NULL COMMENT 'data de modificação'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `documentos`
--

INSERT INTO `documentos` (`id`, `id_usuario`, `titulo`, `filo`, `link`, `image`, `nomeclatura`, `classe`, `created`, `modifed`) VALUES
(1, 1, 'A BIODIVERSIDADE E O TURISMO REGIONALFATORES DE RESILIÊNCIA URBANA NAS CIDADES DE CABREUVA, ITU E SALTO.', ' - ', '/TCC/upload/artigos/biodiversidade/P01.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:43:43', NULL),
(2, 1, 'A Biota Aquática em um Riacho Tropical e suas Relações com Fatores Ambientais', ' - ', '/TCC/upload/artigos/biodiversidade/P02.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:45:48', NULL),
(3, 1, 'A educação que vem do lixo Um estudo do programa “Piedade sem lixo” e a formação da cidadania ambiental.', ' - ', '/TCC/upload/artigos/biodiversidade/P03.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:46:34', NULL),
(4, 1, 'A transformação do município de Sorocaba e a interferência nas relações socioambientais da população no período de 1654-2014', ' - ', '/TCC/upload/artigos/biodiversidade/P04.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:48:00', NULL),
(5, 1, 'A_HISTORIA_AMBIENTAL_DE_SOROCABA', ' - ', '/TCC/upload/artigos/biodiversidade/P05.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:49:15', NULL),
(6, 1, 'ANÁLISE DA SUSCETIBILIDADE DO SOLO A PROCESSOS EROSIVOS DO PARQUE NATURAL MUNICIPAL CORREDORES DE BIODIVERSIDADE (PNMCBIO) DE SOROCABA (SP)', ' - ', '/TCC/upload/artigos/biodiversidade/P06.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:50:39', NULL),
(7, 1, 'Ant communities Hymenoptera - Formicidae in urban centers.', ' - ', '/TCC/upload/artigos/biodiversidade/P07.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:51:14', NULL),
(8, 1, 'Aporte de serapilheira como indicador ambiental em fragmentos de floresta estacional semidecidual em Sorocaba, SP', ' - ', '/TCC/upload/artigos/biodiversidade/P08.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:52:12', NULL),
(9, 1, 'AVALIAÇÃO SIMPLIFICADA DE IMPACTOS AMBIENTAIS NA BACIA DO ALTO SOROCABA (SP).', ' - ', '/TCC/upload/artigos/biodiversidade/P09.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:53:14', NULL),
(10, 1, 'Biodiversidade e mudanças climáticas: contexto evolutivo, histórico e político', ' - ', '/TCC/upload/artigos/biodiversidade/P10.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 20:59:32', NULL),
(11, 1, 'Biodiversidade nos Museus.', ' - ', '/TCC/upload/artigos/biodiversidade/P11.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:00:30', NULL),
(12, 1, 'CENÁRIOS AMBIENTAIS PARA O ORDENAMENTO TERRITORIAL DE ÁREAS DE PRESERVAÇÃO PERMANENTE NO MUNICÍPIO DE SOROCABA, SP1', ' - ', '/TCC/upload/artigos/biodiversidade/P12.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:05:20', NULL),
(13, 1, 'CENÁRIOS AMBIENTAIS PARA O ORDENAMENTO TERRITORIAL DE ÁREAS DE PRESERVAÇÃO PERMANENTE NO MUNICIPIO DE SOROCABA.', ' - ', '/TCC/upload/artigos/biodiversidade/P13.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:10:09', NULL),
(14, 1, 'CONFLITOS DE INTERESSES EM UNIDADES DE CONSERVAÇÃO DO MUNICÍPIO DE PARATI, ESTADO DO RIO DE JANEIRO1', ' - ', '/TCC/upload/artigos/biodiversidade/P14.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:11:05', NULL),
(15, 1, 'conservacao da biodiversidade no Brasil.', ' - ', '/TCC/upload/artigos/biodiversidade/P15.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:12:06', NULL),
(16, 1, 'DESAFIOS DA AGRICULTURA EM ÁREAS FORTEMENTE URBANIZADAS: a Região do Alto Tietê-Cabeceiras1', ' - ', '/TCC/upload/artigos/biodiversidade/P16.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:12:50', NULL),
(17, 1, 'GESTÃO DAS ÁGUAS NA REGIÃO METROPOLITANA DE SOROCABA.', ' - ', '/TCC/upload/artigos/biodiversidade/P17.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:13:21', NULL),
(18, 1, 'Uma análise sobre a história e a situação das unidades de conservação no brasil	', ' - ', '/TCC/upload/artigos/biodiversidade/P18.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:14:12', NULL),
(19, 1, 'Indicadores socioambientais na gestão integrada das sub bacias da região metropolitana de Sorocaba, SP.', ' - ', '/TCC/upload/artigos/biodiversidade/P19.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:14:47', NULL),
(20, 1, 'INFLUÊNCIA DA PRECIPITAÇÃO E TEMPERATURA DO AR NA PRODUÇÃO DE SERAPILHEIRA EM TRECHO DE FLORESTA ESTACIONAL EM SOROCABA, SP', ' - ', '/TCC/upload/artigos/biodiversidade/P20.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:16:42', NULL),
(21, 1, 'lazer e ucs.', ' - ', '/TCC/upload/artigos/biodiversidade/P21.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:17:11', NULL),
(22, 1, 'Biodiversity and phytogeography of the alpine flora of Iran	', ' - ', '/TCC/upload/artigos/biodiversidade/P22.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:17:41', NULL),
(23, 1, 'Oferta de Parques Urbanos e Naturais em Sorocaba (SP) alavanca para políticas de uso público.', ' - ', '/TCC/upload/artigos/biodiversidade/P23.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:18:21', NULL),
(24, 1, 'papel do município na conservação da biodiversidade', ' - ', '/TCC/upload/artigos/biodiversidade/P24.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:19:00', NULL),
(25, 1, 'PERCEPÇÃO AMBIENTAL DA BIODIVERSIDADE EM QUATRO CIDADES PAULISTAS.', ' - ', '/TCC/upload/artigos/biodiversidade/P25.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:19:38', NULL),
(26, 1, 'UNIDADES DE CONSERVAÇÃO: UMA DISCUSSÃO TEÓRICA À LUZ DOS CONCEITOS DE TERRITÓRIO E DE POLÍTICAS PÚBLICAS', ' - ', '/TCC/upload/artigos/biodiversidade/P26.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:22:25', NULL),
(27, 1, 'pracas e espacoes verdes.', ' - ', '/TCC/upload/artigos/biodiversidade/P27.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:23:16', NULL),
(28, 1, 'Proposição de Corredor Ecológico entre duas Unidades de Conservação na Região Metropolitana de Sorocaba', ' - ', '/TCC/upload/artigos/biodiversidade/P28.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:23:57', NULL),
(29, 1, 'Proteção da biodiversidade, legislação e políticas públicas na região metropolitana de Sorocaba - SP, Brasil.', ' - ', '/TCC/upload/artigos/biodiversidade/P29.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:24:41', NULL),
(30, 1, 'Sorocaba e a biodiversidade	', ' - ', '/TCC/upload/artigos/biodiversidade/P30.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:26:02', NULL),
(31, 1, 'TÉCNICAS USUAIS DE ESTIMATIVA DA BIODIVERSIDADE.', ' - ', '/TCC/upload/artigos/biodiversidade/P31.pdf', '', 'Biodiversidade e Políticas Púb', 'Artigos Científicos', '2020-10-28 21:26:44', NULL),
(32, 1, 'Avifauna associada a um trecho urbano do Rio Sorocaba, sudeste do Brasil', 'Fauna', '/TCC/upload/artigos/fauna/Aves/P01.pdf', '', 'Aves', 'Artigos Científicos', '2020-10-28 21:30:03', NULL),
(33, 1, 'Avifauna em uma Área de Cerrado no Bairro do Central Parque, Município de Sorocaba, São Paulo, Brasil_', ' Fauna ', '/TCC/upload/artigos/fauna/Aves/P02.pdf', '', 'Aves', 'Artigos Científicos', '2020-10-28 21:31:03', NULL),
(34, 1, 'Carrapatos em aves selvagens no Zoológico de Sorocaba – São Paulo, Brasil', ' Fauna ', '/TCC/upload/artigos/fauna/Aves/P03.pdf', '', 'Aves', 'Artigos Científicos', '2020-10-28 21:31:44', NULL),
(35, 1, 'Enriquecimento Ambiental no Recinto do Mutum-de-Penacho (Crax fasciolata) do Parque Zoológico Municipal “Quinzinho de Barros”, Sorocaba-SP	', ' Fauna ', '/TCC/upload/artigos/fauna/Aves/P04.pdf', '', 'Aves', 'Artigos Científicos', '2020-10-28 21:32:12', NULL),
(36, 1, 'INVENTÁRIO DA AVIFAUNA DO PARQUE NATURAL MUNICIPAL CORREDORES DE BIODIVERSIDADE, SOROCABA, SP, BRASIL', ' Fauna ', '/TCC/upload/artigos/fauna/Aves/P05.pdf', '', 'Aves', 'Artigos Científicos', '2020-10-28 21:32:49', NULL),
(37, 1, 'MALÓFAGOS PARASITAS DE AVES CAMPESTRES CATIVAS DO ZOOLÓGICO MUNICIPAL QUINZINHO DE BARROS, SOROCABA, ESTADO DE SÃO PAULO, BRASIL', ' Fauna ', '/TCC/upload/artigos/fauna/Aves/P06.pdf', '', 'Aves', 'Artigos Científicos', '2020-10-28 21:33:38', NULL),
(38, 1, 'Dipterofauna de fragmentos vegetacionais da UFSCar - campus Sorocaba, SP, Brasil.', ' Fauna ', '/TCC/upload/artigos/fauna/Invertebrados/P01.pdf', '', 'Invertebrados', 'Artigos Científicos', '2020-10-28 21:35:02', NULL),
(39, 1, 'Fauna de besouros bioluminescentes (Coleoptera_ Elateroidea_ Lampyridae_ Phengodidae, Elateridae) nos municípios de Campinas, Sorocaba-Votorantim e Rio Claro-Limeira (SP, Brasil)_ biodiversidade e influência da urbanização', ' Fauna ', '/TCC/upload/artigos/fauna/Invertebrados/P02.pdf', '', 'Invertebrados', 'Artigos Científicos', '2020-10-28 21:35:40', NULL),
(40, 1, 'Inventário da biodiversidade de lacraias (Arthropoda, Chilopoda) em parques ecológicos do município de Sorocaba, São Paulo, Brasil', ' Fauna ', '/TCC/upload/artigos/fauna/Invertebrados/P03.pdf', '', 'Invertebrados', 'Artigos Científicos', '2020-10-28 21:36:10', NULL),
(41, 1, 'Ocorrência de um molusco invasor (Melanoides tuberculata, Müller, 1774), em diferentes sistemas aquáticos da bacia hidrográfica do Rio Sorocaba, SP, Brasil', ' Fauna ', '/TCC/upload/artigos/fauna/Invertebrados/P04.pdf', '', 'Invertebrados', 'Artigos Científicos', '2020-10-28 21:36:42', NULL),
(42, 1, 'ESTRUTURAS DAS COMUNIDADES DE PEQUENOS MAMÍFEROS ROEDORES DO PARQUE MUNICIPAL CORREDORES DA BIODIVERSIDADE SOROCABA_SP', ' Fauna ', '/TCC/upload/artigos/fauna/Mamíferos/P01.pdf', '', 'Mamíferos', 'Artigos Científicos', '2020-10-28 21:42:11', NULL),
(43, 1, 'Inventário mastofaunístico do fragmento de mata adjacente à Universidade Paulista-UNIP em Sorocaba_ inferências ecológicas baseadas na presença de cachorro-do-mato (Cerdocyon thous (Linnaeus, 1706) (Carnívora, Canidae))', ' Fauna ', '/TCC/upload/artigos/fauna/Mamíferos/P02.pdf', '', 'Mamíferos', 'Artigos Científicos', '2020-10-28 21:42:36', NULL),
(44, 1, 'Inventário mastofaunístico do fragmento de mata adjacente à Universidade Paulista-UNIP em Sorocaba_ inferências ecológicas baseadas na presença de cachorro-do-mato (Cerdocyon thous (Linnaeus, 1706) (Carnívora, Canidae))', ' Fauna ', '/TCC/upload/artigos/fauna/Mamíferos/P03.pdf', '', 'Mamíferos', 'Artigos Científicos', '2020-10-28 21:43:05', NULL),
(45, 1, 'Alimentação de Serrasalmus maculatus (Kner, 1858) (Characiformes_ Serrasalmidae) no trecho inferior bacia do rio Sorocaba, São Paulo, Brasil', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P01.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 17:45:27', NULL),
(46, 1, 'Biological aspects of Schizodon nasutus Kner, 1858 (Characiformes, Anostomidae) in the low Sorocaba river basin, São Paulo state, Brazil', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P02.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 17:46:14', NULL),
(47, 1, 'Comunidades de peixes como indicadoras de poluição ambiental', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P03.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 17:46:52', NULL),
(48, 1, 'Conhecimento Etnoictiológico dos Pescadores Desportivos do Trecho Superior da Bacia do Rio Sorocaba', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P04.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 17:48:21', NULL),
(49, 1, 'Deslocamento reprodutivo da ictiofauna migradora do rio Sorocaba, São Paulo, Brasil', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P05.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 17:48:47', NULL),
(50, 1, 'Estudo da dieta natural da ictiofauna de um reservatório centenário, São Paulo, Brasil', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P06.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 17:57:05', NULL),
(51, 1, 'Fish, Sorocaba river sub-basin, state of São Paulo, Brazil', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P07.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 17:59:31', NULL),
(52, 1, 'Food ecology and presence of microplastic in the stomach content of neotropical fish in an urban river of the upper Paraná River Basin', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P08.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 18:01:20', NULL),
(53, 1, 'Introdução de espécies de peixes_ o caso da bacia do rio Sorocaba', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P09.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 18:02:12', NULL),
(54, 1, 'Length-weight relationship for two fish species from Ipanema National Forest, São Paulo state, Brazil', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P10.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 18:06:29', NULL),
(55, 1, 'Peixes do Rio Piragibu-Mirim em Sorocaba_SP', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P11.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 18:22:43', NULL),
(56, 1, 'The fish community of the Sorocaba River Basin in different habitats (State of São Paulo, Brazil)', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P12.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 18:23:19', NULL),
(57, 1, 'THE ICHTHYOFAUNA OF THE MARGINAL LAGOONS OF THE SOROCABA RIVER, SP, BRAZIL_ COMPOSITION, ABUNDANCE AND EFFECT OF THE ANTHROPOGENIC ACTIONS', ' Fauna ', '/TCC/upload/artigos/fauna/Peixes/P13.pdf', '', 'Peixes', 'Artigos Científicos', '2020-10-30 18:23:44', NULL),
(58, 1, 'A comunidade Fitoplantônica no Reservatório de Itapararanga (Bacia do Rio Sorocaba, SP)', ' - ', '/TCC/upload/Livros/P01.pdf', '', ' - ', 'Livros', '2020-10-30 18:27:09', NULL),
(59, 1, 'Asas da cidade', ' - ', '/TCC/upload/Livros/P02.pdf', '', ' - ', 'Livros', '2020-10-30 18:27:51', NULL),
(60, 1, 'Biodiversidade do Município de Sorocaba', ' - ', '/TCC/upload/Livros/P03.pdf', '', ' - ', 'Livros', '2020-10-30 18:28:20', NULL),
(61, 1, 'Biodiversidade na APA Itupararanga - Condições atuais e perspectivas futuras', ' - ', '/TCC/upload/Livros/P04.pdf', '', ' - ', 'Livros', '2020-10-30 18:28:42', NULL),
(62, 1, 'Conectando Peixes, Rios e Pessoas - 2014', ' - ', '/TCC/upload/Livros/P05.pdf', '', ' - ', 'Livros', '2020-10-30 18:29:33', NULL),
(63, 1, 'II SEMINÁRIO CONECTANDO PEIXES RIOS E PESSOAS “A importância de rios livres e várzeas conservadas”', ' - ', '/TCC/upload/Livros/P06.pdf', '', ' - ', 'Livros', '2020-10-30 18:30:07', NULL),
(64, 1, 'Jardins que fazem a cidade de Sorocaba', ' - ', '/TCC/upload/Livros/P07.pdf', '', ' - ', 'Livros', '2020-10-30 18:30:59', NULL),
(65, 1, 'Livro Vermelho de Fauna Brasileira Ameaçada de Extinção - 2018', ' - ', '/TCC/upload/Livros/P08.pdf', '', ' - ', 'Livros', '2020-10-30 18:32:15', NULL),
(66, 1, 'Mamíferos do Brasil - 2006', ' - ', '/TCC/upload/Livros/P09.pdf', '', ' - ', 'Livros', '2020-10-30 18:32:44', NULL),
(67, 1, 'Observatório da Biodiversidade UCs', ' - ', '/TCC/upload/Livros/P10.pdf', '', ' - ', 'Livros', '2020-10-30 18:33:11', NULL),
(68, 1, 'Panorama da Biodiversidade nas Cidades (livro)', ' - ', '/TCC/upload/Livros/P11.pdf', '', ' - ', 'Livros', '2020-10-30 18:33:42', NULL),
(69, 1, 'Parque Natural Municipal Corredores da Biodiversidade', ' - ', '/TCC/upload/Livros/P12.pdf', '', ' - ', 'Livros', '2020-10-30 18:36:19', NULL),
(70, 1, 'Peixes de Água Doce - 1999', ' - ', '/TCC/upload/Livros/P13.pdf', '', ' - ', 'Livros', '2020-10-30 18:36:46', NULL),
(71, 1, '5º Relatório Nacional Para a Convenção Sobre Diversidade Biológica - Brasil', ' - ', '/TCC/upload/documentos/P01.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:51:12', NULL),
(72, 1, 'A adequação da legislação ambiental à Conservação Sobre a Biodiversidade', ' - ', '/TCC/upload/documentos/P02.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:51:40', NULL),
(73, 1, 'Análise comparativa as estratégias nacionais parabodiversidade de diversos países', ' - ', '/TCC/upload/documentos/P03.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:52:36', NULL),
(74, 1, 'Estratégia e Plano de Ação Nacional para a Biodiversidade', ' - ', '/TCC/upload/documentos/P04.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:53:02', NULL),
(75, 1, 'Estudo sobre formas de Repartição de Benefícios em atividades de Prospecção Biológica', ' - ', '/TCC/upload/documentos/P05.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:53:32', NULL),
(76, 1, 'LEI Nº 12.059 - Institui o programa Refúgios da Biodiversidade no município de Sorocaba e dá outras providências', ' - ', '/TCC/upload/documentos/P06.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:55:16', NULL),
(77, 1, 'Lista brasileira de Herpetologia 2018', ' - ', '/TCC/upload/documentos/P07.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:55:43', NULL),
(78, 1, 'Lista brasileira de Herpetologia 2019', ' - ', '/TCC/upload/documentos/P08.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:56:14', NULL),
(79, 1, 'Lista das Aves do Brasil 2014', ' - ', '/TCC/upload/documentos/P09.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:56:47', NULL),
(80, 1, 'Os Saberes Tradicionais e a Biodiversidade no Brasil', ' - ', '/TCC/upload/documentos/P10.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:57:21', NULL),
(81, 1, 'Plano Diretor Sorocaba - Vol. I', ' - ', '/TCC/upload/documentos/P11.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:57:51', NULL),
(82, 1, 'Plano Diretor Sorocaba - Vol. II', ' - ', '/TCC/upload/documentos/P12.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 18:59:12', NULL),
(83, 1, 'Política Nacional de Biodiversidade', ' - ', '/TCC/upload/documentos/P13.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 19:00:05', NULL),
(84, 1, 'POLÍTICAS PÚBLICAS E BIODIVERSIDADE NO BRASIL', ' - ', '/TCC/upload/documentos/P14.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 19:00:31', NULL),
(85, 1, 'Prefeitura de Sorocaba - Plano de Arborização Urbana 2009 - 2020', ' - ', '/TCC/upload/documentos/P15.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 19:00:55', NULL),
(86, 1, 'Programa Municipal de Educação Ambiental de Sorocaba', ' - ', '/TCC/upload/documentos/P16.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 19:01:40', NULL),
(87, 1, 'Projeto Sorocaba Cidade de Biodiversidade', ' - ', '/TCC/upload/documentos/P17.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 19:02:23', NULL),
(88, 1, 'Revista - Meio Ambiente de Sorocaba Rumo a Sustentabilidade Ambiental', ' - ', '/TCC/upload/documentos/P18.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 19:02:49', NULL),
(89, 1, 'VALORAÇÃO ECONÔMICA DA BIODIVERSIDADE - Estudos de Caso no Brasil', ' - ', '/TCC/upload/documentos/P19.pdf', '', ' - ', 'documentos e refencias', '2020-10-30 19:03:37', NULL),
(90, 1, 'Secretaria do Meio Ambiente, Parques e Jardins', ' - ', 'https://meioambiente.sorocaba.sp.gov.br/', '', ' - ', 'Links', '2020-10-30 19:13:49', NULL),
(91, 1, 'CBEE – Centro Brasileiro de Estudos em Ecologia de Estradas', ' - ', 'http://cbee.ufla.br/portal/index.php', '', ' - ', 'Links', '2020-10-30 19:14:44', NULL),
(92, 1, 'Cidade de São Paulo Verde e Meio Ambiente', ' - ', 'https://www.prefeitura.sp.gov.br/cidade/secretarias/meio_ambiente/', '', ' - ', 'Links', '2020-10-30 19:15:32', NULL),
(93, 1, 'Portal da Biodiversidade', ' - ', 'https://www.infraestruturameioambiente.sp.gov.br/biodiversidade/', '', ' - ', 'Links', '2020-10-30 19:16:27', NULL),
(94, 1, 'ICMBio – Instituto Chico Mendes de Conservação da Biodiversidade', ' - ', 'http://www.icmbio.gov.br/portal/', '', ' - ', 'Links', '2020-10-30 19:18:09', NULL),
(95, 1, 'IBAMA – Instituto Brasileiro do Meio Ambiente e dos Recursos Naturais Renováveis', ' - ', 'http://ibama.gov.br/', '', ' - ', 'Links', '2020-10-30 19:18:41', NULL),
(96, 1, 'CONABIO – Comissão Nacional da Biodiversidade', ' - ', 'https://www.mma.gov.br/biodiversidade/comissao-nacional-de-biodiversidade', '', ' - ', 'Links', '2020-10-30 19:19:14', NULL),
(97, 1, 'MMA – Ministérios do Meio Ambiente', ' - ', 'https://www.mma.gov.br/', '', ' - ', 'Links', '2020-10-30 19:20:29', NULL),
(98, 1, 'Agência Nacional de Águas', ' - ', 'https://www.ana.gov.br/', '', ' - ', 'Links', '2020-10-30 19:20:56', NULL),
(99, 1, 'FUNBIO – Fundo Brasileiro para a Biodiversidade', ' - ', 'https://www.funbio.org.br/', '', ' - ', 'Links', '2020-10-30 19:22:04', NULL),
(100, 1, 'Flora do Brasil 2020', ' - ', 'http://floradobrasil.jbrj.gov.br/reflora/listaBrasil/PrincipalUC/PrincipalUC.do#CondicaoTaxonCP', '', ' - ', 'Links', '2020-10-30 19:22:50', NULL),
(101, 1, 'Catálogo Taxonômico da Fauna do Brasil', ' - ', 'http://fauna.jbrj.gov.br/fauna/listaBrasil/PrincipalUC/PrincipalUC.do?lingua=pt', '', ' - ', 'Links', '2020-10-30 19:23:21', NULL),
(102, 1, 'Parque da Água Vermelha', ' - ', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-da-agua-vermelha/', '', ' - ', 'Links', '2020-10-30 19:24:06', NULL),
(103, 1, 'Parque da Biquinha', ' - ', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-da-biquinha/', '', ' - ', 'Links', '2020-10-30 19:24:32', NULL),
(104, 1, 'Parque Natural Chico Mendes', ' - ', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-natural-chico-mendes/', '', ' - ', 'Links', '2020-10-30 19:25:11', NULL),
(105, 1, 'Parque Natural Ouro Fino', ' - ', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-ecologico-ouro-fino/', '', ' - ', 'Links', '2020-10-30 19:26:46', NULL),
(106, 1, 'Parque Natural Municipal Corredores da Biodiversidade – “Parque da Biodiversidade”', ' - ', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-da-biodiversidade/', '', ' - ', 'Links', '2020-10-30 19:27:25', NULL),
(107, 1, 'Estação Ecológica Bráulio Guedes da Silva', ' - ', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-braulio-guedes-da-silva/', '', ' - ', 'Links', '2020-10-30 19:28:04', NULL),
(108, 1, 'Estação Ecológica Governador Mário Covas', ' - ', 'http://meioambiente.sorocaba.sp.gov.br/gestaoambiental/parque-governador-mario-covas/', '', ' - ', 'Links', '2020-10-30 19:28:33', NULL),
(109, 1, 'Parque Zoológico Municipal Quinzinho de Barros', ' - ', 'http://www.sorocaba.sp.gov.br/zoo/', '', ' - ', 'Links', '2020-10-30 19:29:00', NULL),
(110, 1, 'Jardim Botânico Irmãos Vilas Boas', ' - ', 'http://meioambiente.sorocaba.sp.gov.br/jardimbotanico/', '', ' - ', 'Links', '2020-10-30 19:29:28', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL COMMENT 'chave da tabela',
  `id_usuario` int(11) NOT NULL COMMENT 'Chave estrangeria da tabela usuário',
  `email` text NOT NULL COMMENT 'e-mail de quem deu o feedback',
  `content` text NOT NULL COMMENT 'conteúdo',
  `created_at` datetime NOT NULL COMMENT 'data de criação',
  `modifed_at` datetime DEFAULT NULL COMMENT 'data de modificação'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `feedback`
--

INSERT INTO `feedback` (`id`, `id_usuario`, `email`, `content`, `created_at`, `modifed_at`) VALUES
(1, 3, 'starplatinum@oraora.com', 'oraoraoraoraoraoraoraoraoraoraoraoroaraora', '2020-10-27 21:30:45', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL COMMENT 'Chave da Tabela',
  `id_usuario` int(11) NOT NULL COMMENT 'Chave estrangeira da tabela usuario',
  `nome_envio` varchar(40) NOT NULL COMMENT 'Nome de quem mandou a foto',
  `nome_comum` varchar(40) NOT NULL COMMENT 'Nome comum da espécie',
  `nome_cientifico` varchar(50) NOT NULL COMMENT 'Nome cientifico da espécie',
  `localizacao` text NOT NULL COMMENT 'localizacao da foto',
  `lat` text NOT NULL COMMENT 'latitude',
  `lng` text NOT NULL COMMENT 'longitude',
  `foto` text NOT NULL COMMENT 'link da foto',
  `validado` tinyint(1) NOT NULL COMMENT 'Mostra se a linha é valida para ser exibida no site',
  `criacao` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'data de criacao',
  `modificacao` datetime DEFAULT NULL COMMENT 'data de modificacao'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`id`, `id_usuario`, `nome_envio`, `nome_comum`, `nome_cientifico`, `localizacao`, `lat`, `lng`, `foto`, `validado`, `criacao`, `modificacao`) VALUES
(1, 1, 'Kamila Nascimento', 'Garça Branca Grande', 'Ardea alba', 'R. Teodoro Kaisel, 883 - Vila Hortência - Sorocaba', '-23.506936', '-47.4381039', '/TCC/upload/garca-branca-grande.jpg', 1, '2020-11-01 13:15:48', '2020-11-01 13:12:31'),
(2, 1, 'Kamila Nascimento', 'Sabiá do Campo', 'Mimus Saturninus', 'AV. Independência, 210 - Éden - Sorocaba', '-23.458868', '-47.420131', '/TCC/upload/sabia-do-campo.jpg', 1, '2020-11-01 13:16:24', NULL),
(3, 1, 'Kamila Nascimento', 'Socó Dorminhoco', 'Nycticorax nycticorax', 'R. Teodoro Kaisel, 883 - Vila Hortência - Sorocaba', '-23.506936', '-47.4381039', '/TCC/upload/soco-dorminhoco.jpg', 1, '2020-11-01 13:16:40', '2020-10-27 20:39:50'),
(4, 1, 'Kamila Nascimento', 'Suiriri Cavaleiro', 'Machetornis rixosa', 'R. Teodoro Kaisel, 883 - Vila Hortência - Sorocaba', '-23.506936', '-47.4381039', '/TCC/upload/suiriri-cavaleiro.jpg', 1, '2020-11-01 13:16:51', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL COMMENT 'Chave da tabela',
  `id_usuario` int(11) NOT NULL COMMENT 'Chave estrangeira da tabela usuario',
  `titulo` text NOT NULL COMMENT 'Título da notícia',
  `conteudo` text NOT NULL COMMENT 'Conteúdo da notícia',
  `imagem` text NOT NULL COMMENT 'Caminho para imagem',
  `criacao` datetime NOT NULL COMMENT 'Data de criação',
  `modificacao` datetime DEFAULT NULL COMMENT 'Data de Modificação'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `id_usuario`, `titulo`, `conteudo`, `imagem`, `criacao`, `modificacao`) VALUES
(1, 1, 'III SEMINARIO CONECTANDO PEIXES,RUIS E PESSOAS', '<div class=\"b-c b-text-c b-s b-s-t60 b-s-b60 cf\"><p dir=\"ltr\" class=\"wnd-align-center\"><strong>O Dia Mundial da Migração de Peixes</strong> trata-se de um evento comemorativo a nível mundial e tem como principal objetivo despertar a opinião de governantes, academia e população sobre a importância de se manter os rios saudáveis e livres, propiciando a conectividade entre os mesmos e possibilitando aos peixes reprodução, alimentação e refúgio.<br></p><p dir=\"ltr\" class=\"wnd-align-center\"> A exemplo do último evento, realizado em abril de 2018, será realizado um Seminário com a presença de pesquisadores de várias partes do Brasil, sendo o mesmo direcionado para a comunidade científica e para o público em geral. Também serão feitas ações de Educação Ambiental para o público escolar com o intuito de envolver crianças e adolescentes nas temáticas abordadas, além de uma visita técnica a uma escada de peixes no rio Sorocaba., localizada na cidade de Cerquilho/SP. Haverá também o lançamento de Selos Comemorativos dos Correios, com ilustrações das espécies de peixes mais encontradas no rio Sorocaba. Assim como nos anos anteriores, serão publicados todos os trabalhos científicos apresentados no Seminário, além de um compilado com todas as atividades desenvolvidas para que se possa conseguir uma ampla divulgação.&nbsp;</p><p dir=\"ltr\" class=\"wnd-align-center\">Essa será a primeira vez que o Brasil, por meio do Seminário a ser realizado em Sorocaba, será o Head Quarter do <strong>World Fish Migration Day</strong> na América Latina. Ser Head Quarter (HQ) consiste em conectar o Brasil e a América Latina aos diversos eventos que estarão ocorrendo em todos os continentes. Seremos o centro de transmissão para os HQ de outros continentes e os responsáveis pela coleta e transmissão de dados para a mídia social, sites, YouTube, etc. Sendo assim, é a partir do Seminário em Sorocaba que será feita toda a divulgação para a imprensa antes e durante o Evento, além da transmissão simultânea para outros países, com o intuito de se discutir em tempo real as ideias e as propostas apresentadas em relação a conservação dos rios, dos peixes migradores e dos ecossistemas aquáticos em geral. Como embaixador do Seminário em 2020, contaremos com o ator sorocabano Paulo Betti!&nbsp;<br></p></div>', 'https://conectando-peixes-rios-e-pessoas-20203.webnode.com/_files/200000145-d28cfd28d1/Semin%C3%A1rio%20I.png?t=1', '2020-10-25 13:52:21', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL COMMENT 'Chave da tabela',
  `nome` varchar(60) NOT NULL COMMENT 'Nome do usuário',
  `email` text NOT NULL COMMENT 'E-mail do usuário',
  `senha` text NOT NULL COMMENT 'Senha do usuário',
  `adm` tinyint(1) NOT NULL COMMENT 'Valida se o usuário é um administrador',
  `criacao` datetime NOT NULL COMMENT 'Data de Criação',
  `modificacao` datetime DEFAULT NULL COMMENT 'Data de modificação'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Lista de usuários cadastrados';

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `adm`, `criacao`, `modificacao`) VALUES
(1, 'Kamila', 'observatoriobiodiversidadeurb@gmail.com', 'siteanimal2020', 1, '2020-10-25 13:43:50', NULL),
(2, 'Ricardo Milos', 'basshunter@katchau.com', 'basshunter2019', 0, '2020-10-25 13:48:40', NULL),
(3, 'Jotaro', 'starplatinum@oraora.com', 'starplatinumzawarudo', 1, '2020-10-25 13:48:47', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_fk` (`id_usuario`);

--
-- Índices para tabela `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_fk` (`id_usuario`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user_fk` (`id_usuario`);

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario_fk` (`id_usuario`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `documentos`
--
ALTER TABLE `documentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Chave da tabela', AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de tabela `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'chave da tabela', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Chave da Tabela', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Chave da tabela', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Chave da tabela', AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `id_usuario_ce` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `id_usuario_dc` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `id_usuario_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `id_usuario_ek` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
