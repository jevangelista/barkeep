// var key = "AIzaSyB1kuNQvVohmKYodg2I7pMs9ZY6-vT3QuQ"

// $(document).ready(function(){

// var query = $("#query").text();
// console.log(query);

// $.ajax({
//       url: "https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=1&q=how+to+make+cocktail" + query + "&type=video&key=" + key, 
//       type: 'GET',
//       jsonpCallback: 'cmsCallback',
//       dataType: "jsonp",
//       success: function(data){
//                console.log(data);   
//                var title = data.items[0].snippet.title
//                var videoId = data.items[0].id.videoId 

//                console.log(title);
//                console.log(videoId);  

//                $("#video-info").text(title + " " + videoId); 
//       },
//       error: function(jqXHR, textStatus, errorThrown) {
//           alert (textStatus, + ' | ' + errorThrown);
//       }


//   });

// });


// $(document).ready(function(){

//     console.log("preparing the request");


// });

// // Helper function to display JavaScript value on HTML page.
// function showResponse(response) {
//     var responseString = JSON.stringify(response, '', 2);
//     document.getElementById('response').innerHTML += responseString;
// }

// // Called automatically when JavaScript client library is loaded.
// function onClientLoad() {
//     gapi.client.load('youtube', 'v3', onYouTubeApiLoad);
// }

// // Called automatically when YouTube API interface is loaded (see line 9).
// function onYouTubeApiLoad() {
//     // This API key is intended for use only in this lesson.
//     // See https://goo.gl/PdPA1 to get a key for your own applications.
//     gapi.client.setApiKey('AIzaSyCR5In4DZaTP6IEZQ0r1JceuvluJRzQNLE');

//     search();
// }

// function search() {
//     // Use the JavaScript client library to create a search.list() API call.
//     var request = gapi.client.youtube.search.list({
//         part: 'snippet',
//         q: "Beatles"
 

//     });
    
//     // Send the request to the API server,
//     // and invoke onSearchRepsonse() with the response.
//     request.execute(onSearchResponse);
//     console.log("just bout a cadillac")
// }

// // Called automatically with the response of the YouTube API request.
// function onSearchResponse(response) {
//     showResponse(response);
// }

