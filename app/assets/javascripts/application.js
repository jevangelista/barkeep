// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

$(document).ready(function(){

/****** Start Drinks Page JS *******/ 

	$('a[href^="#"]').on('click',function (e) {
	    e.preventDefault();

	    var target = this.hash;
	    var $target = $(target);

	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top
	    }, 900, 'swing', function () {
	        window.location.hash = target;
	    });
	});

/****** End Drinks Page JS *******/ 

	$( ".bartender-container" ).hover(function() {
	  $('.right-bubble').fadeIn( "fast", function() {
    // Animation complete
    	$(this).text("Hello, my name is Bart! I will be your personal bartender for today. Select one of the feelings below, and I'll serve just the drink for you!").fadeIn( "fast" );
 	 });



	});

    var obj = document.createElement("audio");
        obj.src="/sounds/shaker_sound.wav";
        obj.volume=0.10;
        obj.autoPlay=false;
        obj.preLoad=true;       
 
	$("#bounce").click(function(){
		console.log("Overlay being clicked");
				obj.play();
			    $(this).animate({top: 70},"fast")
			    .animate({top: 0},"fast")
			    .animate({top: 70},"fast")
			    .animate({top: 0},"fast")
			    .animate({top: 70},"fast")
			    .animate({top: 0},"fast", function() {
               // Animation complete.
               $("#overlay").hide()


            });
		    	  
	});



/****** End Emotions Page JS *******/ 
 

});




