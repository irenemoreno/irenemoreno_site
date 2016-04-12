// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function(){

	if($("body").height() < $(window).height()){
		$("footer").css({"position":"absolute","bottom":"0px"});
	}

});

var imagenes = ['assets/images/gif2.png','assets/images/gif3.png','assets/images/gif4.png'];
var x = 0;
var reproducir = function() {
	if (x > imagenes.length)
	{
	x = 0;
	}
	$("#imagenjq").attr('src', imagenes[x]);
	x++;

	var timer = setTimeout('reproducir()', 800);
	}

	$(function(){
	reproducir();
});