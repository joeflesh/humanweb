/*********************
 *    humanweb.js    *
 *   WEBSITE GUNK    *
 *********************/
var humanweb = humanweb = window.humanweb = {};

// Stuff do do upon document.ready
humanweb.init = function() {

  // Mouseover for nav bar
  $('#nav-menu li:not(.active) a').hover(function(){
    $(this).animate({ 'color' : '#1face0' }, 200);
  }, function(){
    $(this).animate({ 'color' : '#fff' }, 200);
  });

  // "Read more" overlay for case study summary mouseover 
  $('.project .screenshot').append($('.image-overlay').clone(true));

  // In case study summaries, highlight stuff smoothly on mouseover
  $('.project').hover(function(){
    $(this).find('h1,h2').animate({ 'color' : '#d71f26' }, 200);
    $(this).find('.image-overlay').fadeIn(200);
  }, function(){
    $(this).find('h1,h2').animate({ 'color' : '#222222' }, 200);
    $(this).find('.image-overlay').fadeOut(200);
  });

  // Turn entire case study summary into link
  $('.project').click(function(){
    window.location.href = $(this).find('a').attr('href');
  });
  
}


$(document).ready(humanweb.init);
