$('.index a, .index-pol a').on('click',function(e){
	e.preventDefault();
	$('input[name="name"]').focus();
	var $this=$(this);
	if($this.hasClass('on')){
		$('.users').html('');
		$this.removeClass('on');
		
	}else{
		$.ajax({
			url:$this.attr('href')
		})
		.success(function(data){
			$('h1').html(data.latitude);
			$('h2').html(data.longitude);
		});
	}

	$('input[name="name"]').val('');
});















