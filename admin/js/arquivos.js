

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

function adArquivo(){
	/*
	var nomeArquivo = $("#campoAnexo").val();
	var tabela = "<table><tr><td></td><td></td></tr></table>";

	novaDiv = document.createElement('div');
	$(novaDiv).attr("style","border:1px solid #FF0000;height:50px;");
	
	input = document.createElement('input');
	$(input).attr("type","file");
	$(input).attr("name","anexo[]");
	$(input).val($(nomeArquivo).val());
	
	var tabela = "<table><tr><td>&nbsp;</td><td>"$(input)+"</td></tr></table>";

	$(novaDiv).html(tabela);
	$(novaDiv).insertAfter("#lista");
	
	/*
	//Campo file atualmente ativo para adicao
	file_atual = document.getElementById('atual').firstChild
	
	//expresso regular para no vazio
	re = /[^ ]+/;
	
	//Testeando se o campo no est vazio
	if(!re.test( file_atual.value ) ){
		alert('Selecione um arquivo!');
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
	link.appendChild(document.createTextNode(''));;

	
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
	*/
}

function adArquivoFoto( obj ){

	//Campo file atualmente ativo para adicao
	file_atual = document.getElementById('atual').firstChild
	
	//expresso regular para no vazio
	re = /[^ ]+/;
	
	//Testeando se o campo no est vazio
	if( !re.test( file_atual.value ) ){
		alert('Voc deve escolher um arquivo antes');
		return false;
	}
	
	rb_id = ( typeof(rb_id) == 'undefined')?0:++rb_id;
	
	rb = document.createElement('input');
	rb.type = 'checkbox';
	rb.className = 'checkbox middle';
	rb.id = 'radio_' + rb_id;
	rb.name = 'arq_adicionado';
	rb.value = 'radio_' + rb_id;
	//addEvent( rb, 'click', testar );
	img = document.createElement('img');
	img.style.visibility = 'hidden';
	img.src = file_atual.value;
	img.onbdlclick = function()
	{
		this.click();	
	}
	img.onclick = function()
	{
		this.parentNode.parentNode.parentNode.parentNode.previousSibling.click();	
	}
	img.className = 'middle';
	
	img.onload = function()
	{
		var limite = 120;
		if(this.width>this.height)
		{
			this.height = this.height*limite/this.width;
			this.width = limite;
		}
		else
		{
			this.width = this.width*limite/this.height;
			this.height = limite;
		}
		this.style.visibility = 'visible';
	}
	
	basename = file_atual.value;
	basename = basename.split('\\');
	basename = basename[basename.length-1].split('/');

	text    = document.createTextNode( basename[basename.length-1] );
	//text    = document.createTextNode( file_atual.value );

	file_atual.style.display = 'none';
	
	label = document.createElement('label');
	label.htmlFor = 'radio_' + rb_id;
	label.appendChild(rb);
	//label.appendChild(text);
	table = document.createElement('table');
	table.className = "tbThumb";
	tbody = document.createElement('tbody');
	tr = document.createElement('tr');
	td = document.createElement('td');
	label.appendChild(table);
	table.appendChild(tbody);
	tbody.appendChild(tr);
	tr.appendChild(td);
	td.appendChild(img);
	label.appendChild(file_atual);
	
	/*
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
	
	div = document.createElement('div');
	div.id   = 'file_' + rb.value;
	div.appendChild( table );
	*/
	div = document.createElement('div');
	div.id   = 'file_' + rb.value;
	div.className   = 'thumb';
	div.appendChild( label );

	document.getElementById('lista').appendChild( div );

	novo_arq = document.createElement('input');
	novo_arq.type    = 'file';
	novo_arq.className  = file_atual.className;
	novo_arq.style.width = '100%';
	novo_arq.name = file_atual.name;

	document.getElementById('atual').insertBefore( novo_arq, document.getElementById('atual').firstChild );
	
	return true;
}
