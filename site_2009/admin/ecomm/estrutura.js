var carregando = ''
+ '	<table width=100% height=300 name="TBcarregando">'
+ '		<tr>'
+ '			<td align=center valign=middle>'
+ '				<obj' + 'ect classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="73" height="34">'
+ '					<pa' + 'ram name="movie" value="../images/carregando.swf">'
+ '					<pa' + 'ram name="quality" value="high">'
+ '					<pa' + 'ram name="wmode" value="transparent">'
+ '					<em' + 'bed src="../images/carregando.swf" quality="high" wmode="transparent" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="73" height="34"></embed>'
+ '				</obj' + 'ect>'
+ '			</td>'
+ '		</tr>'
+ '	</table>'
+ '';


onload = function()
{
	gabarito = document.getElementById('semente');
	gabarito.innerConteiner = analisa(gabarito,0);
	gabarito.innerConteiner.outerNode = gabarito;
	//gabarito.style.display = '';
	principal = document.getElementById('estrutura');
	analisa(principal,0);
	principal.innerConteiner = analisa(principal,0);
	principal.innerConteiner.outerNode = principal;
	principal.style.display = '';
	
	var oForm = document.getElementById("formEstrutura");
	
	var osCampos = document.getElementById('spanTitulos');
	
	//if(osCampos.innerHTML)
	if(false)
	{
		var aux = document.getElementsByName('formAux')[0].innerHTML = osCampos.outerHTML;
		document.forms['formAux'].method = 'POST';
		document.forms['formAux'].action = 'extranet_noticias.php';
		document.forms['formAux'].target = 'iframeNoticias';
		document.forms['formAux'].submit();
	}
	//else
	{
		//document.frames['iframeNoticias'].location = 'extranet_noticias.php'
	}
	
	var actionName = oForm.elements["action_name"].value;
	var actionId = parseInt(oForm.elements["action_id"].value);
	
	if(isNaN(actionId)) actionId = 0;
	//alert(actionId);
	if(false) switch(actionName)
	{
		case 'calendar':
			var idData = document.getElementsByName('id_data')[0];
			idData.onchange();
			break;
		case 'edit':
		default:
			var contextMenu = document.getElementsByName('contextMenuEditar')[0];
			
			//alert(actionId);
			
			var i = 0;
			while(true)
			{
				try
				{
					var level = document.getElementsByName('item[' + (i++) + '][ordena][]');
					if(!level.length) break;
					for( var j=0 ; j < level.length ; j++ )
					{
						if( level[j].value == actionId )
						{
							document.getElementsByName("contextMenuMenu")[0].style.display = "none";
							showContextMenu(level[j].parentNode);
							contextMenu.trigger = level[j].parentNode;
							editaConteudo(contextMenu);
							timer = setTimeout('document.getElementsByName("contextMenuMenu")[0].style.display = "";',100);
							break;
						}
					}
				}
				catch(e){}
			}
			break;
	}
	
	try
	{
		limpSelects = function( disponiveis, selecionados , tipo )
		{
			//var disponiveis = parent.disponiveis;
			//var selecionados = parent.selecionados;
			for( var i = selecionados.length ; i ; i--)
			{
				selecionados.options[i-1].selected = true;
				parent.move(selecionados,disponiveis, tipo , 'ignore' );
			}
		}
		initSelects = function ( disponiveis, selecionados , tipo )
		{
			var tmpUsuarios = document.getElementsByName(tipo)[0];
			var ids = tmpUsuarios.value.split(',');
			var newIds = '';
			var virgula = '';
			for( j = ids.length - 1 ; j>=0  ; j-- )
			{
				if(!disponiveis.length) break;
				var achou = false;
				for( var k = 0 ; k < disponiveis.length ; k++ )
				{
					if( ids[j]==disponiveis.options[k].value )
					{
						disponiveis.options[k].selected = true;
						parent.move(disponiveis,selecionados, tipo , 'ignore');
						achou = true;
						break;
					}
				}
				if(achou)
				{
					newIds = '' + ids[j] + virgula + '' + newIds ;
					virgula = ',';
				}
			}
			tmpUsuarios.value = newIds;
		}
		limpSelects( parent.disponiveis, parent.selecionados , 'usuarios' );
		initSelects( parent.disponiveis, parent.selecionados , 'usuarios' );
		limpSelects( parent.disponiveis_cli, parent.selecionados_cli , 'clientes' );
		initSelects( parent.disponiveis_cli, parent.selecionados_cli , 'clientes' );
		limpSelects( parent.disponiveis_for, parent.selecionados_for , 'fornecedores' );
		initSelects( parent.disponiveis_for, parent.selecionados_for , 'fornecedores' );
		limpSelects( parent.disponiveis_rep, parent.selecionados_rep , 'representantes' );
		initSelects( parent.disponiveis_rep, parent.selecionados_rep , 'representantes' );
	}catch(e){ /*alert('ops...');*/ }
	
	if( typeof(usuarios)!='undefined' )
	{
		var resposta = '';
		var virgula = '';
		for( i = 0 ; i < selecionados.length ; i++ )
		{
			resposta = resposta + virgula + '' + selecionados.options[i].value;
			virgula = ',';
		}
		usuarios.value = resposta;
	}
}

