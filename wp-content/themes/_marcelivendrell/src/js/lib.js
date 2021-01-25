LIB = {
    root: null,
    setRoot: function(root) {
        LIB.root = root;
        LIB.init();
    }
};

/* INICIEM TOES LES FUNCIONS */
LIB.init = function() {   
    LIB.section.init();    
    LIB.wow.init(); 
    LIB.headerProject.init(); 
    LIB.goDown.init(); 
    LIB.burgerMenu.init(); 
    LIB.slickSliderPage.init();    
    // LIB.objectFit.init(); 
};

// SECTION ID
LIB.section = {
    init: function(){

        $sectionId=$("main").attr("id");  
        $("body").addClass($sectionId);      
        $("footer").addClass($sectionId);      

        if($sectionId == 'home'){       
            /// console.log('this is the fucking HOME');
         //   LIB.menuScrollHome.init(); 
         $("header").addClass($sectionId);
     }  else  if($sectionId == 'content'){  
            // console.log('this is a fucking PAGE');
            LIB.menuScrollPage.init(); 
            $("header").addClass($sectionId);
        } else   {  
            // console.log('this is a fucking PAGE');
            //LIB.menuScrollPage.init(); 
            $("header").addClass($sectionId);
        }
    }
}

 //Init WOW.js and get instance
 LIB.wow = {
    init: function(){
        // console.log("wow On");       
        var wow = new WOW({
            boxClass:     'wow',      // default
            animateClass: 'animated', // default
            offset:       0,          // default
            mobile:       false,       // default
            live:         true        // default
        });
        wow.init();
    }
}
/* // MENU SCROLL HOME */
LIB.headerProject = {
    init: function() {

        $(window).scroll(function() {
            var x = $(this).scrollTop();    

            // PARALLAX HOME IMAGE 
            $('.header-project img.bg').css('top',' '+parseInt(-x/8)+'px');
            $('.nav-brand').css({ 'opacity' : (1 - x/215) });

        });
    }
}

// MENU SCROLL PAGE
LIB.menuScrollPage = {
    init: function() {       


       var s = $("header");  // sticker        
       var bottom = $('.header-project').position().top + $('.header-project').outerHeight(true) - 25;   

       $(window).scroll(function() {

        var windowpos = $(window).scrollTop();

            // IF NOT MOBILE
            if ( $(window).width() >= 979) {

                if (windowpos >= bottom) {
                    s.addClass("in");                                          

                } else {                    
                    s.removeClass("in");                                   
                }           
            }        
        });
   }
}
// goDown
LIB.goDown = {
    init: function() {
        // console.log("goDown On");
        $(".arrow-down").click(function(e) {
            e.preventDefault();

             // IF NOT MOBILE
             if ( $(window).width() > 991) {

                var inicio = $("#project-name").offset().top;
                $('html, body').animate({scrollTop: inicio }, 1600, 'easeInOutExpo');

            } else {

                var descrpition = $("#project-name").offset().top + 5;
                $('html, body').animate({scrollTop: descrpition }, 1600, 'easeInOutExpo');

            }


        });
    }
}
// Burger Menu Trigger
LIB.burgerMenu = {
    init: function() {

        $('.menu_trigger').click(function(){
            $(this).toggleClass('open');
            
            if($("header").hasClass('in')) {
               // $("header").removeClass('in');
               menu.menuUnmount();
               setTimeout(function() { $("header").removeClass('in'); }, 200);        

           } else {
            $("header").addClass('in');      
            setTimeout(function() { menu.menuMount(); }, 150);      
        }

    });
    }
}

// SECTION ID
LIB.slickSliderPage = {
    init: function(){

        $('.primary-slick').on('init', function(e, slick) {
            var $firstAnimatingElements = $('div.item:first-child').find('[data-animation]');
            doAnimations($firstAnimatingElements);    
        });
        $('.primary-slick').on('beforeChange', function(e, slick, currentSlide, nextSlide) {
            console.log("change slider");
            var $animatingElements = $('div[data-slick-index="' + nextSlide + '"]').find('[data-animation]'); // .item
            doAnimations($animatingElements);    
        });
        
        slider_home = $('.primary-slick');
        slider_home.slick({
            infinite: true,
            speed: 200,        
            slidesToShow: 1, 
            fade: true,
            autoplay: true,
            dots: true,
            arrows: true,
            autoplaySpeed: 5000,
            rows: 0,
            prevArrow:"<img class='a-left control-c prev slick-prev' src='/wp-content/uploads/2021/01/left-arrow.svg'>",
            nextArrow:"<img class='a-right control-c next slick-next' src='/wp-content/uploads/2021/01/right-arrow.svg'>",         
        }); 


        /******* Transició manual ********/        
        var durationList = $('.slick-slide .item').map(function(index, item) {
            if (!item.getAttribute('data-time'))
                return 7500;
            else 
                return item.getAttribute('data-time');
        });
        
        var slideIndex = 0;
        var changeSlide = function(timing) {
          setTimeout(function() {
            if (timing !== 0) {
              slider_home.slick('slickNext');
          }
          if (slideIndex >= durationList.length) slideIndex = 0;
          changeSlide(durationList[slideIndex++]);

      }, timing);
      }
      changeSlide(0);     
      /******* FI transició manual ********/

      function doAnimations(elements) {
        var animationEndEvents = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
        elements.each(function() {
            var $this = $(this);
            var $animationDelay = $this.data('delay');
            var $animationType = 'animated ' + $this.data('animation');
            $this.css({
                'animation-delay': $animationDelay,
                '-webkit-animation-delay': $animationDelay
            });
            $this.addClass($animationType).one(animationEndEvents, function() {
                $this.removeClass($animationType);
            });
        });
    }

    jQuery('.primary-slick').on('afterChange', function(event, slick, currentSlide, nextSlide){
          //jQuery(".slick-slide").removeClass('works');
          //jQuery('.slick-current').addClass('works');  

          jQuery("body").removeClass('white');      

          $('.slick-active').next().addClass('next');

          if (jQuery(".slick-current h1").hasClass("white")) {
            jQuery("body").addClass('white');    
        }

    });



}   
}

/*
 // objectFit Pollify IE11
 LIB.objectFit = {
    init: function(){

        var isIE11 = !!navigator.userAgent.match(/Trident.*rv\:11\./);
        // alert(isIE11);
        if (isIE11) { objectFitImages('img.object-fit'); } 

    }
 }
 */

//Let's go baby!
$( document ).ready(  LIB.init()  );

