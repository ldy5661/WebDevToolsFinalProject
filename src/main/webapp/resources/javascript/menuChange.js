$(document).ready(function () {
	$(".menuChange").click(function() {
	    $('li').not(this).removeClass('active');
	    $(this).addClass('active');
	    });
});


