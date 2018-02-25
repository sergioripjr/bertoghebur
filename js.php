<?
include("includes/funcoes.php");
header("Content-Type: text/javascript");

$arFiles = array(
	'lib/jquery/jquery-1.2.6.min.js'
	, 'lib/jquery/tablesorter/jquery.tablesorter.js'
	, 'lib/jquery/jquery.innerfade.js'
	, 'lib/jquery/ddaccordion.js'
	, 'lib/interface1.2/interface.js'
	, 'js/validacao.js'
	, 'js/swfobject.js'
	, 'js/ajax.js'
	, 'js/newsLetter.js'
	, 'js/functions.js'
	, 'lib/jquery/ui.jqModal.js'
);
$data = ""; 
foreach ($arFiles as $file) {
	if (file_exists($file)){
		$data .= "
		".getIncludeContents($file);		
	}
}
echo $data;	

?>