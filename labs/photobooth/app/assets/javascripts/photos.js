$(function(){
  $('#booth').photobooth();
  $('#booth').on("image", take_photo);
  setInterval(shoot_video, 800)

});

function shoot_video(){
  $('.trigger').trigger('click');
  //trigger a trigger event on click
}

function take_photo(event, dataUrl){
  $.ajax({
    type: "POST",
    url: "/photos",
    data: { photo: dataUrl }
  }).done(function( msg ) {
    show_photos(msg);
    //passes in the array that is the msg...the photo
  });
}


function show_photos(photos){
  $('#photos').empty();
  for (var i = 0; i < photos.length; i++){
    var img = $('<img>');
    img.attr('src', photos[i].imagedata);
    //changing the src attribute of each of the photos [photos[i]]
    $('#photos').prepend(img);
  }
  
}