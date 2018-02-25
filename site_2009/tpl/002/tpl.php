<h1 class="tit"><a rel="history" href="?edicao_id=<?=$_SESSION['edicao_id']?>" class="clickHome"><?= $_SESSION['edicao_titulo'] ?></a></h1>
<div id="tempTopo">
<?
	#
	# Verifica e exibe BANNER DO TOPO 
	#
	include("tpl/topo.php");

	$arY = explode(".jpg",$styleTopo);
	if($arY[1]){
		?>
		<div id="topSuper" class="topoLogo" <?= $styleTopo ?>>
			<div style="width:500px;height:19px;float:left;text-align:left;margin:5px 0px 0px 10px;color:<?= $_SESSION['corFonteBusca'] ?>;">
			<?
				#
				# Idioma
				#
				include("includes/anteriores.php");
			?>
			</div>
			<a href="?edicao_id=<?= $_SESSION['edicao_id'] ?>" class="clickHome" title="Home">&nbsp;</a>
			<table class="topoLogoBusca" cellpadding="2" cellspacing="2" border="0">
				<tr>
					<td align="right" valign="bottom" id="target_menu_superior" style="height:50px;">
						<?
							#Menu superior
							$edicao_id = $_SESSION['edicao_id'];
							//include("lib/mmenu/exibeMenu.php");
						?>
					</td>
				</tr>
				<tr>
					<td align="right" valign="bottom" style="height:58px;">
						<?
							#relogio
							//include("relogio.php");
						?>
					</td>
				</tr>
			</table>
		</div>
		<?				
	}else{
		$args = explode("x",strtolower($arquivo2_par));
		$swf_topo_larg = $args[0];
		$swf_topo_alt = $args[1];
		
		if(!empty($swf_topo_larg)){
			$l1 = $swf_topo_larg;
		}else{
			$l1 = "802";
		}
		if(!empty($swf_topo_alt)){
			$a1 = $swf_topo_alt;
		}else{
			$a1 = "129";
		}
		?>
		<div id="topSuper" class="topoLogo">
			<div id="swf_topo">
				<script type="text/javascript">
				   var so = new SWFObject("admin/arquivos/<?= $_SESSION['arquivo2'] ?>", "destaque", "<?= $l1 ?>", "<?= $a1 ?>", "8", "#ffffff");
				   so.addParam("quality", "high");
				   so.addParam("wmode", "transparent");
				   so.write("swf_topo");
				</script>
			</div>
			<div id="inforGer">
				<table cellpadding="0" cellspacing="0" border="0" style="position:absolute;width:802px;height:129px;float:left;">
					<tr>	
						<td align="left" valign="top">
							<div id="imgAnteriores" style="color:<?= $_SESSION['corFonteBusca'] ?>;">
								<?
									# Idioma
									include("includes/anteriores.php");
								?>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<?
	}
?>
</div>
<div id="tempMenu">
	<?
        #Menu horizontal
        include('includes/menu.php'); 
    ?>
</div>
<div id="tempConteudo">
	<div id="tempConteudoDet">
        <div id="abaConteudoCont" >
            <div id="abaConteudoEsquerda">
                <?
                    //Lista Categorias
                    include("ecomm_estrutura.php");
            
                    //Inclui o campo de busca 
                    include("includes/busca.php"); 
        
                    //Inclui o campo de newsletter
                    include("includes/recebaNews.php"); 
                    
                    //Inclui se Habilitado o PAGSEGURO
                    include("includes/pagSeguro.php"); 
                    
                    //Inclui o campo de newsletter
                    include("lib/enquete/form_enquete.php"); 
                    
                    //Inclui HTML feito pelo Webmaster
                    include("html/menu_lateral.html");
					
					if($hab_menu == 'S' and strtolower($_modelo_tipo) == 'p'){
						?>
						<div id="mostraProdutosDestaques" style="height:auto;">
							<? 
								#
								# Div que  preenchida pelo AJAX com produtos randomizados 
								#
							?>
						</div>
						<?
					}
                ?>
            </div>
            <div id="abaConteudoDireita">
                <div id="conteudo">
					<? 
                        include("tela.php");
                    ?>
                </div>	
            </div> 
            <div class="clearBoth"></div>
        </div>
      </div>
</div>
<div id="tempRodape">
	<table border="0" cellpadding="0" cellspacing="0" class="rodape" >
      <tr>
        <td align="left" style="padding-left:20px;width:70%;">
			<?
				if(!empty($_SESSION['textoEndereco'])){
					?>
					<span style="color:#<?= $_SESSION['corFonte'] ?>;font-size:11px;"><?= nl2br($_SESSION['textoEndereco']) ?></span>
					<?
				}else{
					?>
					<img src="imagens/layout/pixel.gif" alt="" />
					<?
				}
			?>
		</td>
        <td style="width:30%;" align="right" valign="top">
			<?
				#
				# Inclui e exibe o RODAPE
				#
				include("tpl/rodape.php");
			?>
		  </td>
      </tr>
    </table>
</div>