$(function(){
	//팝업
	$(function(){
		$('.close_btn').click(function(){
			$('.pop').fadeOut(2000);
		}); 
	});
	
	//투댑스
	$('.nav1 ul').mouseenter(function(){
		$('.nav2').stop(true, true).slideDown(500);
		$('.nav2 ul').stop(true, true).slideDown(500);
	}); 
	$('.nav2 ul').mouseleave(function(){
		$('.nav2').stop(false, true).slideUp();
		$('.nav2 ul').stop(false, true).slideUp();
	});
	
	//이미지슬라이드
	$('.imgSlide li:gt(0)').hide();
		
		setInterval(function(){
			$('.imgSlide li:first-child').fadeOut(500).appendTo('.imgSlide');
			$('.imgSlide li:first-child').fadeIn(500);
		},6000);
		
		//순위(상하)슬라이드
		
	var numslide=$('.num>li');
	var current=0;
	var numslide_interval;
	
	function timer(){
		slide_interval=setInterval(function(){
			var prev=numslide.eq(current);
		
			current++;
			movement(prev,0,-90);
			if(current==numslide.size()){current=0};

			var next=numslide.eq(current);
			movement(next,90,0);
		},6000);
	};
	
	numslide.hover(
		function(){
			clearInterval(numslide_interval);
		},
		function(){
			timer();
		}
	);	
	function movement(target,start,end){
		target.css('top',start).stop().animate({top:end});
	};
	timer();

//size()-1 => 1에서 뒤로 갈 때 끝으로 감
	$('.btnup').click(function(){
		var prev = numslide.eq(current);
		movement(prev, 0, 90)
		current--;
		if(current==numslide.size()){current=0};
		var next=numslide.eq(current);
		movement(next,-90,0);	
	});
	
	$('.btndown').click(function(){
		var prev = numslide.eq(current);
		movement(prev, 0, -90)
		current++;
		if(current==numslide.size()){current=0};
		var next=numslide.eq(current);
		movement(next,90,0);		
	});	
	
	//콘텐츠 배너
	var banner = $('.con_banner2>li');
	var contentbanner = 0;
	setInterval(function(){
		var prev = banner.eq(contentbanner);
		move(prev,'0%','-100%',1,1); // opacity를 1에서 0으로
		contentbanner++;
		if(contentbanner == banner.size()){contentbanner = 0;}
		var next = banner.eq(contentbanner);
		move(next,'100%','0%',1,1);
	},2000)
	
	/* 사용자 정의 함수 move */
	function move(tg, start, end, op1, op2) {
		tg.css({left: start, opacity: op1}).stop().animate({left: end, opacity: op2},800);
	};
	
	/* 이벤트 섹션 */
	/* 제이쿼리 수정 0911 */
	var Cbg = $('.con_eventbg > div[class*=con_]');	
	var Cbt = $('.con_dot > span');

	var current = 0;
	var setIntervalId;
	
	/* Cbg.hide().eq(0).show(); */
	Cbt.on({
		click:function(){
				var tg = $(this);
				var i = tg.index();
				if(current == tg.index()){return;}
				Cbt.removeClass('active');
				tg.addClass('active');
				move_event(i);
				return false;
		}
	});
	$('.con_eventbg').on({
		mouseenter:function(){
			clearInterval(setIntervalId);
		},
		mouseleave:function(){
			timer();
		}
	});	
	$('.con_dot').on({
		mouseenter:function(){
			clearInterval(setIntervalId);
		}
	});	
	
	timer();
	
	function timer(){
		setIntervalId = setInterval(function(){
			var n = current + 1;
			if(n==Cbg.size()){n=0}
			Cbt.eq(n).trigger('click');			
		},3000);
	}
	
	function move_event(i){
		var currentEl = Cbg.eq(current);
		currentEl.css({left:'0%'}).stop().animate({left:'-100%'});
		var nextEl = Cbg.eq(i);
		nextEl.css({left:'100%'}).stop().animate({left:'0%'});
		current = i;
	}

	/* 탭메뉴 */
	var tabTitle = $('.tab > .tab1');
	var contents = $('.tab_con > ul[class*=con]');
	
	contents.hide().eq(0).show();
	tabTitle.each(function(){
		
		var tab = $(this);
		var i = tab.index();
		
		tab.click(function(){
			tabTitle.find('a').removeClass('active');
			tab.find('a').addClass('active');
			
			
			contents.hide().eq(i).show();
			
			return false;
		});
	});
	
	/* 콘텐츠 탭메뉴 */
	var con_tabTitle = $('.book_title > li');
	var book_contents = $('.b_conWrap > div');
	
	book_contents.hide().eq(0).show();
	con_tabTitle.each(function(){
		
		var con_tab = $(this);
		var i = con_tab.index();
		
		con_tab.click(function(){
			con_tabTitle.find('a').removeClass('active');
			con_tab.find('a').addClass('active');
			
			
			book_contents.hide().eq(i).show();
			
			return false;
		});
	});
	
});


		
	
	

