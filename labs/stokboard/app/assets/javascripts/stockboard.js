$(function(){

  $('#enter').click(get_quotes);

});

function get_quotes() {

  symbol = $('symbol').value();
  $.ajax({
    type: "POST",
    url: "",
    data: { name: "John", location: "Boston" }
  }).done(function( msg ) {
    alert( "Data Saved: " + msg );
  });

}