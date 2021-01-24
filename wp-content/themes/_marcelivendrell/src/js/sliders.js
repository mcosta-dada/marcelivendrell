$(document).ready(function(){

	/****** HOME ******/

	var slides = $('.primary-slick');
	$('.primary-slick').slick({
		autoplay: true,
		dots: true,
		arrows: true,
		autoplaySpeed: 5000,
		rows: 0,
		prevArrow:"<img class='a-left control-c prev slick-prev' src='/wp-content/uploads/2021/01/left-arrow.svg'>",
		nextArrow:"<img class='a-right control-c next slick-next' src='/wp-content/uploads/2021/01/right-arrow.svg'>",
	});

	/*$('.left').click(function(){
	  $('.slider').slick('slickPrev');
	})

	$('.right').click(function(){
	  $('.slider').slick('slickNext');
	})*/

});