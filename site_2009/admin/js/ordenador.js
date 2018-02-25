/*
onload = function()
{
	oesconderijo = document.getElementById('esconderijo');
	ordenadores = oesconderijo.getElementsByTagName('div');
	inicializaOrdenadores(ordenadores);
}

function inicializaOrdenadores(ordenadores)
{
	for( i=0 ; i<ordenadores.length ; i++ )
	{
		//alert(ordenadores[i].name);
		if( ordenadores[i].className == 'conteudo' )
		{
			ordenadores[i].onclick = function()
			{
				this.parentNode.setAttribute( 'conteudo_id' , this.getAttribute('conteudo_id') );
				ordenador = document.getElementById( 'ordenador' + this.getAttribute('menu_id') );
				conteudos = ordenador.getElementsByTagName( 'div' );
				ordenador.setAttribute('conteudo','');
				for( i=0 ; i<conteudos.length ; i++ )
				{
					if( conteudos[i].getAttribute('conteudo_id') == this.getAttribute('conteudo_id') )
					{
						ordenador.setAttribute('conteudo_id',conteudos[i].getAttribute('conteudo_id'));
						conteudos[i].style.backgroundColor = '#FFFFFF';
					}
					else
					{
						conteudos[i].style.backgroundColor = '#C6CBD0';
					}
				}
			}
		}
		else if( ordenadores[i].name == 'ordenador_menu' )
		{
			ordenadores[i].onclick = function()
			{
				this.parentNode.setAttribute( 'menu_id' , this.getAttribute('menu_id') );
				ordenador = this.parentNode;
				conteudos = ordenador.getElementsByTagName( 'div' );
				for( i=0 ; i<conteudos.length ; i++ )
				{
					if(conteudos[i].name != 'ordenador_menu') continue;
					if( conteudos[i].getAttribute('menu_id') == this.getAttribute('menu_id') )
					{
						ordenador.setAttribute('menu_id',conteudos[i].getAttribute('menu_id'));
						conteudos[i].style.backgroundColor = '#FFFFFF';
					}
					else
					{
						conteudos[i].style.backgroundColor = '#C6CBD0';
					}
				}
			}
			//break;
		}
		imgs = ordenadores[i].getElementsByTagName('img');
		for( j=0 ; j<imgs.length ; j++ )
		{
			//alert(imgs[j].name);
			if(imgs[j].name == 'sobe_menu')
			{
				imgs[j].onmouseover = function()
				{
					this.src = 'images/ord_cima_over.jpg';
				}
				imgs[j].onmouseout = function()
				{
					this.src = 'images/ord_cima.jpg';
				}
				imgs[j].onclick = function()
				{
					sobe_menu(this);
				}
				imgs[j].ondblclick = function()
				{
					this.click();
				}
			}
			if(imgs[j].name == 'desce_menu')
			{
				imgs[j].onmouseover = function()
				{
					this.src = 'images/ord_baixo_over.jpg';
				}
				imgs[j].onmouseout = function()
				{
					this.src = 'images/ord_baixo.jpg';
				}
				imgs[j].onclick = function()
				{
					desce_menu(this);
				}
				imgs[j].ondblclick = function()
				{
					this.click();
				}
			}
			if(imgs[j].name == 'sobe')
			{
				imgs[j].onmouseover = function()
				{
					this.src = 'images/ord_cima_over.jpg';
				}
				imgs[j].onmouseout = function()
				{
					this.src = 'images/ord_cima.jpg';
				}
				imgs[j].onclick = function()
				{
					sobe(this);
				}
				imgs[j].ondblclick = function()
				{
					this.click();
				}
			}
			if(imgs[j].name == 'desce')
			{
				imgs[j].onmouseover = function()
				{
					this.src = 'images/ord_baixo_over.jpg';
				}
				imgs[j].onmouseout = function()
				{
					this.src = 'images/ord_baixo.jpg';
				}
				imgs[j].onclick = function()
				{
					desce(this);
				}
				imgs[j].ondblclick = function()
				{
					this.click();
				}
			}
			if(imgs[j].name == 'editar')
			{
				imgs[j].onmouseover = function()
				{
					this.src = 'images/editar_over.jpg';
				}
				imgs[j].onmouseout = function()
				{
					this.src = 'images/editar.jpg';
				}
				imgs[j].onclick = function mostra_esconde_ordenador()
				{
					//location = php_self + '?tela=' + tela + '&id=' + this.parentNode.getAttribute('conteudo_id');
					if(this.getAttribute('mostrando'))
					{
						esconde_ordenador(this);
					}
					else
					{
						mostra_ordenador(this);
					}
				}
				imgs[j].ondblclick = function()
				{
					this.click();
				}
			}
		}
	}
}

function showContextIdioma( obj_clicado )
{
	document.detachEvent('onclick',hideContextIdioma);
	document.detachEvent('oncontextmenu',hideContextIdioma);
	contextmenu = document.getElementById('contextMenuIdioma');
	
	img = obj_clicado.getElementsByTagName('img')[0];
	menu_editar = document.getElementById('editar_idioma');
	novo_idioma = obj_clicado.getElementsByTagName('input')[3];
	if( novo_idioma.name == 'novo[idioma][]' )
	{
		novo_idioma.onclick = null;
		novo_idioma.className = 'disabled';
	}
	else
	{
		novo_idioma.onclick = function(){ editaMenu(this) };
		novo_idioma.className = '';
	}
	
	obj_clicado.appendChild(contextmenu);
	contextmenu.style.left = event.x + document.body.scrollLeft;
	contextmenu.style.top = event.y + document.body.scrollTop;
	var timer = setTimeout("document.attachEvent('oncontextmenu',hideContextIdioma);",10);
	var timer = setTimeout("document.attachEvent('onclick',hideContextIdioma);",10);
	return false;
}
function hideContextIdioma()
{
	contextmenu = document.getElementById('contextMenuIdioma');
	contextmenuconteiner = document.getElementById('contextMenuConteiner');
	contextmenuconteiner.appendChild(contextmenu);
	document.detachEvent('oncontextmenu',hideContextIdioma);
	document.detachEvent('onclick',hideContextIdioma);
	return true;
}

function showContextMenuHome( obj_clicado )
{
	document.detachEvent('onclick',hideContextMenuHome);
	document.detachEvent('oncontextmenu',hideContextMenuHome);
	contextmenu = document.getElementById('contextMenuMenuHome');
	
	img = obj_clicado.getElementsByTagName('img')[0];
	menu_habilitar = document.getElementById('habilitar_menu');
	menu_editar = document.getElementById('editar_menu');
	novo_menu = obj_clicado.getElementsByTagName('input')[3];
	
	if(img.style.display=='none')
	{
		menu_habilitar.innerHTML = "<img src='images/estrutura/habilitar.jpg' />&nbsp;Habilitar Sub-menu";
		if( novo_menu.name == 'novo[menu][]' )
		{
			menu_editar.onclick = null;
			menu_editar.className = 'disabled';
		}
		else
		{
			menu_editar.onclick = function(){ editaMenu(this) };
			menu_editar.className = '';
		}
	}
	else
	{
		menu_habilitar.innerHTML = "<img src='images/estrutura/desabilitar.jpg' />&nbsp;Desabilitar Sub-menu";
		menu_editar.onclick = null;
		menu_editar.className = 'disabled';
	}
	
	obj_clicado.appendChild(contextmenu);
	contextmenu.style.left = event.x + document.body.scrollLeft;
	contextmenu.style.top = event.y + document.body.scrollTop;
	var timer = setTimeout("document.attachEvent('oncontextmenu',hideContextMenuHome);",10);
	var timer = setTimeout("document.attachEvent('onclick',hideContextMenuHome);",10);
	return false;
}

function showContextMenu( obj_clicado )
{
	document.detachEvent('onclick',hideContextMenu);
	document.detachEvent('oncontextmenu',hideContextMenu);
	contextmenu = document.getElementById('contextMenuMenu');
	
	img = obj_clicado.getElementsByTagName('img')[0];
	menu_habilitar = document.getElementById('habilitar_menu');
	menu_editar = document.getElementById('editar_menu');
	novo_menu = obj_clicado.getElementsByTagName('input')[3];
	
	if(img.style.display=='none')
	{
		menu_habilitar.innerHTML = "<img src='images/estrutura/habilitar.jpg' />&nbsp;Habilitar Sub-menu";
		if( novo_menu.name == 'novo[menu][]' )
		{
			menu_editar.onclick = null;
			menu_editar.className = 'disabled';
		}
		else
		{
			menu_editar.onclick = function(){ editaMenu(this) };
			menu_editar.className = '';
		}
	}
	else
	{
		menu_habilitar.innerHTML = "<img src='images/estrutura/desabilitar.jpg' />&nbsp;Desabilitar Sub-menu";
		menu_editar.onclick = null;
		menu_editar.className = 'disabled';
	}
	
	obj_clicado.appendChild(contextmenu);
	contextmenu.style.left = event.x + document.body.scrollLeft;
	contextmenu.style.top = event.y + document.body.scrollTop;
	var timer = setTimeout("document.attachEvent('oncontextmenu',hideContextMenu);",10);
	var timer = setTimeout("document.attachEvent('onclick',hideContextMenu);",10);
	return false;
}
function hideContextMenu()
{
	contextmenu = document.getElementById('contextMenuMenu');
	contextmenuconteiner = document.getElementById('contextMenuConteiner');
	contextmenuconteiner.appendChild(contextmenu);
	document.detachEvent('oncontextmenu',hideContextMenu);
	document.detachEvent('onclick',hideContextMenu);
	return true;
}
function hideContextMenuHome()
{
	contextmenu = document.getElementById('contextMenuMenuHome');
	contextmenuconteiner = document.getElementById('contextMenuConteiner');
	contextmenuconteiner.appendChild(contextmenu);
	document.detachEvent('oncontextmenu',hideContextMenu);
	document.detachEvent('onclick',hideContextMenu);
	return true;	
}

function showContextMenuConteudo( obj_clicado )
{
	document.detachEvent('onclick',hideContextMenuConteudo);
	document.detachEvent('oncontextmenu',hideContextMenuConteudo);
	contextmenu = document.getElementById('contextMenuConteudo');
	document.body.appendChild(contextmenu);
	contextmenu.setAttribute( 'conteudo_id' , obj_clicado.getAttribute( 'conteudo_id' ) );
	td = obj_clicado.parentNode;
	contextmenu.setAttribute( 'menu_id' , td.getAttribute( 'menu_id' ) );
	
	conteudo_editar = document.getElementById('editar_conteudo');
	novo_conteudo = obj_clicado.getElementsByTagName('input')[3];
	
	if( novo_conteudo.name == 'novo[conteudo][]' )
	{
		conteudo_editar.onclick = null;
		conteudo_editar.className = 'disabled';
	}
	else
	{
		conteudo_editar.onclick = function(){ editaConteudo(this) };
		conteudo_editar.className = '';
	}
	
	contextmenu.style.left = event.x + document.body.scrollLeft;
	contextmenu.style.top = event.y + document.body.scrollTop;
	var timer = setTimeout("document.attachEvent('oncontextmenu',hideContextMenuConteudo);",10);
	var timer = setTimeout("document.attachEvent('onclick',hideContextMenuConteudo);",10);
	return false;
}
function hideContextMenuConteudo()
{
	contextmenu = document.getElementById('contextMenuConteudo');
	contextmenuconteiner = document.getElementById('contextMenuConteiner');
	contextmenuconteiner.appendChild(contextmenu);
	document.detachEvent('oncontextmenu',hideContextMenuConteudo);
	document.detachEvent('onclick',hideContextMenuConteudo);
	return true;
}

function editaMenu(chamador)
{
	div = chamador.parentNode;
	td = div.parentNode;
	tr = td.parentNode;
	tbody = tr.parentNode;
	table = tbody.parentNode;
	location = php_self + '?tela=estrutura_menus&id=' + table.parentNode.getAttribute('menu_id') ;
}
function editaConteudo(chamador)
{
	div = chamador.parentNode;
	location = php_self + '?tela=estrutura_artigos&id=' + div.getAttribute('conteudo_id') ;
}

function editaIdioma(chamador)
{
	div = chamador.parentNode;
	td = div.parentNode;
	location = php_self + '?tela=edicoes&id=' + td.getAttribute('edicao_id') ;
	/*
	*/
}
function sobe_menu(setinha)
{
	ordenador = document.getElementById( 'ordena_edicao' + setinha.getAttribute('edicao_id') );
	selecionado = ordenador.getAttribute('menu_id');
	conteudos = ordenador.getElementsByTagName( 'div' );
	if(selecionado) for( i=0 ; i<conteudos.length ; i++ )
	{
		if(conteudos[i].name != 'ordenador_menu') continue;
		if( conteudos[i].getAttribute('menu_id') == selecionado )
		{
			try
			{
				if(conteudos[i].previousSibling.name=='ordenador_menu')
				{
					conteudos[i].swapNode(conteudos[i].previousSibling);
				}
			}catch(e){}
		}
	}
}
function desce_menu(setinha)
{
	ordenador = document.getElementById( 'ordena_edicao' + setinha.getAttribute('edicao_id') );
	selecionado = ordenador.getAttribute('menu_id');
	conteudos = ordenador.getElementsByTagName( 'div' );
	if(selecionado) for( i=conteudos.length-1 ; i>=0 ; i-- )
	{
		if(conteudos[i].name != 'ordenador_menu') continue;
		if( conteudos[i].getAttribute('menu_id') == selecionado )
		{
			try
			{
				conteudos[i].swapNode(conteudos[i].nextSibling);
			}catch(e){}
		}
	}
}

