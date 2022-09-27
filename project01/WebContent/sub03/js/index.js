$(function(){
	
	//투댑스
	$('.nav1 ul li').mouseenter(function(){
		$('.nav2').stop(true, true).slideDown();
		$('.nav2 ul').stop(true, true).slideDown();
	}); 
	$('.nav1 ul').mouseleave(function(){
		$('.nav2').stop(false, false).slideUp(1000);
		$('.nav2 ul').stop(false, false).slideUp(1000);
	});
	
	//이미지슬라이드
	$('.imgSlide>li').each(function(){
		
		function switchImg(){
			var container = $(this);
			var img = container.find('img');
			var first = img.eq(0);
			var second = img.eq(1);
			
			first.fadeOut().appendTo(container);
			second.fadeIn();	
		}		
		setInterval(switchImg,2000);
	});
	
});