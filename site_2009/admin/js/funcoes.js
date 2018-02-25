// JavaScript Document

// Redimensiona a tela
function redimensiona(){
	try{
		alturaTela = $(window).height();
	}catch(e){
		//alert(e);	
	}
	$("#iframe_conteudo").attr("height",alturaTela-110);
}
	
//Função para trocar atributo da imagem
function trocaImagem(obj,img){
	$(obj).attr("src",img);
}
	
function verificaNavegador(){
	var browser = navigator.appName;
	var navegue = "Microsoft Internet Explorer";
	
	if(browser != navegue){
		//document.location.href="navegador.php";
		return false;
	}
}

verificaNavegador();

function remArquivo( obj , removertodos ){
	try{ elems = document.forms[0].elements; }catch(e){ try{ elems = document.forms[0].elements; }catch(e){  } }
	for(i = 0; i < elems.length; i++){
		if( elems[i].name == 'arq_adicionado' && (elems[i].checked||removertodos) ){
			document.getElementById('lista').removeChild( document.getElementById('file_' + elems[i].value) );
			i = 0;
		}
		if( elems[i].name == 'arq_dobanco_temp' && (elems[i].checked) ){
			//alert(elems[i].id);
			document.getElementById('anexo' + elems[i].value).style.display='none';
			document.getElementById('o' + elems[i].id).checked=true;
			document.getElementById('o' + elems[i].id).setAttribute('excluir','true');
		}
		if( elems[i].name == 'arq_dobanco[]' && (removertodos) ){
			document.getElementById('anexo' + elems[i].value).style.display='';
		}
	}
	return true;
}

function adArquivo( obj ){
	
	//Campo file atualmente ativo para adicao
	file_atual = document.getElementById('atual').firstChild
	
	//expresso regular para no vazio
	re = /[^ ]+/;
	
	//Testeando se o campo no est vazio
	if( !re.test( file_atual.value ) ){
		alert('Você deve escolher um arquivo antes');
		return false;
	}
	
	rb_id = ( typeof(rb_id) == 'undefined')?0:++rb_id;
	
	rb = document.createElement('input');
	rb.type = 'checkbox';
	rb.className = 'checkbox';
	rb.id = 'radio_' + rb_id;
	rb.name = 'arq_adicionado';
	rb.value = 'radio_' + rb_id;
	//addEvent( rb, 'click', testar );
	basename = file_atual.value;
	basename = basename.split('\\');
	basename = basename[basename.length-1].split('/');

	text    = document.createTextNode( basename[basename.length-1] );
	//text    = document.createTextNode( file_atual.value );

	file_atual.style.display = 'none';
	
	label = document.createElement('label');
	label.htmlFor = 'radio_' + rb_id;
	label.appendChild(rb);
	label.appendChild(text);
	label.appendChild(file_atual);
	
	link = document.createElement('a');
	link.target = '_blank';
	link.href = (file_atual.value);
	link.appendChild(document.createTextNode(' [visualizar]'));;
	
	tr = document.createElement('tr');
	
	td = document.createElement('td');
	td.appendChild(label);
	tr.appendChild(td);
	
	td = document.createElement('td');
	td.width = '1%';
	td.appendChild(link);
	tr.appendChild(td);
	
	tbody = document.createElement('tbody');
	tbody.appendChild(tr);
	table = document.createElement('table');
	table.className = 'textowhite';
	table.width = '100%';
	table.appendChild(tbody);
	
	adiv = document.createElement('div');
	adiv.id   = 'file_' + rb.value;
	adiv.appendChild( table );

	document.getElementById('lista').appendChild( adiv );

	novo_arq = document.createElement('input');
	novo_arq.type    = 'file';
	novo_arq.className  = file_atual.className;
	novo_arq.style.width = '100%';
	novo_arq.name = file_atual.name;

	document.getElementById('atual').insertBefore( novo_arq, document.getElementById('atual').firstChild );
	
	return true;
}

function adicionalinha(img)
{
	td = img.parentNode;
	tr = td.parentNode;
	tbody = tr.parentNode;
	replica = tr.cloneNode(true);
	inputs = replica.getElementsByTagName('INPUT');
	for( i in inputs)
	{
		inputs[i].value = '';
	}
	textareas = replica.getElementsByTagName('TEXTAREA');
	for( i in textareas)
	{
		textareas[i].value = '';
	}
	try
	{
		tbody.insertBefore(replica, tr.nextSibling);
	}
	catch(e)
	{
		tbody.appendChild(replica);
	}
}

function removelinha(img)
{
	td = img.parentNode;
	tr = td.parentNode;
	tbody = tr.parentNode;
	if( tr.nextSibling || tr.previousSibling )
	{
		tbody.removeChild(tr);
	}
}

function sobelinha(img){
	try{
		img.parentNode.parentNode.swapNode(img.parentNode.parentNode.previousSibling);
	}catch(e){}
}

function descelinha(img)
{
	try
	{
		img.parentNode.parentNode.swapNode(img.parentNode.parentNode.nextSibling);
	}catch(e){}
}