function sobe(setinha)
{
	ordenador = document.getElementById( 'ordenador' + setinha.getAttribute('menu_id') );
	selecionado = ordenador.getAttribute('conteudo_id');
	conteudos = ordenador.getElementsByTagName( 'div' );
	for( i=0 ; i<conteudos.length ; i++ )
	{
		if( conteudos[i].getAttribute('conteudo_id') == selecionado )
		{
			try
			{
				conteudos[i].swapNode(conteudos[i].previousSibling);
			}catch(e){}
		}
	}
}

function desce(setinha)
{
	ordenador = document.getElementById( 'ordenador' + setinha.getAttribute('menu_id') );
	selecionado = ordenador.getAttribute('conteudo_id');
	conteudos = ordenador.getElementsByTagName( 'div' );
	for( i=conteudos.length-1 ; i>=0 ; i-- )
	{
		if( conteudos[i].getAttribute('conteudo_id') == selecionado )
		{
			try
			{
				conteudos[i].swapNode(conteudos[i].nextSibling);
			}catch(e){}
		}
	}
}
var theMenuId = 0;
function esconde_ordenador_id()
{
	imgs = document.getElementsByName('editar');
	for( i=0 ; i<imgs.length ; i++ )
	{
		if( imgs[i].getAttribute('menu_id')==theMenuId )
		{
			esconde_ordenador(imgs[i]);
			break;
		}
	}
}
function mostra_ordenador(elemento)
{
	esconde_ordenador_id();
	document.detachEvent('oncontextmenu',esconde_ordenador_id);
	document.detachEvent('onclick',esconde_ordenador_id);
	theMenuId = elemento.getAttribute('menu_id');
	ordenador = document.getElementById( 'ordenador' + elemento.getAttribute('menu_id') );
	
	ordenador.onclick = function(){ 
		document.detachEvent('oncontextmenu',esconde_ordenador_id);
		document.detachEvent('onclick',esconde_ordenador_id);
		var timer = setTimeout("document.attachEvent('oncontextmenu',esconde_ordenador_id);",10);
		var timer = setTimeout("document.attachEvent('onclick',esconde_ordenador_id);",10);
	} ;
	ordenador.oncontextmenu = function(){ 
		document.detachEvent('oncontextmenu',esconde_ordenador_id);
		document.detachEvent('onclick',esconde_ordenador_id);
		var timer = setTimeout("document.attachEvent('oncontextmenu',esconde_ordenador_id);",10);
		var timer = setTimeout("document.attachEvent('onclick',esconde_ordenador_id);",10);
	} ;
	
	conteudos = ordenador.getElementsByTagName( 'div' );
	ordenador.setAttribute('conteudo','');
	for( i=0 ; i<conteudos.length ; i++ )
	{
		conteudos[i].style.backgroundColor = '#C6CBD0';
	}
	ordenador.style.display = 'block';
	elemento.setAttribute('mostrando',1);
	var timer = setTimeout("document.attachEvent('oncontextmenu',esconde_ordenador_id);",10);
	var timer = setTimeout("document.attachEvent('onclick',esconde_ordenador_id);",10);
}
function esconde_ordenador(elemento)
{
	ordenador = document.getElementById( 'ordenador' + elemento.getAttribute('menu_id') );
	ordenador.style.display = 'none';
	elemento.setAttribute('mostrando',0);
}
function highlight(elemento)
{
	elemento.src = 'images/ordenador_over.jpg';
}
function unhighlight(elemento)
{
	elemento.src = 'images/ordenador.jpg';
}



