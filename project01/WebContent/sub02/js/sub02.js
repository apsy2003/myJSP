$(function(){

//투댑스
	$('.nav1 ul').mouseenter(function(){
		$('.nav2').stop(true, true).slideDown(500);
		$('.nav2 ul').stop(true, true).slideDown(500);
	}); 
	$('.nav2 ul').mouseleave(function(){
		$('.nav2').stop(false, true).slideUp();
		$('.nav2 ul').stop(false, true).slideUp();
	});
});	
	