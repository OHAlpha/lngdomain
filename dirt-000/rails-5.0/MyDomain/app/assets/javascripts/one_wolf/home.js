$(document).ready(function() {
  $('#status').text('loaded');
  for(var i = 0; i < 9; i++)
    $('#status').append('<br/>'+$('.piece:nth-child('+i+2+')').css('background-color'));
    $('.piece:nth-child('+i+2+')').hover(function() {
      $('#status').text('piece #'+i+'.hoverIn()');
      $('.tool:nth-child('+i+2+')').css('opacity', 1);
    },function() {
      $('#status').text('piece #'+i+'.hoverOut()');
      $('.tool:nth-child('+i+2+')').css('opacity', 0);
    });
});