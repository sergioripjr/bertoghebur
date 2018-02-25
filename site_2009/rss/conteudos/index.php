<?
$_query = "SELECT c.* FROM conteudo c WHERE c.edicao_id = 1 AND c.conteudo_formmail != 'S' AND c.conteudo_titulo != '' AND c.conteudo_tipo = 'artigos' AND c.sistema = 'website' ORDER BY c.conteudo_id DESC LIMIT 30";

$_titulo = "Conteúdos";

$_colId = 'conteudo_id';
$_colTitulo = 'conteudo_titulo';
$_colTexto = 'conteudo_texto';

include("../geraRSS.php");
?>