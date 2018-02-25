
onload = function()
{
	principal = document.getElementById('estrutura');
	analisa(principal,0);
	principal.innerConteiner = analisa(principal,0);
	principal.innerConteiner.outerNode = principal;
	principal.style.display = '';
	
	principal.onmouseover = function()
	{
		event.cancelBubble = true;
	}
	
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
							
							var tempConteiner = child.innerConteiner;
							var tempTrigger = tempConteiner.trigger;
							var tempLevel = tempConteiner.level-1;
							tempTrigger.innerHTML = '' +
//'<input type="text" name="item[' + tempLevel + '][value][' + child.itemId + ']" value="' + child.value + '" onselectstart="return false;"  readonly class="link ' + classname + '" />' +
'<input type="text" value="' + child.getAttribute('value') + '" onselectstart="return false;"  readonly class="link ' + classname + '" />' +
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
			listaProdutos(this);
			//mostraSubMenu(this);
		}
		
		
		
		trigger.onmouseover = function()
		{ 
			this.conteiner.style.display='none';
			mostraSubMenu(this);
			//event.cancelBubble = false;
		}
		/*
		trigger.onmouseout = function()
		{ 
			//this.style.display='none';
			mostraSubMenu(this);
			event.cancelBubble = false;
		}
		*/
		trigger.conteiner.onmouseover = function()
		{ 
			this.style.display='none';
			mostraSubMenu(this.trigger);
			event.cancelBubble = false;
		}
		trigger.conteiner.onmouseout = function()
		{ 
			//this.style.display='none';
			//mostraSubMenu(this.trigger);
			event.cancelBubble = false;
		}
		trigger.onselectstart = function()
		{ 
			event.cancelBubble = true;
		}
		trigger.parentNode.onmouseover = function()
		{
			//alert(this.className);
			//if(typeof(this.oldBGC)=='undefined') this.oldBGC = this.style.backgroundColor;
			//this.style.backgroundColor = '#666666';
			//event.cancelBubble = true;
		}
		trigger.parentNode.onmouseout = function()
		{
			//this.style.backgroundColor = this.oldBGC
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
	document.detachEvent('onmouseover',escondeSubMenu);
	//document.detachEvent('oncontextmenu',escondeSubMenu);
	//document.detachEvent('onclick',escondeSubMenu);
	documentTrigger.conteiner.style.display='';
	mostraSubMenu(documentTrigger);
}

function mostraSubMenu(trigger)
{
	//event.cancelBubble = true;
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
		document.detachEvent('onmouseover',escondeSubMenu);
		//document.detachEvent('oncontextmenu',escondeSubMenu);
		//document.detachEvent('onclick',escondeSubMenu);
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
		document.attachEvent('onmouseover',escondeSubMenu);
		//document.attachEvent('oncontextmenu',escondeSubMenu);
		//document.attachEvent('onclick',escondeSubMenu);
	}
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

function listaProdutos(trigger,noHistory)
{
	if(trigger.firstChild.className=='link setinha') return;
	
	
	
	var conteiner = trigger.conteiner;
	var node = conteiner.outerNode;
	//alert(node.outerHTML);
	//recebeHTML = document.getElementById('conteudo');
	//recebeHTML.node = node;
	var agarrefe = "tela.php?pag=ecomm_produto_lista&menu_id=" + node.itemId;
	
	//alert(agarrefe)
	//return;
	
	if(true)
	//if( typeof(node.conteudo) == 'undefined' )
	{
		atualizaConteudo(carregando);
		xmlhttp.open("GET" ,  agarrefe , true);
		
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState==4){
				//recebeHTML = document.getElementById("conteudo");
				atualizaConteudo(xmlhttp.responseText);
				//recebeHTML.node.conteudo = xmlhttp.responseText;
				//listaProdutos(recebeHTML.node.innerConteiner.trigger);
			}
		}
		
		xmlhttp.send(null);
	}
	if(typeof(noHistory)=='undefined')
	{
		historyIndex++;
		defineHistorico[historyIndex] = new Array();
		defineHistorico[historyIndex][1] = agarrefe;
		defineHistorico[historyIndex][2] = 'defineAjax';
		defineHistorico[historyIndex][3] = 'menu';
		defineHistorico[historyIndex][4] = trigger;
		var oIframe = document.getElementsByName('iframeAjax')[0].contentWindow;
		var url = oIframe.location;
		var hash = url.search.toString();
		url = url.toString();
		url = url.substring(0, ( url.length - hash.length ) ) ;
		oIframe.location = url + '?' + historyIndex;
	}
		return;
	
	//atualizaConteudo(node.conteudo);
	return;
	
	//auxRecebeHTML = document.getElementById('contenido');
	
	//auxRecebeHTML.innerHTML = node.conteudo;
	//recebeHTML.innerHTML = node.conteudo;
	
}