function trataUnloadIframeNoticia(oIframe)
{
	document.getElementsByName('iframeNoticias')[0].contentWindow.trataUnloadIframeNoticia(oIframe);
}

function pegaTitulosNoticias()
{
	try
	{
	var recebe = document.getElementsByName('spanTitulos')[1];
	var iframe = document.getElementsByName('iframeNoticias')[0].contentWindow;
	var form = iframe.document.forms['formEstrutura'];
	var acumula = '';
	for( var i = 0 ; i < form.elements.length ; i++ )
	{
		if( form.elements[i].name.substr(0,8) == 'noticia[' )
		{
			//alert(form.elements[i].outerHTML);
			acumula += form.elements[i].outerHTML;
			//break;
		}
	}
	recebe.innerHTML = acumula;
	}catch(eee){alert(eee.description)}
}

function propaga(oCampo)
{
	document.forms['formEstrutura'].elements[oCampo.name].value=oCampo.value;
}

function analisa(DOMElement,level)
{
	var returnValue;
	var tempReturnValue;
	var nodes = new Array();
	
	//alert('');
	
	for( var i=0 ; i<DOMElement.childNodes.length ; i++ )
	{
		var child = DOMElement.childNodes[i];
		
		if(child.nodeType==1) // elemento
		{
			switch( child.getAttribute('tipo') )
			{
				case 'node':
					nodes[nodes.length] = child;
					break;
				case 'trigger':
					var trigger = child;
					break;
				case 'conteiner':
					var conteiner = child;
					break;
			}
		}
	}
	if( typeof(conteiner)!='undefined' )
	{
		returnValue = conteiner;
		conteiner.level = level++;
	}
	if( nodes.length > 0 )
	{
		returnValue = nodes;
	}
	for( var i=0 ; i<DOMElement.childNodes.length ; i++ )
	{
		var child = DOMElement.childNodes[i];
		if(child.hasChildNodes())
		{
			var temp = analisa(child, level);
			if( typeof(temp)!='undefined' )
			{
				tempReturnValue = temp;
				if(child.nodeType==1) // elemento
				{
					if( child.getAttribute('tipo') ==  'node')
					{
						try{
							child.innerConteiner = tempReturnValue;
							tempReturnValue.outerNode = child;
							var classname = (tempReturnValue.hasChildNodes()?'setinha':'');
							
							if(typeof(child.oldValue)=='undefined') child.oldValue = child.value;
							if(typeof(child.tipoItem)=='undefined') child.tipoItem = '';
							if(typeof(child.abreDireto)=='undefined') child.abreDireto = '';
							if(typeof(child.novo)=='undefined') child.novo = '';
							
							var tempConteiner = child.innerConteiner;
							var tempTrigger = tempConteiner.trigger;
							var tempLevel = tempConteiner.level-1;
							tempTrigger.innerHTML = '' +
'<input type="text" name="item[' + tempLevel + '][value][' + child.itemId + ']" value="' + child.value + '" onchange="this.parentNode.conteiner.outerNode.value=this.value" autocomplete="false" class="' + classname + '" />' +
'<input type="hidden" name="item[' + tempLevel + '][oldValue][' + child.itemId + ']" value="' + child.oldValue + '" />' +
'<input type="hidden" name="item[' + tempLevel + '][tipoItem][' + child.itemId + ']" value="' + child.tipoItem + '" />' +
'<input type="hidden" name="item[' + tempLevel + '][abreDireto][' + child.itemId + ']" value="' + child.abreDireto + '" />' +
'<input type="hidden" name="item[' + tempLevel + '][ordena][]" value="' + child.itemId + '" />' +
								( child.outerConteiner.outerNode?
'<input type="hidden" name="item[' + tempLevel + '][parentId][' + child.itemId + ']" value="' + child.outerConteiner.outerNode.itemId + '" />':'' ) +
								( child.novo!=0?
'<input type="hidden" name="item[' + tempLevel + '][novo][]" value="' + child.itemId + '" />':'' ) +
							'';
							
							if(child.conteudo_texto)
							{
								var contentsReceiver = null;
								var jatem = false;
								try
								{
									jatem = (tempTrigger.previousSibling.firstChild.tagName=='TEXTAREA')
								}catch(e){}
								
								if(jatem)
								{
									contentsReceiver = tempTrigger.previousSibling;
								}
								else
								{
									contentsReceiver = document.createElement('SPAN');
									contentsReceiver.style.display = 'none';
									tempTrigger.parentNode.insertBefore(contentsReceiver,tempTrigger);
									contentsReceiver.innerHTML = '' +
									'<textarea name="item[' + (tempLevel) + '][texto][' + child.itemId + ']">' +
									'</textarea>' +
									'<span></span>' +
									'';
								}
								contentsReceiver.firstChild.value = child.conteudo_texto;
							}
							
						}catch(e){}
					}
				}
			}
		}
	}
	if( typeof(conteiner)!='undefined' )
	{
		if( typeof(tempReturnValue)!='undefined' )
		{
			conteiner.nodes = tempReturnValue;
			for( var i=0 ; i<tempReturnValue.length ; i++ )
			{
				tempReturnValue[i].outerConteiner = conteiner;
			}
			//alert(conteiner.nodes.length);
		}
		else
		{
			conteiner.nodes = null;
		} 
	}
	if( typeof(trigger)!='undefined' && typeof(conteiner)!='undefined' )
	{
		//conteiner.style.display = 'none';
		trigger.conteiner = conteiner;
		conteiner.trigger = trigger;
		trigger.onclick = function()
		{ 
			mostraSubMenu(this);
		}
		trigger.oncontextmenu = function()
		{
			return showContextMenu(this);
		}
		
		
		trigger.onmouseover = function()
		{ 
			//event.cancelBubble = true;
		}
		trigger.onselectstart = function()
		{ 
			event.cancelBubble = true;
		}
		trigger.parentNode.onmouseover = function()
		{
			if(typeof(this.oldBGC)=='undefined') this.oldBGC = this.style.backgroundColor;
			this.style.backgroundColor = '#666666';
			//event.cancelBubble = true;
		}
		trigger.parentNode.onmouseout = function()
		{
			this.style.backgroundColor = this.oldBGC
		}
		trigger.parentNode.onselectstart = function()
		{
			return false;
		}
		/*
		*/
	}
	if(typeof(returnValue)=='undefined')
	{
		returnValue = tempReturnValue;
	}
	return returnValue;
}

