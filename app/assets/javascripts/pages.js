// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('.nav .dropdown').hover(function() {
  $(this).closest('.dropdown-menu').stop(true, true).show();
  $(this).addClass('open');
}, function() {
  $(this).closest('.dropdown-menu').stop(true, true).hide();
  $(this).removeClass('open');
});