-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 191.252.115.88
-- Generation Time: Feb 24, 2018 at 11:34 AM
-- Server version: 5.6.36-82.0-log
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bertoghebur`
--

-- --------------------------------------------------------

--
-- Table structure for table `arquivo`
--

CREATE TABLE `arquivo` (
  `arquivo_id` int(11) NOT NULL,
  `arquivo_arquivo` varchar(255) NOT NULL DEFAULT '',
  `arquivo_mimetype` varchar(255) NOT NULL DEFAULT '',
  `arquivo_texto` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arquivo`
--

INSERT INTO `arquivo` (`arquivo_id`, `arquivo_arquivo`, `arquivo_mimetype`, `arquivo_texto`) VALUES
(50, '20100514184446000000-segmentosimobiliario.pdf', 'application/pdf', 'Conheça nossos serviços!'),
(48, '20091111093239000000-recuperacaodecredito.pdf', 'application/pdf', 'Recuperação de Crédito\r\n'),
(57, '20100514194323000000-instituicaocondominio.pdf', 'application/pdf', 'A Instituição de Condominio'),
(53, '20100514193232000000-financiamentosacxprice.pdf', 'application/pdf', 'Comparativo de Financiamento - SAC x PRICE'),
(56, '20100514193543000000-iptu.pdf', 'application/pdf', 'IPTU - questões interessantes'),
(59, '20100527113126000000-repassedefinanciamento.pdf', 'application/pdf', 'A sua construtora precisa de repasse? A B&G faz!'),
(69, '20120519102523000000-gestaofinanciamento.ppsx', 'application/vnd.openxmlformats-officedocument.presentationml.slideshow', 'Empresário: conheça a gestão de repasse e financiamento da B&G');

-- --------------------------------------------------------

--
-- Table structure for table `cadastro`
--

