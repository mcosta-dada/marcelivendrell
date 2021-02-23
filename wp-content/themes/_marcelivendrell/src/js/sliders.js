$(document).ready(function(){

	/****** HOME ******/

	  $('.primary-slick').slick({
	    autoplay: true,
		dots: true,
		arrows: true,
		autoplaySpeed: 5000,
		rows: 0,
		fade: true,
		infinite: true,
		prevArrow:"<img class='a-left control-c prev slick-prev' src='/wp-content/uploads/2021/01/left-arrow.svg'>",
		nextArrow:"<img class='a-right control-c next slick-next' src='/wp-content/uploads/2021/01/right-arrow.svg'>",
	  });

	  if ($('.slick-slide').hasClass('slick-active')) {
	    $('.logo-slide').addClass('animate__animated animate__fadeInRight');
	    $('.text-slide').addClass('animate__animated animate__fadeInRight animate__delay-1s');
	  } else {
	    $('.logo-slide').removeClass('animate__animated animate__fadeInRight');
	    $('.text-slide').removeClass('animate__animated animate__fadeInRight animate__delay-1s');
	  }

	  $(".primary-slick").on("beforeChange", function() {
	    
	    $('.logo-slide').removeClass('animate__animated animate__fadeInRight').hide();
	    $('.text-slide').removeClass('animate__animated animate__fadeInRight animate__delay-1s').hide();
	    setTimeout(() => {    
	      $('.logo-slide').addClass('animate__animated animate__fadeInRight').show();
	      $('.text-slide').addClass('animate__animated animate__fadeInRight animate__delay-1s').show();
	      
	    }, 1000);

	  })

/*
	$('.primary-slick').on('init', function(e, slick) {
		var $firstAnimatingElements = $('div.item:first-child').find('[data-animation]');
		doAnimations($firstAnimatingElements);    
	});
	$('.primary-slick').on('beforeChange', function(e, slick, currentSlide, nextSlide) {

            var $animatingElements = $('div[data-slick-index="' + nextSlide + '"]').find('[data-animation]'); // .item
            doAnimations($animatingElements);    
        });

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



	function doAnimations(elements) {

		//animate__animated animate__fadeInRight animate__delay-2s

		var animationEndEvents = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
		elements.each(function() {
			//console.log($(this));
			var $this = $(this);
			//var $animationDelay = $this.data('delay');
			var $animationDelay = 'animate__delay-' + $this.data('delay');
			var $animationType = 'animate__animated animate__' + $this.data('animation');

			$this.addClass($animationType).one(animationEndEvents, function() {
				$this.removeClass($animationType);
			});

			$this.addClass($animationDelay).one(animationEndEvents, function() {
				$this.removeClass($animationDelay);
			});
		});
	}

	jQuery('.primary-slick').on('afterChange', function(event, slick, currentSlide, nextSlide){

          $(currentSlide).find('[data-animation]').removeClass(function (index, css) {
          	return (css.match (/(^|\s)animate\S+/g) || []).join(' ');
          });


    });
*/

});