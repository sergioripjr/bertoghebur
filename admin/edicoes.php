<? 


require_once("includes/autentica.php");
require_once("../includes/funcoes.php"); 
require_once("../includes/removeAcentos.php");
require_once("includes/geraExeQuery.php");
	
if($direitotelas[$tela]) {
	if($_POST['restaurar']){
		$SQL_Deleta = "SELECT * FROM edicao WHERE edicao_id = ".$id;
		if($exec = mysql_query($SQL_Deleta)){
			$rowDel = mysql_fetch_array($exec);
			
			$pathFiles = "arquivos/";
			@unlink($pathFiles.$rowDel['arquivo2']);
			@unlink($pathFiles.$rowDel['arquivo3']);
			@unlink($pathFiles.$rowDel['arquivo4']);
			@unlink($pathFiles.$rowDel['arquivo5']);
			$SQL_Restaura = "UPDATE edicao SET arquivo2 = '', arquivo3='', arquivo4 = '',arquivo5 = '',arquivo2_par = '',arquivo4_par = '',arquivo5_par = '' WHERE edicao_id =" .$id;
			@mysql_query($SQL_Restaura);
		
		}
	}
	
	if(!empty($_GET['did'])){
		$arquivoNome = $_GET['did'];
		unlink($arquivoNome);
		$update_SQL = "UPDATE edicao SET arquivo = '' WHERE edicao_id = $id";
		mysql_query($update_SQL);	
	}
	
	if($_POST['dest4Exc']){
		$file_excluir = $_POST['dest4Exc'];
		unlink("arquivos/$file_excluir");
		$update_SQL = "UPDATE edicao SET arquivo4 = '' WHERE edicao_id = $id";
		mysql_query($update_SQL);
	}

	if( $listar && !$id ){

		#
		# Escreve o titulo da Página Atual e Mensagens do Sistema
		#
		escreveTitulo("Idiomas","");

		if($_POST['filtro']['checkbox'])
		{
			foreach( $_POST['filtro']['checkbox'] as $id => $lixo )
			{
				mysql_query($query = "DELETE FROM conteudo WHERE edicao_id='$id'");
				mysql_query($query = "DELETE FROM menu WHERE edicao_id='$id'");
			}
		}

		$result = mysql_query($query="
			SELECT *, edicao_id as id, ordem AS edicao_ordem
			FROM edicao
			WHERE 1=1
				"
			.($filtro['titulo']?"
				AND nome LIKE '%" . mysql_escape_string($filtro['titulo']) . "%'":"")."
			".(
			$ordem?"
			ORDER BY $ordem":"")."
		"); 
		
		$relatorio->atributo .= " name='relatorio' id='relatorio'";
		$relatorio->tabeladb = 'edicao';
		$relatorio->campochave = 'edicao_id';
		$relatorio->addCampochave( "id" );
		$relatorio->addColuna("edicao_ordem", "Ordem");
		$relatorio->addColuna("nome", "Idiomas");
		$relatorio->setResult( $result );
		$relatorio->showHTML();
		$relatorio->showErro();
		
		include("includes/botoes.php");
		
		return;
	} 
	
	if($id){ 
		// ----------------------------
		$result=mysql_query($query="
		SELECT a.arquivo,  COUNT(b.edicao_id) AS referencias
		FROM edicao a
		LEFT JOIN edicao b ON b.arquivo=a.arquivo
		WHERE a.edicao_id=$id
		GROUP BY a.arquivo
		");
		$arquivo_anterior = mysql_result($result,0,"arquivo");
		$arquivo_anterior_referencias = mysql_result($result,0,"referencias");
	
		
	}
	if($excluir){ // Excluso
		if($arquivo_anterior_referencias==1){ // quando s tem ele usando o arquivo
			@unlink("arquivos/$arquivo_anterior");
		}
		$excluiu=mysql_query($query="DELETE FROM edicao WHERE edicao_id=$id");
		if($excluiu){
			$mensagem = "Excluído com sucesso!";
		}else{
			$mensagem = "Não foi possível excluir!";
		}
		$confirma = "";
		$id = "";
	}
	if($confirma){ // Veio do Formulrio
		$cor = $_POST['fonte'];
		if(!$nome){
			$erro['nome'] = $classerro;
		}
		
		if(!$datainicio){
			//$erro['datainicio'] = $classerro;
		}
		
		$ini = $datainicio;
		$datainicio = $ini[6].$ini[7].$ini[8].$ini[9].$ini[3].$ini[4].$ini[0].$ini[1];
		
		if($erro){
			$n = count($erro);
			$s = $n==1?"":"s";
			$mensagem = "Seu formulário contém $n erro$s de preenchimento!";
		}else{
			
			if($cadastrado)
			{ // Trata resultado da tentativa de insero...
				if($cadastrado=="sim"){
					$mensagem = "Cadastrado com sucesso!";
				}
				if($cadastrado=="não"){
					$mensagem = "Não foi possível cadastrar!";
				}
				$cadastrado = "";
			}
			else
			{
				if(@$_POST['arq_dobanco']) foreach($_POST['arq_dobanco'] as $chave => $valor){
					@system("rm arquivos/".sprintf("%011d",$valor).".*");
					mysql_query($query="DELETE FROM arquivo WHERE arquivo_id=$valor");
					mysql_query($query="DELETE FROM edicao_arquivo WHERE arquivo_id=$valor");
				}
				$edicao_nome = addslashes($_POST['edicao_nome']);
				$edicao_ordem = ($_POST['edicao_ordem']);
				$cor = $_POST['cor'];
				$texto = addslashes($_POST['texto']);
				$fonte = $_POST['fonte'];
				$edicao_titulo = addslashes($_POST['edicao_titulo']);
				$url_arquivo4 = $_POST['url_arquivo4'];
				$arquivo2_par = $_POST['arquivo2_par'];
				$arquivo4_par = $_POST['arquivo4_par'];
				$arquivo5_par = $_POST['arquivo5_par'];

				if($id){ // Atualizao
					
					$atualizou = mysql_query($query="
					UPDATE edicao SET
						nome='$edicao_nome'
						, ordem=$edicao_ordem
						, cor='#$cor'
						, datainicio='$datainicio'
						, texto='$texto'
						, fonte='$fonte'
						, edicao_titulo='$edicao_titulo'
						, url_arquivo4='$url_arquivo4'
						, arquivo2_par='$arquivo2_par'
						, arquivo4_par='$arquivo4_par'
						, arquivo5_par='$arquivo5_par'
						, arquivo5_url='$arquivo5_url'
					WHERE edicao_id=$id
					");
					$updt_menu=mysql_query($query_menu = "UPDATE menu SET nome='$edicao_nome' WHERE 1=1 AND edicao_id=$id AND menu_pai = 0");

					if($atualizou){
						$mensagem = "Atualizado com sucesso!";
					}else{
						$mensagem = "Não foi possível atualizar!";
					}
				}else{ // Cadastro
					
					// IDIOMA
					$cadastrou=mysql_query($query="
					INSERT INTO edicao( 
						 nome
						 , ordem
						, cor
						, datainicio
						, texto
						, fonte
						, edicao_titulo
						, url_arquivo4
						, arquivo2_par
						, arquivo4_par
						, arquivo5_par
						, arquivo5_url 
					)VALUES(
						 '$edicao_nome'
						 , $edicao_ordem
						, '#$cor'
						, '$datainicio'
						, '$texto'
						, '$fonte'
						, '$edicao_titulo'
						, '$url_arquivo4'
						, '$arquivo2_par'
						, '$arquivo4_par'
						, '$arquivo5_par'
						, '$arquivo5_url'
					)
					");

					$id = mysql_insert_id();
					
					// MENU PRINCIPAL
					$cad_menu=mysql_query($query_menu="
					INSERT INTO menu( 
						menu_pai 
						, edicao_id 
						, nome 
						, tipo 
						, ordem 
						, sistema 
					)VALUES(
						0 
						, $id 
						, '$edicao_nome' 
						, 'artigos' 
						, 0 
						, 'website' 
					)
					");
					$menu_id = mysql_insert_id();
					
					// HOME
					$cad_home=mysql_query($query_home="
					INSERT INTO menu( 
						menu_pai 
						, edicao_id 
						, nome 
						, tipo 
						, ordem 
						, sistema 
					)VALUES(
						$menu_id 
						, $id 
						, 'HOME' 
						, 'home' 
						, 0 
						, 'website' 
					)
					");
					
					if($cadastrou){
						$cadastrado = "sim";
					}else{
						$cadastrado = "não";
					}
					
					
				}
				
				if(!empty($_POST['idioma_traducao_id'])){
					# Atualiza
					geraExeQuery("idioma_traducao_id",$_POST['idioma_traducao_id'],"idioma_traducao",array("idioma_edicao_id","idioma_traducao_id"),"","");
				}else{
					# Insere
					geraExeQuery("","","idioma_traducao",array("idioma_traducao_id"),"","");
				}
					
				if($cadastrou||$atualizou){
				
					$SQL_Verify = "SELECT * FROM edicao WHERE edicao_id = ".$id;
					if($result = mysql_query($SQL_Verify)){
						$rowVery = mysql_fetch_array($result);
						$excluirFile = $rowVery['arquivo'];
						$excluirFile2 = $rowVery['arquivo2'];
						$excluirFile3 = $rowVery['arquivo3'];
						$excluirFile4 = $rowVery['arquivo4'];
						$excluirFile5 = $rowVery['arquivo5'];
					}
					
					
				
					if($_FILES['imagem']['size']){ 
						$nomearquivo = date('YmdHisu')."-".RemoveAcentos($_FILES['imagem']['name']);						
						if(move_uploaded_file( $_FILES['imagem']['tmp_name'] , "arquivos/$nomearquivo" )){
							reduzimagem("arquivos/".$nomearquivo,20);
							mysql_query("UPDATE edicao SET arquivo='$nomearquivo' WHERE edicao_id=$id");
							@unlink("arquivos/$excluirFile");
						}
					}
					if($_FILES['imagem2']['size']){
						$nomearquivo = date('YmdHisu')."-".RemoveAcentos($_FILES['imagem2']['name']);
						if(move_uploaded_file( $_FILES['imagem2']['tmp_name'] , "arquivos/$nomearquivo" )){
							@unlink("arquivos/$excluirFile2");
							mysql_query("UPDATE edicao SET arquivo2='$nomearquivo' WHERE edicao_id=$id");
						}
					}
					if($_FILES['imagem3']['size']){
						$nomearquivo = date('YmdHisu')."-".RemoveAcentos($_FILES['imagem3']['name']);
						if(move_uploaded_file( $_FILES['imagem3']['tmp_name'] , "arquivos/$nomearquivo" )){
							@unlink("arquivos/$excluirFile3");
							mysql_query("UPDATE edicao SET arquivo3='$nomearquivo' WHERE edicao_id=$id");
						}
					}

					#
					# Insere imagens da Home
					#
					if(!empty($_FILES['imagem4'])){
						$nomearquivo = date('YmdHisu')."-".RemoveAcentos($_FILES['imagem4']['name']);
						if(move_uploaded_file( $_FILES['imagem4']['tmp_name'] , "arquivos/$nomearquivo" )){
							@unlink("arquivos/$excluirFile4");
							$arrayInfo = explode(".",$nomearquivo);
							$key = count($arrayInfo)-1;
							$str = $arrayInfo[$key];							
							if($str != "swf"){
								if($_modelo_layout == 003){
									reduzimagemLargura("arquivos/".$nomearquivo,927);
								}else{
									reduzimagemLargura("arquivos/".$nomearquivo,550);
								}
							}
							$update_SQL = "UPDATE edicao SET arquivo4 = '$nomearquivo' WHERE edicao_id=$id";
							mysql_query($update_SQL);
						}
					}
					
					#
					# Insere o banner lateral ( arquivo5 ) 
					#
					if($_FILES['imagem5']['size']){
						$nomearquivo = date('YmdHisu')."-".RemoveAcentos($_FILES['imagem5']['name']);
						if(move_uploaded_file( $_FILES['imagem5']['tmp_name'] , "arquivos/$nomearquivo" )){
							@unlink("arquivos/$excluirFile5");
							$arrayInfo = explode(".",$nomearquivo);
							$key = count($arrayInfo)-1;
							$str = $arrayInfo[$key];							
							if($str != "swf"){
								if($_modelo_layout == 003){
									reduzimagemLargura("arquivos/".$nomearquivo,230);
								}else{
									reduzimagemLargura("arquivos/".$nomearquivo,197);
								}
							}
							$update_SQL = "UPDATE edicao SET arquivo5 = '$nomearquivo' WHERE edicao_id=$id";
							mysql_query($update_SQL);
						}
					}

					$nome_arquivo = $v;
					$edicao_id = $id;
					
					for($i = 1;$i <= $_POST['totalAnexos'];$i++){
						$nomearquivo = date('YmdHisu')."-".RemoveAcentos($_FILES['input_'.$i]['name']);
						if(move_uploaded_file($_FILES['input_'.$i]['tmp_name'] , "arquivos/$nomearquivo" )){
							$SQL_Insert = "INSERT INTO edicao_arquivo (edicao_id,arquivo_nome) VALUES(".$edicao_id.",'".$nomearquivo."')";
							if($re = mysql_query($SQL_Insert)){
								
							}
						}
					}			
				}
			}
		}
	}
	
	// Pegando valores do banco pra preencher o formulrio
	if($id){ 
		
		$result = @mysql_query($query="
		SELECT nome as edicao_nome,edicao_titulo, ordem AS edicao_ordem, cor, arquivo, arquivo2, arquivo3, arquivo4, arquivo5
		,url_arquivo4,texto, fonte,arquivo2_par,arquivo4_par,arquivo5_par,arquivo5_url , DATE_FORMAT( datainicio , '%d/%m/%Y' ) AS datainicio
		FROM edicao
		WHERE edicao_id=$id
		");

		$row = @mysql_fetch_array($result);
		$_url_arquivo4 = $row['url_arquivo4'];
		
		foreach($row as $var => $valor)$$var = $valor;
		
		$arquivo5 = $row['arquivo5'];
	}

} 

#
# SELECT
#
$row = geraExeQuery("","","idioma_traducao","",array("*"),"WHERE idioma_edicao_id = ".$id);
if(!empty($row)){
	foreach($row as $var => $valor){
		$$var = $valor;
	}
}

if($direitotelas[$tela]) { 

	#
	# Escreve o titulo da Página Atual e Mensagens do Sistema
	#
	escreveTitulo(utf8_decode("Edição de Idioma"),utf8_decode($mensagem));


	# Caminho da LIB de cores
	$color_path = "../lib/jquery/color/";
?>
<link rel="stylesheet" href="<?= $color_path ?>css/colorpicker.css" type="text/css" />
<script type="text/javascript" src="<?= $color_path ?>js/jquery.js"></script>
<script type="text/javascript" src="<?= $color_path ?>js/colorpicker.js"></script>
<script type="text/javascript" src="<?= $color_path ?>js/eye.js"></script>
<script type="text/javascript" src="<?= $color_path ?>js/utils.js"></script>

<script type="text/javascript">
	function hideShowContent(op){
		var $div1 = $("div#contentImg");
		var $div2 = $("div#contentFlash");
		if(op == 1){
			$div1.css("display","block");
			$div2.css("display","none");
		}else{
			$div1.css("display","none");
			$div2.css("display","block");	
		}
	}
	
	$(document).ready(function(){
		atual = 1;
		$("button#add").click(
			function (){		
				objHtm = $("div#item"+atual).clone();
				objHtm.insertAfter($("div#item"+atual));
				atual = parseInt(atual)+1;
				objHtm.attr("id","item"+atual)
	
				objLabelHtml = $("label", objHtm);
				$.each(objLabelHtml, function(i, n){
					$(n).attr("name","label"+atual);
					$(n).text("Imagem "+atual);
				});			
				objInputHtml = $("input:file", objHtm);
				$.each(objInputHtml, function(i, n){
					$(n).attr("name","input_"+atual);
					$(n).val("");
				});
				
				$("#totalAnexos").val(atual);
				
			}
		);
		
		$('#fonte').ColorPicker({
			onSubmit: function(hsb, hex, rgb) {
				$('#fonte').val(hex);
			},
			onBeforeShow: function () {
				$(this).ColorPickerSetColor(this.value);
			}
		});
	});
</script>
<script src="calendar/calendar.js"></script>
<link href="calendar/calendar.css" rel="stylesheet" type="text/css" />
<form class="formCadastro" enctype="multipart/form-data" action="<?=$PHP_SELF?>?tela=<?=$tela?>&PHPSESSID=<?=$PHPSESSID?>" method="post">
	<table border="0" align="center" cellpadding="5" cellspacing="0" class="textoForm">
		<thead>
			<tr>
				<td colspan="3">IDIOMA</td>
			</tr>
		</thead>
		<tr class="escura">	
			<td>
				<label for="edicao_ordem">Ordem:</label>
				<input 	size="3" maxlength="3" type="text" name="edicao_ordem" id="edicao_ordem" value='<?=$edicao_ordem?>' ref='naovazio' />
			</td>
			<td>
				<label for="edicao_nome">T&iacute;tulo do Idioma:</label>
				<input 	type="text" name="edicao_nome" id="edicao_nome" value="<?= htmlspecialchars(stripslashes($edicao_nome)) ?>" ref='naovazio' />
			</td>
			<td>
				<label for="edicao_titulo">T&iacute;tulo do site:</label>
				<input 	type="text" name="edicao_titulo" id="edicao_titulo" value="<?= htmlspecialchars(stripslashes($edicao_titulo)) ?>" ref='naovazio' />		
			</td>
		</tr>		
		<tr class="clara">
			<td colspan="3">
				<label for="imagem">Imagem de identifica&ccedil;&atilde;o:</label>
				<? 
					$imagem = "arquivos/$arquivo";
					if(file_exists($imagem) and !is_dir($imagem)){ 
						echo "<img src='".$imagem."' galleryimg='no' />";
						echo '<br /><a href="?tela=edicoes&id='.$id.'&did='.$imagem.'"><img src="imagens/icones/naorecebe.gif" alt="Excluir imagem" border="0" /> Excluir</a>';
					} 
				?>
				<input type="file" name="imagem" id="imagem" value="<?=$imagem?>" />
			</td>
		</tr>
		<tr class="escura">
			<td colspan="3">
				<label for="imagem2">Topo do site :</label>
				<? 
					
					if(!empty($id)){	
						if(empty($arquivo2)){ 
							$insert_arq3 = "UPDATE edicao SET arquivo2 = 'Topo_logomarca.jpg' WHERE edicao_id = ".$id;
							@mysql_query($insert_arq3);
							?>
							<img src="../<?= $_base_dir."/imagens/" ?>/topo_logomarca.jpg" galleryimg="no">
							<? 
						}else if(strtolower($arquivo2) == "topo_logomarca.jpg"){
							?>
							<img src="../<?= $_base_dir."/imagens/" ?>topo_logomarca.jpg" galleryimg="no">
							<? 
						}else{
							if(file_exists("arquivos/".$arquivo2)){
								$extensao = array_reverse(explode(".",$arquivo2));
								$str = $extensao[0];
								if($str != "swf"){
									?>
									<img src="arquivos/<?= $arquivo2 ?>" galleryimg="no">
									<?
								}else{
									?>
                                    <p>
                                    Informe as medidas do Flash:<br />
                                    Medidas: <input name="arquivo2_par" id="arquivo2_par" value="<?= $arquivo2_par ?>" style="width:100px;" /> Ex: 802x129
                                    </p>
                                    <?
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
                                    <div id="swf_topo">
										<script type="text/javascript">
                                           var so = new SWFObject("arquivos/<?= $arquivo2 ?>", "destaque", "<?= $l1 ?>", "<?= $a1 ?>", "8", "#ffffff");
                                           so.addParam("quality", "high");
                                           so.addParam("wmode", "transparent");
                                           so.write("swf_topo");
                                        </script>
                                    </div>
                                    <?
								}
							}else{
								?>
								<img src="../<?= $_base_dir."/imagens/" ?>/topo_logomarca.jpg" galleryimg="no">
								<?
							}
						}
					}

				?>
				<input type="file" name="imagem2" id="imagem2" value="<?=$imagem2?>" />
			</td>
		</tr>
		<tr class="clara">
			<td colspan="3">
				<input type="hidden" name="totalAnexos" id="totalAnexos" value="" />
				<label for="imagem4">Banner da home (P&aacute;gina inicial) :</label>
				<? 
				if(!empty($id)){
					$extensao = array_reverse(explode(".",$arquivo4));
					$str = $extensao[0];
					if(empty($arquivo4)){ 
					
						$insert_arq4 = "UPDATE edicao SET arquivo4 = 'destaque01.jpg' WHERE edicao_id = ".$id;
						@mysql_query($insert_arq4);
						?>
						<img src="../<?= $_base_dir."/imagens/" ?>/destaque01.jpg" galleryimg="no">
						<? 
					}else if(!empty($arquivo4) and $str != "swf" and file_exists("arquivos/".$arquivo4)){
						?>
						<img src="arquivos/<?= $arquivo4 ?>" galleryimg="no">
						<?
					}else if(!empty($arquivo4) and $str == "swf" and file_exists("arquivos/".$arquivo4)){
						?>
                        <p>
                        Informe as medidas do Flash:<br />
                        Medidas: <input name="arquivo4_par" id="arquivo4_par" value="<?= $arquivo4_par ?>" style="width:100px;" /> Ex: 539x315
                        </p>
                        <?
                            $args = explode("x",strtolower($arquivo4_par));
                            $arquivo4_larg = $args[0];
                            $arquivo4_alt = $args[1];
                            
                            if(!empty($arquivo4_larg)){
                                $l2 = $arquivo4_larg;
                            }else{
                                $l2 = "539";
                            }
                            if(!empty($arquivo4_alt)){
                                $a2 = $arquivo4_alt;
                            }else{
                                $a2 = "315";
                            }
                        ?>
						<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="<?= $l2 ?>" height="<?= $a2 ?>"  >
							<param name="movie" value="arquivos/<?= $arquivo4 ?>">
							<param name="quality" value="high">
							<param name="wmode" value="transparent">
							<embed src="arquivos/<?= $arquivo4 ?>" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="<?= $l2 ?>" height="<?= $a2 ?>" wmode="transparent" ></embed>
						</object>
						<?
					}else{
						?>
						<img src="../<?= $_base_dir."/imagens/" ?>/destaque01.jpg" galleryimg="no">
						<? 
					}
				}

				//monta menu
				$query2="
				SELECT 1
					, a.nome as nomepai 
					, a.sistema as sistema_a
					, a.menu_id as menupai_id
				FROM menu a
				WHERE 1
					AND a.sistema <> 'ecomm'
					AND a.nome <> 'HOME'
					AND edicao_id = $id
				";
				//print_r($query2);
		
				$result2 = mysql_query($query2);
				?>
				<select name="url_arquivo4" id="url_arquivo4" ref='naovazio' style="display:block;">
					<option value="">Vincular a:</option>
						<option class="itemTitulo">
							Menu principal
						</option>
						<?
						while($row2 = mysql_fetch_array($result2)){ 
						
							$sqlSub = "SELECT * FROM conteudo WHERE menu_id = ".$row2['menupai_id']." AND conteudo_tipo = 'artigos'";
							$result_sql = mysql_query($sqlSub);
							$rowSub = mysql_fetch_array($result_sql);
							$rowSubTotal = mysql_num_rows($result_sql);
		
							$comp = "edicao_id=".$id."&menu_id=".$row2['menupai_id'];
							
							//$url_arquivo4 = str_replace("&","",$url_arquivo4);
							//$comp = str_replace("&","",$comp);
							
							if($_url_arquivo4 == $comp){
								$sel1 = 'selected="selected"';
							}else{
								$sel1 = '';					
							}
							
							?>
							<option value="edicao_id=<?= $id ?>&menu_id=<?= $row2['menupai_id'] ?>" style="color:#000000;background-color:#FEFEFE;" <?= $sel1 ?>>
								<?=$row2['nomepai'] ?>
							</option>
							<?
						
							if($rowSubTotal >= 1){
								do{
									if(!empty($rowSub['conteudo_titulo'])){
									
									$comp2 = "edicao_id=".$id."&menu_id=".$row2['menupai_id']."&id=".$rowSub['conteudo_id'];
									
										if($_url_arquivo4 == $comp2){
											$sel1 = 'selected="selected"';
										}else{
											$sel1 = '';
										}
		
										?>
										<option value="edicao_id=<?= $id ?>&menu_id=<?= $row2['menupai_id'] ?>&id=<?= $rowSub['conteudo_id'] ?>"  style="color:#666666;" <?= $sel1 ?>>
											&nbsp;-&nbsp;<?= $rowSub['conteudo_titulo'] ?>
										</option>	
										<?
									}
								}while($rowSub = mysql_fetch_array($result_sql));
							}
		
						}
						
						$SQL_Ocultos = "SELECT * FROM menu WHERE sistema = 'ecomm' AND edicao_id = ".$id;
						if($resOcultos = mysql_query($SQL_Ocultos)){
							$rowOCultos = mysql_fetch_array($resOcultos);
							
							?>
							<option class="itemTitulo">Menu lateral</option>
							<?
							do{
								
								$SQL_Ocultos2 = "SELECT * FROM conteudo WHERE sistema = 'ecomm' AND conteudo_tipo = 'artigos' AND menu_id = ".$rowOCultos['menu_id'];
								if($resOcultos2 = mysql_query($SQL_Ocultos2)){
									$rowOCultos2 = mysql_fetch_array($resOcultos2);
									$rowOCultosTotal2 = mysql_num_rows($resOcultos2);
								}
								
								$compLateral = "pag=ecomm_produto_lista&menu_id=".$rowOCultos['menu_id'];
								if($_url_arquivo4 == $compLateral){
									$selProdLat = 'selected="selected"';
								}else{
									$selProdLat = '';
								}
								?>
								<option value="<?= $compLateral ?>" style="color:#666666;background-color:#FEFEFE;" <?= $selProdLat ?>>
									&nbsp;-&nbsp;<?=$rowOCultos['nome'] ?>
								</option>	
								<?
								if($rowOCultosTotal2 >= 1){
									do{
										$compLateralSub = "pag=ecomm_produto_lista&menu_id=".$rowOCultos2['conteudo_id'];
										if($_url_arquivo4 == $compLateralSub){
											$selProd = 'selected="selected"';
										}else{
											$selProd = '';
										}
										?>
										<option value="<?= $compLateralSub ?>" style="color:#666666;background-color:#FEFEFE;" <?= $selProd ?>>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;<?=$rowOCultos2['conteudo_titulo'] ?>
										</option>		
										<?
									}while($rowOCultos2 = mysql_fetch_array($resOcultos2));
								}
							}while($rowOCultos = mysql_fetch_array($resOcultos));
						}


						$SQL_Ocultos = "SELECT * FROM conteudo WHERE conteudo_tipo = 'ocultos'";
						if($resOcultos = mysql_query($SQL_Ocultos)){
							$rowOCultos = mysql_fetch_array($resOcultos);
							?>
							<option class="itemTitulo">
								Ramificados 
							</option>
							<?
							do{
								$compOculto = "edicao_id=".$id."&pag=artigos&menu_id=".$rowOCultos['menu_id']."&id=".$rowOCultos['conteudo_id'];
								if($_url_arquivo4 == $compOculto){
									$selOculto = 'selected="selected"';
								}else{
									$selOculto = '';
								}
								?>
								<option value="<?= $compOculto ?>" style="color:#666666;background-color:#FEFEFE;" <?= $selOculto ?>>
									&nbsp;-&nbsp;<?=$rowOCultos['conteudo_titulo'] ?>
								</option>		
								<?
							}while($rowOCultos = mysql_fetch_array($resOcultos));
						}

					?>
				</select>
				<input type="file" id="imagem4" name="imagem4" value="<?=$imagem4?>" style="width:400px;" />
			</td>
		</tr>
		<tr class="escura">
			<td colspan="3">
				<label for="imagem3">Logo Marca :</label>
				<? 
					if(!empty($id)){
						
						if(empty($arquivo3)){ 
						
							$insert_arq3 = "UPDATE edicao SET arquivo3 = 'copyhight.jpg' WHERE edicao_id = ".$id;
							@mysql_query($insert_arq3);
						?>
							<img src="../<?= $_base_dir."/imagens/" ?>/copyhight.jpg" galleryimg="no">
						<? 
						}else if($arquivo3 == "copyhight.jpg"){
						?>
							<img src="../<?= $_base_dir."/imagens/" ?>/copyhight.jpg" galleryimg="no">
						<? 
						}else{
							if(file_exists("arquivos/".$arquivo3)){
							?>
								<img src="arquivos/<?= $arquivo3 ?>" galleryimg="no">
							<?
							}else{
							?>
								<img src="../<?= $_base_dir."/imagens/" ?>/copyhight.jpg" galleryimg="no">
							<? 
							}
						}
					}
					
				?>
				<input type="file" name="imagem3" id="imagem3" value="<?=$imagem3?>" />
			</td>
		</tr>
		<?
		if(strtolower($_modelo_tipo) != "p"){
		?>
		<tr class="clara">
			<td colspan="3">
				<label for="imagem5">Banner lateral:</label>
				<? 
					if(!empty($id)){
						if(empty($arquivo5)){ 
						
							$insert_arq5 = "UPDATE edicao SET arquivo5 = 'banner_esquerdo.jpg' WHERE edicao_id = ".$id;
							@mysql_query($insert_arq5);
							?>
								<img src="../<?= $_base_dir."/imagens/" ?>/banner_esquerdo.jpg" galleryimg="no">
							<? 
							}else if($arquivo5 == "banner_lateral.jpg"){
							?>
								<img src="../<?= $_base_dir."/imagens/" ?>/banner_esquerdo.jpg" galleryimg="no">
							<? 
						}else{
							if(file_exists("arquivos/".$arquivo5)){
								$file = explode(".",$arquivo5);
								$file = array_reverse($file);
								$file = $file[0];
														
								if($file == "jpg"){
									?>
									<img src="arquivos/<?= $arquivo5 ?>" galleryimg="no"><br />
									<?
									echo $url_arquivo5;
								}else{
									$args = explode("x",strtolower($arquivo5_par));
									$swf_topo_larg = $args[0];
									$swf_topo_alt = $args[1];
									
									if(!empty($swf_topo_larg)){
										$l1 = $swf_topo_larg;
									}else{
										$l1 = "197";
									}
									if(!empty($swf_topo_alt)){
										$a1 = $swf_topo_alt;
									}else{
										$a1 = "262";
									}
									?>
                                    <p>
                                    Informe as medidas do Flash:<br />
                                    Medidas: <input name="arquivo5_par" id="arquivo5_par" value="<?= $arquivo5_par ?>" style="width:100px;" /> Ex: 197x262
                                    </p>
									<div id="swf_lateral">
										<script type="text/javascript">
										   var so = new SWFObject("arquivos/<?= $arquivo5 ?>", "destaque", "<?= $l1 ?>", "<?= $a1 ?>", "8", "#ffffff");
										   so.addParam("quality", "high");
										   so.addParam("wmode", "transparent");
										   so.write("swf_lateral");
										</script>
									</div>
									<?
								}
							}else{
								?>
								<img src="../<?= $_base_dir."/imagens/" ?>/banner_esquerdo.jpg" galleryimg="no">
								<? 
							}
						}
					}
					
				//monta menu
				$query2="
				SELECT 1
					, a.nome as nomepai 
					, a.sistema as sistema_a
					, a.menu_id as menupai_id
				FROM menu a
				WHERE 1
					AND a.sistema <> 'ecomm'
					AND a.nome <> 'HOME'
					AND edicao_id = $id
				";
				//print_r($query2);
		
				$result2 = mysql_query($query2);
				?>
				<select name="arquivo5_url" id="arquivo5_url" ref='naovazio' style="display:block;">
					<option value="">Vincular a:</option>
						<option class="itemTitulo">
							Menu principal
						</option>
						<?
						while($row2 = mysql_fetch_array($result2)){ 
						
							$sqlSub = "SELECT * FROM conteudo WHERE menu_id = ".$row2['menupai_id']." AND conteudo_tipo = 'artigos'";
							$result_sql = mysql_query($sqlSub);
							$rowSub = mysql_fetch_array($result_sql);
							$rowSubTotal = mysql_num_rows($result_sql);
		
							$comp5 = "edicao_id=".$id."&menu_id=".$row2['menupai_id'];
							
							if($arquivo5_url == $comp5){
								$sel15 = 'selected="selected"';
							}else{
								$sel15 = '';					
							}
							
							?>
							<option value="edicao_id=<?= $id ?>&menu_id=<?= $row2['menupai_id'] ?>" style="color:#000000;background-color:#FEFEFE;" <?= $sel15 ?>>
								<?=$row2['nomepai'] ?>
							</option>
							<?
						
							if($rowSubTotal >= 1){
								do{
									if(!empty($rowSub['conteudo_titulo'])){
									
									$comp25 = "edicao_id=".$id."&menu_id=".$row2['menupai_id']."&id=".$rowSub['conteudo_id'];
									
										if($arquivo5_url == $comp25){
											$sel15 = 'selected="selected"';
										}else{
											$sel15 = '';
										}
		
										?>
										<option value="edicao_id=<?= $id ?>&menu_id=<?= $row2['menupai_id'] ?>&id=<?= $rowSub['conteudo_id'] ?>"  style="color:#666666;" <?= $sel15 ?>>
											&nbsp;-&nbsp;<?= $rowSub['conteudo_titulo'] ?>
										</option>	
										<?
									}
								}while($rowSub = mysql_fetch_array($result_sql));
							}
		
						}
						
						$SQL_Ocultos = "SELECT * FROM menu WHERE sistema = 'ecomm' AND edicao_id = ".$id;
						if($resOcultos = mysql_query($SQL_Ocultos)){
							$rowOCultos = mysql_fetch_array($resOcultos);
							
							?>
							<option class="itemTitulo">Menu lateral</option>
							<?
							do{
								
								$SQL_Ocultos2 = "SELECT * FROM conteudo WHERE sistema = 'ecomm' AND conteudo_tipo = 'artigos' AND menu_id = ".$rowOCultos['menu_id'];
								if($resOcultos2 = mysql_query($SQL_Ocultos2)){
									$rowOCultos2 = mysql_fetch_array($resOcultos2);
									$rowOCultosTotal2 = mysql_num_rows($resOcultos2);
								}
								
								$compLateral = "pag=ecomm_produto_lista&menu_id=".$rowOCultos['menu_id'];
								if($_url_arquivo4 == $compLateral){
									$selProdLat = 'selected="selected"';
								}else{
									$selProdLat = '';
								}
								?>
								<option value="<?= $compLateral ?>" style="color:#666666;background-color:#FEFEFE;" <?= $selProdLat ?>>
									&nbsp;-&nbsp;<?=$rowOCultos['nome'] ?>
								</option>	
								<?
								if($rowOCultosTotal2 >= 1){
									do{
										$compLateralSub5 = "pag=ecomm_produto_lista&menu_id=".$rowOCultos2['conteudo_id'];
										if($arquivo5_url == $compLateralSub5){
											$selProd5 = 'selected="selected"';
										}else{
											$selProd5 = '';
										}
										?>
										<option value="<?= $compLateralSub5 ?>" style="color:#666666;background-color:#FEFEFE;" <?= $selProd5 ?>>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;<?=$rowOCultos2['conteudo_titulo'] ?>
										</option>		
										<?
									}while($rowOCultos2 = mysql_fetch_array($resOcultos2));
								}
							}while($rowOCultos = mysql_fetch_array($resOcultos));
						}


						$SQL_Ocultos = "SELECT * FROM conteudo WHERE conteudo_tipo = 'ocultos'";
						if($resOcultos = mysql_query($SQL_Ocultos)){
							$rowOCultos = mysql_fetch_array($resOcultos);
							?>
							<option class="itemTitulo">
								Ramificados 
							</option>
							<?
							do{
								$compOculto5 = "edicao_id=".$id."&pag=artigos&menu_id=".$rowOCultos['menu_id']."&id=".$rowOCultos['conteudo_id'];
								if($arquivo5_url == $compOculto5){
									$selOculto5 = 'selected="selected"';
								}else{
									$selOculto5 = '';
								}
								?>
								<option value="<?= $compOculto5 ?>" style="color:#666666;background-color:#FEFEFE;" <?= $selOculto5 ?>>
									&nbsp;-&nbsp;<?=$rowOCultos['conteudo_titulo'] ?>
								</option>		
								<?
							}while($rowOCultos = mysql_fetch_array($resOcultos));
						}

					?>
				</select>
				<input type="file" name="imagem5" id="imagem5" value="<?=$imagem5?>" />
			</td>
		</tr>
		<?
		}
		?>
		<tr class="clara">
			<td colspan="3">
				<label for="texto">Endere&ccedil;o:</label>
				<textarea id="texto" name="texto" cols="45" rows="6" /><?= stripslashes($texto) ?></textarea>
			</td>
		</tr>
		<tr class="escura">
			<td colspan="3">
				<label for="fonte">Informe a cor da fonte do endere&ccedil;o:</label>
				<?
					if(empty($fonte)){
						$fonte = 'FFFFFF';
					}
				?>
				<input type="text" name="fonte" id="fonte" value="<?= $fonte ?>" />		
			</td>
		</tr>
		<tr class="clara">
			<td colspan="3">
				<label for="restaurar">Restaurar </label>
				<input type="checkbox" name="restaurar" value="1" class="inputCheckBox"/> 
				<input type="hidden" name="chave" value='' >
				<em>Obs.: Est&aacute; op&ccedil;&atilde;o altera as imagens atuais para a configura&ccedil;&atilde;o inicial do sistema.</em>
			</td>
		</tr>
	</table>
	<?
	
		include("idioma_traducao.php"); 
		include("includes/botoes.php"); 
	?>
</form>
<div align="center">
  <? } // if($direitotelas[$tela]) { ?>
  <? if(!$direitotelas[$tela]) include("includes/sempermissao.php"); ?>
</div>
