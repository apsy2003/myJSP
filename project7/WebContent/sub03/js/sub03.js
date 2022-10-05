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

	
	
	
	/* 아코디언 게시판 */
        $(".Qna_Title").click(function(){
        $(this).next(".QnA_content").slideToggle(200);
        $(this).next(".QnA_content").css('background-color', '#eeeeee');
		
        $(this).parent(".QnA_Title").siblings("div").children(".QnA_content").slideUp(200);
		$(this).parent(".QnA_Title").siblings("div").children(".QnA_content").css('background-color', '#ffffff');
        });
   
		$(".Qna_Title").hover(
			function(){
				$(this).css('background-color', '#eeeeee');
			},
			function(){
				$(this).css('background-color', '#ffffff');
			}
		);
	
/* 	$('.QnA_Box').each(function(){
		var dl = $(this);
		var allDt = dl.find('.Qna_Title');
		var allDd = dl.find('.QnA_content');
		allDd.hide();
		allDd.eq(0).show();
		allDt.css('cursor','pointer');
		allDt.css('cursor','pointer');
		allDt.eq(0).css('cursor','default');
		
		
	}); */
});



	
	
	
	
