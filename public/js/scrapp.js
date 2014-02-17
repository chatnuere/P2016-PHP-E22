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
			$('section + section').html(data);
			$('.users').html(data);
			$('.index a.on').removeClass('on');
			$this.addClass('on');
			console.log(data);
		});
	}

	$('input[name="name"]').val('');
});















