<? 
session_cache_expire(999999);
session_start();

require_once("../includes/conecta.php");
require_once("includes/autentica.php") ;


if(empty($_SESSION['usuario_id'])){
	$msg = "Informe seu login e senha!";
	header("Location: index_login.php?msg=".$msg);
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>EVONLINE - M&oacute;dulo Adminstrativo - Desenvolvimento de Tecnologia Interativa</title>
	<base target="tela">
	<script type="text/javascript" src="js/funcoes.js" ></script>
    <script type="text/javascript" src="../js/funcoes.js" ></script>
	<script type="text/javascript" src="js.php"></script>
	<style type="text/css">
		@import url("css/preloader.css");
		@import url("css/admin.css");
		@import url("css/menu.css");
	</style>
</head>
<body onResize="redimensiona();" onLoad="redimensiona();">
	<div id="carrega_imagens">Preloader de imagens</div>
	<? 
		# Inclui o TOPO
		include("topo.php"); 
	?>
	<iframe 
		scrolling="auto" 
		allowtransparency="1" 
		name="tela" 
		src="tela.php" 
		width="99%" 
		height="100%" 
		frameborder="0" 
		id="iframe_conteudo"
	></iframe>
</body>
</html>