var documentTrigger = null;

function escondeSubMenu()
{
	document.detachEvent('oncontextmenu',escondeSubMenu);
	document.detachEvent('onclick',escondeSubMenu);
	documentTrigger.conteiner.style.display='';
	mostraSubMenu(documentTrigger);
}

function mostraSubMenu(trigger)
{
	event.cancelBubble = true;
	if(trigger.conteiner.style.display=='none')
	{
		for( var i=0 ; i<trigger.conteiner.outerNode.outerConteiner.nodes.length ; i++ )
		{
			if(trigger.conteiner.outerNode.outerConteiner.nodes[i].innerConteiner.style.display!='none')
			{
				mostraSubMenu(trigger.conteiner.outerNode.outerConteiner.nodes[i].innerConteiner.trigger);
			}
		}
		if(!trigger.conteiner.hasChildNodes()) return;
		trigger.conteiner.style.display='';
		trigger.conteiner.style.position='absolute';
		trigger.conteiner.style.zIndex='1';
	}
	else
	{
		if(!trigger.conteiner.hasChildNodes()) return;
		document.detachEvent('oncontextmenu',escondeSubMenu);
		document.detachEvent('onclick',escondeSubMenu);
		for( var i=0 ; i<trigger.conteiner.nodes.length ; i++ )
		{
			if(trigger.conteiner.nodes[i].innerConteiner.style.display!='none')
			{
				mostraSubMenu(trigger.conteiner.nodes[i].innerConteiner.trigger);
			}
		}
		trigger.conteiner.style.display='none';
	}
	if(trigger.conteiner.level==1){
		documentTrigger = trigger;
		document.attachEvent('oncontextmenu',escondeSubMenu);
		document.attachEvent('onclick',escondeSubMenu);
	}
}

