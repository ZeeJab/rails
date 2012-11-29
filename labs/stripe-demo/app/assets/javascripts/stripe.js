$(function(){
	$('.stripe-button').bind('token', token_generated);
});

function token_generated(e, token)
{
	$('#stripeform input[type=hidden]').val(token.id);
	//selecting the id stripefor with the input that has a 
	//type hidden and inserting in it the value of the token id that we got back from stripe
	$('#stripeform').submit(); 
	//this is how you programatically set it to submit the form
}