function incrementaMenu(semente)
{
	menu_id++;
	semente.setAttribute('id','ordenador_menu' + menu_id );
	semente.setAttribute('menu_id',menu_id);
	semente.getElementsByTagName('div')[0].setAttribute('id', 'ordenador' + menu_id );
	//alert(semente.getElementsByTagName('div')[0].getAttribute('id'));
	images = semente.getElementsByTagName('img');
	images[0].setAttribute('menu_id',menu_id);
	images[1].setAttribute('menu_id',menu_id);
	images[2].setAttribute('menu_id',menu_id);
	inputs = semente.getElementsByTagName('INPUT');
	inputs[0].outerHTML = '<input class=sutil name=menu[' + menu_id + ']>';
	inputs[1].outerHTML = '<input type=hidden name=menu_antigo[' + menu_id + ']>';
	inputs[2].value = menu_id; // <input type="hidden" name="ordena[menu][<?=$row_idioma['edicao_id']?>][]" value="<?=$row_menu['menu_id']?>" />
	inputs[3].value = menu_id; // <input type="hidden" name="novo[menu][]" value="<?=$row_menu['menu_id']?>" />
	inputs[4].outerHTML = '<input type="hidden" name="abredireto[' + menu_id + ']" value="1" />';
	inputs[5].outerHTML = '<input type="hidden" name="tipo[' + menu_id + ']" value="artigos" />';
	//alert(semente.outerHTML);
}

