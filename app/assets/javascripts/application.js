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

/****** Start Emotions Page JS *******/ 

	$( ".bartender-img" ).hover(function() {
	  $('.right-bubble').fadeIn( "slow", function() {
    // Animation complete
    	$(this).text("Hello, my name is Charlie! I will be your personal bartender for today. Select one of the options below, and I'll serve just the drink for you!").fadeIn( "fast" );
  });



	});

	$("#bounce").click(function(){
		console.log("Overlay being clicked");
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

/****** Start Splash Page JS *******/ 
//hover for left box
	$(".login-left").hover(function(){

		  	$(this).addClass( "overlay" );
		  	$(this).html('<div class="overlay-left">Come on in and join us!<br><br><a class="login-link" href="/sessions/new">Sign Up</a></div>');
		      },function() {
	    	$(this).removeClass( "overlay" );
	    	$(this).html("New customers");


	  }
	);

	//hover for right box
	$(".login-right").hover(function(){

		  	$(this).addClass( "overlay" );
		  	$(this).html('<div class="overlay-right">Step right in!<br><br><a class="login-link" href="/users/new">Login</a></div>');
		      },function() {
	    	$(this).removeClass( "overlay" );
	    	$(this).html("Returning members");
	  }
	);

/****** End Splash Page JS *******/ 

});




