//Funo click do INDEX
function clickInfoEvo(){
	window.open("http://www.evonline.com.br");	
}

function goToTop(){	
	//var bodyAlt = $("body").height();
	window.scrollTo(0,0);
}

//Funo utilizada pelo Menu ( includes/menu.php )
function checkHover() {
	try{
		if (obj){
			obj.find('ul').fadeOut('fast');	
		} 
	}catch(e){		
	}
}

function ver(){
	$('#menuLista > li').find('ul').hide();
}

var hits = 5;
function tamanhoFonte(action, container){
	container = typeof(container) != 'undefined' ? container : 'div.texto'; //se não for especificado um container será ‘div.texto’
	var hitIncrease = 0;
	var hitDecrease = 0;

	var pegaTodos = {pega : function(maiorDeTodos){
		var filho;
	
		// Passo por todos os controles.
		$(maiorDeTodos).children().each(function(i){
			filho = $(this);
	
			$fs = parseInt($(filho).css('font-size'));
			if(action=="mais" && $fs < 22){
				$fs+=1;
			}else if(action=="menos" && $fs > 8){
				$fs-=1;
			}

			$(filho).css('font-size', $fs);
	
			if ($(filho).children().length != 0) {
				pegaTodos.pega($(filho));
			}
	});
	}};
	pegaTodos.pega($(container));
	if (hitIncrease == 1)hits+=1;
	else if (hitDecrease == 1)hits-=1;
}

function loadingConteudo(){

}

function clickNulo(){
}

function hreflink(linkk){
	document.location.href=linkk;
}


//Ajax inserao do Menu Supeior (Fish) e Produtos Rand Home
function addsMenuHtml(id){	
	$.ajax({
		type: "GET",
		data: "pag=ecomm_produtos_home&edicao_id="+id,
		url: 'tela.php',
		success: function(html) {
			$("#mostraProdutosDestaques").html(html);
		}
	});
	
	return false;
}

//Ajax para navegao atravez de Objetos(form)
function enviaFormBusca(objForm){
	if(objForm.elements['busca'].value == "Digite aqui"){
		objForm.elements['busca'].value = "";
	}	
	//Histrico
	$.historyLoad($(objForm).serialize());	
	loadingConteudo();
	$.ajax({
		type: "GET",
		data: $(objForm).serialize(),
		url: 'tela.php',
		success: function(html) {
			$("#conteudo").html(html);
			startLightBox();
		}
	});
	dimBl();
}

//Ajax para atualizar a lista de comentários após o CADASTRO de um NOVO
function atualizaListaComentarios(conteudo_id){
	
	$.ajax({
		type: "GET",
		//data: 'pag=lib/comentario/lista_pub&id='+conteudo_id+'&exibeForm=000001',
		data: 'pag=lib/comentario/lista_pub_atualiza&id='+conteudo_id+'&exibeForm=000001',
		url: 'tela.php',
		success: function(html) {	
			$("#listaAtualComentarios").html(html);
		}
	});	
	
	return false;
}

//Ajax submete formulario de comentário deste conteudo
function enviaFormComentario(objForm){
	var conteudo_id = objForm.elements['conteudo_id'].value;
	if(objForm.elements['comentario_autor'].value == "" ||  objForm.elements['comentario_texto'].value == ""){
		$("#msgFormComentario").html("<span class='msgError'>"+_idioma_necessariopreencher+"</span>");
		return false;
	}else{
		$("#msgFormComentario").html(_idioma_carregando);	
	}
	if (!checkMail(objForm.comentario_email.value)) {
		$("#msgFormComentario").html("<span class='msgError'>"+_idioma_emailinvalido+"</span>");
		$(objForm.comentario_email).val("");
		return false;
	} 
	$.ajax({
		type: "GET",
		data: $(objForm).serialize(),
		url: 'tela.php',
		success: function(html) {
			$("#divFormComentario").html(html);
			
			atualizaListaComentarios(conteudo_id);
		}
	});	
	return false;
}

//Ajax para login de USUARIOS
function loginUsuarioPublico(objForm){
	if(objForm.elements['user_login'].value == "" ||  objForm.elements['user_senha'].value == ""){
		$("#msgLoginPublico").html("<span class='msgError'>"+_idioma_necessariopreencher+"</span>");
		return false;
	}else{
		$("#msgLoginPublico").html(_idioma_carregando);	
	}
	$.ajax({
		type: "POST",
		data: $(objForm).serialize(),
		url: 'tela.php',
		success: function(html) {			
			$("#loginPublicoUser").html(html);
			startLightBox();
		}
	});
	
}
//Ajax para Logout de usuários PUBLICOS
function logoutPublico(par){
	par = 'logoutUser=true&'+par;
	$.ajax({
		type: "GET",
		data: par,
		url: 'lib/restricao/inc.php',
		success: function(html) {
			$("#conteudo").html(html);
		}
	});
}

//Ajax para navegao atravez de Objetos(form)
function enviaForm(objForm){	
	if(objForm.elements['busca'].value.length < 3){
		alert('Busca deve ter mais de 3 caracteres!');
		return false;
	}	
	//Histrico
	$.historyLoad($(objForm).serialize());	
	loadingConteudo();
	$.ajax({
		type: "GET",
		data: $(objForm).serialize(),
		url: 'tela.php',
		success: function(html) {
			$("#conteudo").html(html);
			startLightBox();
			dimBl();
		}
	});
}