function showContextMenu(trigger)
{
	document.detachEvent('onclick',hideContextMenu);
	document.detachEvent('oncontextmenu',hideContextMenu);
	contextmenu = document.getElementById('contextMenuMenu');
	contextmenu.trigger = trigger;
	
	var conteiner = trigger.conteiner;
	var node = conteiner.outerNode;
	
	var prod = document.getElementById('contextMenuProdutos');
	if( node.getAttribute('novo')==1 )
	{
		prod.className = 'disabled';
	}
	else
	{
		prod.className = '';
	}
	
	document.body.appendChild(contextmenu);
	contextmenu.style.left = event.x + document.body.scrollLeft;
	contextmenu.style.top = event.y + document.body.scrollTop;
	var timer = setTimeout("document.attachEvent('oncontextmenu',hideContextMenu);",10);
	var timer = setTimeout("document.attachEvent('onclick',hideContextMenu);",10);
	event.cancelBubble = true;
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


try{
	xmlhttp = new XMLHttpRequest();
}catch(e){
	try{
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	}catch(e){
		try{
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}catch(e){
			xmlhttp = false;
		}
	}
}

function editaProdutos(contextMenuItem)
{
	if(contextMenuItem.className=='disabled') return false;
	
	var contextMenu = contextMenuItem.parentNode;
	var trigger = contextMenu.trigger;
	var conteiner = trigger.conteiner;
	var node = conteiner.outerNode;
	
	itemId = node.getAttribute('itemId');
	location = 'tela.php?tela=ecomm_produto&menu_id=' + itemId ;
	
}

function cabecalhoMenu(contextMenuItem)
{

	var contextMenu = contextMenuItem.parentNode;
	var trigger = contextMenu.trigger;
	var conteiner = trigger.conteiner;
	var node = conteiner.outerNode;
	
	itemId = node.getAttribute('itemId');
	location = 'tela.php?tela=estrutura_menus_cabecalho&menu_id=' + itemId ;
	//cabecalho = window.open('estrutura_cabecalho.php?menu_id=' + itemId ,'cabecalho','width=600,height=500,scrollbars=yes');
	//cabecalho.focus();
	//return;	
}

function editaConteudo(contextMenuItem)
{
	if(contextMenuItem.className=='disabled') return false;
	
	var timer = setTimeout('hideContextMenu();',10);
	var contextMenu = contextMenuItem.parentNode;
	var trigger = contextMenu.trigger;
	var conteiner = trigger.conteiner;
	var node = conteiner.outerNode;
	//alert(node.outerHTML);
	recebeHTML = document.getElementById('conteudoPrincipal');
	if( !recebeHTML.getAttribute('defaultHTML') ) recebeHTML.setAttribute( 'defaultHTML' , recebeHTML.innerHTML );
	if( typeof(recebeHTML.node)!='undefined')
	{
		if( recebeHTML.node==node ) return;
	}
	
	
	if( node.novo==0 && typeof(node.conteudo_texto) == 'undefined' )
	{
		recebeHTML.tempNode = node;
		xmlhttp.open("GET" ,  "extranet_extrutura_pega_conteudo.php?id=" + node.itemId , true);
		
		eval(''+
		'xmlhttp.onreadystatechange = function() {'+
		'	if (xmlhttp.readyState==4){'+
		'		recebeHTML = document.getElementById("conteudoPrincipal");'+
		'		recebeHTML.tempNode.conteudo_texto = xmlhttp.responseText;'+
		'		editaConteudo(document.getElementById("' + contextMenuItem.id + '"));'+
		'	}'+
		'}'+
		'');
		xmlhttp.send(null);
		return;
	}
	if( typeof(recebeHTML.node)!='undefined') recebeHTML.oldNode = recebeHTML.node;
	recebeHTML.node = node;
	
	var oForm = document.getElementById("formEstrutura");
	oForm.elements["action_name"].value = "edit";
	oForm.elements["action_id"].value = node.itemId;
	
	recebeHTML.innerHTML = '';
	recebeHTML.innerHTML = '<iframe name="iframeConteudo" id="iframeConteudo" Xframeborder="0" width="100%" height="1" allowtransparency="true" scrolling="no" src="tela.php?tela=extranet_estrutura_menus" onload="ajeita(this,\'trataUnloadIframe\')"></iframe>' + carregando ;
	
	auxRecebeHTML = document.getElementById('contenido');
	auxRecebeHTML.innerHTML = '';
}

function trataUnloadIframe(oIframe)
{
	//alert('trataUnloadIframe');
	recebeHTML = document.getElementById('conteudoPrincipal');
	var node = null;
	//alert( 'oldNode=' + recebeHTML.oldNode + ' - node=' + recebeHTML.node );
	if( typeof(recebeHTML.oldNode)!='undefined' && recebeHTML.oldNode )
	{
		node = recebeHTML.oldNode;
		recebeHTML.oldNode = null;
	}
	else
	{
		node = recebeHTML.node;
	}
	
	var conteiner = node.innerConteiner;
	var trigger = conteiner.trigger;
	var contentsReceiver = null;
	
	
	var jatem = false;
	try
	{
		jatem = (trigger.previousSibling.firstChild.tagName=='TEXTAREA')
	}catch(e){}
	
	if(jatem)
	{
		contentsReceiver = trigger.previousSibling;
	}
	else
	{
		contentsReceiver = document.createElement('SPAN');
		contentsReceiver.style.display = 'none';
		trigger.parentNode.insertBefore(contentsReceiver,trigger);
		contentsReceiver.innerHTML = ''+
		'<textarea name="item[' + (conteiner.level-1) + '][texto][' + node.itemId + ']"></textarea>' +
		'<span></span>' +
		'';
	}
	
	node.conteudo_texto = oIframe.document.getElementById('conteudo_texto___Frame').contentWindow.document.getElementById('xEditingArea').firstChild.contentWindow.document.body.innerHTML;
	contentsReceiver.firstChild.value = node.conteudo_texto;
	
	lista = oIframe.document.getElementById('listaAnexos');
	contentsReceiver.lastChild.innerHTML = lista.innerHTML;
	for( var i = 0 ; i < contentsReceiver.lastChild.childNodes.length ; i++ )
	{
		label = contentsReceiver.lastChild.childNodes[i].firstChild;
		var anexoId = label.firstChild.id;
		var innerText = label.innerText;
		label.innerHTML = ''+
		'<input type="checkbox" class="checkbox" id="' + anexoId + '">' +
		'<input type="hidden" class="checkbox" name="item[' + (conteiner.level-1) + '][anexo][' + node.itemId + '][' + anexoId + ']" value="' + innerText + '">' +
		innerText +
		'';
	}
	node.listaAnexos = contentsReceiver.lastChild;
	/*
	*/
	
	//alert(contentsReceiver.outerHTML);
}

function ajeita(oIframe,functionUnload)
{
	
	//alert('funo "ajeita" em extranet_estrutura.js');
	oIframe.contentWindow.document.body.style.margin = '0px';
	oIframe._onunload = functionUnload;
	
	setTimeout( "document.getElementById('iframeConteudo').contentWindow.document.body.onunload = function(){ " + functionUnload + " (this) };", 100);
	
	var marginTop = oIframe.offsetTop;
	var marginLeft = oIframe.offsetLeft;
	var marginRight = oIframe.parentNode.scrollWidth - oIframe.scrollWidth - oIframe.offsetLeft;
	var marginBottom = oIframe.parentNode.scrollHeight - oIframe.scrollHeight - oIframe.offsetTop;
	
	oIframe.setAttribute('marginTop',marginTop);
	oIframe.setAttribute('marginLeft',marginLeft);
	oIframe.setAttribute('marginRight',marginRight);
	oIframe.setAttribute('marginBottom',marginBottom);
	
	oIframe.style.marginTop = -marginTop+11;
	oIframe.style.marginLeft = -marginLeft;
	oIframe.style.marginRight = -marginRight;
	oIframe.style.marginBottom = -marginBottom;
	
	//oIframe.style.height = oIframe.contentWindow.document.body.scrollHeight;
	oIframe.style.width = oIframe.scrollWidth + marginLeft + marginRight + 6;
	
	divConteudoTexto = oIframe.contentWindow.document.getElementById('DIVconteudo_texto');
	divConteudoTexto.style.width = oIframe.scrollWidth - 2;
	divConteudoTexto.style.position = 'absolute';
	divConteudoTexto.style.top = '1px';
	divConteudoTexto.style.left = '1px';
	
	recebeHTML = document.getElementById('conteudoPrincipal');
	if( typeof(recebeHTML.node.conteudo_texto) != 'undefined' )
	{
		
		oIframe.contentWindow.document.getElementsByName('conteudo_titulo')[0].value = recebeHTML.node.innerConteiner.trigger.firstChild.value;
		oIframe.contentWindow.document.getElementById('conteudo_texto').value = recebeHTML.node.conteudo_texto;
		lista = oIframe.contentWindow.document.getElementById('listaAnexos');
		lista.innerHTML = recebeHTML.node.innerConteiner.trigger.previousSibling.lastChild.innerHTML;
	}
	else if( typeof(recebeHTML.node) != 'undefined' )
	{
		
		//alert(recebeHTML.node.outerHTML);
		var partes = vl_data.split('/');
		var dia = partes[2];
		var mes = partes[1];
		var ano = partes[0];
		oIframe.contentWindow.document.getElementsByName('conteudo_titulo')[0].value = dia + '/' + mes + ' ' + vl_hora + ' - ' + recebeHTML.titulo ;
		oIframe.contentWindow.document.getElementById('conteudo_texto').value = recebeHTML.node.firstChild.value;
		lista = oIframe.contentWindow.document.getElementById('listaAnexos');
		lista.innerHTML = recebeHTML.node.lastChild.innerHTML;
	}
}

var timerAjeita = null;

function ajeitaInternoDelayed()
{
	try{clearTimeout(timerAjeita);}catch(e){}
	timerAjeita = setTimeout('ajeitaInterno();',500);
}

function ajeitaInterno()
{
	try{clearTimeout(timerAjeita);}catch(e){}
	recebeHTML = document.getElementById('conteudoPrincipal');
	oIframe = document.getElementById('iframeConteudo');
	
	objCarregando = oIframe.nextSibling.nextSibling;
	objCarregando.style.display = 'none';
	
	//oIframe.style.border = '1px solid red';
	
	oIframe.contentWindow.scrolling = 'no';
	oIframe.contentWindow.document.getElementById('conteudo_texto___Frame').contentWindow.scrolling = 'no';
	oIframe.contentWindow.document.getElementById('conteudo_texto___Frame').contentWindow.document.getElementById('xEditingArea').firstChild.contentWindow.scrolling = 'no';
	
	auxRecebeHTML = document.getElementById('contenido');
	auxRecebeHTML.innerHTML = '<div style="height: ' + (oIframe.scrollHeight - oIframe.getAttribute('marginTop') - oIframe.getAttribute('marginBottom')) + 'px;">&nbsp;</div>';

	iframeInterno = oIframe.contentWindow.document.getElementById('conteudo_texto___Frame').contentWindow.document.getElementById('xEditingArea').firstChild.contentWindow;
	
	iframeInterno.document.body.style.textAlign = 'justify';
	iframeInterno.document.body.style.paddingTop = oIframe.getAttribute('marginTop');
	iframeInterno.document.body.style.paddingLeft = oIframe.getAttribute('marginLeft');
	iframeInterno.document.body.style.paddingRight = oIframe.getAttribute('marginRight');
	iframeInterno.document.body.style.paddingBottom = oIframe.getAttribute('marginBottom');
	
	
	try
	{
		var targetA = oIframe.contentWindow.document.getElementById(''+
		'conteudo_texto___Frame').contentWindow.document;
		var targetB = iframeInterno.document;
	}
	catch(error)
	{
		//alert(error.description);
		
	}
		
	
	try{
		targetA.detachEvent('onclick',ajeitaInternoDelayed);
		targetA.detachEvent('onkeyup',ajeitaInternoDelayed);
		targetB.detachEvent('onclick',ajeitaInternoDelayed);
		targetB.detachEvent('onkeyup',ajeitaInternoDelayed);
	}catch(e){}
	
	targetA.attachEvent('onclick',ajeitaInternoDelayed);
	targetA.attachEvent('onkeyup',ajeitaInternoDelayed);
	targetB.attachEvent('onclick',ajeitaInternoDelayed);
	targetB.attachEvent('onkeyup',ajeitaInternoDelayed);
	//alert('function ajeitaInterno()');
	
	oIframe.contentWindow.document.getElementById('conteudo_texto___Frame').contentWindow.document.getElementById('xEditingArea').firstChild.style.height = iframeInterno.document.body.scrollHeight;
	oIframe.contentWindow.document.getElementById('conteudo_texto___Frame').style.height = iframeInterno.document.body.scrollHeight + iframeInterno.document.body.scrollTop;
	
	oIframe.contentWindow.document.getElementById('conteudo_texto___Frame').style.height = oIframe.contentWindow.document.getElementById('conteudo_texto___Frame').contentWindow.document.body.scrollHeight;
	
	
	oIframe.style.height = oIframe.contentWindow.document.body.scrollHeight;
	
	auxRecebeHTML = document.getElementById('contenido');
	auxRecebeHTML.innerHTML = '<div style="height: ' + (oIframe.scrollHeight - oIframe.getAttribute('marginTop') - oIframe.getAttribute('marginBottom')) + 'px;">&nbsp;</div>';
	
}

function habilitaSubMenu(contextMenuItem)
{
	var contextMenu = contextMenuItem.parentNode;
	var trigger = contextMenu.trigger;
	var conteiner = trigger.conteiner;
	if(!conteiner.hasChildNodes())
	{
		var oldConteiner = conteiner;
		var tempConteiner = gabarito.innerConteiner;
		while(tempConteiner.level<conteiner.useLevel)
		{
			tempConteiner = tempConteiner.nodes[0].innerConteiner;
		}
		var clone = tempConteiner.cloneNode(true);
		var receiver = conteiner.parentNode;
		receiver.replaceChild(clone,conteiner);
		analisa(oldConteiner.outerNode.outerConteiner, oldConteiner.level);
		conteiner.style.display = '';
		mostraSubMenu(conteiner.trigger);
		//mostraSubMenu(conteiner.trigger);
		contextMenu.trigger = clone.nodes[0].innerConteiner.trigger;
		adicionaMenu(contextMenuItem);
		clone.nodes[0].parentNode.removeChild(clone.nodes[0]);
		contextMenu.trigger = trigger;
	}
}

function adicionaMenu(contextMenuItem)
{
	var timer = setTimeout('hideContextMenu();',10);
	var contextMenu = contextMenuItem.parentNode;
	var trigger = contextMenu.trigger;
	var conteiner = trigger.conteiner;
	var node = conteiner.outerNode;
	var receiver = node.parentNode;
	var clone = node.cloneNode(true);
	receiver.appendChild(clone);
	if(typeof(seed[clone.outerConteiner.level])!='undefined')
	{
		clone.itemId = seed[clone.outerConteiner.level]++;
	}
	else
	{
		clone.itemId = seed[seed.length-1]++;
	}
	clone.novo = '1';
	clone.value = '';
	clone.oldValue = '';
	clone.tipoItem = '';
	clone.abreDireto = '';
	clone.conteudo_texto = '';
	analisa( receiver, conteiner.level );
	clone.innerConteiner.innerHTML = '';
	clone.innerConteiner.style.display = 'none';
	try
	{
		receiver.insertBefore(clone, node.nextSibling);
	}
	catch(e)
	{
		receiver.appendChild(clone);
	}
	analisa( receiver, conteiner.level );
	event.cancelBubble = true;
	clone.getElementsByTagName('INPUT')[0].focus();
}

function removeMenu(contextMenuItem)
{
	var timer = setTimeout('hideContextMenu();',10);
	var contextMenu = contextMenuItem.parentNode;
	var trigger = contextMenu.trigger;
	var conteiner = trigger.conteiner;
	var node = conteiner.outerNode;
	var outerConteiner = node.outerConteiner;
	analisa(outerConteiner.parentNode, outerConteiner.level);
	if(node.outerConteiner.nodes.length==1 )
	{
		if(node.outerConteiner.level==0)
		{
			adicionaMenu(contextMenuItem);
			node.parentNode.removeChild(node);
		}
		else
		{
			node.outerConteiner.innerHTML = '';
			node.outerConteiner.style.display = 'none';
		}
	}
	else
	{
		node.parentNode.removeChild(node);
	}
	event.cancelBubble = true;
	analisa(outerConteiner.outerNode.outerConteiner, outerConteiner.level);
}

function avancaMenu(contextMenuItem)
{
	event.cancelBubble = true;
	var contextMenu = contextMenuItem.parentNode;
	var trigger = contextMenu.trigger;
	var conteiner = trigger.conteiner;
	var node = conteiner.outerNode;
	var tipo = node.nextSibling.getAttribute('tipo');
	if( tipo!='node' ) return;
	try
	{
		node.swapNode(node.nextSibling);
	}catch(e){}
}

function recuaMenu(contextMenuItem)
{
	event.cancelBubble = true;
	var contextMenu = contextMenuItem.parentNode;
	var trigger = contextMenu.trigger;
	var conteiner = trigger.conteiner;
	var node = conteiner.outerNode;
	var tipo = node.previousSibling.getAttribute('tipo');
	if( tipo!='node' ) return;
	try
	{
		node.swapNode(node.previousSibling);
	}catch(e){}
}






// parte da agenda
//////////////////
function inicializaLinksAgenda(recebeHTML)
{
	//alert('inicializaLinks');
	osLinks = recebeHTML.getElementsByTagName('A');
	for( i=0 ; i<osLinks.length ; i++ )
	{
		//alert(osLinks[i].outerHTML);
		//if(!osLinks[i].onclick)
		if(osLinks[i].disabled)
		{
			osLinks[i].parentNode.style.visibility = 'hidden';
		}
		else
		{
			osLinks[i].onclick = function(){ event.returnValue=false; return false; };
		}
	}
}

function refreshAgenda(twoTimes)
{
	
	if(false) if( typeof(twoTimes) == 'undefined' )
	{
		recebeHTML = document.getElementById('conteudoPrincipal');
		recebeHTML.innerHTML = '';
		recebeHTML.innerHTML = '<iframe name="iframeConteudo" id="iframeConteudo" Xframeborder="0" width="100%" height="1" allowtransparency="true" scrolling="no" src="tela.php?tela=extranet_estrutura_menus" onload="setTimeout(\"refreshAgenda(\'twoTimes\')\",100);"></iframe>' + carregando ;
		
		auxRecebeHTML = document.getElementById('contenido');
		auxRecebeHTML.innerHTML = '';	
	}
	
	vl_data = document.getElementsByName('id_data')[0].value;
	vl_entrada_manha = document.getElementsByName('agenda_entrada_manha')[1].value;
	vl_saida_manha = document.getElementsByName('agenda_saida_manha')[1].value;
	vl_entrada_tarde = document.getElementsByName('agenda_entrada_tarde')[1].value;
	vl_saida_tarde = document.getElementsByName('agenda_saida_tarde')[1].value;
	vl_passo = document.getElementsByName('agenda_passo')[1].value;
	extranet_id = document.getElementsByName('id')[1].value;
	
	destination = "extranet_agenda.php?";
	destination += "&data=" + vl_data;
	destination += "&entrada_manha=" + vl_entrada_manha;
	destination += "&saida_manha=" + vl_saida_manha;
	destination += "&entrada_tarde=" + vl_entrada_tarde;
	destination += "&saida_tarde=" + vl_saida_tarde;
	destination += "&passo=" + vl_passo;
	destination += "&extranet_id=" + extranet_id;
	xmlhttp.open("GET" ,  destination , true);
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState==4){
			conteudo_principal = document.getElementById('conteudoPrincipal');
			conteudo_auxiliar = document.getElementById('contenido');
			conteudo_principal.innerHTML = xmlhttp.responseText;
			conteudo_auxiliar.innerHTML = xmlhttp.responseText;
			inputs = conteudo_principal.getElementsByTagName('INPUT');
			for( var i=0 ; i<inputs.length ; i++ )
			{
				if(inputs[i].name.substring(0,11)=='compromisso')
				{
					inputs[i].onchange = function(){armazenaCompromisso(this)}
					try{
						inputs[i].value = document.getElementsByName(inputs[i].name + '[' + vl_data + ']')[0].value;
					}catch(e){}
				}
			}
			var scripts = conteudo_principal.getElementsByTagName('SCRIPT');
			inicializaLinksAgenda(conteudo_principal);
			for( var i=0 ; i<scripts.length ; i++ )
			{
				try
				{
					eval(scripts[i].innerHTML);
				}catch(e){}
			}
			
			var oForm = document.getElementById("formEstrutura");
			oForm.elements["action_name"].value = "calendar";
			oForm.elements["action_id"].value = vl_data;
		}
	}
	xmlhttp.send(null);
	
}

