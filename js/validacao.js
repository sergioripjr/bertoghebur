// JavaScript Document
function dataMaior(dataInicial, dataFinal) {
	//Transformao da data inicial
	var diaInicial = dataInicial.value.substr(0,2);
	var mesInicial = dataInicial.value.substr(3,2);
	var anoInicial = dataInicial.value.substr(6,4);
	var DtInicial = anoInicial + mesInicial + diaInicial;
	//Transformao da data final
	var diaFinal = dataFinal.value.substr(0,2);
	var mesFinal = dataFinal.value.substr(3,2);
	var anoFinal = dataFinal.value.substr(6,4);
	var DtFinal = anoFinal + mesFinal + diaFinal;	
	if (dataFinal.value != "" && dataFinal.value != null) {
		if (DtFinal == "00000000") {
			DtFinal = dataInicial.value;
			dataFinal.value = DtFinal;
		}
		if (DtFinal < DtInicial) {
			dataInicial.value = dataFinal.value;
			alert("A data inicial precisa ser menor ou igual a data final!");
			//return false;
		}
	} else {
		DtFinal = dataInicial.value;
		dataFinal.value = DtFinal;
	}
}
function is_valid_form( form_object, fields_needed_list, alert_msg ){
	fields_needed_list = ( typeof( fields_needed_list ) == 'string' ) ? fields_needed_list.split( ',' ) : fields_needed_list;
	for( i = 0; i<fields_needed_list.length; i++ ){
		if( form_object.elements[fields_needed_list[i]] != null && ( form_object.elements[fields_needed_list[i]].value == "" || form_object.elements[fields_needed_list[i]].value == null ) ){
			alert(alert_msg);
			form_object.elements[fields_needed_list[i]].focus();
			var tamanho = form_object.elements[fields_needed_list[i]].className.split(" ");			
			form_object.elements[fields_needed_list[i]].className = 'CampoTextoObrigatorio ' + tamanho[1];
			return false;
		}
	}
	return true;
}
function validaCNPJ(obj) {
	CNPJ = obj.value;
	if (CNPJ.length == 0) {
		return true;
	}
	erro = new String;
	if (CNPJ.length < 18) erro += " necessrio preencher corretamente o nmero do CNPJ!\n";
	if ((CNPJ.charAt(2) != ".") || (CNPJ.charAt(6) != ".") || (CNPJ.charAt(10) != "/") || (CNPJ.charAt(15) != "-")){
		if (erro.length == 0) erro += " necessrio preencher corretamente o nmero do CNPJ!\n";
	}
	//substituir os caracteres que nao sao numeros
	if(document.layers && parseInt(navigator.appVersion) == 4){
		x = CNPJ.substring(0,2);
		x += CNPJ.substring(3,6);
		x += CNPJ.substring(7,10);
		x += CNPJ.substring(11,15);
		x += CNPJ.substring(16,18);
		CNPJ = x;	
	} else {
		CNPJ = CNPJ.replace(".","");
		CNPJ = CNPJ.replace(".","");
		CNPJ = CNPJ.replace("-","");
		CNPJ = CNPJ.replace("/","");
	}
	var nonNumbers = /\D/;
	if (nonNumbers.test(CNPJ)) erro += "A verificacao de CNPJ suporta apenas nmeros!\n";	
	var a = [];
	var b = new Number;
	var c = [6,5,4,3,2,9,8,7,6,5,4,3,2];
	for (i=0; i<12; i++){
		a[i] = CNPJ.charAt(i);
		b += a[i] * c[i+1];
	}
	if ((x = b % 11) < 2) { a[12] = 0 } else { a[12] = 11-x }
	b = 0;
	for (y=0; y<13; y++) {
		b += (a[y] * c[y]); 
	}
	if ((x = b % 11) < 2) { a[13] = 0; } else { a[13] = 11-x; }
	if ((CNPJ.charAt(12) != a[12]) || (CNPJ.charAt(13) != a[13])){
		erro +="Digito verificador com problema!";
	}
	if (erro.length > 0){
		alert(erro);
		obj.focus();
		return false;
	} else {
		return true;
	}
}
function validaEmail(campo) {
	if (campo.value != "") {
		if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(campo.value))) { 
			alert("Favor informar um e-mail vlido.") 
			campo.focus() ;
			return false;
		} else {
			return true;
		}
	}
}
function validaValorNumerico(campo,valorMin,valorMax) {
	// verifica se o valor numerico est entre o valor minimo e mximo
	var prsVal = parseInt(campo.value);
	if (!(prsVal >= valorMin && prsVal <= valorMax))
	{
		msg = "O valor precisa estar entre " + valorMin + " e " + valorMax;
		alert(msg);
		campo.focus();
		return false;
	} else {
		return true;
	}
}

function checkMail(mail){
	var er = new RegExp(/^[A-Za-z0-9_\-\.]+@[A-Za-z0-9_\-\.]{2,}\.[A-Za-z0-9]{2,}(\.[A-Za-z0-9])?/);
	if(typeof(mail) == "string"){
		if(er.test(mail)){ 
			return true; 
		}
	}else if(typeof(mail) == "object"){
		if(er.test(mail.value)){
			return true;
		}
	}else{
		return false;
	}
}