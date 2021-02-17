$(document).ready(function(){

	var prevScrollpos = window.pageYOffset;
	window.onscroll = function() {
		var currentScrollPos = window.pageYOffset;
		if (prevScrollpos > currentScrollPos) {
			document.getElementsByClassName("navbar")[0].style.top = "0";
		} else {
			document.getElementsByClassName("navbar")[0].style.top = "-"+ $('.navbar').outerHeight() + "px";
		}
		prevScrollpos = currentScrollPos;
	}
	$(window ).scroll(function() {


		if($(this).scrollTop() > $('header').innerHeight() - 20) {
			$('header').find('nav').addClass('in');
        } else {
			$('header').find('nav').removeClass('in');
        }
	});

	document.querySelectorAll('a[href^="#"]').forEach(anchor => {
	    anchor.addEventListener('click', function (e) {
	        e.preventDefault();

	        document.querySelector(this.getAttribute('href')).scrollIntoView({
	            behavior: 'smooth'
	        });
	    });
	});

	$(document).on('click', '.logo-nav', function(){
		
		$("html, body").animate({ scrollTop: 0 });

	});

});