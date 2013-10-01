$(document).ready(function() {
	console.log('WTF');
  $('form').submit(function(event) {
    event.preventDefault();
    var user_input = $(this).serialize();
    $('#send_tweet').html("<img src='ajax-loader.gif'></img>");

    $.post('/tweetit', user_input, function(response){
      console.log(user_input);
      console.log(response);
      $('#send_tweet').html(response);
    });
  })
});