function habilitaSubMenu(span)
{
	div = span.parentNode;
	td = div.parentNode;
	tr = td.parentNode;
	tbody = tr.parentNode;
	table = tbody.parentNode;
	otradiv = table.parentNode;
	img = otradiv.getElementsByTagName('img')[0];
	
	inputs = otradiv.getElementsByTagName('INPUT');
	
	if(img.style.display == 'none')
	{
		img.style.display = 'block';
		inputs[4].value = '';
	}
	else
	{
		img.style.display = 'none';
		inputs[4].value = '1';
	}
	//alert(inputs[4].outerHTML);
}



function adicionaMenu(span)
{
	div = span.parentNode;
	td = div.parentNode;
	tr = td.parentNode;
	tbody = tr.parentNode;
	table = tbody.parentNode;
	otradiv = table.parentNode;
	seila = otradiv.parentNode;
	semente_menu = document.getElementById('ordenador_menu'+menu_id);
	replica_menu = semente_menu.cloneNode(true);
	//replica.getElementsByTagName('img')[2].onclick = null;
	replica_menu.getElementsByTagName('img')[0].style.display = 'none';
	replica_menu.getElementsByTagName('input')[2].outerHTML = '<input type=hidden value=' + menu_id 
	+ ' name=ordena[menu][' + seila.getAttribute('edicao_id') + '][]>';
	
	// incio - adiciona o primeiro contedo do sub_menu
	semente_conteudo = document.getElementById('conteudo'+conteudo_id);
	replica_conteudo = semente_conteudo.cloneNode(true);
	recebe_conteudo = replica_menu.getElementsByTagName('div')[0].getElementsByTagName('td')[1];
	recebe_conteudo.setAttribute( 'menu_id' , menu_id );
	replica_conteudo.setAttribute( 'menu_id' , menu_id );
	replica_conteudo.getElementsByTagName('input')[2].outerHTML = '<input type=hidden value=' + conteudo_id 
	+ ' name=ordena[conteudo][' + menu_id + '][]>';
	recebe_conteudo.appendChild(replica_conteudo);
	
	//depura(replica_conteudo);
	
	conteiner = new Array();
	conteiner[0] = replica_conteudo;
	inicializaOrdenadores(conteiner);
	incrementaConteudo(semente_conteudo);
	// fim - adiciona o primeiro contedo do sub_menu
	
	
	try
	{
		seila.insertBefore(replica_menu, otradiv.nextSibling);
	}
	catch(e)
	{
		seila.appendChild(replica_menu);
	}
	
	conteiner = new Array();
	conteiner[0] = replica_menu;
	inicializaOrdenadores(conteiner);
	
	replica_menu.click();
	replica_menu.getElementsByTagName('input')[0].focus();
	incrementaMenu(semente_menu);
	
	//alert(replica_menu.outerHTML);
	
}