CREATE TABLE `cadastro` (
  `id_cadastro` int(12) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha_cliente` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contato_1` varchar(255) DEFAULT NULL,
  `contato_2` varchar(255) DEFAULT NULL,
  `contato_3` varchar(255) DEFAULT NULL,
  `emailcontato_1` varchar(255) DEFAULT NULL,
  `emailcontato_2` varchar(255) DEFAULT NULL,
  `emailcontato_3` varchar(255) DEFAULT NULL,
  `ramal_1` varchar(20) DEFAULT NULL,
  `ramal_2` varchar(20) DEFAULT NULL,
  `ramal_3` varchar(20) DEFAULT NULL,
  `aniver_1` date DEFAULT NULL,
  `aniver_2` date DEFAULT NULL,
  `aniver_3` date DEFAULT NULL,
  `profissao` varchar(255) DEFAULT NULL,
  `cnpj_cpf` varchar(255) DEFAULT NULL,
  `insc_rg` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `news` char(1) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `cel` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `representante` char(1) DEFAULT NULL,
  `fornecedor` char(1) DEFAULT NULL,
  `cliente` char(1) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `login` varchar(255) NOT NULL DEFAULT '',
  `senha` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cadastro`
--

INSERT INTO `cadastro` (`id_cadastro`, `nome`, `senha_cliente`, `email`, `contato_1`, `contato_2`, `contato_3`, `emailcontato_1`, `emailcontato_2`, `emailcontato_3`, `ramal_1`, `ramal_2`, `ramal_3`, `aniver_1`, `aniver_2`, `aniver_3`, `profissao`, `cnpj_cpf`, `insc_rg`, `endereco`, `news`, `bairro`, `complemento`, `cep`, `cidade`, `estado`, `fone`, `fax`, `cel`, `obs`, `representante`, `fornecedor`, `cliente`, `site`, `login`, `senha`) VALUES
(4, 'exemplo', NULL, 'exemplo@teste.com.br', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', 'exemplo', 'exemplo'),
(14, 'rodrigo forlan', NULL, 'forlan@creapr.org.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'forlan@creapr.org.br', ''),
(15, 'pnmgzcnqlfi', NULL, 'ffbthh@gegmws.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ffbthh@gegmws.com', ''),
(16, 'eamnbzhnwnoz', NULL, 'syofhv@ioysvn.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'syofhv@ioysvn.com', ''),
(17, 'nhsovvhdrqhmtex', NULL, 'cpltmv@ewxtbl.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cpltmv@ewxtbl.com', ''),
(18, 'fldyiqmfofd', NULL, 'tkxkmo@brvjns.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tkxkmo@brvjns.com', ''),
(19, 'barbatofabris@yahoo.com.br', NULL, 'barbatofabris@yahoo.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'barbatofabris@yahoo.com.br', ''),
(20, 'ederson adriano de oliveira', NULL, 'ederxambre@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ederxambre@hotmail.com', ''),
(21, 'thiago', NULL, 'thiagopaiva84@uol.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'thiagopaiva84@uol.com.br', ''),
(22, 'drxidmwqpwlyaoqdhi', NULL, 'ffyhwi@niefsm.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ffyhwi@niefsm.com', ''),
(23, 'iwllnvswputjfljt', NULL, 'djjagd@qrgdbs.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'djjagd@qrgdbs.com', ''),
(24, 'zhnppubtltcwj', NULL, 'xpkdmw@onloow.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xpkdmw@onloow.com', ''),
(25, 'gsbbslpfckvwbatok', NULL, 'tofbzk@hbsbtl.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tofbzk@hbsbtl.com', ''),
(26, 'ofaaswpqeulcmfpss', NULL, 'hwyxyh@rfyciw.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hwyxyh@rfyciw.com', ''),
(27, 'zntbthvgctocjoiknjf', NULL, 'ewhafp@irvyhm.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ewhafp@irvyhm.com', ''),
(28, 'solange de souza', NULL, 'lissouza.sol@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lissouza.sol@hotmail.com', ''),
(29, 'gsonzsuqk', NULL, 'nkvyqi@gvgzym.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nkvyqi@gvgzym.com', ''),
(30, 'monica de oliveira', NULL, 'monicaoliveira1983@yahoo.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'monicaoliveira1983@yahoo.com.br', ''),
(31, 'alessandro araÃºjo', NULL, 'aparaujo@adv.oabsp.org.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aparaujo@adv.oabsp.org.br', ''),
(32, 'roberto licurgo schmeing da rosa', NULL, 'betolicurgo@oi.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'betolicurgo@oi.com.br', ''),
(33, 'eduardo azevedo', NULL, 'eduazev@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eduazev@hotmail.com', ''),
(34, 'joyce', NULL, 'JOYCEFABIO2@HOTMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JOYCEFABIO2@HOTMAIL.COM', ''),
(35, 'joÃ£o carlos s. costa', NULL, 'joaocs.costa@luccacc.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'joaocs.costa@luccacc.com.br', ''),
(36, 'lntcnyqs', NULL, 'yegibd@tjmmdj.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yegibd@tjmmdj.com', ''),
(37, 'qagxzmdgzvsdf', NULL, 'pvidhj@uqjiky.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pvidhj@uqjiky.com', ''),
(38, 'sueli keiko chirai', NULL, 'sueli.shirai@terra.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sueli.shirai@terra.com.br', ''),
(39, 'ramÃƒo dario ascurra', NULL, 'ramaoascurra@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ramaoascurra@gmail.com', ''),
(40, 'levrgp', NULL, 'tsrsdw@mqsjyv.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tsrsdw@mqsjyv.com', ''),
(41, 'horny', NULL, 'sbdh47tf@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sbdh47tf@hotmail.com', ''),
(42, 'gabahey', NULL, 'luidji2d@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'luidji2d@gmail.com', ''),
(43, 'julian', NULL, 'julian3d5s@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'julian3d5s@hotmail.com', ''),
(44, 'sally', NULL, 'varlog255q@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'varlog255q@hotmail.com', ''),
(45, 'horny', NULL, 'klark2d4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'klark2d4@gmail.com', ''),
(46, 'josete maria vichineski', NULL, 'vichi2020@ig.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vichi2020@ig.com.br', ''),
(47, 'gordon', NULL, 'darel233455@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'darel233455@gmail.com', ''),
(48, 'bradley', NULL, 'djbrucho3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'djbrucho3@gmail.com', ''),
(49, 'joÃ£o vanderlei machado de pontes', NULL, 'vande_pontes03@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vande_pontes03@hotmail.com', ''),
(50, 'mark', NULL, 'mark357177@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mark357177@hotmail.com', ''),
(51, 'mark', NULL, 'mark3qf527@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mark3qf527@hotmail.com', ''),
(52, 'barnypok', NULL, 'jfvynms4281rt@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jfvynms4281rt@hotmail.com', ''),
(53, 'mÃ´nica', NULL, 'monycacorretora@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'monycacorretora@gmail.com', ''),
(54, 'barnypok', NULL, 'jimos4581rt1@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jimos4581rt1@hotmail.com', ''),
(55, 'jimmixzsq', NULL, 'jimos45812rt1@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jimos45812rt1@hotmail.com', ''),
(56, 'claudio cuneo', NULL, 'clcuneo1702@gmail.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'clcuneo1702@gmail.com.br', ''),
(57, 'barnypok', NULL, 'ecrev22vtv@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ecrev22vtv@hotmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `cadastro_parametro`
--

CREATE TABLE `cadastro_parametro` (
  `id_cadastro` int(11) NOT NULL DEFAULT '0',
  `id_parametro` int(11) NOT NULL DEFAULT '0',
  `valor` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cadastro_parametro`
--

INSERT INTO `cadastro_parametro` (`id_cadastro`, `id_parametro`, `valor`) VALUES
(4, 19, 'Pequeno'),
(4, 20, 'masculino'),
(4, 21, 'industria'),
(13, 19, 'Pequeno'),
(14, 19, 'm'),
(15, 19, 'f'),
(13, 20, 'M'),
(13, 21, 'Indústria');

-- --------------------------------------------------------

--
-- Table structure for table `comentario`
--

CREATE TABLE `comentario` (
  `comentario_id` int(10) UNSIGNED NOT NULL,
  `conteudo_id` int(10) UNSIGNED NOT NULL,
  `comentario_data` datetime DEFAULT NULL,
  `comentario_texto` text NOT NULL,
  `comentario_autor` varchar(255) DEFAULT NULL,
  `comentario_email` varchar(255) DEFAULT NULL,
  `comentario_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `confcores`
--

CREATE TABLE `confcores` (
  `idconfCores` int(10) UNSIGNED NOT NULL,
  `corTextoConteudo` varchar(10) DEFAULT NULL,
  `corTituloConteudo` varchar(10) DEFAULT NULL,
  `corFonteMenu` varchar(10) DEFAULT NULL,
  `corFundoMenu` varchar(10) DEFAULT NULL,
  `corFonteMenuOver` varchar(10) DEFAULT NULL,
  `corFonteSubMenu` varchar(10) DEFAULT NULL,
  `corFundoSubMenu` varchar(10) DEFAULT NULL,
  `corFundoSubMenuOver` varchar(10) DEFAULT NULL,
  `corFonteRelogio` varchar(10) DEFAULT NULL,
  `corFonteBusca` varchar(10) DEFAULT NULL,
  `corBarraNome` varchar(10) DEFAULT NULL,
  `corFonteBarraNome` varchar(10) DEFAULT NULL,
  `corBarraCaracteristicas` varchar(10) DEFAULT NULL,
  `corFonteBarraCaracteristicas` varchar(10) DEFAULT NULL,
  `urlSite` varchar(255) DEFAULT NULL,
  `logoEmpresa` varchar(255) DEFAULT NULL,
  `palavraChave` text,
  `corFundoSite` varchar(10) DEFAULT NULL,
  `hab_menu` enum('S','N') DEFAULT 'S',
  `hab_compra` enum('S','N') DEFAULT 'S',
  `hab_download` enum('S','N') DEFAULT 'S',
  `hab_lista` enum('S','N') DEFAULT 'S',
  `qt_produto` int(11) DEFAULT '0',
  `email_pagSeguro` varchar(255) DEFAULT NULL,
  `descricaoSite` text,
  `corFundoDivs` varchar(10) DEFAULT NULL,
  `corLinkDivs` varchar(10) DEFAULT NULL,
  `corFonteMenuLateral` varchar(10) DEFAULT NULL,
  `codigoExterno` text,
  `listaHome` enum('S','N') DEFAULT 'N',
  `corPrecoNormal` varchar(10) DEFAULT NULL,
  `corPrecoPromo` varchar(10) DEFAULT NULL,
  `corBordaCampo` varchar(10) DEFAULT NULL,
  `corFundoCampo` varchar(10) DEFAULT NULL,
  `corFonteCampo` varchar(10) DEFAULT NULL,
  `corMsgSucesso` varchar(10) DEFAULT NULL,
  `corMsgErro` varchar(10) DEFAULT NULL,
  `corBarraNomeProd` varchar(10) DEFAULT NULL,
  `corFonteNomeProd` varchar(10) DEFAULT NULL,
  `corFonteSubMenuOver` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confcores`
--

INSERT INTO `confcores` (`idconfCores`, `corTextoConteudo`, `corTituloConteudo`, `corFonteMenu`, `corFundoMenu`, `corFonteMenuOver`, `corFonteSubMenu`, `corFundoSubMenu`, `corFundoSubMenuOver`, `corFonteRelogio`, `corFonteBusca`, `corBarraNome`, `corFonteBarraNome`, `corBarraCaracteristicas`, `corFonteBarraCaracteristicas`, `urlSite`, `logoEmpresa`, `palavraChave`, `corFundoSite`, `hab_menu`, `hab_compra`, `hab_download`, `hab_lista`, `qt_produto`, `email_pagSeguro`, `descricaoSite`, `corFundoDivs`, `corLinkDivs`, `corFonteMenuLateral`, `codigoExterno`, `listaHome`, `corPrecoNormal`, `corPrecoPromo`, `corBordaCampo`, `corFundoCampo`, `corFonteCampo`, `corMsgSucesso`, `corMsgErro`, `corBarraNomeProd`, `corFonteNomeProd`, `corFonteSubMenuOver`) VALUES
(1, '#7d7e80', '#7f0000', '#ffffff', '#ffffff', '#420001', '#4e4e4e', '#FFFFFF', '#ECECEC', '#', '#FFFFFF', '#4e4e4e', '#ffffff', '#4e4e4e', '#ffffff', 'www.bertoghebur.com.br', '', 'advogados curitiba, imobiliário, fundo de investimentos imobiliários, ação poupança, imóveis, compra e venda, advogado, Curitiba, repasse de financiamento, repasse, financiamento imobiliário, consultor imobiliário, incorporador, simulação financiamento, dúvidas financiamento imobiliario,  ', '#670001', 'N', 'N', 'S', 'S', 0, '', 'Site do Escritório Berto Ghebur Advogados Associados', '#ffffff', '#7f0000', '#ffffff', '', 'N', '#8f8f90', '#8f8f90', '#CCCCCC', '#ffffff', '#666666', '#56ad0a', '#7f0000', '#4c0404', '#ffffff', '#7f0000');

-- --------------------------------------------------------

--
-- Table structure for table `conteudo`
--

CREATE TABLE `conteudo` (
  `conteudo_id` int(11) NOT NULL,
  `conteudo_id_pai` int(11) NOT NULL DEFAULT '0',
  `conteudo_tipo` varchar(255) NOT NULL DEFAULT '',
  `conteudo_titulo` varchar(255) NOT NULL DEFAULT '',
  `conteudo_fonte` varchar(255) NOT NULL DEFAULT '',
  `conteudo_chamada` text NOT NULL,
  `conteudo_texto` text NOT NULL,
  `texto_buscar` text,
  `conteudo_datainicio` date NOT NULL DEFAULT '0000-00-00',
  `conteudo_datafim` date NOT NULL DEFAULT '0000-00-00',
  `conteudo_expira` char(1) NOT NULL DEFAULT '',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `edicao_id` int(11) NOT NULL DEFAULT '0',
  `destaque` varchar(255) NOT NULL DEFAULT '',
  `sistema` varchar(255) NOT NULL DEFAULT '',
  `conteudo_ordem` tinyint(4) DEFAULT NULL,
  `conteudo_id_sucesso` int(11) NOT NULL DEFAULT '0',
  `conteudo_id_falhou` int(11) NOT NULL DEFAULT '0',
  `endereco_origem` varchar(255) NOT NULL DEFAULT '',
  `numero_origem` varchar(255) NOT NULL DEFAULT '',
  `datahora` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordem` int(11) NOT NULL DEFAULT '0',
  `newsletter_ecomm_produtos` varchar(255) NOT NULL DEFAULT '',
  `msg_sucesso` text,
  `msg_erro` text,
  `conteudo_destaque` enum('S','N') DEFAULT 'N',
  `conteudo_formmail` enum('S','N') DEFAULT 'N',
  `conteudo_comentar` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conteudo`
--

INSERT INTO `conteudo` (`conteudo_id`, `conteudo_id_pai`, `conteudo_tipo`, `conteudo_titulo`, `conteudo_fonte`, `conteudo_chamada`, `conteudo_texto`, `texto_buscar`, `conteudo_datainicio`, `conteudo_datafim`, `conteudo_expira`, `menu_id`, `edicao_id`, `destaque`, `sistema`, `conteudo_ordem`, `conteudo_id_sucesso`, `conteudo_id_falhou`, `endereco_origem`, `numero_origem`, `datahora`, `ordem`, `newsletter_ecomm_produtos`, `msg_sucesso`, `msg_erro`, `conteudo_destaque`, `conteudo_formmail`, `conteudo_comentar`) VALUES
(1, 0, 'destaques', '', '', '', '', '', '2007-11-29', '2007-11-29', '1', 67, 1, '', 'website', 0, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(2, 0, 'menu', 'O Escritório', '', '', '', '', '2007-11-29', '0000-00-00', '1', 3, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(3, 0, 'artigos', 'Quem Somos', '', '<p style=\"text-align: justify\">&nbsp;</p>\r\n<p style=\"text-align: justify\"><span style=\"background-color: #ffffff\"><span style=\"font-size: small\"><strong><span style=\"font-family: Verdana\">O</span></strong><span style=\"font-family: Verdana\"> escrit&oacute;rio <strong>Berto &amp; Ghebur Advogados Associados</strong>, regularmente inscrito na OAB/PR sob o n&ordm; 1.809, foi constitu&iacute;do com a finalidade prec&iacute;pua de proporcionar assessoria jur&iacute;dica eficaz e eficiente.<br />\r\n</span></span></span></p>\r\n<p style=\"text-align: justify\"><span style=\"background-color: #ffffff\"><span style=\"font-size: small\"><strong><span style=\"font-family: Verdana\">P</span></strong><span style=\"font-family: Verdana\">resta atendimentos a pessoas f&iacute;sicas e jur&iacute;dicas, oferecendo orienta&ccedil;&atilde;o em diversas &aacute;reas do Direito, por profissionais devidamente habilitados, bem como acompanhamento integral nas esferas judicial e extrajudicial, sempre que necess&aacute;rio.<br />\r\n</span></span></span></p>\r\n<p style=\"text-align: justify\"><span style=\"background-color: #ffffff\"><span style=\"font-size: small\"><strong><span style=\"font-family: Verdana\">A</span></strong><span style=\"font-family: Verdana\">tua n&atilde;o somente nos processos contenciosos e nos de ordem volunt&aacute;ria, mas tamb&eacute;m oferece servi&ccedil;os de ordem consultiva, buscando evitar que lit&iacute;gios se instaurem, realizando, assim, uma advocacia de vanguarda, preventiva e profil&aacute;tica.<br />\r\n</span></span></span></p>\r\n<p style=\"text-align: justify\"><span style=\"background-color: #ffffff\"><span style=\"font-size: small\"><strong><span style=\"font-family: Verdana\">U</span></strong><span style=\"font-family: Verdana\">m dos principais diferenciais do escrit&oacute;rio reside nos conhecimentos interdisciplinares de seus s&oacute;cios administradores. Ambos possuem gradua&ccedil;&atilde;o em &aacute;reas diversas da advocacia, o que possibilita uma vis&atilde;o diferenciada do universo jur&iacute;dico.&nbsp;O que se busca, a todo custo, &eacute; uma nova modelagem jur&iacute;dica, ofertando aos clientes solu&ccedil;&otilde;es estrat&eacute;gicas e l&oacute;gicas, equilibrando os conceitos do Direito tradicional com as mais modernas e pragm&aacute;ticas concep&ccedil;&otilde;es de Direito.<br />\r\n</span></span></span></p>\r\n<p style=\"text-align: justify\"><span style=\"background-color: #ffffff\"><span style=\"font-size: small\"><span style=\"font-family: Verdana\">&nbsp;</span></span></span></p>', '<p style=\"text-align: center;\"><img width=\"69\" height=\"70\" src=\"/UserFiles/image/Logo%20Bola.bmp\" alt=\"\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify\">&nbsp;</p>\r\n<p><span style=\"font-size: larger;\">\r\n<p style=\"text-align: justify;\"><strong><span style=\"font-family: Verdana;\">O</span></strong><span style=\"font-family: Verdana;\"> escrit&oacute;rio <strong>Berto &amp; Ghebur Advogados Associados</strong>, regularmente inscrito na OAB/PR sob o n&ordm; 1.809, foi constitu&iacute;do com a finalidade prec&iacute;pua de proporcionar assessoria jur&iacute;dica eficaz e eficiente.<br />\r\n</span></p>\r\n</span></p>\r\n<p style=\"text-align: justify\">&nbsp;</p>\r\n<p><span style=\"font-size: larger;\">\r\n<p style=\"text-align: justify;\"><strong><span style=\"font-family: Verdana;\">P</span></strong><span style=\"font-family: Verdana;\">resta atendimentos a pessoas f&iacute;sicas e jur&iacute;dicas, oferecendo orienta&ccedil;&atilde;o em diversas &aacute;reas do Direito, por profissionais devidamente habilitados, bem como acompanhamento integral nas esferas judicial e extrajudicial, sempre que necess&aacute;rio.<br />\r\n</span></p>\r\n</span></p>\r\n<p style=\"text-align: justify\">&nbsp;</p>\r\n<p><span style=\"font-size: larger;\">\r\n<p style=\"text-align: justify;\"><strong><span style=\"font-family: Verdana;\">A</span></strong><span style=\"font-family: Verdana;\">tua n&atilde;o somente nos processos contenciosos e nos de ordem volunt&aacute;ria, mas tamb&eacute;m oferece servi&ccedil;os de ordem consultiva, buscando evitar que lit&iacute;gios se instaurem, realizando, assim, uma advocacia de vanguarda, preventiva e profil&aacute;tica.<br />\r\n</span></p>\r\n</span></p>\r\n<p style=\"text-align: justify\">&nbsp;</p>\r\n<p><span style=\"font-size: larger;\">\r\n<p style=\"text-align: justify;\"><strong><span style=\"font-family: Verdana;\">E</span></strong><span style=\"font-family: Verdana;\">m conseq&uuml;&ecirc;ncia da ampla rede de correspondentes que disp&otilde;e, oferece assessoramento n&atilde;o apenas na comarca sede do escrit&oacute;rio (Curitiba/PR), mas tamb&eacute;m em praticamente todo o territ&oacute;rio nacional, o que proporciona comodidade e economia a seus clientes.<br />\r\n</span></p>\r\n</span></p>\r\n<p style=\"text-align: justify\">&nbsp;</p>\r\n<p><span style=\"font-size: larger;\">\r\n<p style=\"text-align: justify;\"><strong><span style=\"font-family: Verdana;\">U</span></strong><span style=\"font-family: Verdana;\">m dos principais diferenciais do escrit&oacute;rio reside nos conhecimentos interdisciplinares de seus s&oacute;cios administradores. Ambos possuem gradua&ccedil;&atilde;o em &aacute;reas diversas da advocacia, o que possibilita uma vis&atilde;o diferenciada do universo jur&iacute;dico.<br />\r\n</span></p>\r\n</span></p>\r\n<p style=\"text-align: justify\"><span style=\"font-size: larger;\"><strong><span style=\"font-family: Verdana;\">O</span></strong><span style=\"font-family: Verdana;\"> que se busca, a todo custo, &eacute; uma nova modelagem jur&iacute;dica, ofertando aos clientes solu&ccedil;&otilde;es estrat&eacute;gicas e l&oacute;gicas, equilibrando os conceitos do Direito tradicional com as mais modernas e pragm&aacute;ticas concep&ccedil;&otilde;es de Direito.</span></span><span style=\"font-size: small\"><span style=\"font-family: Verdana\"><br />\r\n</span></span></p>\r\n<p style=\"text-align: justify\"><span style=\"font-size: small\"><span style=\"color: #c0c0c0\"><span style=\"font-family: Verdana\">&nbsp;</span></span></span></p>', '', '0000-00-00', '2007-11-29', '1', 3, 1, '', 'website', 0, 0, 0, '', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'S', 'N', 0),
(117, 0, 'artigos', 'Advogados', '', '', '<hr />\r\n<ul>\r\n    <li style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"color: rgb(128, 128, 128);\"><b><span style=\"font-family: \'Verdana\',\'sans-serif\';\">BRUNA&nbsp;FRANCO&nbsp;CRUZ</span></b><span style=\"font-family: \'Verdana\',\'sans-serif\';\">, advogada, formada pela PUC/PR. Como advogada atua no patroc&iacute;nio nos processos contenciosos c&iacute;vel, e no segmento imobili&aacute;rio na parte de relacionamento com os clientes de opera&ccedil;&atilde;o de repasse/financiamento. </span></span></span></li>\r\n</ul>\r\n<hr />\r\n<ul>\r\n    <li style=\"text-align: justify\"><span style=\"color: #808080\"><font size=\"2\"><b><span style=\"font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Arial\">(CONSULTOR TRABALHISTA)&nbsp;DOUGLAS DANIEL BIELANSKI, </span></b><span style=\"font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Arial\">advogado formado pela PUC/PR e t&eacute;cnico em processamento de dados formado pela Organiza&ccedil;&atilde;o Paranaense de Ensino T&eacute;cnico &ndash; Opet; como advogado atua na acess&oacute;ria de empresas, elabora&ccedil;&atilde;o de pareceres, <b>patroc&iacute;nio de causas individuais e coletivas de natureza trabalhista</b>; durante os per&iacute;odos de mar&ccedil;o/1999 a janeiro/2003, como auxiliar jur&iacute;dico, e fevereiro 2003 a janeiro 2008, como advogado, foi profissional contratado do Sindicato dos Metal&uacute;rgicos de Curitiba &ndash; SMC,&nbsp;neste &uacute;ltimo per&iacute;odo atendeu ainda Federa&ccedil;&atilde;o dos Trabalhadores nas Industrias do Paran&aacute;-FETIEP, o Sindicato dos trabalhadores nas ind&uacute;strias de Artefatos de Borracha- SINDBOR, dentre outras entidades de classe; Al&eacute;m de fazer parte do corpo t&eacute;cnico efetivo de Berto&nbsp;&amp; Ghebur &ndash; Advogados Associados, presta tamb&eacute;m servi&ccedil;os na &aacute;rea trabalhistas &agrave; diversos escrit&oacute;rios de&nbsp; advocacia em Curitiba e RMC.</span><span style=\"font-family: \'Arial\',\'sans-serif\'\">&nbsp; </span></font></span><span style=\"color: #808080\"><font size=\"2\"><b><span style=\"font-family: \'Verdana\',\'sans-serif\'; mso-bidi-font-family: Arial\"><br />\r\n    </span></b></font></span></li>\r\n</ul>\r\n<hr />\r\n<p style=\"text-align: justify;\">&nbsp;</p>', NULL, '0000-00-00', '0000-00-00', '', 56, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 2, '', NULL, NULL, 'N', 'N', 0),
(118, 0, 'artigos', 'Consultores Técnicos', '', '', '<hr />\r\n<ul>\r\n    <li style=\"text-align: justify\"><span style=\"font-size: medium;\"><span style=\"font-family: Verdana;\"><strong>RYNALDO DE OLIVEIRA RO&Ccedil;A JUNIOR</strong>, (consultor) engenheiro civil e p&oacute;s-graduado em engenharia de avalia&ccedil;&otilde;es de bens e per&iacute;cias; diretor na &aacute;rea de neg&oacute;cio da ARECIP SUL junto &agrave; ABECIP (Ass. Brasileira de Cr&eacute;dito Imobili&aacute;rio e Poupan&ccedil;a); diretor de Comercializa&ccedil;&atilde;o Imobili&aacute;ria do SECOVI-PR; diretor da &aacute;rea t&eacute;cnica de funding imobili&aacute;rio da ADEMI-PR. Foi eleito Construtor do Ano (1989) pela ADEMI-PR. Na &aacute;rea de avalia&ccedil;&otilde;es presta servi&ccedil;os para os principais agentes financeiros do pa&iacute;s.</span></span></li>\r\n</ul>\r\n<p><span style=\"font-size: small\"><span style=\"font-family: Verdana\"><br />\r\n</span></span></p>\r\n<hr />\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ul>\r\n    <li style=\"text-align: justify;\"><strong><span style=\"font-size: medium\"><span style=\"font-family: Verdana\">ENG.&ordm;</span></span></strong><span style=\"font-size: medium\"><span style=\"font-family: Verdana\"> <b>GREGORIO BERTO RO&Ccedil;A</b>,  formado em engenharia civil pela UFPR, p&oacute;s-graduado em Engenharia de  Avalia&ccedil;&otilde;es de Bens e Per&iacute;cias pela PUC-PR, participou de cursos&nbsp;na &aacute;rea  de&nbsp;engenharia de avalia&ccedil;&otilde;es e estudos de viabilidade de incorpora&ccedil;&otilde;es.</span></span></li>\r\n</ul>\r\n<p style=\"text-align: justify\"><span style=\"font-size: small\"><span style=\"font-family: Verdana\"><strong> </strong></span></span>&nbsp;</p>', NULL, '0000-00-00', '0000-00-00', '', 56, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 3, '', NULL, NULL, 'N', 'N', 0),
(5, 0, 'menu', 'Área de Atuação', '', '', '<p>Os servi&ccedil;os prestados pela nossa empresa&nbsp;destacam-se por estarem &agrave; frente da concorr&ecirc;ncia e sempre superando as expectativas dos usu&aacute;rios. Buscando o m&aacute;ximo em qualidade e resultados, oferecemos in&uacute;meras solu&ccedil;&otilde;es.</p>', '', '2007-11-29', '0000-00-00', '1', 5, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(106, 0, 'artigos', 'Imobiliário', '', '<p>&nbsp;</p>\r\n<p><span style=\"font-size: small\"><span style=\"font-family: Verdana\">Regulariza&ccedil;&atilde;o de &Aacute;reas P&uacute;blicas e Planejamento Legal do Plano Urban&iacute;stico Municipal; </span></span></p>\r\n<p><span style=\"font-size: small\"><span style=\"font-family: Verdana\">An&aacute;lise/Viabiliza&ccedil;&atilde;o de Empreendimentos Imobili&aacute;rios; </span></span></p>\r\n<p><span style=\"font-size: small\"><span style=\"font-family: Verdana\">Assessoramento jur&iacute;dico/econ&ocirc;mico em transfer&ecirc;ncias de im&oacute;veis urbanos e rurais; </span></span></p>\r\n<div><span style=\"font-size: small\"><span style=\"font-family: Verdana\">Terceiriza&ccedil;&atilde;o de Procedimentos de Gest&atilde;o de Financiamento Imobili&aacute;rio;</span></span></div>\r\n<p><span style=\"font-size: small\"><span style=\"font-family: Verdana\">Consultoria e Patroc&iacute;nio de demandas envolvendo patologias em constru&ccedil;&otilde;es; </span></span></p>\r\n<p><span style=\"font-size: small\"><span style=\"font-family: Verdana\">Estudo de Precifica&ccedil;&atilde;o de Cotas e An&aacute;lise de Riscos em Fundos de Investimento Imobili&aacute;rio; </span></span></p>\r\n<p><span style=\"font-size: small\"><span style=\"font-family: Verdana\"><em>Due Diligence;</em> </span></span></p>\r\n<p><span style=\"font-size: small\"><span style=\"font-family: Verdana\">Programa de terceiriza&ccedil;&atilde;o do departamento jur&iacute;dico de empresas do segmento imobili&aacute;rio; </span></span></p>\r\n<p><span style=\"font-size: small\"><span style=\"font-family: Verdana\">Estrutura&ccedil;&atilde;o de repasses de financiamento imobili&aacute;rio </span></span></p>', '<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: small;\"><img width=\"69\" height=\"70\" alt=\"\" src=\"/UserFiles/image/Logo%20Bola.bmp\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: larger;\"><strong>IMOBILI&Aacute;RIO</strong></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">Em que pese a amplitude dos servi&ccedil;os prestados, e tendo-se por base as tend&ecirc;ncias do mercado, o escrit&oacute;rio Berto &amp; Ghebur concentra servi&ccedil;os espec&iacute;ficos na &aacute;rea imobili&aacute;ria. Neste sentido, sempre interligando aspectos jur&iacute;dicos a capacita&ccedil;&atilde;o t&eacute;cnica de seu quadro, o escrit&oacute;rio presta servi&ccedil;os para:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">&nbsp;</span></p>\r\n<ul>\r\n    <li style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">Estrutura&ccedil;&atilde;o de repasses de financiamento imobili&aacute;rio;</span></li>\r\n    <li style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">An&aacute;lise/Viabiliza&ccedil;&atilde;o de Empreendimentos Imobili&aacute;rios; </span></li>\r\n    <li style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">Assessoramento jur&iacute;dico/econ&ocirc;mico em transfer&ecirc;ncias de im&oacute;veis urbanos e rurais; </span></li>\r\n    <li>\r\n    <div style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">Terceiriza&ccedil;&atilde;o de Procedimentos de Gest&atilde;o de Financiamento Imobili&aacute;rio;</span></div>\r\n    </li>\r\n    <li style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">Consultoria e Patroc&iacute;nio de demandas envolvendo patologias em constru&ccedil;&otilde;es</span></li>\r\n    <li style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">Regulariza&ccedil;&atilde;o de &Aacute;reas P&uacute;blicas e Planejamento Legal do Plano Urban&iacute;stico Municipal;  </span></li>\r\n    <li style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">Estudo de Precifica&ccedil;&atilde;o de Cotas e An&aacute;lise de Riscos em Fundos de Investimento Imobili&aacute;rio; </span></li>\r\n    <li style=\"text-align: justify;\"><span style=\"font-family: Verdana;\"><em>Due Diligence;</em> </span></li>\r\n    <li style=\"text-align: justify;\"><span style=\"font-family: Verdana;\">Programa de terceiriza&ccedil;&atilde;o do departamento jur&iacute;dico de empresas do segmento imobili&aacute;rio; <br />\r\n    </span></li>\r\n</ul>\r\n<p style=\"text-align: right; margin-left: 80px\"><span style=\"font-size: small\"><span style=\"font-family: Verdana\"><em>Dentre outras...</em></span></span></p>\r\n<p style=\"text-align: justify\"><span style=\"font-size: small\"><span style=\"font-family: Verdana\">&nbsp;</span></span></p>', NULL, '0000-00-00', '0000-00-00', '', 5, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'S', 'N', 0),
(107, 0, 'artigos', 'Cível', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 5, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 3, '', NULL, NULL, 'N', 'N', 0),
(108, 0, 'artigos', 'Administrativo', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 5, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 4, '', NULL, NULL, 'N', 'N', 0),
(109, 0, 'artigos', 'Sucessões e Família', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 5, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 5, '', NULL, NULL, 'N', 'N', 0),
(110, 0, 'artigos', 'Tributário', '', '', '<p><!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:TrackMoves />\r\n<w:TrackFormatting />\r\n<w:HyphenationZone>21</w:HyphenationZone>\r\n<w:PunctuationKerning />\r\n<w:ValidateAgainstSchemas />\r\n<w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n<w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n<w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n<w:DoNotPromoteQF />\r\n<w:LidThemeOther>PT-BR</w:LidThemeOther>\r\n<w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n<w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables />\r\n<w:SnapToGridInCell />\r\n<w:WrapTextWithPunct />\r\n<w:UseAsianBreakRules />\r\n<w:DontGrowAutofit />\r\n<w:SplitPgBreakAndParaMark />\r\n<w:DontVertAlignCellWithSp />\r\n<w:DontBreakConstrainedForcedTables />\r\n<w:DontVertAlignInTxbx />\r\n<w:Word11KerningPairs />\r\n<w:CachedColBalance />\r\n</w:Compatibility>\r\n<m:mathPr>\r\n<m:mathFont m:val=\"Cambria Math\" />\r\n<m:brkBin m:val=\"before\" />\r\n<m:brkBinSub m:val=\"&#45;-\" />\r\n<m:smallFrac m:val=\"off\" />\r\n<m:dispDef />\r\n<m:lMargin m:val=\"0\" />\r\n<m:rMargin m:val=\"0\" />\r\n<m:defJc m:val=\"centerGroup\" />\r\n<m:wrapIndent m:val=\"1440\" />\r\n<m:intLim m:val=\"subSup\" />\r\n<m:naryLim m:val=\"undOvr\" />\r\n</m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n<w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"\r\nDefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"\r\nLatentStyleCount=\"267\">\r\n<w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\" />\r\n<w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\" />\r\n<w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\" />\r\n<w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\" />\r\n<w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\" />\r\n<w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\" />\r\n<w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\" />\r\n<w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\" />\r\n<w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\" />\r\n<w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\" />\r\n<w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Table Grid\" />\r\n<w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\" />\r\n<w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\" />\r\n<w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Shading\" />\r\n<w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light List\" />\r\n<w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Grid\" />\r\n<w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Dark List\" />\r\n<w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Shading\" />\r\n<w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful List\" />\r\n<w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Grid\" />\r\n<w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light List Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\" />\r\n<w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\" />\r\n<w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\" />\r\n<w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\" />\r\n<w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\" />\r\n<w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\" />\r\n<w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light List Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\" />\r\n<w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light List Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\" />\r\n<w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light List Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\" />\r\n<w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light List Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\" />\r\n<w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light List Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\" />\r\n<w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\" />\r\n<w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\" />\r\n<w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\" />\r\n<w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\" />\r\n<w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"\r\nUnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\" />\r\n<w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\" />\r\n<w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\" />\r\n</w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:\"Tabela normal\";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:\"\";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin-top:0cm;\r\nmso-para-margin-right:0cm;\r\nmso-para-margin-bottom:10.0pt;\r\nmso-para-margin-left:0cm;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:\"Calibri\",\"sans-serif\";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:\"Times New Roman\";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:\"Times New Roman\";\r\nmso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]--></p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: center; line-height: normal;\" class=\"MsoNormal\"><span style=\"font-size: small;\"><img width=\"69\" height=\"70\" src=\"/UserFiles/image/Logo%20Bola.bmp\" alt=\"\" /></span> </p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: center; line-height: normal;\" class=\"MsoNormal\"><span style=\"font-size: larger;\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\"><strong>TRIBUT&Aacute;RIO</strong></span></span></span></p>\r\n<p><span style=\"font-size: small;\">\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><strong><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\">Tendo em vista a complexidade do Sistema Tribut&aacute;rio Nacional e a elevada carga tribut&aacute;ria que assola os exercentes de atividades empres&aacute;rias, o escrit&oacute;rio, com o escopo de assegurar-lhes direitos e conferir-lhes seguran&ccedil;a nos seus setores, presta os seguintes servi&ccedil;os:</span></span></strong></p>\r\n</span></p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"font-size: small;\">&nbsp;</span></p>\r\n<hr />\r\n<ul>\r\n    <li><span style=\"font-size: small;\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\"><b style=\"\">ATUA&Ccedil;&Atilde;O ADMINISTRATIVA</b></span></span></span></li>\r\n</ul>\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal\" class=\"MsoNormal\">&nbsp;</p>\r\n<p><span style=\"font-size: small;\">\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\">- Elabora&ccedil;&atilde;o de defesas e recursos administrativos contra autua&ccedil;&otilde;es dos fiscos federal, estadual e municipal;</span></span></p>\r\n</span></p>\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal\" class=\"MsoNormal\">&nbsp;</p>\r\n<p><span style=\"font-size: small;\">\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\">- Efetiva&ccedil;&atilde;o de consultas, junto &agrave;s autoridades fazend&aacute;rias, para orientar o contribuinte, de forma segura, sobre os procedimentos fiscais a serem adotados;</span></span></p>\r\n</span></p>\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal\" class=\"MsoNormal\">&nbsp;</p>\r\n<p><span style=\"font-size: small;\">\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\">- Realiza&ccedil;&atilde;o de pedidos administrativos de restitui&ccedil;&atilde;o e compensa&ccedil;&atilde;o de tributos;</span></span></p>\r\n</span></p>\r\n<hr />\r\n<ul>\r\n    <li><span style=\"font-size: small;\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\"><b style=\"\">ATUA&Ccedil;&Atilde;O JUDICIAL</b></span></span></span></li>\r\n</ul>\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal\" class=\"MsoNormal\">&nbsp;</p>\r\n<p><span style=\"font-size: small;\">\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\">- Defesa dos contribuintes em execu&ccedil;&otilde;es fiscais;</span></span></p>\r\n</span></p>\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\">&nbsp;</p>\r\n<p><span style=\"font-size: small;\">\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\">- Elabora&ccedil;&atilde;o de teses e propositura de medidas judiciais (inclusive de urg&ecirc;ncia), em mat&eacute;ria tribut&aacute;ria, com o intuito de defender o contribuinte e proporcionar-lhe a menor exa&ccedil;&atilde;o poss&iacute;vel.</span></span></p>\r\n</span></p>\r\n<hr />\r\n<ul>\r\n    <li><span style=\"font-size: small;\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\"><b style=\"\">CONSULTORIA TRIBUT&Aacute;RIA E GEST&Atilde;O FISCAL</b></span></span></span></li>\r\n</ul>\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal\" class=\"MsoNormal\">&nbsp;</p>\r\n<p><span style=\"font-size: small;\">\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\">- Consultoria, elaborada por meio de pareceres t&eacute;cnicos de adequa&ccedil;&atilde;o dos procedimentos fiscais das sociedades empres&aacute;rias, com o objetivo de apresentar solu&ccedil;&otilde;es acerca de questionamentos e situa&ccedil;&otilde;es de rotina fiscal;</span></span></p>\r\n</span></p>\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal\" class=\"MsoNormal\">&nbsp;</p>\r\n<p><span style=\"font-size: small;\">\r\n<p style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal;\" class=\"MsoNormal\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\">- An&aacute;lise jur&iacute;dica acerca de benef&iacute;cios fiscais pass&iacute;veis de serem gozados pela empresa;</span></span></p>\r\n</span></p>\r\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal\" class=\"MsoNormal\"><span style=\"font-size: small;\"><span style=\"color: rgb(128, 128, 128);\"><span style=\"font-family: Verdana;\">- Planejamento tribut&aacute;rio.</span></span></span></p>', NULL, '0000-00-00', '0000-00-00', '', 5, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 2, '', NULL, NULL, 'N', 'N', 0),
(111, 0, 'artigos', 'Trabalhista', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 5, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 6, '', NULL, NULL, 'N', 'N', 0),
(112, 0, 'artigos', 'Empresarial', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 5, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 7, '', NULL, NULL, 'N', 'N', 0),
(113, 0, 'menu', 'Corpo Técnico', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 56, 0, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(114, 0, 'artigos', 'Artigos', '', '<p>&nbsp;Aqui voc&ecirc; encontra artigos e publica&ccedil;&otilde;es!</p>', '<p><strong><span style=\"font-size: small\"><span style=\"font-family: Verdana\">Leiam alguns artigos e trabalhos recom</span></span><span style=\"font-size: small\"><span style=\"font-family: Verdana\">endados.</span></span></strong></p>', NULL, '0000-00-00', '0000-00-00', '', 29, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'N', 'N', 0),
(115, 0, 'artigos', 'Notícias', '', '<p>&nbsp;Not&iacute;cias ligadas ao universo legal.</p>', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, '0000-00-00', '0000-00-00', '', 29, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 2, '', NULL, NULL, 'N', 'N', 0),
(119, 0, 'artigos', 'Interdisciplinariedade', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 56, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 4, '', NULL, NULL, 'N', 'N', 0),
(7, 0, 'menu', 'Fale Conosco', '', '', '', '', '2007-11-29', '0000-00-00', '1', 7, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(14, 0, 'artigos', 'Estrutura', '', '<p>O&nbsp;escrit&oacute;rio tem sua sede pr&oacute;pria localizada na cidade de Curitiba, Estado do Paran&aacute;. Al&eacute;m da tradicional estrutura f&iacute;sica ...</p>', '<p style=\"text-align: justify\"><span style=\"font-size: small\"><span style=\"font-family: Verdana\">O&nbsp;escrit&oacute;rio tem sua sede pr&oacute;pria localizada na cidade de Curitiba, Estado do Paran&aacute;. Al&eacute;m da tradicional estrutura f&iacute;sica, o escrit&oacute;rio atua hoje em mais de 300 munic&iacute;pios em v&aacute;rias regi&otilde;es do Brasil. O que se busca a todo custo &eacute; justamente oferecer a comodidade do cliente poder receber o atendimento adequado em qualquer localidade, sem ter que se preocupar com os gastos inerentes de subcontrata&ccedil;&otilde;es.</span></span></p>\r\n<p style=\"text-align: center\"><span style=\"font-size: small\"><span style=\"font-family: Verdana\"><img src=\"/UserFiles/image/MPARA%20Bg.jpg\" style=\"width: 581px; height: 550px;\" alt=\"\" /><br />\r\n</span></span></p>', '', '0000-00-00', '0000-00-00', '1', 3, 1, '', 'website', 1, 0, 0, '', '', '0000-00-00 00:00:00', 2, '', NULL, NULL, 'N', 'N', 0),
(17, 0, 'menu', 'Menu de cont. e/ou prod.', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 16, 1, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(18, 0, 'menu', 'Menu de cont. e/ou prod.', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 17, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(19, 0, 'menu', 'Menu de cont. e/ou prod.', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 18, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(20, 0, 'menu', 'Products / Services', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 21, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(21, 0, 'menu', 'Products / Services', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 22, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(22, 0, 'menu', 'Products / Services', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 23, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(23, 0, 'menu', 'Products / Services', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 24, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0);
INSERT INTO `conteudo` (`conteudo_id`, `conteudo_id_pai`, `conteudo_tipo`, `conteudo_titulo`, `conteudo_fonte`, `conteudo_chamada`, `conteudo_texto`, `texto_buscar`, `conteudo_datainicio`, `conteudo_datafim`, `conteudo_expira`, `menu_id`, `edicao_id`, `destaque`, `sistema`, `conteudo_ordem`, `conteudo_id_sucesso`, `conteudo_id_falhou`, `endereco_origem`, `numero_origem`, `datahora`, `ordem`, `newsletter_ecomm_produtos`, `msg_sucesso`, `msg_erro`, `conteudo_destaque`, `conteudo_formmail`, `conteudo_comentar`) VALUES
(25, 0, 'artigos', 'Contato', '', '', '<p style=\"text-align: center;\">Utilize o formul&aacute;rio abaixo para entrar em contato conosco.<br />\r\n&Eacute;&nbsp;necess&aacute;rio o preenchimento dos campos Nome e E-mail.</p>\r\n<script type=\"text/javascript\">\r\n	function validaFormContato(){\r\n		//Campos a serem validados\r\n		var nome = document.getElementById(\"nome_form\").value;\r\n		var email = document.getElementById(\"email_form\").value;\r\n		\r\n		botaoSubmit = document.getElementById(\"enviar_form\");\r\n		\r\n		if(nome == \"\" || nome == null || email == \"\" || email == null){\r\n			botaoSubmit.setAttribute(\"type\",\"button\"); \r\n			msg = \"Preencha os campos marcados com \'*\'.\";\r\n			alert(msg);\r\n		}else{\r\n			try{\r\n				botaoSubmit.setAttribute(\"type\",\"submit\"); \r\n			}catch(e){\r\n				document.getElementById(\"enviar_form_ie\").click();\r\n			}\r\n		}\r\n	}\r\n</script>\r\n<table cellspacing=\"0\" cellpadding=\"2\" border=\"0\" style=\"margin: 0pt auto; width: 470px;\">\r\n    <tbody>\r\n        <tr>\r\n            <td colspan=\"2\" style=\"padding: 5px 0px 5px 5px; background-color: rgb(241, 241, 243);\">DADOS</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan=\"2\">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td width=\"58\"><span style=\"color: rgb(128, 0, 0);\">*&nbsp;</span>Nome:</td>\r\n            <td width=\"494\"><input type=\"text\" style=\"width: 99%;\" size=\"60\" name=\"nome\" id=\"nome_form\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n            <p><span style=\"color: rgb(128, 0, 0);\">*&nbsp;</span>E-mail:</p>\r\n            </td>\r\n            <td>\r\n            <p><input type=\"text\" style=\"width: 99%;\" size=\"60\" name=\"E-mail\" id=\"email_form\" /></p>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>Telefone:</td>\r\n            <td><input type=\"text\" style=\"width: 99%;\" size=\"60\" name=\"Telefone\" id=\"telefone_form\" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan=\"2\" style=\"padding: 5px 0px 5px 5px; background-color: rgb(241, 241, 243);\">MENSAGEM</td>\r\n        </tr>\r\n        <tr>\r\n            <td colspan=\"2\">&nbsp;</td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" colspan=\"2\"><textarea rows=\"12\" cols=\"90\" name=\"Mensagem\"></textarea></td>\r\n        </tr>\r\n        <tr>\r\n            <td align=\"center\" colspan=\"2\"><center><input type=\"button\" onClick=\"validaFormContato();\" class=\"button\" name=\"Enviar\" id=\"enviar_form\" value=\"Enviar\" style=\"margin:0 auto;\" /></center></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><input type=\"submit\" style=\"top: -9999px; position: absolute; visibility: hidden; width: 1px; height: 1px;\" class=\"button\" name=\"Enviar\" id=\"enviar_form_ie\" value=\"Enviar\" /></p>', NULL, '0000-00-00', '0000-00-00', '', 7, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, '', 'Mensagem enviada com sucesso', 'Envio da mensagem falhou, tente novamente', 'N', 'S', 0),
(100, 0, 'texto_cadastro', '', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 0, 0, '', '', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(102, 0, 'ocultos', 'Saiba Mais...', '', '', '<p>Clique aqui para saber mais informa&ccedil;&otilde;es...</p>', NULL, '0000-00-00', '0000-00-00', '', 0, 3, '', '', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'S', 'N', 0),
(26, 0, 'artigos', 'Chat', '', '', '<p><iframe src=\"http://settings.messenger.live.com/Conversation/IMMe.aspx?invitee=b49472dd47db503c@apps.messenger.live.com&amp;mkt=pt-br\" frameborder=\"0\" width=\"500\" height=\"400\" style=\"border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid; width: 500px; border-bottom: black 1px solid; height: 400px\"></iframe></p>', NULL, '0000-00-00', '0000-00-00', '', 7, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 2, '', NULL, NULL, 'N', 'N', 0),
(27, 0, 'artigos', 'Localização', '', '<p style=\"text-align: left\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img alt=\"\" width=\"69\" height=\"70\" src=\"/UserFiles/image/Logo%20Bola.bmp\" /></p>', '<p style=\"text-align: center\"><iframe height=\"420\" marginheight=\"0\" src=\"http://www.google.com/maps?f=q&amp;source=s_q&amp;hl=pt-BR&amp;geocode=&amp;q=R.+Jer%C3%B4nimo+Durski+850,+Curitiba&amp;sll=-25.438101,-49.302444&amp;sspn=0.015657,0.027874&amp;g=R.+Jer%C3%B4nimo+Durski,+Curitiba&amp;ie=UTF8&amp;ll=-25.43002,-49.296513&amp;spn=0.015657,0.027874&amp;z=14&amp;iwloc=A&amp;output=embed\" frameborder=\"0\" width=\"539\" marginwidth=\"0\" scrolling=\"no\"></iframe><br />\r\n<small><a style=\"text-align: left; color: #0000ff\" href=\"http://www.google.com/maps?f=q&amp;source=embed&amp;hl=pt-BR&amp;geocode=&amp;q=R.+Jer%C3%B4nimo+Durski+850,+Curitiba&amp;sll=-25.438101,-49.302444&amp;sspn=0.015657,0.027874&amp;g=R.+Jer%C3%B4nimo+Durski,+Curitiba&amp;ie=UTF8&amp;ll=-25.43002,-49.296513&amp;spn=0.015657,0.027874&amp;z=14&amp;iwloc=A\">Exibir mapa ampliado</a></small></p>', NULL, '0000-00-00', '0000-00-00', '', 7, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 3, '', NULL, NULL, 'S', 'N', 0),
(28, 0, 'artigos', 'Oportunidades', '', '', '<table cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"1\\\">\r\n    <tbody>\r\n        <tr>\r\n            <td width=\\\"1\\\" valign=\\\"top\\\">\r\n            <table cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td>\r\n                        <p align=\\\"center\\\"><span style=\\\"text-align: justify;\\\">Voc&ecirc; est&aacute; interessado em fazer parte da nossa equipe?</span><br />\r\n                        <br />\r\n                        Preencha os campos abaixo:</p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <table height=\\\"303\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"30\\\" bgcolor=\\\"#eaeaee\\\" colspan=\\\"2\\\">\r\n                        <p align=\\\"left\\\"><span style=\\\"color: rgb(128, 128, 128);\\\"><strong>&nbsp;&nbsp;</strong><strong><font size=\\\"2\\\">1.&nbsp;DADOS PESSOAIS</font></strong></span></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"3\\\" colspan=\\\"2\\\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\" width=\\\"106\\\">Nome</td>\r\n                        <td height=\\\"0\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"nome\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\">Idade</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"Idade\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\">Sexo</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"Sexo\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\">Endere&ccedil;o</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"Endere&ccedil;o\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\">Bairro</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"Bairro\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\">Cidade</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"cidade\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\">Estado</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"Estado\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\">CEP</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"CEP\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\">Telefone</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"Telefone\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"0\\\">Fax</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"Fax\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"1\\\">Email</td>\r\n                        <td height=\\\"0\\\"><input type=\\\"text\\\" name=\\\"E-mail\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"47\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"30\\\" bgcolor=\\\"#eaeaee\\\" colspan=\\\"2\\\">\r\n                        <p align=\\\"left\\\"><strong><font color=\\\"#808080\\\">&nbsp;&nbsp;</font><span style=\\\"color: rgb(128, 128, 128);\\\"><font size=\\\"2\\\">2.&nbsp;OBJETIVO</font></span></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\\\"2\\\"><font color=\\\"#768089\\\"><textarea name=\\\"OBJETIVO\\\" cols=\\\"80\\\" rows=\\\"5\\\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"47\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"30\\\" bgcolor=\\\"#eaeaee\\\" colspan=\\\"2\\\">\r\n                        <p align=\\\"left\\\"><strong><font color=\\\"#808080\\\">&nbsp;&nbsp;</font><span style=\\\"color: rgb(128, 128, 128);\\\"><font size=\\\"2\\\">3.&nbsp;QUALIFICA&Ccedil;&Atilde;O</font></span></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\\\"2\\\"><font color=\\\"#768089\\\"><textarea name=\\\"QUALIFICA&Ccedil;&Atilde;O\\\" cols=\\\"80\\\" rows=\\\"5\\\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"47\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"30\\\" bgcolor=\\\"#eaeaee\\\" colspan=\\\"2\\\">\r\n                        <p align=\\\"left\\\"><strong><font color=\\\"#003399\\\"><font size=\\\"2\\\">&nbsp; </font><span style=\\\"color: rgb(128, 128, 128);\\\"><font size=\\\"2\\\">4.&nbsp;FORMA&Ccedil;&Atilde;O ESCOLAR </font></span></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\\\"2\\\"><font color=\\\"#768089\\\"><textarea name=\\\"FORMA&Ccedil;&Atilde;O ESCOLAR\\\" cols=\\\"80\\\" rows=\\\"5\\\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"47\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"30\\\" bgcolor=\\\"#eaeaee\\\" colspan=\\\"2\\\">\r\n                        <p align=\\\"left\\\"><span style=\\\"color: rgb(128, 128, 128);\\\"><strong>&nbsp;&nbsp;&nbsp;<font size=\\\"2\\\">5.&nbsp;CURSOS COMPLEMENTARES </font></strong></span></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\\\"2\\\"><font color=\\\"#768089\\\"><textarea name=\\\"CUROS COMPLEMENTARES\\\" cols=\\\"80\\\" rows=\\\"5\\\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"131\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"30\\\" bgcolor=\\\"#eaeaee\\\" colspan=\\\"2\\\">\r\n                        <p align=\\\"left\\\"><strong><font color=\\\"#808080\\\">&nbsp;&nbsp; </font><span style=\\\"color: rgb(128, 128, 128);\\\"><font size=\\\"2\\\">6.&nbsp;EXPERI&Ecirc;NCIA PROFISSIONAL</font></span></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"6\\\" colspan=\\\"2\\\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"7\\\"><strong><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\">Empresa</font></strong></td>\r\n                        <td width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Empresa\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" width=\\\"106\\\"><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\"><strong>Admiss&atilde;o</strong></font></span></span></td>\r\n                        <td height=\\\"1\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Admiss&atilde;o\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" width=\\\"106\\\"><strong><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\"><strong>Sa&iacute;da</strong></font></span></span></strong></td>\r\n                        <td height=\\\"1\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Sa&iacute;da\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" valign=\\\"top\\\">\r\n                        <p align=\\\"left\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" size=\\\"1\\\"><strong><font color=\\\"#768089\\\">Fun&ccedil;&atilde;o</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\\\"left\\\"><font color=\\\"#768089\\\"><textarea name=\\\"Fun&ccedil;&atilde;o\\\" cols=\\\"60\\\" rows=\\\"5\\\"></textarea> </font></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"88\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"13\\\"><strong><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\">Empresa</font></strong></td>\r\n                        <td width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Empresa 2\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" width=\\\"106\\\"><span class=\\\"style1\\\"><!--n id=\\\"LblNom--><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\"><strong>Admiss&atilde;o</strong></font></span></td>\r\n                        <td height=\\\"1\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Admiss&atilde;o 2\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" width=\\\"106\\\"><strong><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\"><strong>Sa&iacute;da</strong></font></span></span></strong></td>\r\n                        <td height=\\\"1\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Sa&iacute;da 2\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" valign=\\\"top\\\">\r\n                        <p align=\\\"left\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" size=\\\"1\\\"><strong><font color=\\\"#768089\\\">Fun&ccedil;&atilde;o</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\\\"left\\\"><font color=\\\"#768089\\\"><textarea name=\\\"Fun&ccedil;&atilde;o 2\\\" cols=\\\"60\\\" rows=\\\"5\\\"></textarea> </font></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"88\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"13\\\"><strong><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\">Empresa</font></strong></td>\r\n                        <td height=\\\"0\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Empresa 3\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" width=\\\"106\\\"><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\"><strong>Admiss&atilde;o</strong></font></span></span></td>\r\n                        <td height=\\\"0\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Admiss&atilde;o 3\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" width=\\\"106\\\"><strong><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\"><strong>Sa&iacute;da</strong></font></span></span></strong></td>\r\n                        <td height=\\\"0\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Sa&iacute;da 3\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" valign=\\\"top\\\">\r\n                        <p align=\\\"left\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" size=\\\"1\\\"><strong><font color=\\\"#768089\\\">Fun&ccedil;&atilde;o</font></strong></font></p>\r\n                        </td>\r\n                        <td height=\\\"0\\\">\r\n                        <p align=\\\"left\\\"><font color=\\\"#768089\\\">                         <textarea name=\\\"Fun&ccedil;&atilde;o 3\\\" cols=\\\"60\\\" rows=\\\"5\\\"></textarea> </font></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"81\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"30\\\" bgcolor=\\\"#eaeaee\\\" colspan=\\\"2\\\">\r\n                        <p align=\\\"left\\\"><strong><font color=\\\"#003399\\\"><font size=\\\"2\\\"><font color=\\\"#808080\\\">&nbsp;</font></font><span style=\\\"color: rgb(128, 128, 128);\\\"><font size=\\\"2\\\"> 7. REFER&Ecirc;NCIAS PESSOAIS </font></span></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"6\\\" colspan=\\\"2\\\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"7\\\"><strong><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\">Nome:</font></span></span></strong></td>\r\n                        <td width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Refer&ecirc;ncia - Nome1\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" width=\\\"106\\\"><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\"><strong>Telefone:</strong></font></span></span></td>\r\n                        <td height=\\\"1\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Refer&ecirc;ncia - Telefone 1\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"38\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"13\\\"><strong><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\">Nome:</font></span></span></strong></td>\r\n                        <td width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Refer&ecirc;ncia - Nome2\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" width=\\\"106\\\"><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\"><strong>Telefone:</strong></font></span></span></td>\r\n                        <td height=\\\"1\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Refer&ecirc;ncia - Telefone 2\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\\\"38\\\" cellspacing=\\\"0\\\" cellpadding=\\\"0\\\" border=\\\"0\\\" align=\\\"center\\\" width=\\\"430\\\" summary=\\\"\\\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\\\"13\\\"><strong><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\">Nome:</font></span></span></strong></td>\r\n                        <td width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Refer&ecirc;ncia - Nome3\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\\\"25\\\" width=\\\"106\\\"><span class=\\\"style1\\\"><span id=\\\"LblNome\\\"><font face=\\\"Arial, Helvetica, sans-serif\\\" color=\\\"#768089\\\" size=\\\"1\\\"><strong>Telefone:</strong></font></span></span></td>\r\n                        <td height=\\\"1\\\" width=\\\"360\\\"><input type=\\\"text\\\" name=\\\"Refer&ecirc;ncia - Telefone 3\\\" size=\\\"60\\\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <br />\r\n            <p align=\\\"center\\\"><strong><input type=\\\"submit\\\" value=\\\"Enviar\\\" name=\\\"Enviar\\\" class=\\\"button\\\" /> </strong></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p style=\\\"text-align: center;\\\">&nbsp;</p>', NULL, '0000-00-00', '0000-00-00', '', 7, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 4, '', 'Formulário enviado com sucesso', 'Envio falhou, tente novamente mais tarde', 'N', 'S', 0),
(84, 0, 'texto_cadastro', '', '', '', '<p>Texto exibido apenas para o usu&aacute;rio &quot;exemplo&quot;</p>', NULL, '0000-00-00', '0000-00-00', '', 0, 1, '', '', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(85, 0, 'menu', 'Menu de cont. e/ou prod.', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 51, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(30, 0, 'ocultos', 'O site', '', '<p>Esse &eacute; o nosso novo Web Site! Ele &eacute; muito mais interativo com voc&ecirc; nosso cliente! Navegue por ele e descubra mais sobre nosso escrit&oacute;rio, como evolu&iacute;mos e como prezamos o melhor atendimento &agrave;quele que &eacute; o mais importante parceiro para n&oacute;s! Voc&ecirc;!</p>\r\n<p>Para maiores esclarecimentos, voc&ecirc; pode tamb&eacute;m acessar nosso chat!</p>', '<p>Esse &eacute; o nosso novo Web Site! Ele &eacute; muito mais interativo com voc&ecirc; nosso cliente! Navegue por ele e descubra mais sobre nosso escrit&oacute;rio, como evolu&iacute;mos e como prezamos o melhor atendimento &agrave;quele que &eacute; o mais importante parceiro para n&oacute;s! Voc&ecirc;!</p>\r\n<p>Para maiores esclarecimentos, voc&ecirc; pode tamb&eacute;m acessar nosso chat!</p>', NULL, '0000-00-00', '0000-00-00', '', 0, 1, '', '', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 2),
(32, 0, 'menu', 'Artigos e Nóticias', '', '<p>N&oacute;s disponibilizamos um canal de not&iacute;cias, artigos e eventos para voc&ecirc; nosso clientes estar sempre atualizado quanto as atividades de nossa empresa.</p>', '', NULL, '0000-00-00', '0000-00-00', '', 29, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(33, 0, 'menu', 'Why we are diferent', '', '&nbsp;\r\n&nbsp;', '', NULL, '0000-00-00', '0000-00-00', '', 30, 0, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'S', 'N', 0),
(34, 0, 'menu', 'Services', '', '<p>A sua opini&atilde;o &eacute; muito importante para n&oacute;s!!! Deixe registrado aqui o que voc&ecirc; acha de nossa empresa!</p>\r\n&nbsp;', '', NULL, '0000-00-00', '0000-00-00', '', 31, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'S', 'N', 0),
(35, 0, 'menu', 'Get in Touch', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 32, 0, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(36, 0, 'artigos', 'Who we are', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 28, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'N', 'N', 0),
(37, 0, 'artigos', 'Values/ Vision / Mission', '', '&nbsp;\r\n&nbsp;', '', NULL, '0000-00-00', '0000-00-00', '', 28, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 2, '', NULL, NULL, 'N', 'N', 0),
(38, 0, 'artigos', 'Team', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 28, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 3, '', NULL, NULL, 'N', 'N', 0),
(39, 0, 'artigos', 'Speak with us', '', '<p>speak with us&nbsp;</p>', '&nbsp;\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"1\" align=\"center\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"top\" width=\"1\">\r\n            <table height=\"303\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp; </font><font color=\"#003399\"><font size=\"2\">PERSONAL DATA</font></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\" height=\"6\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"7\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Name: </font></span></span></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"nome\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Adress:</font></strong></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Endere&ccedil;o\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblBairro\">Neighborhood</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Bairro\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblCidade\">City</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"cidade\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblEstado\">State</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Estado\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span class=\"fonteContato\"><span id=\"LblCEP\">ZIP Code:</span></span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"CEP\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblTelefone\">Phone:</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Fone\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Cellular</font></span></span></strong></td>\r\n                        <td><input size=\"60\" name=\"Celular\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblFax\">Fax</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Fax\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"22\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">Email</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"E-mail\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp;</font><font color=\"#003399\"><font size=\"2\">MESSAGE</font></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"12\" cols=\"82\" name=\"Mensagem\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <p align=\"center\"><strong><input class=\"button\" type=\"submit\" name=\"Enviar\" value=\"Send\" /></strong></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><font color=\"#808080\"><strong><br />\r\n<br />\r\n</strong></font>?/p>', NULL, '0000-00-00', '0000-00-00', '', 32, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, '', 'Sent successfully!', 'Failed transmission, try again', 'N', 'S', 0),
(40, 0, 'artigos', 'Chat', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 32, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 2, '', NULL, NULL, 'N', 'N', 0),
(41, 0, 'artigos', 'Map', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 32, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 3, '', NULL, NULL, 'N', 'N', 0);
INSERT INTO `conteudo` (`conteudo_id`, `conteudo_id_pai`, `conteudo_tipo`, `conteudo_titulo`, `conteudo_fonte`, `conteudo_chamada`, `conteudo_texto`, `texto_buscar`, `conteudo_datainicio`, `conteudo_datafim`, `conteudo_expira`, `menu_id`, `edicao_id`, `destaque`, `sistema`, `conteudo_ordem`, `conteudo_id_sucesso`, `conteudo_id_falhou`, `endereco_origem`, `numero_origem`, `datahora`, `ordem`, `newsletter_ecomm_produtos`, `msg_sucesso`, `msg_erro`, `conteudo_destaque`, `conteudo_formmail`, `conteudo_comentar`) VALUES
(42, 0, 'artigos', 'Oportunities', '', '&nbsp;', '<p><!--CTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dt--></p>\r\n<p align=\"center\"><strong><font color=\"#003366\">Are you interested in becoming part of our team?</font> <br />\r\n</strong></p>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"1\" align=\"center\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"top\" width=\"1\">\r\n            <table height=\"303\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp;</font></strong><strong><font color=\"#003399\"><font size=\"2\">1.&nbsp;PERSONAL DATA</font></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\" height=\"6\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"7\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Full name:</font></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"nome\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Age:</strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Idade\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Sex:</strong></font></span></span></strong></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Sexo\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">Adress:</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Endere&ccedil;o\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblBairro\">Neighborhood</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Bairro\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblCidade\">City</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"le?t\"><input size=\"60\" name=\"cidade\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblEstado\">State</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Estado\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">ZIP Code:</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"CEP\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">Phone:</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Telefone\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblFax\">Fax</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Fax\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"22\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">Email</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"E-mail\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp;</font><font color=\"#003399\"><font size=\"2\">2.&nbsp;OBJECTIVE</font></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"80\" name=\"OBJETIVO\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp;</font><font color=\"#003399\"><font size=\"2\">3.&nbsp;QUALIFICATION</font></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"80\" name=\"QUALIFICA&Ccedil;&Atilde;O\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center? summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#003399\"><font size=\"2\">&nbsp; 4.&nbsp;TRAINING SCHOOL </font></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"80\" name=\"FORMA&Ccedil;&Atilde;O ESCOLAR\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp;&nbsp;</font><font color=\"#003399\"><font size=\"2\">4.&nbsp;ADDITIONAL COURSES </font></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"80\" name=\"CUROS COMPLEMENTARES\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"131\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp; </font><font color=\"#003399\"><font size=\"2\">5.&nbsp;PROFESSIONAL EXPERIENCE</font></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\" height=\"6\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"7\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Company:</font></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Empresa\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Admission:</strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Admiss&atilde;o\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Exit:</strong></font></span></span></strong></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Sa&iacute;da\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign=\"top\" height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">Function:</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"60\" name=\"Fun&ccedil;&atilde;o\"></textarea> </font></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"88\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\"13\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Company:</font></strong></td>\r\n                        <td width=\"360\"><input size?\"60\" name=\"Empresa 2\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Admission:</strong></font></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Admiss&atilde;o 2\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Exit:</strong></font></strong></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Sa&iacute;da 2\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign=\"top\" height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">Function:</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"60\" name=\"Fun&ccedil;&atilde;o 2\"></textarea> </font></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"88\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\"13\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Company:</font></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Empresa 3\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Admission:</strong></font></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Admiss&atilde;o 3\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Exit:</strong></font></strong></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Sa&iacute;da 3\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign=\"top\" height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">Function:</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"60\" name=\"Fun&ccedil;&atilde;o 3\"></textarea> </font></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"81\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;</font><font color=\"#003399\"><font size=\"2\">6. PERSONAL REFERENCES</font></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\" height=\"6\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"7\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Name:</font></span></span></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Refer&ecirc;ncia - Nome1\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td ?idth=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Phone:</strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Refer&ecirc;ncia - Telefone 1\" type=\"text\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"38\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\"13\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Name:</font></span></span></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Refer&ecirc;ncia - Nome2\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Phone:</strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Refer&ecirc;ncia - Telefone 2\" type=\"text\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"38\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\"13\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Name:</font></span></span></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Refer&ecirc;ncia - Nome3\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Phone:</strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Refer&ecirc;ncia - Telefone 3\" type=\"text\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <br />\r\n            <p align=\"center\"><strong><input class=\"button\" type=\"submit\" name=\"Enviar\" value=\"Send\" /> </strong></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n&nbsp;\r\n&nbsp;\r\n&nbsp;', NULL, '0000-00-00', '0000-00-00', '', 32, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 4, '', 'Sent successfully!', 'Failed transmission, try again', 'N', 'S', 0),
(45, 0, 'menu', 'La empresa', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 34, 0, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(46, 0, 'menu', 'Diferencial', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 35, 0, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(44, 0, 'menu', 'News', '', '&nbsp;\r\n<p>Check out the latest news by CNN from here.</p>', '<p>Check out the latest news by CNN from here.</p>', NULL, '0000-00-00', '0000-00-00', '', 33, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'S', 'N', 0),
(47, 0, 'menu', 'Servicios', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 36, 0, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(48, 0, 'menu', 'Noticias', '', '&nbsp;', '', NULL, '0000-00-00', '0000-00-00', '', 37, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(50, 0, 'artigos', 'Acerca de Nosotros', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 34, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'N', 'N', 0),
(51, 0, 'artigos', 'Valores / Visión / Misión', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 34, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 2, '', NULL, NULL, 'N', 'N', 0),
(52, 0, 'artigos', 'Profesionales', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 34, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 3, '', NULL, NULL, 'N', 'N', 0),
(53, 0, 'artigos', 'Entorno', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 34, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 4, '', NULL, NULL, 'N', 'N', 0),
(54, 0, 'artigos', 'Contáctenos', '', '&nbsp;', '<!--CTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dt-->\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"1\" align=\"center\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"top\" width=\"1\">\r\n            <table height=\"303\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><span style=\"color: #808080\"><strong>&nbsp;</strong><strong><font size=\"2\">DADOS PESSOAIS</font></strong></span></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\" height=\"6\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"7\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Nombre</font></span></span></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"nome\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblEmail\"><span id=\"LblEndereco\">Direcc&iacute;&oacute;n</span></span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Endere&ccedil;o\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblBairro\">\r\n                        <div id=\"result_box\" dir=\"ltr\">Vecindario</div>\r\n                        </span></font></strong></font></td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Bairro\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblCidade\">\r\n                        <div id=\"result_box\" dir=\"ltr\">Ciudad</div>\r\n                        </span></font></strong></font></td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"cidade\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblEstado\">\r\n                        <div id=\"result_box\" dir=\"ltr\">Estado</div>\r\n                        </span></font></strong></font></td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Estado\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span class=\"fonteContato\"><span id=\"LblCEP\">CEP</span></span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"CEP\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblTelefone\">Tel&eacute;fono</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Fone\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">\r\n                        <div id=\"result_box\" dir=\"ltr\">M&oacute;vil</div>\r\n                        </font></span></span></strong></td>\r\n                        <td><input size=\"60\" name=\"Celular\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblFax\">Fax</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Fax\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"22\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">Email</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"E-mail\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\"><span style=\"color: #808080\"><strong><font size=\"2\">\r\n                        <div id=\"result_box\" dir=\"ltr\">MENSAJE</div>\r\n                        </font></strong></span></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"12\" cols=\"82\" name=\"Mensagem\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <p align=\"center\"><strong><input class=\"button\" type=\"submit\" name=\"Enviar\" value=\"Enviar\" /></strong></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p><font color=\"#808080\"><strong><br />\r\n<br />\r\n</strong></font></p>', NULL, '0000-00-00', '0000-00-00', '', 38, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, '', '', '', 'N', 'S', 0),
(55, 0, 'artigos', 'Chat', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 38, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 2, '', NULL, NULL, 'N', 'N', 0),
(56, 0, 'artigos', 'Mapa de Situación', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 38, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 3, '', NULL, NULL, 'N', 'N', 0);
INSERT INTO `conteudo` (`conteudo_id`, `conteudo_id_pai`, `conteudo_tipo`, `conteudo_titulo`, `conteudo_fonte`, `conteudo_chamada`, `conteudo_texto`, `texto_buscar`, `conteudo_datainicio`, `conteudo_datafim`, `conteudo_expira`, `menu_id`, `edicao_id`, `destaque`, `sistema`, `conteudo_ordem`, `conteudo_id_sucesso`, `conteudo_id_falhou`, `endereco_origem`, `numero_origem`, `datahora`, `ordem`, `newsletter_ecomm_produtos`, `msg_sucesso`, `msg_erro`, `conteudo_destaque`, `conteudo_formmail`, `conteudo_comentar`) VALUES
(57, 0, 'artigos', 'Oportunidad', '', '&nbsp;', '<p><!--CTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dt--></p>\r\n<p align=\"center\"><span style=\"color: #808080\"><strong>Voc&ecirc; est&aacute; interessado em fazer parte da nossa equipe? <br />\r\n</strong></span></p>\r\n<table cellspacing=\"0\" cellpadding=\"0\" width=\"1\" align=\"center\" border=\"0\">\r\n    <tbody>\r\n        <tr>\r\n            <td valign=\"top\" width=\"1\">\r\n            <table height=\"303\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><span style=\"color: #808080\"><strong>&nbsp;&nbsp;</strong><strong><font size=\"2\">1.&nbsp;DADOS PESSOAIS</font></strong></span></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\" height=\"6\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"7\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">\r\n                        <div id=\"result_box\" dir=\"ltr\">Nombre</div>\r\n                        </font></span></span></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"nome\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Edad</strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Idade\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>Sexo</strong></font></span></span></strong></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Sexo\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblEmail\"><span id=\"LblEndereco\">Direcci&oacute;n</span></span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Endere&ccedil;o\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblBairro\">Bairro</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Bairro\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblCidade\">Vecindario</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"cidade\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768?89\"><span id=\"LblEstado\">Estado</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Estado\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span class=\"fonteContato\"><span id=\"LblCEP\">CEP</span></span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"CEP\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblTelefone\">Tel&eacute;fono</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Telefone\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"25\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\"><span id=\"LblFax\">Fax</span></font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"Fax\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"22\">\r\n                        <p align=\"left\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">Email</font></strong></font></p>\r\n                        </td>\r\n                        <td>\r\n                        <p align=\"left\"><input size=\"60\" name=\"E-mail\" type=\"text\" /></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp;</font><span style=\"color: #808080\"><font size=\"2\">2.&nbsp;PROP&Oacute;SITO</font></span></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"80\" name=\"OBJETIVO\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp;</font><span style=\"color: #808080\"><font size=\"2\">3.&nbsp;CALIFICACI&Oacute;N</font></span></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"80\" name=\"QUALIFICA&Ccedil;&Atilde;O\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p ali?n=\"left\"><strong><font color=\"#003399\"><font size=\"2\">&nbsp; </font><span style=\"color: #808080\"><font size=\"2\">4.&nbsp;FORMACI&Oacute;N PROFESIONAL </font></span></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"80\" name=\"FORMA&Ccedil;&Atilde;O ESCOLAR\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"47\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><span style=\"color: #808080\"><strong>&nbsp;&nbsp;&nbsp;<font size=\"2\">5.&nbsp;CURSOS ADICIONALES</font></strong></span></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"80\" name=\"CUROS COMPLEMENTARES\"></textarea> </font></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"131\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <p align=\"left\"><strong><font color=\"#808080\">&nbsp;&nbsp; </font><span style=\"color: #808080\"><font size=\"2\">6.&nbsp;EXPERIENCIA</font></span></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\" height=\"6\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"7\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Compa&ntilde;&iacute;a</font></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Empresa\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>\r\n                        <div id=\"result_box\" dir=\"ltr\">Admisi&oacute;n</div>\r\n                        </strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Admiss&atilde;o\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>\r\n                        <div id=\"result_box\" dir=\"ltr\">Salida</div>\r\n                        </strong></font></span></span></strong></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Sa&iacute;da\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign=\"top\" height=\"25\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">\r\n                        <div id=\"result_box\" dir=\"ltr\">Funci&oacute;n</div>\r\n                        </font></strong></font></td>\r\n                        <td>\r\n                        <p align=\"left\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"60\" name=\"Fun&ccedil;&atilde;o\"></textarea> </font></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"88\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\"13\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">?ompa&ntilde;&iacute;a</font></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Empresa 2\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>\r\n                        <div id=\"result_box\" dir=\"ltr\">Admisi&oacute;n</div>\r\n                        </strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Admiss&atilde;o 2\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>\r\n                        <div id=\"result_box\" dir=\"ltr\">Salida</div>\r\n                        </strong></font></span></span></strong></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Sa&iacute;da 2\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign=\"top\" height=\"25\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">\r\n                        <div id=\"result_box\" dir=\"ltr\">Funci&oacute;n</div>\r\n                        </font></strong></font></td>\r\n                        <td>\r\n                        <p align=\"left\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"60\" name=\"Fun&ccedil;&atilde;o 2\"></textarea> </font></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"88\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\"13\"><strong><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Compa&ntilde;&iacute;a</font></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Empresa 3\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>\r\n                        <div id=\"result_box\" dir=\"ltr\">Admisi&oacute;n</div>\r\n                        </strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Admiss&atilde;o 3\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>\r\n                        <div id=\"result_box\" dir=\"ltr\">Salida</div>\r\n                        </strong></font></span></span></strong></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Sa&iacute;da 3\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td valign=\"top\" height=\"25\"><font face=\"Arial, Helvetica, sans-serif\" size=\"1\"><strong><font color=\"#768089\">\r\n                        <div id=\"result_box\" dir=\"ltr\">Funci&oacute;n</div>\r\n                        </font></strong></font></td>\r\n                        <td>\r\n                        <p align=\"left\"><font color=\"#768089\"><textarea rows=\"5\" cols=\"60\" name=\"Fun&ccedil;&atilde;o 3\"></textarea> </font></p>\r\n                        </td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"81\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td bgcolor=\"#eaeaee\" colspan=\"2\" height=\"30\">\r\n                        <? align=\"left\"><strong><font color=\"#003399\"><font size=\"2\"><font color=\"#808080\">&nbsp;</font></font><span style=\"color: #808080\"><font size=\"2\"> 7. REFERENCIAS PERSONALES</font></span></font></strong></p>\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td colspan=\"2\" height=\"6\">&nbsp;</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td height=\"7\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Nombre</font></span></span></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Refer&ecirc;ncia - Nome1\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>\r\n                        <div id=\"result_box\" dir=\"ltr\">Tel&eacute;fono</div>\r\n                        </strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Refer&ecirc;ncia - Telefone 1\" type=\"text\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"38\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\"13\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Nombre</font></span></span></font></span></span></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Refer&ecirc;ncia - Nome2\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>\r\n                        <div id=\"result_box\" dir=\"ltr\">Tel&eacute;fono</div>\r\n                        </strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Refer&ecirc;ncia - Telefone 2\" type=\"text\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <table height=\"38\" cellspacing=\"0\" cellpadding=\"0\" width=\"430\" align=\"center\" summary=\"\" border=\"0\">\r\n                <tbody>\r\n                    <tr>\r\n                        <td height=\"13\"><strong><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\">Nombre</font></span></span></font></span></span></strong></td>\r\n                        <td width=\"360\"><input size=\"60\" name=\"Refer&ecirc;ncia - Nome3\" type=\"text\" /></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td width=\"106\" height=\"25\"><span class=\"style1\"><span id=\"LblNome\"><font face=\"Arial, Helvetica, sans-serif\" color=\"#768089\" size=\"1\"><strong>\r\n                        <div id=\"result_box\" dir=\"ltr\">Tel&eacute;fono</div>\r\n                        </strong></font></span></span></td>\r\n                        <td width=\"360\" height=\"1\"><input size=\"60\" name=\"Refer&ecirc;ncia - Telefone 3\" type=\"text\" /></td>\r\n                    </tr>\r\n                </tbody>\r\n            </table>\r\n            <br />\r\n            <br />\r\n            <p align=\"center\"><strong><input class=\"button\" type=\"submit\" name=\"Enviar\" value=\"Enviar\" /> </strong></p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<p>&nbsp;&nbsp;</p>', NULL, '0000-00-00', '0000-00-00', '', 38, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 4, '', NULL, NULL, 'N', 'N', 0),
(59, 0, 'menu', 'Productos / Servicios', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 40, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(60, 0, 'menu', 'Productos / Servicios', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 41, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(58, 0, 'menu', 'Productos / Servicios', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 39, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(61, 0, 'menu', 'Productos / Servicios', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 42, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(63, 0, 'menu', 'Restricted', '', '&nbsp;', '<p>Restricted</p>', NULL, '0000-00-00', '0000-00-00', '', 44, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(64, 0, 'menu', 'Zona restringida', '', '&nbsp;', '<p>Zona restringida</p>', NULL, '0000-00-00', '0000-00-00', '', 45, 3, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(71, 0, 'artigos', 'Environment', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 28, 2, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 4, '', NULL, NULL, 'N', 'N', 0),
(73, 0, 'menu', 'Menu de cont. e/ou prod.', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 47, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(72, 0, 'menu', 'Menu de cont. e/ou prod.', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 46, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(74, 0, 'menu', 'Menu de cont. e/ou prod.', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 48, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(75, 0, 'menu', 'Menu de cont. e/ou prod.', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 49, 0, '', 'ecomm', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(97, 0, 'texto_cadastro', '', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 0, 0, '', '', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(98, 0, 'texto_cadastro', '', '', '', '', NULL, '0000-00-00', '0000-00-00', '', 0, 0, '', '', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0),
(116, 0, 'artigos', 'Sócios Administradores', '', '<p style=\"text-align: justify\"><span style=\"color: #800000\"><span style=\"font-size: small\"><span style=\"font-family: Verdana\"><strong>GUSTAVO BERTO RO&Ccedil;A</strong>, advogado formado pela PUC/PR, engenheiro civil formado pela UFPR, p&oacute;s-graduado em Direito Tribut&aacute;rio pela Faculdade Curitiba e em Direito Imobili&aacute;rio Empresarial pela PUC/PR; participou de v&aacute;rios cursos a respeito de avalia&ccedil;&otilde;es imobili&aacute;rias e per&iacute;cias judiciais. Como s&oacute;cio administrador do escrit&oacute;rio Berto &amp; Ghebur coordena o atendimento do segmento imobili&aacute;rio.</span></span></span></p>\r\n<p><span style=\"color: #800000\"><span style=\"font-size: small\"><span style=\"font-family: Verdana\"><strong>GLAUCIUS GHEBUR</strong>, advogado formado pela PUC/PR, m&eacute;dico veterin&aacute;rio formado pela UFPR. Como s&oacute;cio administrador do escrit&oacute;rio Berto &amp; Ghebur exerce atividades nas causas c&iacute;veis e atendimento empresarial. </span></span></span></p>\r\n<p style=\"text-align: justify\">&nbsp;</p>\r\n<p style=\"text-align: justify\">&nbsp;</p>\r\n<p>&nbsp;</p>', '<p style=\"text-align: justify\">&nbsp;</p>\r\n<hr />\r\n<ul>\r\n    <li>\r\n    <p style=\"text-align: justify\">&nbsp;</p>\r\n    <span style=\"font-size: medium;\">\r\n    <p style=\"text-align: justify;\"><span style=\"font-family: Verdana;\"><strong>GUSTAVO BERTO RO&Ccedil;A</strong>, advogado formado pela PUC/PR, engenheiro civil formado pela UFPR, p&oacute;s-graduado em Direito Tribut&aacute;rio pela Faculdade Curitiba e em Direito Imobili&aacute;rio Empresarial pela PUC/PR; participou de v&aacute;rios cursos a respeito de avalia&ccedil;&otilde;es imobili&aacute;rias e per&iacute;cias judiciais. Como s&oacute;cio administrador do escrit&oacute;rio Berto &amp; Ghebur coordena o atendimento do segmento imobili&aacute;rio.</span><span style=\"font-size: medium;\"><br />\r\n    </span><span style=\"font-size: medium;\">&nbsp;</span></p>\r\n    </span></li>\r\n</ul>\r\n<hr />\r\n<p><span style=\"font-size: medium;\">&nbsp;</span></p>\r\n<ul>\r\n    <li style=\"text-align: justify\"><span style=\"font-size: medium;\"><span style=\"font-family: Verdana;\"><strong>GLAUCIUS GHEBUR</strong>, advogado formado pela PUC/PR, m&eacute;dico veterin&aacute;rio formado pela UFPR. Como s&oacute;cio administrador do escrit&oacute;rio Berto &amp; Ghebur exerce atividades nas causas c&iacute;veis e atendimento empresarial. </span></span></li>\r\n</ul>\r\n<p><span style=\"font-size: medium;\">&nbsp;</span></p>\r\n<hr />', NULL, '2009-08-12', '0000-00-00', '', 56, 1, '', 'website', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, '', NULL, NULL, 'N', 'N', 0),
(120, 0, 'ocultos', 'Saiba mais sobre direito civil', '', '', '<p>&nbsp;a fda sdfasd</p>', NULL, '0000-00-00', '0000-00-00', '', 0, 1, '', '', NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, NULL, 'N', 'N', 0);

-- --------------------------------------------------------

--
-- Table structure for table `conteudo_arquivo`
--

CREATE TABLE `conteudo_arquivo` (
  `conteudo_id` int(11) NOT NULL DEFAULT '0',
  `arquivo_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conteudo_arquivo`
--

INSERT INTO `conteudo_arquivo` (`conteudo_id`, `arquivo_id`) VALUES
(106, 50),
(106, 59),
(106, 69),
(107, 48),
(114, 53),
(114, 56),
(114, 57);

-- --------------------------------------------------------

--
-- Table structure for table `conteudo_cadastro`
--

CREATE TABLE `conteudo_cadastro` (
  `conteudo_id` int(10) UNSIGNED NOT NULL,
  `id_cadastro` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conteudo_cadastro`
--

INSERT INTO `conteudo_cadastro` (`conteudo_id`, `id_cadastro`) VALUES
(62, 4);

-- --------------------------------------------------------

--
-- Table structure for table `conteudo_cliente`
--

CREATE TABLE `conteudo_cliente` (
  `idconteudo_cliente` int(10) UNSIGNED NOT NULL,
  `conteudo_id` int(10) UNSIGNED DEFAULT NULL,
  `cadastro_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conteudo_cliente`
--

INSERT INTO `conteudo_cliente` (`idconteudo_cliente`, `conteudo_id`, `cadastro_id`) VALUES
(1, 100, 13);

-- --------------------------------------------------------

--
-- Table structure for table `conteudo_edicao`
--

CREATE TABLE `conteudo_edicao` (
  `conteudo_id` int(11) NOT NULL DEFAULT '0',
  `edicao_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_carrinho`
--

CREATE TABLE `ecomm_carrinho` (
  `id_carrinho` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL DEFAULT '0',
  `id_cadastro` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(255) NOT NULL DEFAULT '',
  `endereco` varchar(255) NOT NULL DEFAULT '',
  `bairro` varchar(255) NOT NULL DEFAULT '',
  `cep` varchar(255) NOT NULL DEFAULT '',
  `capital` enum('','Capital','Interior') NOT NULL DEFAULT '',
  `id_cidade` int(11) NOT NULL DEFAULT '0',
  `cidade` varchar(255) NOT NULL DEFAULT '',
  `id_estado` int(11) NOT NULL DEFAULT '0',
  `estado` varchar(255) NOT NULL DEFAULT '',
  `fone` varchar(255) NOT NULL DEFAULT '',
  `fax` varchar(255) NOT NULL DEFAULT '',
  `pesototal` decimal(10,3) NOT NULL DEFAULT '0.000',
  `subtotal` decimal(14,2) NOT NULL DEFAULT '0.00',
  `frete` decimal(14,2) NOT NULL DEFAULT '0.00',
  `situacao` enum('carrinho','pendente','entregue','cancelado') NOT NULL DEFAULT 'carrinho',
  `pagamento` enum('DepÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³sito BancÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡rio','Contra Entrega','Boleto BancÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡rio','CartÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£o de CrÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â©dito') DEFAULT NULL,
  `valorpago` decimal(14,2) NOT NULL DEFAULT '0.00',
  `email` varchar(255) NOT NULL DEFAULT '',
  `solicitante` varchar(255) NOT NULL DEFAULT '',
  `ramo` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecomm_carrinho`
--

INSERT INTO `ecomm_carrinho` (`id_carrinho`, `id_cliente`, `id_cadastro`, `nome`, `endereco`, `bairro`, `cep`, `capital`, `id_cidade`, `cidade`, `id_estado`, `estado`, `fone`, `fax`, `pesototal`, `subtotal`, `frete`, `situacao`, `pagamento`, `valorpago`, `email`, `solicitante`, `ramo`) VALUES
(11, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(12, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(13, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(14, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(15, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(16, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(17, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(18, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(19, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(20, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(21, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(22, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(23, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(24, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(25, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(26, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(27, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(28, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(29, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(30, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(31, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(32, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(33, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(34, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(35, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(36, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(37, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(38, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(39, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(40, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(41, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(42, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(43, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(44, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(45, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(46, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(47, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(48, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(49, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(50, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(51, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(52, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(53, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(54, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(55, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(56, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(57, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(58, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(59, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(60, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(61, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(62, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(63, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(64, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(65, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(66, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(67, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(68, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(69, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(70, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(71, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', ''),
(72, 0, 0, '', '', '', '', '', 0, '', 0, '', '', '', 0.000, 0.00, 0.00, 'carrinho', NULL, 0.00, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_carrinho_item`
--

CREATE TABLE `ecomm_carrinho_item` (
  `id_carrinho_item` int(11) NOT NULL,
  `id_carrinho` int(11) NOT NULL DEFAULT '0',
  `id_produto` int(11) NOT NULL DEFAULT '0',
  `quantidade` int(11) NOT NULL DEFAULT '0',
  `preco` decimal(14,2) NOT NULL DEFAULT '0.00',
  `observacao` text NOT NULL,
  `serigrafia` char(1) DEFAULT NULL,
  `cores` char(2) DEFAULT NULL,
  `cliche` char(1) DEFAULT NULL,
  `bordado` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecomm_carrinho_item`
--

INSERT INTO `ecomm_carrinho_item` (`id_carrinho_item`, `id_carrinho`, `id_produto`, `quantidade`, `preco`, `observacao`, `serigrafia`, `cores`, `cliche`, `bordado`) VALUES
(62, 58, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(63, 59, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(64, 60, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(65, 61, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(66, 62, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(67, 63, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(68, 64, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(69, 65, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(70, 66, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(71, 67, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(72, 68, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(73, 69, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(74, 70, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(75, 71, 9, 1, 0.00, '', NULL, NULL, NULL, NULL),
(76, 72, 9, 1, 0.00, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_destaque`
--

CREATE TABLE `ecomm_destaque` (
  `id_destaque` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL DEFAULT '',
  `dt_inicio` date NOT NULL DEFAULT '0000-00-00',
  `dt_fim` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_destaque_produto`
--

CREATE TABLE `ecomm_destaque_produto` (
  `id_destaque` int(11) NOT NULL DEFAULT '0',
  `id_produto` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_produto`
--

CREATE TABLE `ecomm_produto` (
  `id_produto` int(11) NOT NULL,
  `pertence` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(255) NOT NULL DEFAULT '',
  `chamada` text NOT NULL,
  `texto` text NOT NULL,
  `destaque` char(1) NOT NULL DEFAULT '',
  `ordem` int(11) NOT NULL DEFAULT '0',
  `peso` decimal(10,3) NOT NULL DEFAULT '0.000',
  `preconormal` decimal(14,2) NOT NULL DEFAULT '0.00',
  `precopromocao` decimal(14,2) NOT NULL DEFAULT '0.00',
  `foto` varchar(255) NOT NULL DEFAULT '',
  `script_externo` text NOT NULL,
  `id_usuario` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_produto_arquivo`
--

CREATE TABLE `ecomm_produto_arquivo` (
  `id_produto` int(11) NOT NULL DEFAULT '0',
  `arquivo_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ecomm_produto_parametro`
--

CREATE TABLE `ecomm_produto_parametro` (
  `id_produto` int(11) NOT NULL DEFAULT '0',
  `id_parametro` int(11) NOT NULL DEFAULT '0',
  `seq` tinyint(4) NOT NULL DEFAULT '0',
  `valor` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `edicao`
--

CREATE TABLE `edicao` (
  `edicao_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL DEFAULT '',
  `ordem` int(11) NOT NULL DEFAULT '0',
  `cor` varchar(6) NOT NULL DEFAULT '',
  `datainicio` date NOT NULL DEFAULT '0000-00-00',
  `arquivo` text NOT NULL,
  `arquivo2` text NOT NULL,
  `arquivo3` text NOT NULL,
  `texto` text,
  `fonte` text,
  `arquivo4` text,
  `edicao_titulo` text,
  `url_arquivo4` varchar(255) DEFAULT NULL,
  `arquivo5` text,
  `arquivo2_par` varchar(10) DEFAULT NULL,
  `arquivo4_par` varchar(10) DEFAULT NULL,
  `arquivo5_par` varchar(10) DEFAULT NULL,
  `arquivo5_url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edicao`
--

INSERT INTO `edicao` (`edicao_id`, `nome`, `ordem`, `cor`, `datainicio`, `arquivo`, `arquivo2`, `arquivo3`, `texto`, `fonte`, `arquivo4`, `edicao_titulo`, `url_arquivo4`, `arquivo5`, `arquivo2_par`, `arquivo4_par`, `arquivo5_par`, `arquivo5_url`) VALUES
(1, 'Português', 1, '#', '0000-00-00', '20090731153112000000-portugues.jpg', '20090521175447000000-problema_plesk.jpg', 'copyhight.jpg', 'R. Jerônimo Durski, 850 | Batel | Curitiba | PR\r\nCEP: 80.730-290 | bg@bertoghebur.com.br', 'FFFFFF', '20100730180102000000-bertobanner copy.jpg', 'Berto Ghebur - Advogados Associados', 'edicao_id=1&menu_id=3&id=3', '20090731182706000000-banner_esquerdo.jpg', '', '', '', 'edicao_id=1&menu_id=7&id=26'),
(2, 'English', 2, '#', '0000-00-00', '20090731152944000000-ingles.png', 'topo_logomarca.jpg', 'copyhight.jpg', 'Address, number | zip code | Neighborhood | City \r\nPhone | Email', 'FFFFFF', '20100826113124000000-bertobanner copy.jpg', 'Evonline', '', 'banner_esquerdo.jpg', '', '', '', ''),
(3, 'Español', 3, '#', '0000-00-00', '20090731153007000000-espanhol.jpg', 'topo_logomarca.jpg', 'copyhight.jpg', 'Dirección | Código postal | Barrio | Ciudad \r\nTeléfono | Correo electrónico', 'FFFFFF', '20100826113211000000-bertobanner copy.jpg', ':: EVONLINE ::', '', 'banner_esquerdo.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `enquete`
--

CREATE TABLE `enquete` (
  `enquete_id` int(10) UNSIGNED NOT NULL,
  `enquete_pergunta` varchar(255) DEFAULT NULL,
  `enquete_texto` text,
  `enquete_data` datetime DEFAULT NULL,
  `enquete_resultado` enum('S','N') DEFAULT NULL,
  `enquete_layout` int(10) UNSIGNED DEFAULT NULL,
  `enquete_publicado` enum('S','N') DEFAULT NULL,
  `enquete_idioma` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquete`
--

INSERT INTO `enquete` (`enquete_id`, `enquete_pergunta`, `enquete_texto`, `enquete_data`, `enquete_resultado`, `enquete_layout`, `enquete_publicado`, `enquete_idioma`) VALUES
(1, 'Como você encontrou nosso site?', '', '2009-08-03 00:00:00', 'S', 1, 'S', 1),
(2, 'How did you find us?', '', '2008-10-08 00:00:00', 'S', 2, 'S', 2),
(3, '¿Cómo encontrar nuestro sitio web?', '', '2008-10-08 00:00:00', 'S', 1, 'S', 3);

-- --------------------------------------------------------

--
-- Table structure for table `enquete_opcoes`
--

CREATE TABLE `enquete_opcoes` (
  `enquete_opcao_id` int(10) UNSIGNED NOT NULL,
  `enquete_id` int(10) UNSIGNED NOT NULL,
  `enquete_opcao_valor` int(10) UNSIGNED DEFAULT '0',
  `enquete_opcao_texto` varchar(255) DEFAULT NULL,
  `enquete_opcao_ordem` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquete_opcoes`
--

INSERT INTO `enquete_opcoes` (`enquete_opcao_id`, `enquete_id`, `enquete_opcao_valor`, `enquete_opcao_texto`, `enquete_opcao_ordem`) VALUES
(1, 1, 20, 'Buscador', 1),
(2, 1, 6, 'Folder / Anúncio', 2),
(4, 1, 12, 'Indicação', 3),
(5, 1, 4, 'Consultor de vendas', 4),
(6, 2, 1, 'Internet search', 1),
(7, 2, 0, 'Merchandising', 2),
(8, 2, 0, 'Selling consulters', 3),
(9, 2, 0, 'Friend´s indication', 4),
(10, 3, 0, 'Buscador', 1),
(11, 3, 0, 'Propaganda', 2),
(12, 3, 0, 'Indicación', 3),
(13, 3, 0, 'Vendedores', 4);

-- --------------------------------------------------------

--
-- Table structure for table `idioma_traducao`
--

CREATE TABLE `idioma_traducao` (
  `idioma_traducao_id` int(10) UNSIGNED NOT NULL,
  `idioma_nome` varchar(255) DEFAULT NULL,
  `idioma_email` varchar(255) DEFAULT NULL,
  `idioma_buscar` varchar(255) DEFAULT NULL,
  `idioma_newsreceba` varchar(255) DEFAULT NULL,
  `idioma_verresultado` varchar(255) DEFAULT NULL,
  `idioma_votar` varchar(255) DEFAULT NULL,
  `idioma_comprar` varchar(255) DEFAULT NULL,
  `idioma_comentarios` varchar(255) DEFAULT NULL,
  `idioma_indiquecomentario` varchar(255) DEFAULT NULL,
  `idioma_comentar` varchar(255) DEFAULT NULL,
  `idioma_deixecomentarios` varchar(255) DEFAULT NULL,
  `idioma_obrignaoexibido` varchar(255) DEFAULT NULL,
  `idioma_digiteocodigo` varchar(255) DEFAULT NULL,
  `idioma_emailinvalido` varchar(255) DEFAULT NULL,
  `idioma_codigoinvalido` varchar(255) DEFAULT NULL,
  `idioma_necessariopreencher` varchar(255) DEFAULT NULL,
  `idioma_comentariocadastrado` varchar(255) DEFAULT NULL,
  `idioma_comentariocadastradoaprovacao` varchar(255) DEFAULT NULL,
  `idioma_conteudorestrito` varchar(255) DEFAULT NULL,
  `idioma_informeusuario` varchar(255) DEFAULT NULL,
  `idioma_login` varchar(255) DEFAULT NULL,
  `idioma_senha` varchar(255) DEFAULT NULL,
  `idioma_entrar` varchar(255) DEFAULT NULL,
  `idioma_verificardados` varchar(255) DEFAULT NULL,
  `idioma_usuariosempermissao` varchar(255) DEFAULT NULL,
  `idioma_necessariopreencher_2` varchar(255) DEFAULT NULL,
  `idioma_logininvalido` varchar(255) DEFAULT NULL,
  `idioma_ola` varchar(255) DEFAULT NULL,
  `idioma_efetuarlogout` varchar(255) DEFAULT NULL,
  `idioma_logoutefetuadocomsucesso` varchar(255) DEFAULT NULL,
  `idioma_arquivosanexos` varchar(255) DEFAULT NULL,
  `idioma_home` varchar(255) DEFAULT NULL,
  `idioma_contato` varchar(255) DEFAULT NULL,
  `idioma_rss` varchar(255) DEFAULT NULL,
  `idioma_mapasite` varchar(255) DEFAULT NULL,
  `idioma_caracteristicas` varchar(255) DEFAULT NULL,
  `idioma_adicionarlista` varchar(255) DEFAULT NULL,
  `idioma_adicioneproduto` varchar(255) DEFAULT NULL,
  `idioma_cod` varchar(255) DEFAULT NULL,
  `idioma_qnt` varchar(255) DEFAULT NULL,
  `idioma_valor` varchar(255) DEFAULT NULL,
  `idioma_totaldacompra` varchar(255) DEFAULT NULL,
  `idioma_vocetem` varchar(255) DEFAULT NULL,
  `idioma_produtocarrinho` varchar(255) DEFAULT NULL,
  `idioma_avancar` varchar(255) DEFAULT NULL,
  `idioma_voltar` varchar(255) DEFAULT NULL,
  `idioma_diminuirfonte` varchar(255) DEFAULT NULL,
  `idioma_aumentarfonte` varchar(255) DEFAULT NULL,
  `idioma_indicarparaumamigo` varchar(255) DEFAULT NULL,
  `idioma_imprimiresteconteudo` varchar(255) DEFAULT NULL,
  `idioma_formularioenviado` varchar(255) DEFAULT NULL,
  `idioma_carregando` varchar(255) DEFAULT NULL,
  `idioma_segunda` varchar(255) DEFAULT NULL,
  `idioma_terca` varchar(255) DEFAULT NULL,
  `idioma_quarta` varchar(255) DEFAULT NULL,
  `idioma_quinta` varchar(255) DEFAULT NULL,
  `idioma_sexta` varchar(255) DEFAULT NULL,
  `idioma_sabado` varchar(255) DEFAULT NULL,
  `idioma_domingo` varchar(255) DEFAULT NULL,
  `idioma_edicao_id` int(10) UNSIGNED DEFAULT NULL,
  `idioma_cadastrar` varchar(255) DEFAULT NULL,
  `idioma_avancaaaaar` varchar(255) DEFAULT NULL,
  `idaioma_avancar2` varchar(255) DEFAULT NULL,
  `idioma_nenhumencontrado` varchar(255) DEFAULT NULL,
  `idioma_contencontrados` varchar(255) DEFAULT NULL,
  `idioma_observacoes` varchar(255) DEFAULT NULL,
  `idioma_newscadsucesso` varchar(255) DEFAULT NULL,
  `idioma_votocadsucesso` varchar(255) DEFAULT NULL,
  `idioma_newsemailcad` varchar(255) DEFAULT NULL,
  `idioma_vocejavotou` varchar(255) DEFAULT NULL,
  `idioma_envieamigo` varchar(255) DEFAULT NULL,
  `idioma_seunome` varchar(255) DEFAULT NULL,
  `idioma_seuemail` varchar(255) DEFAULT NULL,
  `idioma_nomeamigo` varchar(255) DEFAULT NULL,
  `idioma_emailamigo` varchar(255) DEFAULT NULL,
  `idioma_assunto` varchar(255) DEFAULT NULL,
  `idioma_ampliar` varchar(255) DEFAULT NULL,
  `idioma_imagemcont` varchar(255) DEFAULT NULL,
  `idioma_fechar` varchar(255) DEFAULT NULL,
  `idioma_menusuperior` varchar(255) DEFAULT NULL,
  `idioma_menulateral` varchar(255) DEFAULT NULL,
  `idioma_rssdestesite` varchar(255) DEFAULT NULL,
  `idioma_rssconteudos` varchar(255) DEFAULT NULL,
  `idioma_rssprodutos` varchar(255) DEFAULT NULL,
  `idioma_rsstexto` text,
  `idioma_pagseguro` text,
  `idioma_formulario` text,
  `idioma_emailform` varchar(255) DEFAULT NULL,
  `idioma_enviar` varchar(255) DEFAULT NULL,
  `idioma_msgcarrinho` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idioma_traducao`
--

INSERT INTO `idioma_traducao` (`idioma_traducao_id`, `idioma_nome`, `idioma_email`, `idioma_buscar`, `idioma_newsreceba`, `idioma_verresultado`, `idioma_votar`, `idioma_comprar`, `idioma_comentarios`, `idioma_indiquecomentario`, `idioma_comentar`, `idioma_deixecomentarios`, `idioma_obrignaoexibido`, `idioma_digiteocodigo`, `idioma_emailinvalido`, `idioma_codigoinvalido`, `idioma_necessariopreencher`, `idioma_comentariocadastrado`, `idioma_comentariocadastradoaprovacao`, `idioma_conteudorestrito`, `idioma_informeusuario`, `idioma_login`, `idioma_senha`, `idioma_entrar`, `idioma_verificardados`, `idioma_usuariosempermissao`, `idioma_necessariopreencher_2`, `idioma_logininvalido`, `idioma_ola`, `idioma_efetuarlogout`, `idioma_logoutefetuadocomsucesso`, `idioma_arquivosanexos`, `idioma_home`, `idioma_contato`, `idioma_rss`, `idioma_mapasite`, `idioma_caracteristicas`, `idioma_adicionarlista`, `idioma_adicioneproduto`, `idioma_cod`, `idioma_qnt`, `idioma_valor`, `idioma_totaldacompra`, `idioma_vocetem`, `idioma_produtocarrinho`, `idioma_avancar`, `idioma_voltar`, `idioma_diminuirfonte`, `idioma_aumentarfonte`, `idioma_indicarparaumamigo`, `idioma_imprimiresteconteudo`, `idioma_formularioenviado`, `idioma_carregando`, `idioma_segunda`, `idioma_terca`, `idioma_quarta`, `idioma_quinta`, `idioma_sexta`, `idioma_sabado`, `idioma_domingo`, `idioma_edicao_id`, `idioma_cadastrar`, `idioma_avancaaaaar`, `idaioma_avancar2`, `idioma_nenhumencontrado`, `idioma_contencontrados`, `idioma_observacoes`, `idioma_newscadsucesso`, `idioma_votocadsucesso`, `idioma_newsemailcad`, `idioma_vocejavotou`, `idioma_envieamigo`, `idioma_seunome`, `idioma_seuemail`, `idioma_nomeamigo`, `idioma_emailamigo`, `idioma_assunto`, `idioma_ampliar`, `idioma_imagemcont`, `idioma_fechar`, `idioma_menusuperior`, `idioma_menulateral`, `idioma_rssdestesite`, `idioma_rssconteudos`, `idioma_rssprodutos`, `idioma_rsstexto`, `idioma_pagseguro`, `idioma_formulario`, `idioma_emailform`, `idioma_enviar`, `idioma_msgcarrinho`) VALUES
(1, 'Nome', 'E-mail', 'Buscar', 'Cadastre-se e receba newsletter', 'Ver resultado', 'Votar', 'Comprar', 'Comentários', 'Comentário', 'Comentar', 'Deixe seu comentário', 'Obrigatório mas não será exibido', 'Digite o código informado na imagem acima', 'E-mail inválido!', 'Código de segurança inválido!', 'É necessário preencher todos os campos!', 'Comentário Cadastrado com sucesso!', 'Comentário Cadastrado com sucesso! Aguardando aprovação!', 'Conteúdo restrito', 'Informe seu usuário!', 'Login ', 'Senha', 'Entrar!', 'Verificando dados', 'Usuário sem permissão para acessar este conteúdo!', '', 'Login e/ou senha inválidos!', 'Olá,', '(Efetuar Logout)', 'Logout efetuado com sucesso!', 'Arquivos anexos', 'Home', 'Contato', 'RSS', 'Mapa do Site', 'Características', 'Adicionar à lista', 'Adicione esse produto ao carrinho de orçamento ', 'Cód', 'Qnt', 'Valor', 'Total da compra', 'Você tem', 'Produto no carrinho', 'Avançar', 'Voltar', 'Diminuir fonte', 'Aumentar fonte', 'Indicar para um amigo', 'Imprimir este conteúdo', 'Formulário enviado com sucesso!', 'Carregando...', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo', 1, 'Cadastrar', '', '', 'Nenhum conteúdo e/ou produto cadastrado', 'Conteúdos encontrados', 'Observações', 'Cadastro efetuado com sucesso', 'Voto efetuado com sucesso', 'Seu e-mail consta em nosso cadastro!', 'Você já votou', 'Envie para um amigo', 'Seu nome', 'Seu e-mail', 'Nome do amigo', 'E-mail do amigo', 'Assunto', 'Ampliar', 'Imagem', 'Fechar', 'Menu superior', 'Menu lateral', 'RSS deste site', '', '', '<p>RSS um padr&atilde;o de recep&ccedil;&atilde;o de not&iacute;cias via internet. Atrav&eacute;s de softwares chamados de leitores de RSS, internautas podem se manter informados a respeito de assuntos determinados sem a necessidade de pesquisar na web: quando a not&iacute;cia surge, voc&ecirc; fica sabendo atrav&eacute;s de seu site, sem que voc&ecirc; tenha de navegar at&eacute; o site fonte. Este padr&atilde;o tornou-se muito popular, pois pr&aacute;tico e f&aacute;cil de ficar informado e transmitir informa&ccedil;&otilde;es a outros.</p>\r\n<p><strong>INSTALAR O PROGRAMA</strong><br />\r\nAntes de tudo, voc&ecirc; precisa de um programa que leia RSS. Estes programas s&atilde;o conhecidos como leitores de RSS ou agregadores. Abaixo sugerimos alguns para Windows; baixe o de sua prefer&ecirc;ncia e instale-o em seu computador.<br />\r\n<br />\r\n<strong>ADICIONAR FONTES</strong><br />\r\nLeitor de RSS instalado adicione suas fontes de not&iacute;cias (feeds) favoritas a ele. Na maioria dos programas, geralmente em ingl&ecirc;s, deve ser acionada a op&ccedil;&atilde;o &quot;Add new feed&quot;. Na janela que surge voc&ecirc; deve colar o endere&ccedil;o do RSS que deseja assinar. Voc&ecirc; encontra os endere&ccedil;os dos feeds desse site Online sempre no topo - um &iacute;cone de &quot;RSS&quot;. Para copiar esses endere&ccedil;os, clique sobre o &iacute;cone e no final da p&aacute;gina voc&ecirc; encontrar&aacute; os conte&uacute;dos dispon&iacute;veis. Clique com o bot&atilde;o direito e selecione a op&ccedil;&atilde;o &quot;copiar atalho&quot;.</p>\r\n<p><strong>DICAS</strong><br />\r\n<strong>Usu&aacute;rios de Internet Explorer: </strong><br />\r\nAo ver o &iacute;cone acima nas p&aacute;ginas desse site, acesse e clique sobre os links no final da p&aacute;gina com o bot&atilde;o direito e selecione a op&ccedil;&atilde;o &quot;copiar atalho&quot;. Ap&oacute;s, adicione o endere&ccedil;o copiado ao seu leitor de RSS favorito para assin&aacute;-lo e receber atualiza&ccedil;&otilde;es em tempo real.<br />\r\n<br />\r\n<strong>Usu&aacute;rios de Mozilla Firefox:</strong> <br />\r\nAo ver o &iacute;cone ao lado na barra de endere&ccedil;o de seu navegador, basta clicar sobre ele. O Firefox ir&aacute; mostrar a listagem de not&iacute;cias. Na vers&atilde;o 2, o Firefox permite que o usu&aacute;rio assine aquele RSS e receba automaticamente novas not&iacute;cias assim que elas surgirem.</p>\r\n<p><strong><em>Mozilla Firefox</em></strong><br />\r\nO navegador de c&oacute;digo aberto mais popular tem leitor de RSS integrado ao sistema de sites favoritos. Basta clicar no endere&ccedil;o do feed para visualiz&aacute;-lo ou inclu&iacute;-lo em um menu de &quot;live bookmarks&quot;. Gr&aacute;tis. Windows, Mac e Linux.</p>', '', '', '', 'Enviar', 'Orçamento enviado com sucesso!'),
(7, 'Nombre', 'E-mail', 'Búsqueda', 'Registrarse y obtener newslatter', 'Mostrar resultados', 'Votación', 'Comprar', 'Comentarios', 'Comentario', 'Comentario', 'Escribe tu comentario', 'Requerido, pero no se mostrará', 'Introduzca el código de información en la imagen de arriba', 'E-mail no válido!', 'Código de seguridad no válido!', 'Usted debe llenar todos los campos!', 'Comentario de registro éxito!', 'Comentario de registro éxito! En espera de aprobación!', 'Contenido restringido', 'Introduzca su nombre de usuario', 'Inicio de sesión', 'Contraseña', 'Entra!', 'Comprobación de datos', 'Usuario permiso para acceder a este contenido!', '', 'Nombre de usuario y contraseña inválida!', 'Hola,', '(Log Out)', 'Llevado a cabo con éxito!', 'Archivos adjuntos', 'Inicio', 'Contacto', 'RSS', 'Mapa del sitio', 'Características', 'Añadir a la lista', 'Añadir este producto al carrito de la compra de presupuesto', 'Cód', 'Ctd', 'Precio', 'Total compras', 'Usted tiene', 'Producto en carro', 'Siguiente', 'Espalda', 'Reducir fuente', 'Aumentar fuente', 'Proporcionar a un amigo', 'Imprimir este contenido', 'Formulario enviado con éxito!', 'Cargando...', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo', 3, 'Registro', '', '', 'Ningún producto encontrado', 'El contenido', 'Comentarios', 'Registro realizado con éxito', 'Votación realizada con éxito', 'Su dirección de correo electrónico está en nuestra base de datos!', 'Ya has votado', 'Enviar a un amigo', 'Su nombre', 'Su e-mail', 'Nombre Amigo', 'E-mail amigo', 'Tema', 'Ampliar', 'Cuadro', 'Cerrar', 'Comienzo de la página de menú', 'Menú lateral', 'RSS este sitio', '', '', '<div id=\"result_box\" dir=\"ltr\"><strong>RSS</strong> un patr&oacute;n de la recepci&oacute;n de noticias a trav&eacute;s de Internet. A trav&eacute;s de un software llamado lector de RSS, los usuarios de Internet pueden mantenerse informado acerca de ciertos temas sin tener que buscar en la web: cuando llega la noticia, usted aprender&aacute; a trav&eacute;s de su sitio sin tener que navegar a la p&aacute;gina web fuente . Este patr&oacute;n se ha convertido en muy populares, como pr&aacute;ctica y f&aacute;cil de estar informado y transmitir informaci&oacute;n a otras personas.&nbsp;<br />\r\n<br />\r\n<strong>Instalar el programa </strong><br />\r\nEn primer lugar, usted necesita un programa para leer RSS. Estos programas son conocidos como lectores RSS o agregadores. A continuaci&oacute;n le sugerimos algunos para Windows, la descarga de su elecci&oacute;n e instalar en su ordenador. <br />\r\n<br />\r\n<strong>A&ntilde;adir FUENTES </strong><br />\r\nRSS Reader instalado agregar sus fuentes de noticias (feeds) favorito para &eacute;l. En la mayor&iacute;a de los programas, generalmente en Ingl&eacute;s, en caso de que se active el bot&oacute;n &quot;A&ntilde;adir nueva alimentaci&oacute;n&quot;. En la ventana que aparece usted debe pegar la direcci&oacute;n que desee suscribirse al RSS. Usted puede encontrar las direcciones de los feeds que el Sitio Web en l&iacute;nea siempre en la parte superior - un icono de &quot;RSS&quot;. Para copiar estas direcciones, haga clic en el icono y al final de la p&aacute;gina que se encuentra el contenido disponible. Clic con el bot&oacute;n derecho y seleccione &quot;Copiar acceso directo&quot;.&nbsp;<br />\r\n&nbsp; <br />\r\n<strong>CONSEJOS </strong><br />\r\nLos usuarios de Internet Explorer: <br />\r\nCuando aparezca el icono de arriba en las p&aacute;ginas de este sitio web, acceda y haga clic en los enlaces en la parte inferior de la p&aacute;gina con el bot&oacute;n derecho del rat&oacute;n y seleccione &quot;Copiar acceso directo&quot;. A continuaci&oacute;n, a&ntilde;adir la direcci&oacute;n copiada a su lector de RSS favorito, para firmar y recibir actualizaciones en tiempo real. <br />\r\n<br />\r\nLos usuarios de Mozilla Firefox: <br />\r\nCuando vea el icono al lado de la barra de direcciones del navegador, simplemente haga clic sobre &eacute;l. Firefox se mostrar&aacute; una lista de historias. En la Versi&oacute;n 2, Firefox te permite se&ntilde;al de que RSS y recibir autom&aacute;ticamente las nuevas historias que puedan surgir. <br />\r\n<br />\r\nMozilla Firefox <br />\r\nLa fuente abierta del navegador es m&aacute;s popular lector de RSS del sistema integrado de sitios favoritos. Basta con hacer clic sobre la direcci&oacute;n de los piensos para verla o incluirlo en un men&uacute; de &quot;Live Bookmarks&quot;. Libre. Windows, Mac y Linux. <br />\r\nhttp://www.getfirefox.com <br />\r\n<br />\r\nMozilla Thunderbird <br />\r\nEl lector dedicado e-mail &quot;hermano&quot; de Firefox tiene el pleno apoyo de RSS - leer noticias que funciona como mensajes de correo electr&oacute;nico. Libre. Windows, Mac y Linux. <br />\r\nhttp://www.mozilla.com/thunderbird <br />\r\n<br />\r\nOpera <br />\r\nEl navegador m&aacute;s &quot;culto&quot; Web tambi&eacute;n tiene excelente soporte para RSS. Basta con hacer clic y firmar. Libre. Windows, Mac y Linux. <br />\r\nhttp://www.opera.com <br />\r\n<br />\r\nLector de feeds <br />\r\nBueno agregador para los usuarios de Internet Explorer, ligero, r&aacute;pido y funcional. Libre. Windows. <br />\r\nhttp://www.feedreader.com <br />\r\n<br />\r\nGoogle Reader <br />\r\n&iquest;Quieres leer tus feeds sin necesidad de instalar ning&uacute;n software, directamente desde el navegador - lo que sea? Ir a Google Reader y habla todos en un interfaz web. Libre. Online. <br />\r\nhttp://reader.google.com</div>', '', '', '', 'Enviar', ''),
(9, 'Name', 'Email', 'Search', 'Signup News', 'View', 'Vote', 'Buy', 'Comments', 'Comment', 'Comment', 'Leave your comment', 'Required but will not show', 'Enter the code information in the image above', 'Invalid E-mail!', 'Security code invalid!', 'You must fill in all fields!', 'Comments Registered successfully!', 'Comments Registered successfully! Waiting approval!', 'Restricted Content', 'Enter your user!', 'Login', 'Passaword', 'Enter!', 'Checking data', 'User without permission to access this content!', '', 'Login and / or password invalid!', 'Hello, ', '(Logout)', 'Carried out with success!', 'Attachments', 'Home', 'Contact', 'RSS', 'Site Map', 'Features', 'Add in your list', 'Add this product to cart from budget', 'COD', 'QNT', 'Price', 'Total purchase', 'You have', 'Product(s) on trolley', 'Next', 'Back', '- Font', '+ Font', 'Send to a friend', 'Print this content', 'Form successfully sent!', 'Loading...', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday', 2, 'Signup', '', '', 'No product found', 'Content found', 'Remarks', 'Registration performed successfully', 'Voting done successfully', 'His email is in our database!', 'You already voted', 'Send to a friend', 'Your name', 'Your email', 'Friend Name', 'Email to friend', 'Subject', 'Enlarge', 'Picture', 'Close', 'Top menu', 'Side Menu', '', '', '', '<p><strong>RSS&nbsp;</strong>a&nbsp;pattern of receiving news via the Internet. Through software called an RSS reader, Internet users can keep informed about certain subjects without having to search the web: when the news comes, you ll learn through your site without you having to navigate to the website source. This pattern has become very popular, as practical and easy to stay informed and transmit information to others.</p>\r\n<p><strong>INSTALL THE PROGRAM </strong><br />\r\nFirst of all, you need a program to read RSS. These programs are known as RSS readers or aggregators. Below we suggest some for Windows, the download of your choice and install it on your computer.</p>\r\n<p><strong>ADD SOURCES </strong><br />\r\nRSS Reader installed add their news sources (feeds) favorite to him. In most programs, usually in English, should be activated the &quot;Add new feed&quot;. In the window that appears you should paste the address you want to subscribe to RSS. You can find the addresses of feeds that Website Online always on top - an icon of &quot;RSS&quot;. To copy these addresses, click on the icon and at the end of the page you will find the content available. Right-click and select &quot;copy shortcut.&quot;</p>\r\n<p><strong>TIPS </strong><br />\r\n<strong>Users of Internet Explorer: </strong><br />\r\nWhen you see the icon above in the pages of this site, log and click on the links at the bottom of the page with the right mouse button and select &quot;copy shortcut.&quot; Next, add the address copied to your favorite RSS reader, to sign it and receive updates in real time. <br />\r\n<br />\r\n<strong>Users of Mozilla Firefox: </strong><br />\r\nWhen you see the icon next to the address bar of your browser, simply click on it. Firefox will display a list of stories. In Version 2, Firefox lets you sign that RSS and automatically receive new stories as they arise. <br />\r\n<br />\r\n<strong>Mozilla Firefox <br />\r\n</strong>The open-source browser is more popular RSS reader of the integrated system of favorite sites. Just click on the address of the feed to view it or include it in a menu of &quot;live bookmarks&quot;. Free. Windows, Mac and Linux. <br />\r\n<a href=\"http://www.getfirefox.com\">http://www.getfirefox.com</a> <br />\r\n<br />\r\n<strong>Mozilla Thunderbird <br />\r\n</strong>The devoted reader e-mail &quot;brother&quot; of Firefox h?s full support for RSS - read news it works just like emails. Free. Windows, Mac and Linux. <br />\r\n<a href=\"http://www.mozilla.com/thunderbird\">http://www.mozilla.com/thunderbird</a> <br />\r\n<br />\r\n<strong>Opera </strong><br />\r\nThe browser more &quot;cult&quot; Web also has excellent support for RSS. Just click and sign. Free. Windows, Mac and Linux. <br />\r\n<a href=\"http://www.opera.com\">http://www.opera.com</a> <br />\r\n<br />\r\n<strong>Feed Reader </strong><br />\r\nWell aggregator for users of Internet Explorer, lightweight, fast and functional. Free. Windows. <br />\r\n<a href=\"http://www.feedreader.com\">http://www.feedreader.com</a>&nbsp;&nbsp;<br />\r\n<br />\r\n<strong>Google Reader </strong><br />\r\nWant to read your feeds without installing any software, directly from the browser - whatever it is? Go to Google Reader and speaks all in a web interface. Free. Online. <br />\r\n<a href=\"http://reader.google.com\">http://reader.google.com</a></p>', '', '', '', 'Send', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_pai` int(11) NOT NULL DEFAULT '0',
  `edicao_id` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(255) NOT NULL DEFAULT '0',
  `tipo` varchar(20) NOT NULL DEFAULT 'artigos',
  `abredireto` char(1) NOT NULL DEFAULT '',
  `ordem` tinyint(4) NOT NULL DEFAULT '99',
  `link` varchar(255) NOT NULL DEFAULT '',
  `sistema` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_pai`, `edicao_id`, `nome`, `tipo`, `abredireto`, `ordem`, `link`, `sistema`) VALUES
(1, 0, 1, 'Português', 'artigos', '', 0, '', 'website'),
(2, 1, 1, 'HOME', 'home', '', 0, '', 'website'),
(3, 1, 1, 'O Escritório', 'artigos', '', 1, '', 'website'),
(5, 1, 1, 'Área de Atuação', 'artigos', '1', 2, '', 'website'),
(28, 1, 2, 'Our Business', 'artigos', '', 6, '', 'website'),
(7, 1, 1, 'Fale Conosco', 'artigos', '1', 5, '', 'website'),
(16, 1, 1, 'Menu de cont. e/ou prod.', 'artigos', '', 1, '', 'ecomm'),
(17, 1, 1, 'Menu de cont. e/ou prod.', 'artigos', '', 2, '', 'ecomm'),
(18, 1, 1, 'Menu de cont. e/ou prod.', 'artigos', '', 3, '', 'ecomm'),
(19, 0, 2, 'English', 'artigos', '', 0, '', 'website'),
(20, 19, 2, 'HOME', 'home', '', 0, '', 'website'),
(21, 1, 2, 'Products / Services', 'artigos', '', 9, '', 'ecomm'),
(22, 1, 2, 'Products / Services', 'artigos', '', 10, '', 'ecomm'),
(23, 1, 2, 'Products / Services', 'artigos', '', 11, '', 'ecomm'),
(24, 1, 2, 'Products / Services', 'artigos', '', 12, '', 'ecomm'),
(26, 0, 3, 'Español', 'artigos', '', 0, '', 'website'),
(27, 26, 3, 'HOME', 'home', '', 0, '', 'website'),
(29, 1, 1, 'Artigos e Nóticias', 'artigos', '', 4, '', 'website'),
(30, 1, 2, 'Why we are diferent', 'artigos', '', 8, '', 'website'),
(31, 1, 2, 'Services', 'artigos', '', 7, '', 'website'),
(32, 1, 2, 'Get in Touch', 'artigos', '', 11, '', 'website'),
(33, 1, 2, 'News', 'artigos', '', 9, '', 'website'),
(34, 1, 3, 'La empresa', 'artigos', '', 12, '', 'website'),
(35, 1, 3, 'Diferencial', 'artigos', '', 14, '', 'website'),
(36, 1, 3, 'Servicios', 'artigos', '', 13, '', 'website'),
(37, 1, 3, 'Noticias', 'artigos', '', 15, '', 'website'),
(38, 1, 3, 'Contacto', 'artigos', '', 17, '', 'website'),
(39, 1, 3, 'Productos / Servicios', 'artigos', '', 13, '', 'ecomm'),
(40, 1, 3, 'Productos / Servicios', 'artigos', '', 14, '', 'ecomm'),
(41, 1, 3, 'Productos / Servicios', 'artigos', '', 15, '', 'ecomm'),
(42, 1, 3, 'Productos / Servicios', 'artigos', '', 16, '', 'ecomm'),
(44, 1, 2, 'Restricted', 'artigos', '', 10, '', 'website'),
(45, 1, 3, 'Zona restringida', 'artigos', '', 16, '', 'website'),
(47, 1, 1, 'Menu de cont. e/ou prod.', 'artigos', '', 5, '', 'ecomm'),
(46, 1, 1, 'Menu de cont. e/ou prod.', 'artigos', '', 4, '', 'ecomm'),
(48, 1, 1, 'Menu de cont. e/ou prod.', 'artigos', '', 6, '', 'ecomm'),
(49, 1, 1, 'Menu de cont. e/ou prod.', 'artigos', '', 7, '', 'ecomm'),
(51, 1, 1, 'Menu de cont. e/ou prod.', 'artigos', '', 8, '', 'ecomm'),
(56, 1, 1, 'Corpo Técnico', 'artigos', '', 3, '', 'website');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(10) UNSIGNED NOT NULL,
  `newsletter_titulo` varchar(255) DEFAULT NULL,
  `newsletter_texto` varchar(255) DEFAULT NULL,
  `newsletter_autor` varchar(255) DEFAULT NULL,
  `newsletter_dt` date DEFAULT NULL,
  `newsletter_destino` text,
  `newsletter_status` enum('E','A') DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_bloqueados`
--

CREATE TABLE `newsletter_bloqueados` (
  `newsletter_bloqueados_id` int(10) UNSIGNED NOT NULL,
  `newsletter_bloqueados_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parametro`
--

CREATE TABLE `parametro` (
  `id_parametro` int(11) NOT NULL,
  `id_parametro_pertence` int(11) NOT NULL DEFAULT '0',
  `tipo` enum('radio','checkbox','text') NOT NULL DEFAULT 'radio',
  `nome` varchar(255) NOT NULL DEFAULT '',
  `valores` text NOT NULL,
  `cliente` char(1) NOT NULL DEFAULT '',
  `representante` char(1) NOT NULL DEFAULT '',
  `fornecedor` char(1) NOT NULL DEFAULT '',
  `questionario` char(1) NOT NULL DEFAULT '',
  `conteudo` char(1) NOT NULL DEFAULT '',
  `produto` char(1) NOT NULL DEFAULT '',
  `buscar` enum('S','N') NOT NULL DEFAULT 'N',
  `edicao_id` int(10) DEFAULT NULL,
  `produtos` enum('S','N') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parametro`
--

INSERT INTO `parametro` (`id_parametro`, `id_parametro_pertence`, `tipo`, `nome`, `valores`, `cliente`, `representante`, `fornecedor`, `questionario`, `conteudo`, `produto`, `buscar`, `edicao_id`, `produtos`) VALUES
(16, 0, 'text', 'Descripción', '', '', '', '', '', '', '1', 'N', 3, 'S'),
(15, 2, 'radio', 'Destaque', 'S\r\nN', '', '', '', '', '', '1', 'N', 2, 'N'),
(13, 0, 'text', 'Description', '', '', '', '', '', '', '1', 'N', 2, 'S'),
(14, 1, 'text', 'Weight', '', '', '', '', '', '', '1', 'N', 2, 'S'),
(12, 2, 'text', 'Peso', '', '', '', '', '', '', '1', 'N', 1, 'S'),
(11, 1, 'radio', 'Destaque', 'S\r\nN', '', '', '', '', '', '1', 'N', 1, 'N'),
(10, 0, 'text', 'Descrição', '', '', '', '', '', '', '1', 'N', 1, 'S'),
(17, 1, 'text', 'Peso', '', '', '', '', '', '', '1', 'N', 3, 'S'),
(18, 2, 'text', 'Destaque', 'S\r\nN', '', '', '', '', '', '1', 'N', 3, 'N'),
(19, 0, 'radio', 'Tamanho', 'Pequeno\r\nMedia\r\nGrande', '1', '', '', '', '', '', 'N', NULL, NULL),
(20, 0, 'radio', 'Sexo', 'M\r\nF', '1', '', '', '', '', '', 'N', NULL, NULL),
(21, 0, 'radio', 'Tipo de empresa', 'Indústria\r\nComércio\r\nPrestação de Serviço', '1', '', '', '', '', '', 'N', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rss`
--

CREATE TABLE `rss` (
  `rss_id` int(10) UNSIGNED NOT NULL,
  `conteudo_id` int(10) UNSIGNED NOT NULL,
  `rss_url` varchar(255) NOT NULL,
  `rss_limite` int(10) UNSIGNED DEFAULT NULL,
  `rss_ordem` int(10) UNSIGNED DEFAULT NULL,
  `rss_titulo` varchar(255) DEFAULT NULL,
  `rss_texto` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rss`
--

INSERT INTO `rss` (`rss_id`, `conteudo_id`, `rss_url`, `rss_limite`, `rss_ordem`, `rss_titulo`, `rss_texto`) VALUES
(1, 32, 'http://www.espacovital.com.br/rss/index.xml', 10, 0, 'Notícias', NULL),
(2, 43, 'http://rss.cnn.com/rss/cnn_latest.rss', 20, 0, 'CNN Latest News', NULL),
(3, 44, 'http://rss.cnn.com/rss/cnn_latest.rss', 20, 0, 'CNN Latest News', NULL),
(4, 44, 'http://rss.cnn.com/rss/cnn_latest.rss', 20, 0, 'CNN Latest News', NULL),
(5, 48, 'http://www.ELPAIS.com/rss/rss_section.html?anchor=elpporint ', 20, 0, 'Notícias', NULL),
(6, 115, 'http://www.espacovital.com.br/rss_assinar.php', 20, 0, 'Espaço Vital', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `usuario_nome` varchar(255) DEFAULT NULL,
  `usuario_email` varchar(255) DEFAULT NULL,
  `usuario_departamento` varchar(255) DEFAULT NULL,
  `usuario_login` varchar(255) NOT NULL DEFAULT '',
  `usuario_senha` varchar(255) NOT NULL DEFAULT '',
  `resenha` text NOT NULL,
  `session` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nome`, `usuario_email`, `usuario_departamento`, `usuario_login`, `usuario_senha`, `resenha`, `session`) VALUES
(1, 'Gustavo Berto Roça', 'gustavo@bertoghebur.com.br', 'Administrador', 'gustavo', '705949e8430a55e98977e9490d82e1c5', 'Administrador do sistema.\r\nObs.: Altere a senha padrão.', 'a:36:{s:12:\"direitotelas\";a:27:{s:6:\"agenda\";b:1;s:7:\"artigos\";b:1;s:16:\"artigos_extranet\";b:1;s:21:\"cadastro_estatisticas\";b:1;s:8:\"clientes\";b:1;s:26:\"configuracoes_envio_emails\";b:1;s:21:\"configuracoes_imagens\";b:1;s:7:\"edicoes\";b:1;s:9:\"estrutura\";b:1;s:17:\"fichario_extranet\";b:1;s:12:\"fornecedores\";b:1;s:5:\"menus\";b:1;s:14:\"menus_extranet\";b:1;s:23:\"newsletter_estatisticas\";b:1;s:17:\"newsletter_wizard\";b:1;s:20:\"parametros_cadastros\";b:1;s:29:\"pesquisadeprecos_concorrentes\";b:1;s:29:\"pesquisadeprecos_estatisticas\";b:1;s:26:\"pesquisadeprecos_pesquisas\";b:1;s:25:\"pesquisadeprecos_produtos\";b:1;s:8:\"produtos\";b:1;s:14:\"representantes\";b:1;s:7:\"usuario\";b:1;s:8:\"votos_up\";b:1;s:0:\"\";b:1;s:5:\"login\";b:1;s:6:\"logout\";b:1;}s:6:\"depura\";a:1:{s:5:\"query\";i:0;}s:0:\"\";N;s:19:\"executa_agenda_once\";i:1;s:8:\"extranet\";a:2:{s:5:\"ordem\";s:0:\"\";s:6:\"pagina\";s:1:\"1\";}s:24:\"extranet_estrutura_menus\";N;s:7:\"usuario\";N;s:9:\"estrutura\";N;s:17:\"estrutura_artigos\";N;s:15:\"estrutura_menus\";N;s:7:\"artigos\";N;s:9:\"destaques\";N;s:17:\"newsletter_wizard\";N;s:29:\"pesquisadeprecos_concorrentes\";N;s:23:\"newsletter_estatisticas\";N;s:8:\"clientes\";N;s:5:\"menus\";N;s:29:\"newsletter_estatisticas_envio\";N;s:14:\"representantes\";N;s:8:\"produtos\";N;s:7:\"edicoes\";N;s:12:\"fornecedores\";N;s:7:\"ocultos\";N;s:8:\"galerias\";N;s:20:\"parametros_cadastros\";N;s:21:\"cadastro_estatisticas\";N;s:26:\"configuracoes_envio_emails\";N;s:20:\"configuracoes_agenda\";N;s:25:\"pesquisadeprecos_produtos\";N;s:24:\"newsletter_destinatarios\";a:1:{s:6:\"filtro\";a:2:{s:11:\"id_cadastro\";s:2:\"47\";s:8:\"cadastro\";N;}}s:5:\"teste\";N;s:10:\"flash_home\";N;s:8:\"cadastro\";N;s:17:\"fichario_extranet\";N;s:6:\"agenda\";N;s:22:\"newsletter_progressbar\";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `usuario_conteudo`
--

CREATE TABLE `usuario_conteudo` (
  `usuario_id` int(11) NOT NULL DEFAULT '0',
  `conteudo_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario_conteudo`
--

INSERT INTO `usuario_conteudo` (`usuario_id`, `conteudo_id`) VALUES
(1, 25),
(1, 28),
(1, 39),
(1, 42),
(1, 54);

-- --------------------------------------------------------

--
-- Table structure for table `usuario_tela`
--

CREATE TABLE `usuario_tela` (
  `usuario_id` int(11) NOT NULL DEFAULT '0',
  `tela_nome` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario_tela`
--

INSERT INTO `usuario_tela` (`usuario_id`, `tela_nome`) VALUES
(1, 'artigos'),
(1, 'cadastro'),
(1, 'cadastro_estatisticas'),
(1, 'clientes'),
(1, 'edicoes'),
(1, 'parametros_cadastros'),
(1, 'usuario'),
(2, 'edicoes'),
(3, 'artigos'),
(3, 'clientes'),
(3, 'edicoes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arquivo`
--
ALTER TABLE `arquivo`
  ADD PRIMARY KEY (`arquivo_id`);

--
-- Indexes for table `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_cadastro`);

--
-- Indexes for table `cadastro_parametro`
--
ALTER TABLE `cadastro_parametro`
  ADD PRIMARY KEY (`id_cadastro`,`id_parametro`);

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `comentario_FKIndex1` (`conteudo_id`);

--
-- Indexes for table `confcores`
--
ALTER TABLE `confcores`
  ADD PRIMARY KEY (`idconfCores`);

--
-- Indexes for table `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`conteudo_id`),
  ADD KEY `conteudo_tipo` (`conteudo_tipo`);
ALTER TABLE `conteudo` ADD FULLTEXT KEY `texto_buscar` (`texto_buscar`);

--
-- Indexes for table `conteudo_arquivo`
--
ALTER TABLE `conteudo_arquivo`
  ADD PRIMARY KEY (`conteudo_id`,`arquivo_id`);

--
-- Indexes for table `conteudo_cadastro`
--
ALTER TABLE `conteudo_cadastro`
  ADD PRIMARY KEY (`conteudo_id`,`id_cadastro`),
  ADD KEY `conteudo_has_cadastro_FKIndex1` (`conteudo_id`),
  ADD KEY `conteudo_has_cadastro_FKIndex2` (`id_cadastro`);

--
-- Indexes for table `conteudo_cliente`
--
ALTER TABLE `conteudo_cliente`
  ADD PRIMARY KEY (`idconteudo_cliente`);

--
-- Indexes for table `conteudo_edicao`
--
ALTER TABLE `conteudo_edicao`
  ADD PRIMARY KEY (`conteudo_id`,`edicao_id`);

--
-- Indexes for table `ecomm_carrinho`
--
ALTER TABLE `ecomm_carrinho`
  ADD PRIMARY KEY (`id_carrinho`);

--
-- Indexes for table `ecomm_carrinho_item`
--
ALTER TABLE `ecomm_carrinho_item`
  ADD PRIMARY KEY (`id_carrinho_item`);

--
-- Indexes for table `ecomm_destaque`
--
ALTER TABLE `ecomm_destaque`
  ADD PRIMARY KEY (`id_destaque`);

--
-- Indexes for table `ecomm_destaque_produto`
--
ALTER TABLE `ecomm_destaque_produto`
  ADD PRIMARY KEY (`id_destaque`,`id_produto`);

--
-- Indexes for table `ecomm_produto`
--
ALTER TABLE `ecomm_produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- Indexes for table `ecomm_produto_arquivo`
--
ALTER TABLE `ecomm_produto_arquivo`
  ADD PRIMARY KEY (`id_produto`,`arquivo_id`);

--
-- Indexes for table `ecomm_produto_parametro`
--
ALTER TABLE `ecomm_produto_parametro`
  ADD PRIMARY KEY (`id_produto`,`id_parametro`,`seq`);

--
-- Indexes for table `edicao`
--
ALTER TABLE `edicao`
  ADD PRIMARY KEY (`edicao_id`);

--
-- Indexes for table `enquete`
--
ALTER TABLE `enquete`
  ADD PRIMARY KEY (`enquete_id`);

--
-- Indexes for table `enquete_opcoes`
--
ALTER TABLE `enquete_opcoes`
  ADD PRIMARY KEY (`enquete_opcao_id`),
  ADD KEY `enquete_opcoes_FKIndex1` (`enquete_id`);

--
-- Indexes for table `idioma_traducao`
--
ALTER TABLE `idioma_traducao`
  ADD PRIMARY KEY (`idioma_traducao_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `newsletter_bloqueados`
--
ALTER TABLE `newsletter_bloqueados`
  ADD PRIMARY KEY (`newsletter_bloqueados_id`);

--
-- Indexes for table `parametro`
--
ALTER TABLE `parametro`
  ADD PRIMARY KEY (`id_parametro`);

--
-- Indexes for table `rss`
--
ALTER TABLE `rss`
  ADD PRIMARY KEY (`rss_id`,`conteudo_id`),
  ADD KEY `rss_FKIndex1` (`conteudo_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `login` (`usuario_login`);

--
-- Indexes for table `usuario_conteudo`
--
ALTER TABLE `usuario_conteudo`
  ADD PRIMARY KEY (`usuario_id`,`conteudo_id`);

--
-- Indexes for table `usuario_tela`
--
ALTER TABLE `usuario_tela`
  ADD PRIMARY KEY (`usuario_id`,`tela_nome`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arquivo`
--
ALTER TABLE `arquivo`
  MODIFY `arquivo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id_cadastro` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `comentario`
--
ALTER TABLE `comentario`
  MODIFY `comentario_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `confcores`
--
ALTER TABLE `confcores`
  MODIFY `idconfCores` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `conteudo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `conteudo_cliente`
--
ALTER TABLE `conteudo_cliente`
  MODIFY `idconteudo_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ecomm_carrinho`
--
ALTER TABLE `ecomm_carrinho`
  MODIFY `id_carrinho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `ecomm_carrinho_item`
--
ALTER TABLE `ecomm_carrinho_item`
  MODIFY `id_carrinho_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `ecomm_destaque`
--
ALTER TABLE `ecomm_destaque`
  MODIFY `id_destaque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ecomm_produto`
--
ALTER TABLE `ecomm_produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `edicao`
--
ALTER TABLE `edicao`
  MODIFY `edicao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquete`
--
ALTER TABLE `enquete`
  MODIFY `enquete_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquete_opcoes`
--
ALTER TABLE `enquete_opcoes`
  MODIFY `enquete_opcao_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `idioma_traducao`
--
ALTER TABLE `idioma_traducao`
  MODIFY `idioma_traducao_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletter_bloqueados`
--
ALTER TABLE `newsletter_bloqueados`
  MODIFY `newsletter_bloqueados_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parametro`
--
ALTER TABLE `parametro`
  MODIFY `id_parametro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rss`
--
ALTER TABLE `rss`
  MODIFY `rss_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
