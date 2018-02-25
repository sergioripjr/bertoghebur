// JavaScript Document
//cadastra newsletter
var oFormNewsletter = null;

function cadastraNewsletter(oForm){
	oFormNewsletter = oForm;
	var btn = document.getElementById('btnImgCad');
	if(!validaForm(oForm)) return false;
	btn.disabled = true;
	try{
		janelinha_cadastra.close();
	}catch(e){}
	janelinha_cadastra = window.open('','janelinha_cadastra','width=250,height=100');
	janelinha_cadastra.focus();
	setTimeout('limpaForm()',10);
	return true;
}

function limpaForm(){
	oForm = oFormNewsletter;
	for( var i = 0 ; i < oForm.length ; i++ )
	{
		if(oForm.elements[i].type=='select-one')
		{
			oForm.elements[i].options[0].selected = true;
		}
		else
		{
			oForm.elements[i].value = oForm.elements[i].defaultValue;
		}
	}
	
	var btn = document.getElementById('btnImgCad');
	btn.disabled = false;
}

function validaForm(oForm){
	if( oForm.elements['nome'].value == '' )
	{
		alert('Preencha o Nome');
		oForm.elements['nome'].focus();
		return false;
	}
	
	if( oForm.elements['email'].value == '' )
	{
		alert('Preencha o E-mail');
		oForm.elements['email'].focus();
		return false;
	}
	
	return true;
}
