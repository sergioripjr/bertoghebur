<? 
error_reporting( E_ALL ^ E_NOTICE );
############################
#   CONFIG PATH TEMPLATE   #
############################

# Versão do Software
$_versao = "4.5.4";

# Modelo do layout
$_modelo_layout = "003";

# Tipo do layout 
$_modelo_tipo = "S"; # ( P = Produto , S = Serviço)
	# Se Produto, Habilitar PAGSEGURO ( UOL ).
	$_pag_seguro = "N"; # ( S = Sim, N = Não)

# Diretório DEFAULT da aplicação
$_dir_temp = "tpl/";
# Diretório BASE para INCLUDES
$_SESSION['_base_dir'] = $_base_dir = $_dir_temp.$_modelo_layout;

extract($_REQUEST);
$arrayPastas = array("home","public_html","www","d:","c:","admin");
$diretorio = getcwd();

if($_SERVER['HTTP_HOST'] == "localhost"){
	//configurao para conectar server local
	//url servidor:
	$db_server = "localhost";
	//usuario:
	$db_user = "root";
	//senha:
	$db_pwd = "";
	//Encontra o nome do banco:
	$dir = explode("\\",$diretorio);
	foreach($dir as $buscar){
		if(!in_array($buscar,$arrayPastas)){
			$db_name = $buscar;
		}
	}
	//conecta no MySQL
	$conexaoBanco = mysql_connect($db_server,$db_user,$db_pwd); 
	
}else{
	//configurao para conectar no server publicado
	//url servidor:
	$db_server = "mysharedhost0119.locaweb.com.br";
	//usuario:
	$db_user = "bertoghebur";
	//senha:
	$db_pwd = "A000111222";
	//Encontra o nome do banco:
	$db_name = "bertoghebur";

	//conecta no MySQL
	$conexaoBanco = mysql_connect($db_server,$db_user,$db_pwd); 
	mysql_select_db($db_name) or die("Nao foi possivel seleciona o DB.");
	
	//Não exibe erro
	$verificaTables = @mysql_query("SHOW TABLES FROM ".$db_name);
	$totalTables = @mysql_num_rows($verificaTables);
	
	include("criaDB.php");
}

//Verifica se existe o banco
if(!mysql_select_db($db_name) and !empty($db_name)){
	include("criaDB.php");
}

//configuraes antigas
$SESSION_NAME_SITE = 'evonline';
$SESSION_NAME_ADM = $SESSION_NAME_SITE.'_adm';
$_SESSION['nomesite'] = $CONF['nomesite'] = $_SERVER['HTTP_HOST'];
?>