<?php
	#
	# Configuraes iniciais
	#
	# Define o tempo que Expira a sess�o
	# 
	//ini_set("session.gc_maxlifetime", "999999");
	session_start();

	require_once("includes/conecta.php");
	require_once("includes/funcoes.php");
	require_once("includes/tituloPag.php");
	require_once("includes/funcoesAnexos.php");
	require_once("lib/rss/exibeRSS.php");
	require_once("lib/restricao/inc.php");
	require_once("lib/comentario/inc.php");
	require_once("lib/mediaplayer/exibePlayer.php");
	
	#
	# Verifica IDIOMA do site
	#
	include("includes/verificaIdiomaSite.php");
		
	#
	# Configura�ao de cores e vari�veis do sistema
	#
	$qConf = "SELECT * FROM confcores WHERE idconfCores = 1";
	$conf = mysql_query($qConf);
	$confCores = mysql_fetch_array($conf);

	#
	# Cores do Menu do site.
	#
	$corFundoMenu = $confCores['corFundoMenu'];
	$corFonteMenu = $confCores['corFonteMenu'];
	$corFonteMenuOver = $confCores['corFonteMenuOver'];
	$corFonteSubMenu = $confCores['corFonteSubMenu'];
	$corFonteSubMenuOver = $confCores['corFonteSubMenuOver'];
	$corFundoSubMenu = $confCores['corFundoSubMenu'];
	$corFundoSubMenuOver = $confCores['corFundoSubMenuOver'];

	$hab_menu = $confCores['hab_menu'];
	$palavraChave = stripslashes($confCores['palavraChave']);
	$descricaoSite = stripslashes($confCores['descricaoSite']);
	$codigoExterno = stripslashes($confCores['codigoExterno']);
	
	if(!empty($confCores['urlSite'])){
		$siteHttpCliente = explode("http://",$confCores['urlSite']);
		
		if(!empty($siteHttpCliente[0])){
			$urlSiteCliente = "http://".$siteHttpCliente[0];
		}else{
			$urlSiteCliente = "http://".$siteHttpCliente[1];
		}
		$_SESSION['urlSiteCliente'] = $urlSiteCliente;
	}
	
	$_SESSION['corFonteRelogio'] = $confCores['corFonteRelogio'];
	$_SESSION['corFonteBusca'] = $confCores['corFonteBusca'];
	$_SESSION['corTextoConteudo'] = $confCores['corTextoConteudo'];
	$_SESSION['corTituloConteudo'] = $confCores['corTituloConteudo'];
	$_SESSION['corFundoSite'] = $confCores['corFundoSite'];
	$_SESSION['hab_compra'] = $confCores['hab_compra'];
	$_SESSION['corBarraNome'] = $confCores['corBarraNome'];
	$_SESSION['corFonteBarraNome'] = $confCores['corFonteBarraNome'];
	$_SESSION['listaHome'] = strtolower($confCores['listaHome']);
	$_SESSION['corBordaCampo'] = $confCores['corBordaCampo'];
	$_SESSION['corFundoCampo'] = $confCores['corFundoCampo'];
	$_SESSION['corFonteCampo'] = $confCores['corFonteCampo'];
	$_SESSION['corMsgSucesso'] = $confCores['corMsgSucesso'];
	$_SESSION['corMsgErro'] = $confCores['corMsgErro'];
	
	$_SESSION['corBarraNomeProd'] = $confCores['corBarraNomeProd'];
	$_SESSION['corFonteNomeProd'] = $confCores['corFonteNomeProd'];
	
	if(!empty($confCores['corFonteMenuLateral'])){
		$_SESSION['corFonteMenuLateral'] = $confCores['corFonteMenuLateral'];
	}else{
		$_SESSION['corFonteMenuLateral'] = "#FFFFFF";
	}
	if(!empty($confCores['corFundoDivs'])){
		$_SESSION['corFundoDivs'] = $confCores['corFundoDivs'];
	}else{
		$_SESSION['corFundoDivs'] = "#FFFFFF";
	}
	if(!empty($confCores['corLinkDivs'])){
		$_SESSION['corLinkDivs'] = $confCores['corLinkDivs'];
	}else{
		$_SESSION['corLinkDivs'] = "#3E5A81";
	}
	if(!empty($confCores['corPrecoNormal'])){
		$_SESSION['corPrecoNormal'] = $confCores['corPrecoNormal'];
	}else{
		$_SESSION['corPrecoNormal'] = "#3E5A81";
	}
	if(!empty($confCores['corPrecoPromo'])){
		$_SESSION['corPrecoPromo'] = $confCores['corPrecoPromo'];
	}else{
		$_SESSION['corPrecoPromo'] = "#3E5A81";
	}		
	$_SESSION['corBarraCaracteristicas'] = $confCores['corBarraCaracteristicas'];
	$_SESSION['corFonteBarraCaracteristicas'] = $confCores['corFonteBarraCaracteristicas'];
	
	$SQL_Trad = "SELECT * FROM idioma_traducao WHERE idioma_edicao_id = ".$edicao_id;
	$resTrad = mysql_query($SQL_Trad);
	$rowTrad = mysql_fetch_array($resTrad);
	if(!empty($rowTrad)){
		foreach($rowTrad as $var => $valor){
			${"_".$var} = $valor;
		}
	}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<meta http-equiv="imagetoolbar" content="no" />
	<? if(!empty($palavraChave)){ ?>
	<meta name="keywords" content="<?= $palavraChave ?>" />
	<? } ?>
	<meta name="description" content="<?= $descricaoSite ?>" />
	<title><?= stripslashes($_SESSION['edicao_titulo']) ?></title>
	<script type="text/javascript">
		_idioma_carregando = "<?= $_idioma_carregando ?>";
		_idioma_emailinvalido = "<?= $_idioma_emailinvalido ?>";
		_idioma_necessariopreencher = "<?= htmlentities($_idioma_necessariopreencher) ?>";
		_idioma_imagemcont = "<?= $_idioma_imagemcont ?>";
	</script>
	<script type="text/javascript" src="js.php"></script>
	<script type="text/javascript">
		$(function(){
			$("div#infoEvonline").hide(); 
			$("a#clickHref").click(function() {
				var $subnav2 = $("div#infoEvonline");	
				//var $subnav = $(this).children();
				if($subnav2.is(":visible")) {
					$subnav2.animate({height: "toggle"}, 750, "easeInOutExpo").prev().removeClass("current");
				}
				if(!$subnav2.is(":visible")) {
					$("ul#prjcats li ul:visible").animate({height: "toggle"}, 750, "easeInOutExpo").prev().removeClass("current");
					$subnav2.animate({height: "toggle"}, 750, "easeInOutExpo");
				}
				return false;
			});
		});	
	</script>
	<style type="text/css" media="screen">
		@import url("lib/lightbox/css/jquery.lightbox-0.4.css");
	</style>
    <script type="text/javascript" src="lib/lightbox/js/jquery.lightbox-0.4.min.js"></script>
	<style type="text/css">
		@import url("<?= $_base_dir ?>/css/estiloProdutos.css");
		@import url("<?= $_base_dir ?>/css/estiloPublico.css");
		@import url("<?= $_base_dir ?>/css/menu.css");
		@import url("<?= $_base_dir ?>/css/rss.css");
		@import url("<?= $_base_dir ?>/css/enquete.css");
		@import url("<?= $_base_dir ?>/css/comentario.css");
		@import url("css/modalWindow.css");
		@import url("lib/mmenu/estilo.css");

		.tdCorDoFundo a{
			color:<?= $_SESSION['corLinkDivs'] ?>;
		}
		label.txtBuscaParametro{
			color:<?= $_SESSION['corTextoConteudo'] ?>;
		}
		div.titulo_principalBusca{
			color:<?= $_SESSION['corTituloConteudo'] ?>;
		}
		#categoriaProdutos ul li a, #categoriaProdutos ul li ul li a,#produtoQuantidade a{
			color:<?= $_SESSION['corFonteMenuLateral'] ?>;
		}
		<?
		$url1 = $_base_dir."/imagens/produto_topo.jpg";
		list($img_x, $img_y) = getimagesize($url1);
		?>
		#produtoTopo{
			margin-top:15px;
			height:<?= $img_y ?>px;
			background:url(<?= $url1 ?>) no-repeat bottom left;
		}
		<?
		$url2 = $_base_dir."/imagens/produto_rodape.jpg";
		list($img_x, $img_y) = getimagesize($url2);
		?>	
		#produtoRodape{
			margin-bottom:15px;
			height:<?= $img_y ?>px;
			background:url(<?= $url2 ?>) no-repeat top left;
		}
	
		.exibeAnexoArquivo{
			background:url(<?= $_base_dir."/imagens/" ?>tit_anexos.jpg) no-repeat top right;
		}
		div.evorss{
			background:url(<?= $_base_dir."/imagens/" ?>tit_rss.jpg) no-repeat top left;
		}
		<?
		if(!empty($_SESSION['corBordaCampo']) and !empty($_SESSION['corFundoCampo'])){
			?>
			input,select,textarea{
				border:1px solid <?= $_SESSION['corBordaCampo'] ?>;
				background-color:<?= $_SESSION['corFundoCampo'] ?>;
				color:<?= $_SESSION['corFonteCampo'] ?>;
			}
			
			#modalAmigo input,#modalAmigo select,#modalAmigo textarea{
				border:1px solid <?= $_SESSION['corBordaCampo'] ?>;
				background-color:<?= $_SESSION['corFundoCampo'] ?>;
				color:<?= $_SESSION['corFonteCampo'] ?>;
			}

			form.formNewsLetter{
				border-top:1px solid <?= $_SESSION['corBordaCampo'] ?>;
			}
			#form_enquete{
				border-top:1px solid <?= $_SESSION['corBordaCampo'] ?>;
			}
			<?
		}
		?>
		#form_enquete *{
			color:<?= $_SESSION['corTextoConteudo'] ?>;
		}
	
		.msg, #enquete_msg span.msg{
			color:<?= $_SESSION['corMsgSucesso'] ?>;
		}
		.msgAlert, #enquete_msg span.msgAlert{
			color:<?= $_SESSION['corMsgErro'] ?>;
		}
		.msgError, #enquete_msg span.msgError{
			color:<?= $_SESSION['corMsgErro'] ?>;
		}
		
		#modalAmigo{
			z-index:9999999;
		}
		
		.btn_submit, #form_enquete .btn_submit{
			float:right;
			background:url(<?= $_base_dir."/imagens/" ?>btn_bg.jpg) no-repeat top left;
			width:125px;
			height:18px;
			border:0px;
			padding:0px 0px 1px 5px;
			margin:5px 0px 0px 0px;
			text-align:left;
			font-size:11px;
			color:<?= $_SESSION['corFonteCampo'] ?>;
			cursor:pointer;
		}
    </style>

	<style type="text/css" media="print">
        @import url("css/impressao.css");
    </style>
	<!--[if lt IE 7]>
	 <style type="text/css">
		 .dock img {behavior: url(lib/interface1.2/iepngfix.htc) }
	 </style>
	<![endif]-->
</head>
<body style="background-color:<?= $_SESSION['corFundoSite'] ?>;" onload="addsMenuHtml(<?= $_SESSION['edicao_id'] ?>);">
	<?
	############################
	# Escreve na tela se Executado o criaDB.php 
	############################
	if(!empty($_VARIAVEL_CRIADB)){
		echo $_VARIAVEL_CRIADB;
	}
	
	############################
	#   INCLUI      TEMPLATE   #
	############################
	
	$_path_tlp = "tpl/".$_modelo_layout."/tpl.php";
	
	if(file_exists($_path_tlp)){
		include($_path_tlp);
	}else{
		echo htmlentities("Diret�rio de TPL inv�lido - Entre em contato com o Administrador do sistema!");
	}
	
	if(!empty($codigoExterno)){
		echo $codigoExterno;
	}
	
	@mysql_close($conexaoBanco);
	?>
</body>
</html>