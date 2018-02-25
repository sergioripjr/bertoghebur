// JavaScript Document
/*
# Envia LOGIN e SENHA por email da tela clientes.php
*/
function enviarEmail(id_cadastro){
	
	$("#div_notificar").html("Enviando dados...");
	
	$.ajax({
		type: "GET",
		url: 'tela.php?tela=notifica_por_email&id='+id_cadastro,
		success: function(html) {
			$("#div_notificar").text(html);
		}
	});
}

/*
# Importa endereço de e-mails
*/
function geraLista(id){

	$.ajax({
		type: "POST",
		//data: $(objForm).serialize(),
		url: 'tela.php?tela=newsletter_envia&id='+id,
		processData: true,
		success: function(html) {
			$("#msgNews").text(html);
			return false;
		}
	});
	return false;
}