function varre(obj)
{
	resp = '';
	for( i in obj )
	{
		resp += '' + i + ' = ' + obj[i] + '\n';	
	}
	return resp;
}

function depura(obj)
{
	janelinha = window.open('','','width=400,height=300,scrollbars=yes');
	janelinha.document.write( '<pre>' + varre(obj) + '/<pre>' );
	janelinha.focus();
}

function removeMenu(span)
{
	div = span.parentNode;
	td = div.parentNode;
	tr = td.parentNode;
	tbody = tr.parentNode;
	table = tbody.parentNode;
	otradiv = table.parentNode;
	seila = otradiv.parentNode;
	inputs = otradiv.getElementsByTagName('INPUT');
	inputs[0].outerHTML = '<input type=hidden name=remove[menu][] value=' + otradiv.getAttribute('menu_id') + '>';
	semente = document.getElementById('ordenador_menu'+menu_id);
	semente.parentNode.appendChild(inputs[0]);
	hideContextMenu(); // tira o menu de contexto antes de remover
	if( otradiv.nextSibling || otradiv.previousSibling )
	{
		seila.removeChild(otradiv);
	}
}




function incrementaConteudo(semente)
{
	conteudo_id++;
	semente.setAttribute('id','conteudo' + conteudo_id );
	semente.setAttribute('conteudo_id',conteudo_id);
	//semente.getElementsByTagName('img')[0].setAttribute('conteudo_id',conteudo_id);
	inputs = semente.getElementsByTagName('INPUT');
	inputs[0].outerHTML = '<input class=sutil2 name=conteudo[' + conteudo_id + ']>';
	inputs[1].outerHTML = '<input type=hidden name=conteudo_antigo[' + conteudo_id + ']>';
	inputs[2].value = conteudo_id; // <input type="hidden" name="ordena[conteudo][<?=$menu_id?>][]" value="<?=$conteudo_id?>" />
	inputs[3].value = conteudo_id; // <input type="hidden" name="novo[conteudo][]" value="<?=$conteudo_id?>" />
	//alert(semente.outerHTML);
}

