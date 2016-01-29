var key = "AIzaSyB1kuNQvVohmKYodg2I7pMs9ZY6-vT3QuQ"

$(document).ready(function(){

var query = $(".emotions-font").text();
console.log(query);

$.ajax({
      url: "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=1&q=how+to+make+cocktail" + query + "&type=video&key=" + key, 
      type: 'GET',
      dataType: "jsonp",
      success: function(data){
               console.log(data);   
               var title = data.items[0].snippet.title
               var videoId = data.items[0].id.videoId 

               console.log(title);
               console.log(videoId);  

               //When user clicks Watch How-To
                  //Change source attribute with correct videoId
                  //Show video player
              $("#watch").on('click',function (e) {
                  e.preventDefault();

                  $("#player").show();
                  console.log("player being clicked");


                      var target = this.hash;
                      var $target = $(target);

                      $('html, body').stop().animate({
                          'scrollTop': $target.offset().top
                      }, 900, 'swing', function () {
                          window.location.hash = target;
                      });
              });



      },
      error: function(jqXHR, textStatus, errorThrown) {
          alert (textStatus, + ' | ' + errorThrown);
      }

  });
                 


});



