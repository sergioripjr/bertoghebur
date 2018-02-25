<?
	
	$result = mysql_query($query="
	SELECT 1
		, c.conteudo_id AS id
		, c.conteudo_titulo AS titulo
		, c.conteudo_chamada AS chamada
		, c.menu_id
		, a.arquivo_id AS imagem
	FROM conteudo c
		LEFT JOIN conteudo_arquivo ca ON ca.conteudo_id=c.conteudo_id
			LEFT JOIN arquivo a ON a.arquivo_id=ca.arquivo_id AND a.arquivo_mimetype LIKE 'image%'
	WHERE 1=1
		AND c.destaque='manchete'
		AND c.edicao_id={$_SESSION['edicao_id']}
		AND NOW() 
			BETWEEN c.conteudo_datainicio 
			AND DATE_ADD(  IF( c.conteudo_expira , NOW() , c.conteudo_datafim )  ,  INTERVAL 1 DAY  )
	ORDER BY c.conteudo_datainicio DESC
	LIMIT 1
	");
	$manchete = @mysql_fetch_array($result);
?>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top:17px;">
	<tr>
    <td align="left" valign="top" id="evo_ban_2" >
		  <?
			#
			# Exibe os demais
			#
			$result = mysql_query($query="
				SELECT 
					DATE_FORMAT(conteudo_datainicio,'%d/%m/%Y') as dataInicio
					,DATE_FORMAT(conteudo_datafim,'%d/%m/%Y') as dataFim
					, c.conteudo_id AS id
					, c.conteudo_titulo AS titulo
					, c.conteudo_chamada AS chamada
					, c.menu_id
					, c.conteudo_tipo
				FROM 
					conteudo c
				WHERE 
					c.conteudo_destaque = 'S' AND c.edicao_id={$_SESSION['edicao_id']}
					OR
					c.conteudo_destaque = 'S' AND c.conteudo_tipo = 'ocultos' AND c.edicao_id={$_SESSION['edicao_id']}
					OR
					c.conteudo_destaque = 'S' AND c.conteudo_tipo = 'cabecalho' AND c.edicao_id={$_SESSION['edicao_id']}
					OR
					c.conteudo_destaque = 'S' AND c.conteudo_tipo = 'menu' AND c.edicao_id={$_SESSION['edicao_id']}
				ORDER BY 
					c.conteudo_datainicio DESC
			");
			$cont = 1;
			
			do{ 
				
				if(!empty($destaque['titulo'])){			
					#
					# Defie estilo da lista
					#
					if($cont == 1){
						$var = "margin-right:15px;";
						$cont = 2;
						if($_SESSION['listaHome'] != "s"){
							?>
							<div style="float:left;width:100%;height:1px;">&nbsp;</div>
							<?
						}
					}else{
						$var = "";
						$cont = 1;
						

					}
					
					#
					# Se tiver data cria um SPAN 
					#
					if(!empty($destaque['dataInicio']) and $destaque['dataInicio'] != "00/00/0000"){
						$_dataFormatada = '<span style="display:block;font-size:9px;font-weight:normal;margin-left:3px;">(';
						$_dataFormatada .= $destaque['dataInicio'];
						$_dataFormatada .=  ')</span>';
					}else{
						$_dataFormatada = "";
					}
					
					#
					# Define o valor do HREF
					#
					if($destaque['conteudo_tipo'] == "cabecalho"){
						$href = "pag=ecomm_produto_lista&amp;menu_id=".$destaque['menu_id'];
					}else if(!empty($destaque['menu_id']) and $destaque['menu_id'] > 0){
						$href = "menu_id=".$destaque['menu_id']."&amp;id=".$destaque['id'];
					}else{
						$href = "id=".$destaque['id'];
					}
					
					if($_SESSION['listaHome'] == "s"){
						$tableW = "100%";
					}else{
						$tableW = "325";
					}
					?>
					<table width="<?= $tableW ?>"  border="0" cellspacing="0" cellpadding="0" style="cursor: pointer;<?= $var ?>margin-bottom:0px;float:left;">
						<tr>
							<td class="chamadaDestaque" valign="top">
								<a href="?<?= $href ?>" class="tituloChamado" style="color:<?= $_SESSION['corTituloConteudo'] ?>;">
									<?= stripslashes(htmlentities($destaque['titulo'])).$_dataFormatada ?>
								</a>
								<div class="linkBlock espacoP" onclick="document.location.href='?<?= $href ?>'" style="margin-top:10px;text-align:justify;color:<?= $_SESSION['corTextoConteudo'] ?>;">
									<?= stripslashes($destaque['chamada']); ?>
								</div>
							</td>
						</tr>
					</table>
					<?
				}
		  }while($destaque= @mysql_fetch_array($result)) 
		 ?>    
	</td>
  </tr>
</table>
<?
	//Produtos em destaques
	include("ecomm_produto_destaque.php");
	
	//Inclui HTML criado pelo Webmaster
	include("html/home.html");
?>
<script type="text/javascript">
	$("#tempConteudoBanner").css("display","block");
</script>