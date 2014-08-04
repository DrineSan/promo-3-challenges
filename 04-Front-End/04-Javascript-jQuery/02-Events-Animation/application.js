/*
  *
  * TODO: add your code here!
  *
*/

$( "#message-wrapper" ).load(function() {
  $( "#message-wrapper" ).slideDown(slow);
});

$( "#message-wrapper" ).click(function() {
  $( "#message-wrapper" ).slideUp(5000);
});
