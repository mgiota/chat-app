$(document).on('turbolinks:load', function(){
	$('.notice').slideDown('fast').delay(3000).slideUp('fast');
	$('.alert').slideDown('fast').delay(3000).slideUp('fast');
});