function adicionaConteudo(span)
{
	div = span.parentNode;
	nomediv = 'conteudo' + div.getAttribute('conteudo_id');
	otradiv = document.getElementById(nomediv);
	seila = otradiv.parentNode;
	semente = document.getElementById('conteudo'+conteudo_id);
	replica = semente.cloneNode(true);
	replica.setAttribute( 'menu_id' , div.getAttribute('menu_id') );
	replica.getElementsByTagName('input')[2].outerHTML = '<input type=hidden value=' + conteudo_id 
	+ ' name=ordena[conteudo][' + div.getAttribute('menu_id') + '][]>';
	conteiner = new Array();
	conteiner[0] = replica;
	inicializaOrdenadores(conteiner);
	
	//alert(replica.outerHTML)
	
	//depura(replica_conteudo);
	
	
	//alert(otradiv.outerHTML);
	
	try
	{
		seila.insertBefore(replica, otradiv.nextSibling);
	}
	catch(e)
	{
		seila.appendChild(replica);
	}
	replica.click();
	replica.getElementsByTagName('input')[0].focus();
	incrementaConteudo(semente);
}

function removeConteudo(span)
{
	div = span.parentNode;
	nomediv = 'conteudo' + div.getAttribute('conteudo_id');
	otradiv = document.getElementById(nomediv);
	if( otradiv.nextSibling || otradiv.previousSibling )
	{
		seila = otradiv.parentNode;
		inputs = otradiv.getElementsByTagName('INPUT');
		inputs[0].outerHTML = '<input type=hidden name=remove[conteudo][] value=' + otradiv.getAttribute('conteudo_id') + '>';
		semente = document.getElementById('ordenador_menu'+menu_id);
		semente.parentNode.appendChild(inputs[0]);
		seila.removeChild(otradiv);
	}
}



