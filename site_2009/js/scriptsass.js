
// a função analisa retorna false quando string_analise é vazio ou se possui apenas espaços em branco
// e do contrário retorna true
function analisa(string_analise) {
	string_final = ""
	string_teste = ""
	tamanho = string_analise.length;
	// quando string_analise é vazia, o for não é executado
	for (var i=0;i<tamanho;i++) {
		aux = string_analise.substring(i,i+1)
		if (aux == ' ') {
			string_final = string_final + ' ';
	 	}	
		string_teste = 	string_teste + ' ';
   	}
	if (string_teste == string_final)  return false;
	else return true;	
}

// esta função verifica se um valor inteiro é numérico ou não
function numerico(valor) {
	aux = parseFloat(valor);
	if (aux == valor) return true;
	else return false;
}

// esta função valida o email
function valida_email(campo) {
	erro = true;
	p1 = campo.indexOf("@")
	p2 = campo.lastIndexOf(".")
	t = campo.length - 1;
	if((p1==t) || (p2==t) || (p2==-1) || (p1>p2) || ((p2-p1)==1))
	 erro = false;
	return erro;
}

// Verifica se a data respeita o formato: dd/mm/aaaa
function checaData(campo){
	dia = campo.substr(0,2);
	mes = campo.substr(3,2);
	ano = campo.substr(6,4);
	if (
		Number(dia) && 
		Number(mes) && 
		Number(ano) && 
		(campo.indexOf("/") == 2) && 
		(campo.lastIndexOf("/") == 5) && 
		(campo.length == 10)
	){
		return true;
	}
	else
	{
		return false;
	}
}


function validaform(oform){
	if(oform.salvar.disabled) return false;
	msgErroHeader = 'Os seguintes campos não foram preenchidos corretamente:\n\n';
	msgErroBody = '';
	for(i=0;i<oform.length;i++){
		if(oform.elements[i].type=='submit') continue;
		if(oform.elements[i].type=='reset') continue;
		if(oform.elements[i].type=='button') continue;
		if(oform.elements[i].type=='image') continue;
		if(oform.elements[i].type=='radio'){
			if(oform.elements[i].checked)
				oform.elements['_'+oform.elements[i].name].value = oform.elements[i].value;
			continue;
		}
		if( oform.elements[i].type=='select-one' || oform.elements[i].type=='select-multiple' ){
			oform.elements['_'+oform.elements[i].name].value = oform.elements[i].value;
			continue;
		}
		if( oform.elements[i].type=='textarea'){
			if( analisa(oform.elements[i].value) ){
				oform.elements['_'+oform.elements[i].name].value = 1;
			}else{
				oform.elements['_'+oform.elements[i].name].value = '';
			}
			continue;
		}
		switch( oform.elements[i].accept ){
			case 'obrigatorio':
			if( (oform.elements[i].type=='checkbox' && !oform.elements[i].checked) || !analisa(oform.elements[i].value) )
				msgErroBody += ' * ' + oform.elements[i].title + '\n';
			break;
			case 'numerico':
			if( !numerico(oform.elements[i].value) )
				msgErroBody += ' * ' + oform.elements[i].title + ' (somente números)\n';
			break;
			case 'data':
			if( !checaData(oform.elements[i].value) )
				msgErroBody += ' * ' + oform.elements[i].title + ' (data em formato inválido)\n';
			break;
			case 'email':
			if( !valida_email(oform.elements[i].value) )
				msgErroBody += ' * ' + oform.elements[i].title + ' (e-mail em formato inválido)\n';
			break;
			default:
				if(oform.elements[i].accept) 
					if(oform.elements[oform.elements[i].accept].value!=oform.elements[i].value)
						msgErroBody += ' * ' + oform.elements[i].title + ' (deve ser igual a '+
						oform.elements[oform.elements[i].accept].title+')\n';
		}
	}
	if(msgErroBody){
		alert (msgErroHeader + msgErroBody);
		return false;
	}
	oform.salvar.disabled=true;
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
	
	function sobelinha(img)
	{
		try
		{
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