function armazenaCompromisso(oCampo)
{
	//alert(vl_data);
	mantem = document.getElementsByName( oCampo.name + '[' + vl_data + ']' )[0];
	if( typeof(mantem) == 'undefined' )
	{
		mantemParent = document.createElement('SPAN');
		mantemParent.style.display = 'none';
		oForm = document.forms['formEstrutura'];
		oElement = oForm.elements['confirma'];
		oElement.parentNode.insertBefore(mantemParent,oElement);
		mantemParent.innerHTML = '<input type="text" name="' +  oCampo.name + '[' + vl_data + ']" />';
		mantem = mantemParent.firstChild;
	}
	mantem.value = oCampo.value;
}

function editCompromisso(aImg)
{
	vl_hora = aImg.parentNode.previousSibling.firstChild.name.substring(12,17);
	//alert( vl_data + ' - ' + hora );
	
	recebeHTML = document.getElementById('conteudoPrincipal');
	recebeHTML.titulo = aImg.parentNode.previousSibling.firstChild.value;
	
	var jatem = false;
	try
	{
		jatem = document.getElementsByName('conteudoAgenda[' + vl_hora + '][' + vl_data + ']')[0];
	}catch(e){}
	
	if( typeof(recebeHTML.node)!='undefined' && typeof(jatem)!='undefined' )
	{
		if( recebeHTML.node==jatem.parentNode ) return;
	}
	
	if( typeof(jatem) != 'undefined' )
	{
		contentsReceiver = jatem.parentNode;
	}
	else
	{
		mantemParent = document.createElement('SPAN');
		mantemParent.style.display = 'none';
		oForm = document.forms['formEstrutura'];
		oElement = oForm.elements['confirma'];
		oElement.parentNode.insertBefore(mantemParent,oElement);
		mantemParent.innerHTML = ''+
		'<textarea name="conteudoAgenda[' + vl_hora + '][' + vl_data + ']"></textarea>' +
		'<span></span>' +
		'';
		contentsReceiver = mantemParent;
		jatem = contentsReceiver.firstChild;
		
		recebeHTML.tempNode = contentsReceiver;
		
		var id = oForm.elements['id'].value
		xmlhttp.open("GET" ,  "extranet_agenda_pega_conteudo.php?id=" + id + "&vl_hora=" + vl_hora + "&vl_data=" + vl_data , true);
		//xmlhttp.open("GET" ,  "extranet_agenda_pega_conteudo.php?hora=" + hora + "&vl_data=" + vl_data , true);
		
		eval(''+
		'xmlhttp.onreadystatechange = function() {' +
		//'	alert(xmlhttp.responseText); return;' +
		'	if (xmlhttp.readyState==4){' +
		'		recebeHTML = document.getElementById("conteudoPrincipal");' +
		//'		recebeHTML.tempNode.firstChild.value = xmlhttp.responseText;' +
		'		recebeHTML.tempNode.innerHTML = xmlhttp.responseText;' +
		'		editCompromisso(document.getElementsByName("compromisso[' + vl_hora + ']")[0]' +
		'.parentNode.nextSibling.firstChild.nextSibling);' +
		'	}' +
		'}' +
		'');
		xmlhttp.send(null);
		return;
	}
	//alert(contentsReceiver.outerHTML);
	
	//if( typeof(recebeHTML.node)!='undefined') recebeHTML.oldNode = recebeHTML.node;
	if( typeof(recebeHTML.node)!='undefined') recebeHTML.oldNode = recebeHTML.node;
	recebeHTML.node = contentsReceiver;
	//alert(jatem.outerHTML);
	var oForm = document.getElementById("formEstrutura");
	oForm.elements["action_name"].value = "edit";
	oForm.elements["action_id"].value = vl_data + '' + vl_hora;
	
	recebeHTML.innerHTML = '';
	recebeHTML.innerHTML = '<iframe name="iframeConteudo" id="iframeConteudo" Xframeborder="0" width="100%" height="1" allowtransparency="true" scrolling="no" src="tela.php?tela=extranet_estrutura_menus" onload="ajeita(this,\'trataUnloadIframeAgenda\')"></iframe>' + carregando ;
	
	auxRecebeHTML = document.getElementById('contenido');
	auxRecebeHTML.innerHTML = '';
}

