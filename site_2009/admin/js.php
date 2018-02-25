<?
include("../includes/funcoes.php");
header("Content-Type: text/javascript");

$pathJS = "../";
$arFiles = array(
	$pathJS.'lib/jquery/jquery-1.2.6.min.js'
	, $pathJS.'lib/jquery/tablesorter/jquery.tablesorter.js'
	, $pathJS.'lib/jquery/jquery.innerfade.js'
	, $pathJS.'lib/jquery/ddaccordion.js'
	, $pathJS.'lib/interface1.2/interface.js'
	, $pathJS.'js/validacao.js'
	, $pathJS.'js/swfobject.js'
	, $pathJS.'js/flash.js'
	, $pathJS.'js/newsLetter.js'
	, $pathJS.'js/functions.js'
	, $pathJS.'lib/jquery/ui.jqModal.js'
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