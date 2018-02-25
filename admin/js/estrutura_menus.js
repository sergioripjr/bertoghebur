function InsertHTML(html){
	// Get the editor instance that we want to interact with.
	var oEditor = FCKeditorAPI.GetInstance('conteudo_texto') ;

	// Check the active editing mode.
	if ( oEditor.EditMode == FCK_EDITMODE_WYSIWYG )
	{
		// Insert the desired HTML.
		oEditor.InsertHtml( html ) ;
	}
	else
		alert( 'V&aacute; para o modo de edi&ccedil;&atilde;o visual, n&atilde;o c&oacute;digo-fonte!' ) ;
}

function InsereLinkParaConteudoOculto(oselect){
	html = '';
	opsaum = oselect.options[oselect.selectedIndex];
	html += '<a href="?id=';
	html += opsaum.value;
	html += '">';
	html += opsaum.text;
	html += '</a>';
	InsertHTML(html);
	oselect.selectedIndex=0;
}

// JavaScript Document
$(document).ready(function(){

	$(function() {
		$('.detalheImg a').lightBox({
			//Configurando LightBox
			imageLoading: '../lib/lightbox/images/lightbox-ico-loading.gif',
			imageBtnClose: '../liblib/lightbox/images/lightbox-btn-close.gif',
			imageBtnNext: '../lib/lightbox/images/lightbox-btn-next.gif',
			imageBtnPrev: '../lib/lightbox/images/lightbox-btn-prev.gif',
			imageBlank: '../lib/lightbox/images/lightbox-blank.gif',
			txtImage: 'Imagem',
			txtOf: '/',
			keyToPrev: 'q',
			keyToNext: 'w',
			keyToClose: 'e'
		});
	});	
});

/*
# Função dinamica para "remover" um elemento HTML
*/
function exibeElemento(div){
	
	var display = $(div).css("display");
	if(display == "block"){
		$(div).css("display","none")
	}else{
		if($("#infoFormRss").css("display") == "block"){
			$("#infoFormRss").css("display","none");
		}
		if($("#infoFormContato").css("display") == "block"){
			$("#infoFormContato").css("display","none");
		}
		if($("#infoFormAnexo").css("display") == "block"){
			$("#infoFormAnexo").css("display","none");
		}
		if($("#infoFormRestricao").css("display") == "block"){
			$("#infoFormRestricao").css("display","none");
		}
		if($("#infoFormComentario").css("display") == "block"){
			$("#infoFormComentario").css("display","none");
		}
		$(div).css("display","block");
	}
}

/*
# Habilita e desabilita a opção de FORM Contato
*/
function aplicaForm(){
	var src = $("#imgForm").attr("src");
	var divForm = $("#infoFormContato").css("display");
	var comparar = "images/btnFormulario.jpg";
	if(src == comparar){
		if(divForm == "block"){
			exibeElemento("#infoFormContato");
		}
		$("#formContato").attr("href","javascript:void(0)");
		comparar = "icones_adm/r4/email.jpg";
	}else{
		$("#formContato").attr("href","javascript:exibeElemento('#infoFormContato');");	
	}
	$("#imgForm").attr("src",comparar);
}

/*
# Funções para mover um Option de um select para outro
*/

function selecionaTodos(){
	$("#user_sel").each(function(){
		$("#user_sel option").attr("selected","selected"); 
	});
	$("#cont_user_sel").each(function(){
		$("#cont_user_sel option").attr("selected","selected"); 
	});
}

function adicionarItem(select, val, tex, cla) {
	$("#"+select).append("<option value='"+val+"'>"+tex+"</option>");
}

function moverItem(de, para) {
	$("#"+de+" option:selected").each(function() {
		adicionarItem(para, $(this).val(), $(this).text(), $(this).attr("class"));
		$(this).remove();
	});
}