function enviaFormEnquete(objForm,ex,id){
	$.ajax({
		type: "GET",
		data: $(objForm).serialize(),
		url: 'tela.php',
		success: function(html) {
			$("#enquete_msg").html(html);
			if(ex == 's'){
				navegar("pag=lib/enquete/exibeEnquete&enquete_id="+id);		
			}
		}
	});
	return false;
}

//Ajax para navegao atravez de Objetos(form)
function enviaFormAmigo(objForm){
	if(
	   objForm.seuNome.value == "" ||
	   objForm.seuEmail.value == "" ||
	   objForm.amigoNome.value == "" ||
	   objForm.amigoEmail.value == "" ||
	   objForm.assunto.value == ""
	){
		$("#respAmigo").html("<span class='msgError'>"+_idioma_necessariopreencher+"</span>");
		return false;
	}	
	$("#respAmigo").html(_idioma_carregando);
	$("#btnEnviaAmigo").css("visibility","hidden");	
	$.ajax({
		type: "GET",
		data: $(objForm).serialize(),
		url: 'tela.php',
		success: function(html) {
			$("#respAmigo").html(html);
		}
	});
	return false;
}

//Ajax para navegao atravez de Variaveis
function navegar(par){
	loadingConteudo();
	$.ajax({
		type: "GET",
		data: par,
		url: 'tela.php',
		success: function(html) {
			$("#conteudo").html(html);
			startLightBox();
			dimBl();
		}
	});
	return false;
}

$(document).ready(function() {
	startLightBox();
});

//Funo que abilita o LightBox
function startLightBox(){	
	$(function() {
		$('.detalheImg a').lightBox({
			//Configurando LightBox
			imageLoading: 'lib/lightbox/images/lightbox-ico-loading.gif',
			imageBtnClose: 'lib/lightbox/images/lightbox-btn-close.gif',
			imageBtnNext: 'lib/lightbox/images/lightbox-btn-next.gif',
			imageBtnPrev: 'lib/lightbox/images/lightbox-btn-prev.gif',
			imageBlank: 'lib/lightbox/images/lightbox-blank.gif',
			txtImage: _idioma_imagemcont,
			txtOf: '/',
			keyToPrev: 'q',
			keyToNext: 'w',
			keyToClose: 'e'
			//overlayBgColor: '#CCC'
		});
		$('.detalheImg a img').css({border:"0px"});
	});	
	return false;
}

//Funo para Objeto
function clickAjax(obj){	
	var hash = obj.href;
	hash = hash.replace(/^.*#/, '');
	$.historyLoad(hash);
	return false;		
}

//Funo para evento
function clickAjaxHref(href){	
	$.ajax({
		type: "GET",
		url: "tela.php?"+href,
		success: function(msg){
			$("#conteudo").html(msg);
		}
	});
	return false;	
}

//Envia o conteudo do FORMAIL
function formMail(objForm,linkPost){
	if(linkPost == "pag=cadastra_newsletter"){
		if(objForm.nome.value == "" || objForm.nome.value == null
		   || objForm.email.value == "" || objForm.email.value == null){
			$("#cadNewsLetter_txt").html(_idioma_necessariopreencher);
			return false;
		}	
		if (!checkMail(objForm.email.value)) {
			$("#cadNewsLetter_txt").html(_idioma_emailinvalido);
			$(objForm.email).val("");
			return false;
		} 
		$("#cadNewsLetter_txt").html(_idioma_carregando);	
	}

	$.ajax({
		type: "POST",
		url: "tela.php?"+linkPost,
		data: $(objForm).serialize(),
		success: function(msg){
			if(linkPost == "pag=cadastra_newsletter"){
				$("#cadNewsLetter_txt").html(msg);	
			}else{
				$("#conteudo").html(msg);
			}
			dimBl();
		}
	});
	
	return false;
}

function compra(id_produto){
	var destination = "?pag=ecomm_carrinho&id_produto=" + id_produto;
	if(false) if( typeof(janelinhaProduto)!='undefined' ){
		var oLink = janelinhaProduto.document.getElementById('linkGlobal');
		oLink.href = 'tela.php' + destination;
		janelinhaProduto.defineAjaxClick(oLink,'fecha');
	}else{
	}
	janelinhaProduto = window.open( destination , 'janelinhaProduto' , '' );
	janelinhaProduto.focus();
}


AdicionaCarrinho = function(imagem){
	carrinho_impressao = window.open( 'carrinho_impressao.php?' 
		+ '&codigo=' + imagem.getAttribute('codigo') 
		//+ '&uso=' + imagem.getAttribute('uso') 
		+ '&nome=' + imagem.getAttribute('nome') 
		+ '&formato=' + imagem.getAttribute('formato') 
		+ '&tipo=' + imagem.getAttribute('tipo') 
		+ '&pei=' + imagem.getAttribute('pei') 
		, 'carrinho_impressao' , 'width=680,height=550' );
	carrinho_impressao.focus();
	imagem.parentNode.setAttribute('ignore','1');
}