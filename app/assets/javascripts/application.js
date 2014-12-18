// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function(){

	$(window).scroll(function() {
    	$('.signUp').each(function(){
    	var imagePos = $(this).offset().top;

    	var topOfWindow = $(window).scrollTop();
      		if (imagePos < topOfWindow+900) {
        		$(this).addClass("tossing");
      		}
    	});
  	});

  	$(window).scroll(function() {
    	$('.rowOne').each(function(){
    	var imagePos = $(this).offset().top;

   		 var topOfWindow = $(window).scrollTop();
      		if (imagePos < topOfWindow+400) {
        		$(this).addClass("slideRight");
      		}
    	});
  	});
    $(window).scroll(function() {
    	$('.rowTwo').each(function(){
    	var imagePos = $(this).offset().top;

    	var topOfWindow = $(window).scrollTop();
      		if (imagePos < topOfWindow+400) {
        		$(this).addClass("slideLeft");
      		}
    	});
  	});

    $(window).scroll(function() {
    	$('.rowThree').each(function(){
    	var imagePos = $(this).offset().top;

    	var topOfWindow = $(window).scrollTop();
      		if (imagePos < topOfWindow+400) {
        		$(this).addClass("slideRight");
      		}
    	});
  	});
    $(window).scroll(function() {
    	$('.rowFour').each(function(){
    	var imagePos = $(this).offset().top;

    	var topOfWindow = $(window).scrollTop();
      		if (imagePos < topOfWindow+400) {
        		$(this).addClass("slideExpandUp");
      		}
    	});
  	});

 });
