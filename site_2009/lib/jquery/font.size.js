// JavaScript Document
function fontSize(action, container){
    container = typeof(container) != 'undefined' ? container : "div.texto" //se não for especificado um container será "div.texto"
    baseSize = 10;//parseInt($(container+" p").css("font-size")) //extraímos o font-size padrão, tomando como base o p do nosso container

    $els = $(container).children()
    $els.each(function(){
        $fs = parseInt($(this).css("font-size"))
        if(action == "plus" && baseSize < 16){
			$fs += 1;alert("S");
		}else if(action == "minus" && baseSize > 13){
			$fs -= 1;
		}
        $(this).css("font-size", $fs)
    })
}