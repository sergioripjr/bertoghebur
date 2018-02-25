// JavaScript Document
var cmin2,csec2;

function Minutes(data) {
	for(var i=0;i<data.length;i++) 
	if(data.substring(i,i+1)==":") 
	break;  
	return(data.substring(0,i)); 
}
function Seconds(data) {        
	for(var i=0;i<data.length;i++) 
	if(data.substring(i,i+1)==":") 
		break;  
	return(data.substring(i+1,data.length)); 
}
function Display(min,sec) {     
	var disp;       
	if(min<=9) 
		disp=" 0";   
	else 
		disp=" ";  
	disp+=min+":";  
	if(sec<=9) 
		disp+="0"+sec;       
	else 
		disp+=sec; 
	return(disp); 
}
function Down() {	
	cmin2=1*Minutes("10");     
	csec2=0+Seconds("0");        
	DownRepeat(); 
}
function DownRepeat() { 
	csec2--;        
	if(csec2==-1) { 
		csec2=59; cmin2--; 
	}       
	//document.sw.disp2.value = Display(cmin2,csec2);
	var tempo = Display(cmin2,csec2);
	window.status  = "Restam " +  tempo + " para a sessão ser fechada.";    
	if((cmin2==0)&&(csec2==0)) {
		alert("Por segurança a sua sessão foi fechada, vocé tera que se logar novamente!");
		document.location.href="?logout";		     
	} else {
		down=setTimeout("DownRepeat()",1000); 
	}
}