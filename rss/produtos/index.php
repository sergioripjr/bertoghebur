<?
$_query = "SELECT * FROM ecomm_produto ORDER BY id_produto DESC LIMIT 30";
$_titulo = "Produtos";
$_path = "admin/produto_foto";

$_colId = 'id_produto';
$_colTitulo = 'chamada';
$_colTexto = 'nome';

include("../geraRSS.php");
?>