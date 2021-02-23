$(document).ready(function(){

	//$(document).not('#home').find('nav').addClass('in');

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

		/*var scrollDistance = $(window).scrollTop();

		$('section').each(function(i) {
			console.log($(this).scrollTop());
		});*/

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


 var addClassOnScroll = function () {
            var windowTop = $(window).scrollTop();
            $('section[id]').each(function (index, elem) {
                var offsetTop = $(elem).offset().top;
                var outerHeight = $(this).outerHeight(true);

                if( windowTop > (offsetTop - 50) && windowTop < ( offsetTop + outerHeight)) {
                    var elemId = $(elem).attr('id');

                    $("nav a.active").removeClass('active');

                    $("nav a[href='#" + elemId + "']").addClass('active');
                }
            });
        };

        $(function () {
            $(window).on('scroll', function () {
                addClassOnScroll();
            });
        });

