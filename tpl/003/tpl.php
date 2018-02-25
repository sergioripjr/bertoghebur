<div id="tempRep">
   	<? include("tpl/003/topo.php") ?>
	<div id="tempAbsoluta" <?= $styleTopo ?>>
        <div id="tempCentral">
            <div id="tempTopo">           
                <a href="?edicao_id=<?= $_SESSION['edicao_id'] ?>" class="clickHome" title="Home"><h1 class="tit"><?= $_SESSION['edicao_titulo'] ?></h1></a>
                <div id="tempIdioma"><? include("includes/anteriores.php"); ?></div>
            </div>
            <div id="tempMenu">
                <? include('tpl/003/menu.php') ?>
            </div>
            <div id="tempConteudo" style="background-color:<?= $_SESSION['corFundoDivs'] ?>;">
            	<div id="tempConteudoBanner">
                	<? include('tpl/003/banner_home.php') ?>
                </div>
                <div id="tempConteudoMenu">
					<?
					include("tpl/003/carrinho.php");
					include("tpl/003/busca.php"); #Busca					?>					<a href="http://bertoghebur.sytes.net:8080/cpjw.cgi?pesq" target="_blank">						<img src="html/banner_consulta_processual.jpg" alt="Consulta Processual">					</a>					<?
					include("tpl/003/ecomm_estrutura.php"); #MenuProdutos
					include("tpl/003/recebaNews.php");  #Newsletter
					if(strtolower($_pag_seguro) == 's' and strtolower($_modelo_tipo) == 'p'){ #ImagemPagSeguro
						?><a href="?pag=info_pagseguro" class="indexPagSeguro"><img src="<?= $_base_dir ?>/imagens/banner_pagseguro.jpg" alt="PagSeguro" /></a><?
					}
					include("lib/enquete/form_enquete.php"); #Enquete                       					include("html/menu_lateral.html"); #HTMLusuario
					/*(
					if($hab_menu == 'S' and strtolower($_modelo_tipo) == 'p'){
						?><div id="mostraProdutosDestaques" style="height:auto;"><? #AJAX ?></div><?
					}*/
                    ?>
                </div>
                <div id="tempConteudoCont" class="tdCorDoFundo">
                    <div id="conteudo">
                        <? include("tpl/003/tela.php") ?>
                    </div>	 
                </div>
                <div class="clearBoth"></div>
            </div>
            <div id="tempRodape">
            	<span style="color:#<?= $_SESSION['corFonte'] ?>;"><?= nl2br($_SESSION['textoEndereco']) ?></span>
                <a href="<?= $_SESSION['urlSiteCliente'] ?>">&nbsp;</a>
            </div>
        </div>
    </div>
</div>