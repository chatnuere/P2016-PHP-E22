$('#updateInfo').on('click',function(e){
	e.preventDefault();
	var $this=$(this);
		$.ajax({
			url:$this.attr('href')
		})
		.success(function(data){
			$('.profil_perso').html(data);
			console.log(data);
		});
});

$('#seeInfo').on('click',function(e){
	e.preventDefault();
	var $this=$(this);
		$.ajax({
			url:$this.attr('href')
		})
		.success(function(data){
			$('.profil_perso').html(data);
			console.log(data);
		});
});