function trataUnloadIframeAgenda(oIframe)
{
	//alert('trataUnloadIframeAgenda');
	recebeHTML = document.getElementById('conteudoPrincipal');
	var node = null;
	
	//alert( recebeHTML.node + ' - ' + recebeHTML.oldNode );
	
	if( typeof(recebeHTML.oldNode)!='undefined' && recebeHTML.oldNode )
	{
		node = recebeHTML.oldNode;
		recebeHTML.oldNode = null;
		
	}
	else
	{
		node = recebeHTML.node;
	}
	contentsReceiver = node;
	//alert(oIframe.document.getElementById('conteudo_texto___Frame'));
	var conteudo_texto = oIframe.document.getElementById('conteudo_texto___Frame').contentWindow.document.getElementById('xEditingArea').firstChild.contentWindow.document.body.innerHTML;
	//alert(conteudo_texto);
	contentsReceiver.firstChild.value = conteudo_texto;
	
	var tmp_hora = contentsReceiver.firstChild.name.substr(15,5);
	var tmp_data = contentsReceiver.firstChild.name.substr(22,10);
	
	lista = oIframe.document.getElementById('listaAnexos');
	contentsReceiver.lastChild.innerHTML = lista.innerHTML;
	for( var i = 0 ; i < contentsReceiver.lastChild.childNodes.length ; i++ )
	{
		label = contentsReceiver.lastChild.childNodes[i].firstChild;
		var anexoId = label.firstChild.id;
		var innerText = label.innerText;
		label.innerHTML = ''+
		'<input type="checkbox" class="checkbox" id="' + anexoId + '">' +
		'<input type="hidden" class="checkbox" name="anexoAgenda[' + tmp_hora + '][' + tmp_data + '][' + anexoId + ']" value="' + innerText + '">' +
		innerText +
		'';
		//alert(label.innerHTML);
	}
	node.listaAnexos = contentsReceiver.lastChild;
	
}