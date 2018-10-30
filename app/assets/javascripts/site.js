$(document).on('turbolinks:load', function(){
	$('.notice').slideDown('fast').show().delay(3000).slideUp('fast');
	$('.alert').slideDown('fast').show().delay(3000).slideUp('fast');
});