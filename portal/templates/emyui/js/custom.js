/*------------------------------------------------------------------
 * Theme Name: emyUI - Multipurpose clientarea WHMCS theme 
 * Author: coodiv (nedjai mohamed) (nbames.mohamed@gmail.com)
 * Author URI: https://coodiv.net/
 * Author URI: https://themeforest.net/user/coodiv
 * Theme Version: 1.0
 -------------------------------------------------------------------*/

'use strict'
$(document).ready(function() {
	
	AOS.init();
    window.addEventListener('load', AOS.refresh);
	
	$("select:not(#stateselect)").niceSelect();
	
	
	$('.search-btn-header').on('click', function(e) {
        if (!$('.emyui-searchbar-header').hasClass('show')) {
            $('.emyui-searchbar-header').addClass("show");
        }else{
			$('.emyui-searchbar-header').removeClass("show");
		}
    });
	
	$('.emyui-searchbar-header .searching-close').on('click', function(e) {
        if ($('.emyui-searchbar-header').hasClass('show')) {
            $('.emyui-searchbar-header').removeClass("show");
        }
    });
	
	
	$('.header-lang.dropdown').on('show.bs.dropdown', function() {
			$("html").addClass('overflow-hidden');
			$("header.site-header").addClass('white-bg light-mode-texts');
			$("header.site-header").removeClass('dark-mode-texts');
		})
		$('.header-lang.dropdown').on('hide.bs.dropdown', function() {
			$("html").removeClass('overflow-hidden');
			if(!$('header.site-header').hasClass('top-header-fixed')) {
				if(!$('header.site-header').hasClass('light-color-header')) {
					$("header.site-header").removeClass('light-mode-texts');
					$("header.site-header").addClass('dark-mode-texts');
				}
				$("header.site-header").removeClass('white-bg');
			}
	})
	
	
    var navs = document.querySelectorAll('.order-form-menu-scroller .nav');
	var navstwo = document.querySelectorAll('.nav-scroller-subpages .nav');
	if (jQuery(".order-form-menu-scroller .nav").length > 0) {
      for ( var i = 0, length = navs.length; i < length; i++ ) {
        var nav = navs[i];
        new Flickity( nav, {
          cellAlign: 'left',
          freeScroll: true,
          prevNextButtons: false,
          pageDots: false,
          contain: true
        });
      }
	}
	if (jQuery(".nav-scroller-subpages .nav").length > 0) { 
	  for ( var i = 0, length = navstwo.length; i < length; i++ ) {
        var nav = navstwo[i];
        new Flickity( nav, {
          cellAlign: 'center',
          freeScroll: true,
          prevNextButtons: false,
          pageDots: false,
          contain: true
        });
      }
	}  
	  

	
	$('.searchtoggle').on('click', function(e) {
        if (!$('.search-box-topics-sidebar').hasClass('show')) {
            $('.search-box-topics-sidebar').addClass("show");
        }else{
			$('.search-box-topics-sidebar').removeClass("show");
		}
    });
	
	
	
	$(document).click(function () {
    $('.navbar-collapse').collapse('hide');
    });
	
	(function() {
    var visited = localStorage.getItem('visited');
    if (!visited) {
        document.getElementById("popuppfirsttime").style.visibility = "visible";
        localStorage.setItem('visited', true);
    }
    })();
	
	
	$('body').append('<div id="toTop" class="btn"><span class="feather icon-chevron-up"></span></div>');
    $(window).scroll(function() {
    if ($(this).scrollTop() != 0) {
    $('#toTop').fadeIn();
	$('.live-support-trigger').fadeIn();
    } else {
    $('#toTop').fadeOut();
	$('.live-support-trigger').fadeOut();
    }
    });
    $('#toTop').click(function() {
    $("html, body").animate({
    scrollTop: 0
    }, 600);
    return false;
    });
	
	
	//-- animated scroll -- //
	$(document).on('click', '.animated-link', function (event) {
		event.preventDefault();
		var nav_height = 170;		
		if ($($.attr(this, 'href')).offset())
		{
			$('html, body').animate({			
				scrollTop: $($.attr(this, 'href')).offset().top - nav_height
			}, 500);
		}
  	});
	
	$('.popover-host-features').popover({
     trigger: 'focus'
    });
	
	// page loeader //	
    $('.preloader').delay(100).fadeOut('slow');

	
	// dropdown screen fit //
	$(function () {
    $(".drop-menu-item.dropdown").on('mouseenter mouseleave', function (e) {
        if ($('.coodiv-menu-dropdown', this).length) {
            var elm = $('.coodiv-menu-dropdown', this);
            var off = elm.offset();
            var l = off.left;
            var w = elm.width();
            var docW = $(window).width();

            var isEntirelyVisible = (l + w <= docW);

            if (!isEntirelyVisible) {
                $(elm).addClass('invers-drop-down-menu');
            } else {
				$(elm).removeClass('invers-drop-down-menu');

            }
        }
    });
    });
	
	
	// fixed header layout //	
	$(window).scroll(function() {
    var scroll = $(window).scrollTop();
	if ($('header.site-header').hasClass('fixed-header-layout')) {
    if (scroll >= 50) {
    $("header.site-header").addClass("top-header-fixed white-bg light-mode-texts");
	$("header.site-header").removeClass('dark-mode-texts');
    } else {
    $("header.site-header").removeClass("top-header-fixed");
	$("header.site-header").removeClass("white-bg");
	if (!$('header.site-header').hasClass('light-color-header')) {
	$("header.site-header").removeClass("light-mode-texts");
	$("header.site-header").addClass('dark-mode-texts');
	}
    }
	}
    });

    $('.dropdown-menu a.dropdown-toggle').on('click', function(e) {
        if (!$(this).next().hasClass('show')) {
            $(this).parents('.dropdown-menu').first().find('.show').removeClass("show");
        }
        var $subMenu = $(this).next(".dropdown-menu");
        $subMenu.toggleClass('show');

        $(this).parents('li.nav-item.dropdown.show').on('hidden.bs.dropdown', function(e) {
            $('.dropdown-submenu .show').removeClass("show");
        });

        return false;
    });
	
	$(".goto").on('click', function(event) {
        if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 2000, function() {
                window.location.hash = hash;
            });
        }
    });

	$('.main-menu .nav-item').hover(
       function(){ $(this).addClass('menu-hover') },
       function(){ $(this).removeClass('menu-hover') }
    )
	
})


//-- language search filtre -- //
function FilterLanguageHeader() {
    var input, filter, ul, li, a, i;
    input = document.getElementById('lang-search-input');
    filter = input.value.toUpperCase();
    ul = document.getElementById("lang-box-ul");
    li = ul.getElementsByTagName('li');
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].classList.remove("disabled");
        } else {
            li[i].classList.add("disabled");
        }
    }
};  
	
$(window).load(function() {
    setTimeout(function() {
        $('#loading').fadeOut(500);
    }, 1000);
    setTimeout(function() {
        $('#loading').remove();
    }, 2000);
})

