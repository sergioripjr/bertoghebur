
	function preparaClick(aImg)
	{
		td = aImg.parentNode;
		imgs = td.getElementsByTagName('IMG');
		inputs = td.getElementsByTagName('INPUT');
		
		if(imgs[0].getAttribute('tipo')=='quadrado')
		{
			imgCheckbox = imgs[0];
			imgRadio = imgs[1];
		}
		else
		{
			imgCheckbox = imgs[1];
			imgRadio = imgs[0];
		}
		
		if(inputs[0].getAttribute('tipo')=='quadrado')
		{
			checkbox = inputs[0];
			radio = inputs[1];
		}
		else
		{
			checkbox = inputs[1];
			radio = inputs[0];
		}
		
	}
	
	function clickRadio(aImg)
	{
		preparaClick(aImg);
		imgCheckbox.src = 'images/questionario/quadrado.jpg';
		checkbox.value = '';
		if(radio.value=='1')
		{
			imgRadio.src = 'images/questionario/redondo.jpg';
			radio.value = '';
		}
		else
		{
			imgRadio.src = 'images/questionario/redondo_checked.jpg';
			radio.value = '1';
		}
	}
	
	function clickCheckbox(aImg)
	{
		preparaClick(aImg);
		imgRadio.src = 'images/questionario/redondo.jpg';
		radio.value = '';
		if(checkbox.value=='1')
		{
			imgCheckbox.src = 'images/questionario/quadrado.jpg';
			checkbox.value = '';
		}
		else
		{
			imgCheckbox.src = 'images/questionario/quadrado_checked.jpg';
			checkbox.value = '1';
		}
	}
	
	function setRadioNext(imgAdd)
	{
		var td = imgAdd.parentNode;
		var trTmp = td.parentNode;
		var tr = trTmp.nextSibling;
		var imgs = tr.getElementsByTagName('IMG');
		
		for( i = 0 ; i < imgs.length ; i++ )
		{
			if(imgs[i].getAttribute('tipo')=='redondo')
			{
				var aImg = imgs[i];
				break;
			}
		}
		preparaClick(aImg);
		radio.value = '';
		clickRadio(aImg);
	}
	