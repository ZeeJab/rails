$(function(){
	$('#creature_form').hide(); 
	// hide the form initially right as the page loads
	$('#new_creature').click(show_form)

});

function show_form(){
	$('#creature_form').show();
	$('#new_creature').hide();
}