function incrementaIdioma(semente)
{
	edicao_id++;
	
	semente.setAttribute( 'id','edicao' + edicao_id );
	semente.setAttribute( 'edicao_id' , edicao_id );
	inputs = semente.getElementsByTagName('INPUT');
	inputs[0].outerHTML = '<input class=sutil2 name=idioma[' + edicao_id + ']>';
	inputs[1].outerHTML = '<input type=hidden name=idioma_antigo[' + edicao_id + ']>';
	inputs[2].value = edicao_id; // <input type="hidden" name="ordena[idioma][]" value="<?=$edicao_id?>" />
	inputs[3].value = edicao_id; // <input type="hidden" name="novo[idioma][]" value="<?=$edicao_id?>" />
	
	imgs = semente.getElementsByTagName('IMG');
	imgs[0].setAttribute( 'edicao_id' , edicao_id ); 
	imgs[1].setAttribute( 'edicao_id' , edicao_id );
	
}
function adicionaIdioma(span)
{
	div = span.parentNode;
	td = div.parentNode;
	aedicao = document.getElementById( 'edicao' + td.getAttribute('edicao_id') );
	seila = aedicao.parentNode
	
	sementeIdioma = document.getElementById( 'edicao' + edicao_id );
	replicaIdioma = sementeIdioma.cloneNode(true);
	try
	{
		seila.insertBefore(replicaIdioma, aedicao.nextSibling);
	}
	catch(e)
	{
		seila.appendChild(replicaIdioma);
	}
	
	sementeMenu = document.getElementById( 'ordenador_menu' + menu_id );
	replicaMenu = sementeMenu.cloneNode(true);
	recebeMenu = replicaIdioma.getElementsByTagName('td')[2].firstChild;
	recebeMenu.appendChild(replicaMenu);
	
	sementeConteudo = document.getElementById( 'conteudo' + conteudo_id );
	replicaConteudo = sementeConteudo.cloneNode(true);
	recebeConteudo = replicaMenu.getElementsByTagName('div')[0].getElementsByTagName('td')[1];
	recebeConteudo.appendChild(replicaConteudo);
	
	conteiner = new Array();
	conteiner[0] = replicaIdioma;
	inicializaOrdenadores(conteiner);
	
	incrementaIdioma(sementeIdioma);
	incrementaMenu(sementeMenu);
	incrementaConteudo(sementeConteudo);
}
function removeIdioma(span)
{
		
}
*/