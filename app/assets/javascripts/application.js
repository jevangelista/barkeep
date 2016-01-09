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
//= require turbolinks
//= require_tree .

$(document).ready(function(){

//hover for left box
$(".login-left").hover(function(){

	  	$(this).addClass( "overlay" );
	  	$(this).html('<div class="overlay-left">Come on in and join us at the bar!</div>');
	      },function() {
    	$(this).removeClass( "overlay" );
    	$(this).html("Not a regular?");


  }
);

//hover for right box
$(".login-right").hover(function(){

	  	$(this).addClass( "overlay" );
	  	$(this).html('<div class="overlay-right">Make yourself comfy and get a drink!</div>');
	      },function() {
    	$(this).removeClass( "overlay" );
    	$(this).html("Returning member?");
  }
);

});


// $splashBox.click(function(event) {
//   	($this).addClass( "overlay" );
// });

