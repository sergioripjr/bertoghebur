-- phpMyAdmin SQL Dump
-- version 2.11.0
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Mai 25, 2009 as 02:05 PM
-- Versão do Servidor: 5.0.45
-- Versão do PHP: 5.2.4

--
-- Banco de Dados: `modelor4_comtemplate_seguranca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivo`
--

CREATE TABLE `arquivo` (
  `arquivo_id` int(11) NOT NULL auto_increment,
  `arquivo_arquivo` varchar(255) NOT NULL default '',
  `arquivo_mimetype` varchar(255) NOT NULL default '',
  `arquivo_texto` text,
  PRIMARY KEY  (`arquivo_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_cadastro` int(12) NOT NULL auto_increment,
  `nome` varchar(255) default NULL,
  `senha_cliente` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `contato_1` varchar(255) default NULL,
  `contato_2` varchar(255) default NULL,
  `contato_3` varchar(255) default NULL,
  `emailcontato_1` varchar(255) default NULL,
  `emailcontato_2` varchar(255) default NULL,
  `emailcontato_3` varchar(255) default NULL,
  `ramal_1` varchar(20) default NULL,
  `ramal_2` varchar(20) default NULL,
  `ramal_3` varchar(20) default NULL,
  `aniver_1` date default NULL,
  `aniver_2` date default NULL,
  `aniver_3` date default NULL,
  `profissao` varchar(255) default NULL,
  `cnpj_cpf` varchar(255) default NULL,
  `insc_rg` varchar(255) default NULL,
  `endereco` varchar(255) default NULL,
  `news` char(1) default NULL,
  `bairro` varchar(255) default NULL,
  `complemento` varchar(255) default NULL,
  `cep` varchar(255) default NULL,
  `cidade` varchar(255) default NULL,
  `estado` varchar(255) default NULL,
  `fone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `cel` varchar(255) default NULL,
  `obs` varchar(255) default NULL,
  `representante` char(1) default NULL,
  `fornecedor` char(1) default NULL,
  `cliente` char(1) default NULL,
  `site` varchar(255) default NULL,
  `login` varchar(255) NOT NULL default '',
  `senha` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_cadastro`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_parametro`
--

CREATE TABLE `cadastro_parametro` (
  `id_cadastro` int(11) NOT NULL default '0',
  `id_parametro` int(11) NOT NULL default '0',
  `valor` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_cadastro`,`id_parametro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `comentario_id` int(10) unsigned NOT NULL auto_increment,
  `conteudo_id` int(10) unsigned NOT NULL,
  `comentario_data` datetime default NULL,
  `comentario_texto` text NOT NULL,
  `comentario_autor` varchar(255) default NULL,
  `comentario_email` varchar(255) default NULL,
  `comentario_status` int(11) default '0',
  PRIMARY KEY  (`comentario_id`),
  KEY `comentario_FKIndex1` (`conteudo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `confcores`
--

CREATE TABLE `confcores` (
  `idconfCores` int(10) unsigned NOT NULL auto_increment,
  `corTextoConteudo` varchar(10) default NULL,
  `corTituloConteudo` varchar(10) default NULL,
  `corFonteMenu` varchar(10) default NULL,
  `corFundoMenu` varchar(10) default NULL,
  `corFonteMenuOver` varchar(10) default NULL,
  `corFonteSubMenu` varchar(10) default NULL,
  `corFundoSubMenu` varchar(10) default NULL,
  `corFundoSubMenuOver` varchar(10) default NULL,
  `corFonteRelogio` varchar(10) default NULL,
  `corFonteBusca` varchar(10) default NULL,
  `corBarraNome` varchar(10) default NULL,
  `corFonteBarraNome` varchar(10) default NULL,
  `corBarraCaracteristicas` varchar(10) default NULL,
  `corFonteBarraCaracteristicas` varchar(10) default NULL,
  `urlSite` varchar(255) default NULL,
  `logoEmpresa` varchar(255) default NULL,
  `palavraChave` text,
  `corFundoSite` varchar(10) default NULL,
  `hab_menu` enum('S','N') default 'S',
  `hab_compra` enum('S','N') default 'S',
  `hab_download` enum('S','N') default 'S',
  `hab_lista` enum('S','N') default 'S',
  `qt_produto` int(11) default '0',
  `email_pagSeguro` varchar(255) default NULL,
  `descricaoSite` text,
  `corFundoDivs` varchar(10) default NULL,
  `corLinkDivs` varchar(10) default NULL,
  `corFonteMenuLateral` varchar(10) default NULL,
  `codigoExterno` text,
  `listaHome` enum('S','N') default 'N',
  `corPrecoNormal` varchar(10) default NULL,
  `corPrecoPromo` varchar(10) default NULL,
  `corBordaCampo` varchar(10) default NULL,
  `corFundoCampo` varchar(10) default NULL,
  `corFonteCampo` varchar(10) default NULL,
  `corMsgSucesso` varchar(10) default NULL,
  `corMsgErro` varchar(10) default NULL,
  `corBarraNomeProd` varchar(10) default NULL,
  `corFonteNomeProd` varchar(10) default NULL,
  `corFonteSubMenuOver` varchar(10) default NULL,
  PRIMARY KEY  (`idconfCores`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `conteudo_id` int(11) NOT NULL auto_increment,
  `conteudo_id_pai` int(11) NOT NULL default '0',
  `conteudo_tipo` varchar(255) NOT NULL default '',
  `conteudo_titulo` varchar(255) NOT NULL default '',
  `conteudo_fonte` varchar(255) NOT NULL default '',
  `conteudo_chamada` text NOT NULL,
  `conteudo_texto` text NOT NULL,
  `texto_buscar` text,
  `conteudo_datainicio` date NOT NULL default '0000-00-00',
  `conteudo_datafim` date NOT NULL default '0000-00-00',
  `conteudo_expira` char(1) NOT NULL default '',
  `menu_id` int(11) NOT NULL default '0',
  `edicao_id` int(11) NOT NULL default '0',
  `destaque` varchar(255) NOT NULL default '',
  `sistema` varchar(255) NOT NULL default '',
  `conteudo_ordem` tinyint(4) default NULL,
  `conteudo_id_sucesso` int(11) NOT NULL default '0',
  `conteudo_id_falhou` int(11) NOT NULL default '0',
  `endereco_origem` varchar(255) NOT NULL default '',
  `numero_origem` varchar(255) NOT NULL default '',
  `datahora` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordem` int(11) NOT NULL default '0',
  `newsletter_ecomm_produtos` varchar(255) NOT NULL default '',
  `msg_sucesso` text,
  `msg_erro` text,
  `conteudo_destaque` enum('S','N') default 'N',
  `conteudo_formmail` enum('S','N') default 'N',
  `conteudo_comentar` int(11) NOT NULL default '0',
  PRIMARY KEY  (`conteudo_id`),
  KEY `conteudo_tipo` (`conteudo_tipo`),
  FULLTEXT KEY `texto_buscar` (`texto_buscar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo_arquivo`
--

CREATE TABLE `conteudo_arquivo` (
  `conteudo_id` int(11) NOT NULL default '0',
  `arquivo_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`conteudo_id`,`arquivo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo_cadastro`
--

CREATE TABLE `conteudo_cadastro` (
  `conteudo_id` int(10) unsigned NOT NULL,
  `id_cadastro` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`conteudo_id`,`id_cadastro`),
  KEY `conteudo_has_cadastro_FKIndex1` (`conteudo_id`),
  KEY `conteudo_has_cadastro_FKIndex2` (`id_cadastro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo_cliente`
--

CREATE TABLE `conteudo_cliente` (
  `idconteudo_cliente` int(10) unsigned NOT NULL auto_increment,
  `conteudo_id` int(10) unsigned default NULL,
  `cadastro_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`idconteudo_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo_edicao`
--

CREATE TABLE `conteudo_edicao` (
  `conteudo_id` int(11) NOT NULL default '0',
  `edicao_id` int(11) NOT NULL default '0',
  `menu_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`conteudo_id`,`edicao_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ecomm_carrinho`
--

CREATE TABLE `ecomm_carrinho` (
  `id_carrinho` int(11) NOT NULL auto_increment,
  `id_cliente` int(11) NOT NULL default '0',
  `id_cadastro` int(11) NOT NULL default '0',
  `nome` varchar(255) NOT NULL default '',
  `endereco` varchar(255) NOT NULL default '',
  `bairro` varchar(255) NOT NULL default '',
  `cep` varchar(255) NOT NULL default '',
  `capital` enum('','Capital','Interior') NOT NULL default '',
  `id_cidade` int(11) NOT NULL default '0',
  `cidade` varchar(255) NOT NULL default '',
  `id_estado` int(11) NOT NULL default '0',
  `estado` varchar(255) NOT NULL default '',
  `fone` varchar(255) NOT NULL default '',
  `fax` varchar(255) NOT NULL default '',
  `pesototal` decimal(10,3) NOT NULL default '0.000',
  `subtotal` decimal(14,2) NOT NULL default '0.00',
  `frete` decimal(14,2) NOT NULL default '0.00',
  `situacao` enum('carrinho','pendente','entregue','cancelado') NOT NULL default 'carrinho',
  `pagamento` enum('DepÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â³sito BancÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡rio','Contra Entrega','Boleto BancÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡rio','CartÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£o de CrÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â©dito') default NULL,
  `valorpago` decimal(14,2) NOT NULL default '0.00',
  `email` varchar(255) NOT NULL default '',
  `solicitante` varchar(255) NOT NULL default '',
  `ramo` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_carrinho`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ecomm_carrinho_item`
--

CREATE TABLE `ecomm_carrinho_item` (
  `id_carrinho_item` int(11) NOT NULL auto_increment,
  `id_carrinho` int(11) NOT NULL default '0',
  `id_produto` int(11) NOT NULL default '0',
  `quantidade` int(11) NOT NULL default '0',
  `preco` decimal(14,2) NOT NULL default '0.00',
  `observacao` text NOT NULL,
  `serigrafia` char(1) default NULL,
  `cores` char(2) default NULL,
  `cliche` char(1) default NULL,
  `bordado` char(1) default NULL,
  PRIMARY KEY  (`id_carrinho_item`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ecomm_destaque`
--

CREATE TABLE `ecomm_destaque` (
  `id_destaque` int(11) NOT NULL auto_increment,
  `nome` varchar(255) NOT NULL default '',
  `dt_inicio` date NOT NULL default '0000-00-00',
  `dt_fim` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id_destaque`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ecomm_destaque_produto`
--

CREATE TABLE `ecomm_destaque_produto` (
  `id_destaque` int(11) NOT NULL default '0',
  `id_produto` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_destaque`,`id_produto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ecomm_produto`
--

CREATE TABLE `ecomm_produto` (
  `id_produto` int(11) NOT NULL auto_increment,
  `pertence` int(11) NOT NULL default '0',
  `menu_id` int(11) NOT NULL default '0',
  `nome` varchar(255) NOT NULL default '',
  `chamada` text NOT NULL,
  `texto` text NOT NULL,
  `destaque` char(1) NOT NULL default '',
  `ordem` int(11) NOT NULL default '0',
  `peso` decimal(10,3) NOT NULL default '0.000',
  `preconormal` decimal(14,2) NOT NULL default '0.00',
  `precopromocao` decimal(14,2) NOT NULL default '0.00',
  `foto` varchar(255) NOT NULL default '',
  `script_externo` text NOT NULL,
  `id_usuario` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_produto`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ecomm_produto_arquivo`
--

CREATE TABLE `ecomm_produto_arquivo` (
  `id_produto` int(11) NOT NULL default '0',
  `arquivo_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_produto`,`arquivo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ecomm_produto_parametro`
--

CREATE TABLE `ecomm_produto_parametro` (
  `id_produto` int(11) NOT NULL default '0',
  `id_parametro` int(11) NOT NULL default '0',
  `seq` tinyint(4) NOT NULL default '0',
  `valor` text NOT NULL,
  PRIMARY KEY  (`id_produto`,`id_parametro`,`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `edicao`
--

CREATE TABLE `edicao` (
  `edicao_id` int(11) NOT NULL auto_increment,
  `nome` varchar(255) NOT NULL default '',
  `ordem` int(11) NOT NULL default '0',
  `cor` varchar(6) NOT NULL default '',
  `datainicio` date NOT NULL default '0000-00-00',
  `arquivo` text NOT NULL,
  `arquivo2` text NOT NULL,
  `arquivo3` text NOT NULL,
  `texto` text,
  `fonte` text,
  `arquivo4` text,
  `edicao_titulo` text,
  `url_arquivo4` varchar(255) default NULL,
  `arquivo5` text,
  `arquivo2_par` varchar(10) default NULL,
  `arquivo4_par` varchar(10) default NULL,
  `arquivo5_par` varchar(10) default NULL,
  `arquivo5_url` varchar(255) default NULL,
  PRIMARY KEY  (`edicao_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `enquete`
--

CREATE TABLE `enquete` (
  `enquete_id` int(10) unsigned NOT NULL auto_increment,
  `enquete_pergunta` varchar(255) default NULL,
  `enquete_texto` text,
  `enquete_data` datetime default NULL,
  `enquete_resultado` enum('S','N') default NULL,
  `enquete_layout` int(10) unsigned default NULL,
  `enquete_publicado` enum('S','N') default NULL,
  `enquete_idioma` int(10) default NULL,
  PRIMARY KEY  (`enquete_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `enquete_opcoes`
--

CREATE TABLE `enquete_opcoes` (
  `enquete_opcao_id` int(10) unsigned NOT NULL auto_increment,
  `enquete_id` int(10) unsigned NOT NULL,
  `enquete_opcao_valor` int(10) unsigned default '0',
  `enquete_opcao_texto` varchar(255) default NULL,
  `enquete_opcao_ordem` int(10) unsigned default '0',
  PRIMARY KEY  (`enquete_opcao_id`),
  KEY `enquete_opcoes_FKIndex1` (`enquete_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `idioma_traducao`
--

CREATE TABLE `idioma_traducao` (
  `idioma_traducao_id` int(10) unsigned NOT NULL auto_increment,
  `idioma_nome` varchar(255) default NULL,
  `idioma_email` varchar(255) default NULL,
  `idioma_buscar` varchar(255) default NULL,
  `idioma_newsreceba` varchar(255) default NULL,
  `idioma_verresultado` varchar(255) default NULL,
  `idioma_votar` varchar(255) default NULL,
  `idioma_comprar` varchar(255) default NULL,
  `idioma_comentarios` varchar(255) default NULL,
  `idioma_indiquecomentario` varchar(255) default NULL,
  `idioma_comentar` varchar(255) default NULL,
  `idioma_deixecomentarios` varchar(255) default NULL,
  `idioma_obrignaoexibido` varchar(255) default NULL,
  `idioma_digiteocodigo` varchar(255) default NULL,
  `idioma_emailinvalido` varchar(255) default NULL,
  `idioma_codigoinvalido` varchar(255) default NULL,
  `idioma_necessariopreencher` varchar(255) default NULL,
  `idioma_comentariocadastrado` varchar(255) default NULL,
  `idioma_comentariocadastradoaprovacao` varchar(255) default NULL,
  `idioma_conteudorestrito` varchar(255) default NULL,
  `idioma_informeusuario` varchar(255) default NULL,
  `idioma_login` varchar(255) default NULL,
  `idioma_senha` varchar(255) default NULL,
  `idioma_entrar` varchar(255) default NULL,
  `idioma_verificardados` varchar(255) default NULL,
  `idioma_usuariosempermissao` varchar(255) default NULL,
  `idioma_necessariopreencher_2` varchar(255) default NULL,
  `idioma_logininvalido` varchar(255) default NULL,
  `idioma_ola` varchar(255) default NULL,
  `idioma_efetuarlogout` varchar(255) default NULL,
  `idioma_logoutefetuadocomsucesso` varchar(255) default NULL,
  `idioma_arquivosanexos` varchar(255) default NULL,
  `idioma_home` varchar(255) default NULL,
  `idioma_contato` varchar(255) default NULL,
  `idioma_rss` varchar(255) default NULL,
  `idioma_mapasite` varchar(255) default NULL,
  `idioma_caracteristicas` varchar(255) default NULL,
  `idioma_adicionarlista` varchar(255) default NULL,
  `idioma_adicioneproduto` varchar(255) default NULL,
  `idioma_cod` varchar(255) default NULL,
  `idioma_qnt` varchar(255) default NULL,
  `idioma_valor` varchar(255) default NULL,
  `idioma_totaldacompra` varchar(255) default NULL,
  `idioma_vocetem` varchar(255) default NULL,
  `idioma_produtocarrinho` varchar(255) default NULL,
  `idioma_avancar` varchar(255) default NULL,
  `idioma_voltar` varchar(255) default NULL,
  `idioma_diminuirfonte` varchar(255) default NULL,
  `idioma_aumentarfonte` varchar(255) default NULL,
  `idioma_indicarparaumamigo` varchar(255) default NULL,
  `idioma_imprimiresteconteudo` varchar(255) default NULL,
  `idioma_formularioenviado` varchar(255) default NULL,
  `idioma_carregando` varchar(255) default NULL,
  `idioma_segunda` varchar(255) default NULL,
  `idioma_terca` varchar(255) default NULL,
  `idioma_quarta` varchar(255) default NULL,
  `idioma_quinta` varchar(255) default NULL,
  `idioma_sexta` varchar(255) default NULL,
  `idioma_sabado` varchar(255) default NULL,
  `idioma_domingo` varchar(255) default NULL,
  `idioma_edicao_id` int(10) unsigned default NULL,
  `idioma_cadastrar` varchar(255) default NULL,
  `idioma_avancaaaaar` varchar(255) default NULL,
  `idaioma_avancar2` varchar(255) default NULL,
  `idioma_nenhumencontrado` varchar(255) default NULL,
  `idioma_contencontrados` varchar(255) default NULL,
  `idioma_observacoes` varchar(255) default NULL,
  `idioma_newscadsucesso` varchar(255) default NULL,
  `idioma_votocadsucesso` varchar(255) default NULL,
  `idioma_newsemailcad` varchar(255) default NULL,
  `idioma_vocejavotou` varchar(255) default NULL,
  `idioma_envieamigo` varchar(255) default NULL,
  `idioma_seunome` varchar(255) default NULL,
  `idioma_seuemail` varchar(255) default NULL,
  `idioma_nomeamigo` varchar(255) default NULL,
  `idioma_emailamigo` varchar(255) default NULL,
  `idioma_assunto` varchar(255) default NULL,
  `idioma_ampliar` varchar(255) default NULL,
  `idioma_imagemcont` varchar(255) default NULL,
  `idioma_fechar` varchar(255) default NULL,
  `idioma_menusuperior` varchar(255) default NULL,
  `idioma_menulateral` varchar(255) default NULL,
  `idioma_rssdestesite` varchar(255) default NULL,
  `idioma_rssconteudos` varchar(255) default NULL,
  `idioma_rssprodutos` varchar(255) default NULL,
  `idioma_rsstexto` text,
  `idioma_pagseguro` text,
  `idioma_formulario` text,
  `idioma_emailform` varchar(255) default NULL,
  `idioma_enviar` varchar(255) default NULL,
  `idioma_msgcarrinho` text,
  PRIMARY KEY  (`idioma_traducao_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL auto_increment,
  `menu_pai` int(11) NOT NULL default '0',
  `edicao_id` int(11) NOT NULL default '0',
  `nome` varchar(255) NOT NULL default '0',
  `tipo` varchar(20) NOT NULL default 'artigos',
  `abredireto` char(1) NOT NULL default '',
  `ordem` tinyint(4) NOT NULL default '99',
  `link` varchar(255) NOT NULL default '',
  `sistema` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(10) unsigned NOT NULL auto_increment,
  `newsletter_titulo` varchar(255) default NULL,
  `newsletter_texto` text,
  `newsletter_autor` varchar(255) default NULL,
  `newsletter_dt` date default NULL,
  `newsletter_destino` text,
  `newsletter_status` enum('E','A') default 'A',
  PRIMARY KEY  (`newsletter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletter_bloqueados`
--

CREATE TABLE `newsletter_bloqueados` (
  `newsletter_bloqueados_id` int(10) unsigned NOT NULL auto_increment,
  `newsletter_bloqueados_email` varchar(255) default NULL,
  PRIMARY KEY  (`newsletter_bloqueados_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `parametro`
--

CREATE TABLE `parametro` (
  `id_parametro` int(11) NOT NULL auto_increment,
  `id_parametro_pertence` int(11) NOT NULL default '0',
  `tipo` enum('radio','checkbox','text') NOT NULL default 'radio',
  `nome` varchar(255) NOT NULL default '',
  `valores` text NOT NULL,
  `cliente` char(1) NOT NULL default '',
  `representante` char(1) NOT NULL default '',
  `fornecedor` char(1) NOT NULL default '',
  `questionario` char(1) NOT NULL default '',
  `conteudo` char(1) NOT NULL default '',
  `produto` char(1) NOT NULL default '',
  `buscar` enum('S','N') NOT NULL default 'N',
  `edicao_id` int(10) default NULL,
  `produtos` enum('S','N') default NULL,
  PRIMARY KEY  (`id_parametro`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rss`
--

CREATE TABLE `rss` (
  `rss_id` int(10) unsigned NOT NULL auto_increment,
  `conteudo_id` int(10) unsigned NOT NULL,
  `rss_url` varchar(255) NOT NULL,
  `rss_limite` int(10) unsigned default NULL,
  `rss_ordem` int(10) unsigned default NULL,
  `rss_titulo` varchar(255) default NULL,
  `rss_texto` text,
  PRIMARY KEY  (`rss_id`,`conteudo_id`),
  KEY `rss_FKIndex1` (`conteudo_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL auto_increment,
  `usuario_nome` varchar(255) default NULL,
  `usuario_email` varchar(255) default NULL,
  `usuario_departamento` varchar(255) default NULL,
  `usuario_login` varchar(255) NOT NULL default '',
  `usuario_senha` varchar(255) NOT NULL default '',
  `resenha` text NOT NULL,
  `session` text NOT NULL,
  PRIMARY KEY  (`usuario_id`),
  UNIQUE KEY `login` (`usuario_login`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_conteudo`
--

CREATE TABLE `usuario_conteudo` (
  `usuario_id` int(11) NOT NULL default '0',
  `conteudo_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`usuario_id`,`conteudo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_tela`
--

CREATE TABLE `usuario_tela` (
  `usuario_id` int(11) NOT NULL default '0',
  `tela_nome` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`usuario_id`,`tela_nome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
