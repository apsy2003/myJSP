<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안양시립도서관</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="박지현"/>
	<meta name="Keywords" content="박지현, ParkJiHyun, 포트폴리오, 박지현 포트폴리오, portfolio, JiHyun's portfolio, 프로젝트, Project, 박 지현, 박 지 현, 지현 박, 지현, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="박지현의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="/project01/index2/css/index2.css"/>
	<link rel="stylesheet" href="/project01/index2/main/css/header.css"/>
	<link rel="stylesheet" href="/project01/index2/css/footer.css"/>
	<link rel="shortcut icon" href="/project01/index/images/index.ico"/>
	<script src="/project01/index2/js/jquery-1.7.1.min.js"></script>
	<script src="/project01/index2/js/index.js"></script>
	<script src="/project01/index2/js/weather.js"></script>
	<script src="/project01/index2/js/count.js"></script>
</head>
<body onLoad="ddaycount()">
	<div class="pop">
        <div class="popupInner">
			<div class="counter">
			<script>ddaycount()</script>
				<ul class="cf">
					<li id="countD" class="firstli fl">
						<img src="/project01/index2/images/pop/num0.png" width="20" id="day100" class="fl" alt="일100의자리"/>
						<img src="/project01/index2/images/pop/num0.png" width="20" id="day10" class="fl" alt="일10의자리"/>
						<img src="/project01/index2/images/pop/num0.png" width="20" id="day1" class="fl" alt="일1의자리"/>
						<p class="fl">일</p>
					</li>
					<li id="counterH" class="fl">
						<img src="/project01/index2/images/pop/num0.png" width="20" id="hour10" class="fl" alt="시간10의자리" />
						<img src="/project01/index2/images/pop/num0.png" width="20" id="hour1" class="fl" alt="시간1의자리" />
						<p class="fl">시</p>
					</li>
					<li id="counterM" class="fl">
						<img src="/project01/index2/images/pop/num0.png" width="20" id="min10" class="fl" alt="분10의자리" />
						<img src="/project01/index2/images/pop/num0.png" width="20" id="min1" class="fl" alt="분1의자리" />
						<p class="fl">분</p>
					</li>
					<li id="counterS" class="fl">
						<img src="/project01/index2/images/pop/num0.png" width="20" id="sec10" class="fl" alt="초10의자리" />
						<img src="/project01/index2/images/pop/num0.png" width="20" id="sec1" class="fl" alt="초1의자리" />
						<p class="fl">초</p>
					</li>
				</ul>
			</div>
			<div class="pop_btn">
				<div class="close_btndy fl">하루동안 열지 않음</div>
				<div class="close_btn fl">닫기</div>
			</div>		
		</div>
    </div>
    
    <%@ include file="main/header.jsp" %>
    
    <section id="sectionWrap">
		<section class="banner">
			<div class="bannerWrap">
				<h2 class="hidden">이미지 슬라이드</h2>
				<h2 class="slogan"><span>안양시립도서관</span><br/>지식정보화시대의 선도적 도서관으로 도약</h2>
				<ul class="imgSlide">
					<li class="on"><img src="/project01/index2/images/bg1.jpg" alt="배경이미지1"/></li>
					<li><img src="/project01/index2/images/bg2.jpg" alt="배경이미지2"/></li>
					<li><img src="/project01/index2/images/bg3.jpg" alt="배경이미지3"/></li>
				</ul>
				<div class="banner_btn">
					<a href="#" tabindex="58"><img src="/project01/index2/images/banner_img.png" alt="배너"/></a>
				</div>
			</div>
		</section>
		<section id="sectionWrap2">
			<section class="search" class="cf">
				<h2 class="hidden">검색</h2>
				<div id="main">
					<div class="inputWrap fl">
						<div class="input1 fl">
							<input type="radio" name="dataSearch" id="data" value="data" title="소장자료 선택" checked="checked"><p>소장자료</p>
						</div>
						<div class="input2 fl">
							<input type="radio" name="dataSearch" id="homepage" value="home" title="홈페이지 선택"><p>홈페이지</p>
						</div>
					</div>
					<div class="main_search fl">
						<!-- <div class="searchbox"></div> -->
						<label for="mainSearch" class="blind"></label>
						<input type="text" title="검색어 입력" class="mainSearch" id="input3" name="searchKeyword" placeholder="검색어를 입력하세요">
						<p class="inputBtn"><a href="#" tabindex="59"><img src="images/btn_search.png" alt="검색"/><span>검색</span></a></p>
					</div>
					<div class="filter_search fl">
						<button>고급검색</button>
					</div>
					<div class="numSlide1"></div>
					<div class="numSlide2">
						<span class="btnup"><button class="numbtn1"></button></span>
						<ul class="num">
							<li class="on"><a href="#" tabindex="60"><span class="number">1</span><span class="numberTitle">흔한남매</span></a></li>
							<li><a href="#" tabindex="61"><span class="number">2</span><span class="numberTitle">불편한편의점</span></a></li>
							<li><a href="#" tabindex="62"><span class="number">3</span><span class="numberTitle">아몬드</span></a></li>
							<li><a href="#" tabindex="63"><span class="number">4</span><span class="numberTitle">파친코</span></a></li>
							<li><a href="#" tabindex="64"><span class="number">5</span><span class="numberTitle">역행자</span></a></li>
							<li><a href="#" tabindex="65"><span class="number">6</span><span class="numberTitle">작별인사</span></a></li>
							<li><a href="#" tabindex="66"><span class="number">7</span><span class="numberTitle">신비아파트</span></a></li>
							<li><a href="#" tabindex="67"><span class="number">8</span><span class="numberTitle">수학도둑</span></a></li>
							<li><a href="#" tabindex="68"><span class="number">9</span><span class="numberTitle">고래</span></a></li>
							<li><a href="#" tabindex="69"><span class="number">10</span><span class="numberTitle">부동산</span></a></li>
						</ul>
						<span class="btndown"><button class="numbtn2"></button></span>
					</div>
				</div>
			</section>
			<div id="mainnav">
				<div class="mainnavWrap cf">
					<div class = "icon fl">
						<div>
							<a href="#" tabindex="70"><div class="icon1"></div><span>독서마라톤</span></a>
						</div>
					</div>
					<div class="icon fl">
						<div>
							<a href="#" tabindex="71"><div class="icon2"></div><span>전자도서관</span></a>
						</div>
					</div>
					<div class="icon fl">
						<div>
							<a href="#" tabindex="72"><div class="icon3"></div><span>문화행사신청</span></a>
						</div>
					</div>
					<div class="icon fl">
						<div>
							<a href="#" tabindex="73"><div class="icon4"></div><span>희망도서신청</span></a>
						</div>
					</div>
					<div class="icon fl">
						<div>
							<a href="#" tabindex="74"><div class="icon5"></div><span>스마트도서관</span></a>
						</div>
					</div>
					<div class="icon fl">
						<div>
							<a href="#" tabindex="75"><div class="icon6"></div><span>이용안내</span></a>
						</div>
					</div>
					<div class="icon fl">
						<div>
							<a href="#" tabindex="75"><div class="icon7"></div><span>도서관소개</span></a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</section>
	<section id="tabMenu">	
		<div class="tab_library">
			<h2 class="hidden">도서관정보</h2>
			<div class="tabWrap fl">
				<div class="tabtab cf">
					<ul class="tab">
						<li class="tab1"><a class="active" href="#" tabindex="76">석수도서관</a></li>
						<li class="tab1"><a href="#" tabindex="77">만안도서관</a></li>
						<li class="tab1"><a href="#" tabindex="78">삼덕도서관</a></li>
						<li class="tab1"><a href="#" tabindex="79">박달도서관</a></li>
						<li class="tab1"><a href="#" tabindex="80">평촌도서관</a></li>
						<li class="tab1"><a href="#" tabindex="81">관양도서관</a></li>
						<li class="tab1"><a href="#" tabindex="82">비산도서관</a></li>
						<li class="tab1"><a href="#" tabindex="83">호계도서관</a></li>
						<li class="tab1"><a href="#" tabindex="84">어린이도서관</a></li>
						<li class="tab1 fl"><a href="#" tabindex="85">벌말도서관</a></li>
						<li class="tab2 fl"><a href="https://lib.anyang.go.kr/small/index.do" tabindex="86"><img src="/project01/index2/images/ico_small.png" alt="작은도서관" onclick="window.open"/><span>작은도서관</span></a></li>
						<li class="tab2_1 fr"><a href="http://elib.anyang.go.kr:8080/ebookPlatform/digitalLibrary/main.do" tabindex="87" onclick="window.open"><img src="/project01/index2/images/ico_elib.png" alt="전자도서관"/><span>전자도서관</span></a></li>
					</ul>
				</div>
			</div>
			<div class="tabconWrap fl">
				<div class="tab_con cf">
					<ul class="main_con1">
						<li class="ctitle fl"><span class="big">석수도서관</span><span class="small">(다문화/실버)</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 동안구 동편로 124(관양동)<br/>
						[열람실] 평일 07시~23시/주말x 07시~23시<br/>
						[관외대출실] 평일 09시~22시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>[어린이실]평일 09시~18시/ 주말 09시~17시<br/>
						[기타자료실(전자자료실 등)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src="/project01/index2/images/ico_libInfo_05.png" alt="달력"/>매주 금요일</span></li>
					</ul>
					<ul class="con2">
						<li class="ctitle fl"><span class="big">만안도서관</span><span class="small">(생활과학/사회복지)</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 만안구 냉천로 51(안양동)<br/>
						[열람실] 평일 07시~23시/주말 07시~23시<br/>
						[종합자료실] 평일 09시~22시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>[어린이실]평일 09시~18시/ 주말 09시~17시<br/>
						[기타자료실(전자자료실 등)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src="/project01/index2/images/ico_libInfo_05.png" alt="달력"/>매주 금요일</span></li>
					</ul>
					<ul class="con3">
						<li class="ctitle fl"><span class="big">삼덕도서관</span><span class="small">(청소년)</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 만안구 병목안로 58(안양동714-94)<br/>
						[열람실] 평일 07시~23시/주말 07시~23시<br/>
						[종합자료실] 평일 09시~22시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>[어린이실]평일 09시~18시/ 주말 09시~17시<br/>
						[기타자료실(전자자료실 등)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src=/project01/index2/index/images/ico_libInfo_05.png" alt="달력"/>매주 월요일</span></li>
					</ul>
					<ul class="con4">
						<li class="ctitle fl"><span class="big">박달도서관</span><span class="small">(심리/인성)</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 만안구 박달로 459(박달동)<br/>
						[열람실] 평일 07시~23시/주말 07시~23시<br/>
						[종합자료실] 평일 09시~22시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>[어린이실]평일 09시~18시/ 주말 09시~17시<br/>
						[기타자료실(전자자료실 등)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src="/project01/index2/images/ico_libInfo_05.png" alt="달력"/>매주 금요일</span></li>
					</ul>
					<ul class="con5">
						<li class="ctitle fl"><span class="big">평촌도서관</span><span class="small">(경제/교육)</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 동안구 관평로 213(관양동)<br/>
						[열람실] 평일 07시~23시/주말 07시~23시<br/>
						[종합자료실] 평일 09시~22시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>[어린이실]평일 09시~18시/ 주말 09시~17시<br/>
						[기타자료실(전자자료실 등)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src="/project01/index2/images/ico_libInfo_05.png" alt="달력"/>매주 금요일</span></li>
					</ul>
					<ul class="con6">
						<li class="ctitle fl"><span class="big">관양도서관</span><span class="small">(IT/웹툰)</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 동안구 동편로 124(관양동)<br/>
						[열람실] 평일 07시~23시/주말 07시~23시<br/>
						[제1종합자료실] 평일 09시~22시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>[어린이실]평일 09시~18시/ 주말 09시~17시<br/>
						[기타자료실(전자자료실 등)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src="/project01/index2/images/ico_libInfo_05.png" alt="달력"/>매주 금요일</span></li>
					</ul>
					<ul class="con7">
						<li class="ctitle fl"><span class="big">비산도서관</span><span class="small">(미술/음악)</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 동안구 관악대로 123(비산동)<br/>
						[열람실] 평일 07시~23시/주말 07시~23시<br/>
						[종합자료실] 평일 09시~22시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>[어린이실]평일 09시~18시/ 주말 09시~17시<br/>
						[기타자료실(전자자료실 등)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src="/project01/index2/images/ico_libInfo_05.png" alt="달력"/>매주 월요일</span></li>
					</ul>
					<ul class="con8">
						<li class="ctitle fl"><span class="big">호계도서관</span><span class="small">(문학상수상작/한국수필)</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 동안구 경수대로685번길 26(호계동)<br/>
						[열람실] 평일 07시~23시/주말 07시~23시<br/>
						[종합자료실] 평일 09시~22시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>[어린이실]평일 09시~18시/ 주말 09시~17시<br/>
						[기타자료실(전자자료실 등x)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src="/project01/index2/images/ico_libInfo_05.png" alt="달력"/>매주 월요일</span></li>
					</ul>
					<ul class="con9">
						<li class="ctitle fl"><span class="big">어린이도서관</span><span class="small">(영/유아(북스타트))</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 동안구 동안로 66(호계동)<br/>
						[열람실] 평일 07시~23시/주말 07시~23시<br/>
						[제1종합자료실] 평일 09시~22시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>평일(화~금) 10시~19시/ 주말(토~일) 10시~17시<br/>
						[기타자료실(전자자료실 등)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src="/project01/index2/images/ico_libInfo_05.png" alt="달력"/>매주 월요일</span></li>
					</ul>
					<ul class="con10">
						<li class="ctitle fl"><span class="big">벌말도서관</span><span class="small">(여행/지리)</span></li>
						<li class="cBtn fr"><a href="#" tabindex="88">바로가기</a></li>
						<li class="cTime1 fl"><img src="/project01/index2/images/ico_libInfo_01.png" alt="위치"/>안양시 동안구 흥안대로 434번길 19-27(평촌동)<br/>
						[열람실] 평일 07시~23시/주말 07시~23시<br/>
						[종합자료실] 평일 09시~20시/주말 09시~17시</li>
						<li class="cTime2 fl"><img src="/project01/index2/images/ico_libInfo_02.png" alt="시간"/>[어린이실]평일 09시~18시/ 주말 09시~18시<br/>
						[기타자료실(전자자료실 등)]<br/>
						평일 09시~18시/주말09시~17시<br/>
						<span class="cDay"><img src="/project01/index2/images/ico_libInfo_05.png" alt="달력"/>매주 금요일</span></li>
					</ul>					
				</div>
			</div>
		</div>
	</section>
	<section id="contents" class="cf">
		<div class="contentsWrap">
			<article class="con_banner1 fl">
			<h3 class="hidden">콘텐츠 배너</h3>
				<div class="conbannerWrap">
					<ul class="con_banner2 cf">
						<li class="con_first"><a href="#" tabindex="97"><img src="/project01/index2/images/banner1.jpg" height="390" width="440" alt="콘텐츠배너1"/></a></li>
						<li class="con_B"><a href="#" tabindex="98"><img src="/project01/index2/images/banner2.jpg" height="390" width="440" alt="콘텐츠배너2"/></a></li>
						<li class="con_B"><a href="#" tabindex="99"><img src="/project01/index2/images/banner3.jpg" height="390" width="440" alt="콘텐츠배너3"/></a></li>
						<li class="con_B"><a href="#" tabindex="100"><img src="/project01/index2/images/banner4.jpg" height="390" width="440" alt="콘텐츠배너4"/></a></li>
						<li class="con_B"><a href="#" tabindex="101"><img src="/project01/index2/images/banner5.jpg" height="390" width="440"  alt="콘텐츠배너5"/></a></li>
						<li class="con_B"><a href="#" tabindex="102"><img src="/project01/index2/images/banner6.jpg" height="390" width="440" alt="콘텐츠배너6"/></a></li>
						<li class="con_B"><a href="#" tabindex="103"><img src="/project01/index2/images/banner7.jpg" height="390" width="440" alt="콘텐츠배너7"/></a></li>
						<li class="con_B"><a href="#" tabindex="104"><img src="/project01/index2/images/banner8.jpg" height="390" width="440" alt="콘텐츠배너8"/></a></li>
					</ul>
					<!-- <div class="con_button cf">
						<span class="left fl"><button></button></span>
						<span class="stop fl"><button></button></span>
						<span class="right fl"><button></button></span>
					</div> -->
				</div>
			</article>
			<article class="con_noticeWrap fl">
			<h3 class="hidden">공지사항</h3>
				<div class="con_notice">
						<div class="notice_title">
							<dt>공지사항</dt>
							<dd><a href="/project01/index2/sub04/sub04.jsp"><img src="images/ico_more.png" width="15" height="15" alt="메뉴바"/></a></dd>
						</div>
						<ul class="notice_view">
							<li class="notice_first"><a href="/project01/index2/sub04/sub04.jsp" tabindex="106"><span class="A">[공통]</span>안양어린이도서관 북스타트 책놀이-데이···</a></li>
							<li><a href="/project01/index2/sub04/sub04.jsp" tabindex="107"><span class="B">[만안]</span>[모집중] 여름방학특강(교과서 미리보기)···</a></li>
							<li><a href="/project01/index2/sub04/sub04.jsp" tabindex="108"><span class="C">[벌말]</span>[벌말도서관] 2022년 8월 자원봉사자 모집···</a></li>
							<li><a href="/project01/index2/sub04/sub04.jsp" tabindex="109"><span class="C">[벌말]</span>벌말도서관 가족과 함께하는 '작은 영화관'···</a></li>
							<li><a href="/project01/index2/sub04/sub04.jsp" tabindex="110"><span class="D">[평촌]</span>[마감]평촌도서관,개인을 위한 두배···</a></li>
							<li><a href="/project01/index2/sub04/sub04.jsp" tabindex="111"><span class="E">[관양]</span>2022년 관양도서관 여름방학특강 운영 안내</a></li>
							<li><a href="/project01/index2/sub04/sub04.jsp" tabindex="112"><span class="F">[비산]</span>2022년 6월 자료를 기증하여 주신 분들</a></li>
						</ul>
				</div>
			</article>
			<article class="weather_content fl">
			<h3 class="hidden">날씨</h3>
				<div class="today_weather weather_box fl">
					<span class="today_title">도서관 날씨</span>
					<div class="black_alpha">
						<div class="weather_icon_bg cf">
							<img class="today_weather_icon fl" src="images/weather/01d.png" alt="오늘 날씨 이미지"/>
							<span class="today_temp_text fl">12.75&#8451;</span>
						</div>
						<div class="weather_text_box cf">
							<p class="today_date_text">9월 17일 22시 25분</p>
							<span class="today_min_temp_text fl">최저 9.42&#8451; </span>
							<span class="today_max_temp_text fl">최고 14.69&#8451; </span>
							<span class="today_feel_temp_text fl cl">체감 12.21&#8451; </span>
							<span class="today_humidity_text fl">습도 72%</span>
						</div>
					</div>
				</div>						
			</article>
		</div>
	</section>
	<section id="eventWrap">
		<div class="eventInner">
			<div class="conFirst cf">
				<h2 class="hidden">이벤트</h2>
				<div class="con_form fl">
					<form name="searchForm" id="search_Form" method="get">
						<div class="select_form">	
							<select name="manageCd" id="manage_Cd" title="도서관전체">			
								<option value="SS" selected="selected">도서관 전체</option>
								<option value="SS" >석수도서관</option>
								<option value="MA" >만안도서관</option>
								<option value="SD" >삼덕도서관</option>
								<option value="BD" >박달도서관</option>
								<option value="PC" >평촌도서관</option>
								<option value="GA" >관양도서관</option>
								<option value="BS" >비산도서관</option>
								<option value="HG" >호계도서관</option>
								<option value="CD" >어린이도서관</option>
								<option value="VM" >벌말도서관</option>		
							</select>
						</div>
					</form>	
					<button>확인</button>			
				</div>
				<div class="con_title fl">
					<ul class="con_title">
						<li><span>도서관 문화행사</span></li>
					</ul>
				</div>
			</div>
			<div class="con_eventWrap">
				<div class="con_eventbg">
					<div class="con_event01 active">
						<ul class="event1_1 fl">
							<li><a href="#" tabindex="115">
									<p class="p_One fl">벌말도서관</p>
									<p class="p_Two fl">접수중</p>
									<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/28 일 오후)</p>
									<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.24</p>
							</a></li>
						</ul>
						<ul class="event fl">
								<li><a href="#" tabindex="116">
									<p class="p_One fl">벌말도서관</p>
									<p class="p_Two fl">접수중</p>
									<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/27 토 오후)</p>
									<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.24</p>
								</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="117">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">접수중</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/27 토 오전)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.24</p>
							</a></li>
						</ul>
						<ul class="event1_1 fl">
							<li><a href="#" tabindex="118">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">접수중</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/21 일 오전)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.17</p>
							</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="119">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">접수중</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/20 토 오후)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.17</p>
							</a></li>
						</ul>
						<ul  class="event fl">
							<li><a href="#" tabindex="120">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">접수중</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/20 토 오전)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.17</p>
							</a></li>
						</ul>
					</div>
					<div class="con_event02">
						<ul class="event1_1 fl">
							<li><a href="#" tabindex="121">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">접수중</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/14 일 오후)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.10</p>
							</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="122">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">접수중</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/13 토 오후)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.10</p>
							</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="123">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">접수중</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/13 토 오전)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.10</p>
							</a></li>
						</ul>
						<ul class="event1_1 fl">
							<li><a href="#" tabindex="124">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">접수중</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/06 일 오전)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.03</p>
							</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="125">
								<p class="p_One fl">호계도서관</p>
								<p class="p_Two fl">접수중</p>
								<p class="p_Tree2 fl">[찾아,드림(DREAM)서울시립과학관<br/> 학예사 유정숙 진로 멘토와의 만남]</p>
								<p class="p_Last">대상:어린이,청소년<br/>접수:2022.07.20~2022.08.05</p>
							</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="126">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">대기접수</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/07 일 오전)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.03</p>
							</a></li>
						</ul>
					</div>
					<div class="con_event03">
						<ul class="event1_1 fl">
							<li><a href="#" tabindex="127">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">대기접수</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/28 일 오전)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.24</p>
							</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="128">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">대기접수</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/21 일 오후)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.17</p>
							</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="129">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">대기접수</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/14 일 오전)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.10</p>
							</a></li>
						</ul>
						<ul class="event1_1 fl">
							<li><a href="#" tabindex="130">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">대기접수</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/7 일 오후)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.03</p>
							</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="131">
								<p class="p_One fl">벌말도서관</p>
								<p class="p_Two fl">대기접수</p>
								<p class="p_Tree fl">가족과 함께하는 작은 영화관(8/6 토 오후)</p>
								<p class="p_Last">대상:누구나<br/>접수:2022.07.27~2022.08.03</p>
							</a></li>
						</ul>
						<ul class="event fl">
							<li><a href="#" tabindex="132">
								<p class="p_One fl">삼덕도서관</p>
								<p class="p_Two fl">대기접수</p>
								<p class="p_Tree2 fl">[여름방학 특강] 술술 그림일기 쓰고<br/> 깔깔 온 책 읽자</p>
								<p class="p_Last">대상:어린이<br/>접수:2022.07.26~2022.08.03</p>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="con_dot cf">
					<span class="active fl"></span>
					<span class="fl"></span>
					<span class="fl"></span>
				</div>
			</div>
		</div>
	</section>
	<section id="last_section" class="fl">
		<div class="bookWrap">
			<h2 class="hidden">도서추천</h2>
			<article class="book_tab">
				<h3 class="hidden">책 종류</h3>
				<ul class="book_title cf">
					<li class="first_tab1 fl"><a class="active" href="#" tabindex="133"><span>공공도서관 인기도서</span></a></li>
					<li class="book_tab2 fl"><a href="#" tabindex="134"><span>추천도서</span></a></li>
					<li class="book_tab3 fl"><a href="#" tabindex="135"><span>신착도서</span></a></li>
					<li class="book_tab4 fl"><a href="#" tabindex="136"><span>대출베스트</span></a></li>
				</ul>
				<div class="b_conWrap">
					<div class="b_con1 cf">
						<ul class="book fl">
							<li>
								<a href="#" tabindex="137">
									<img src="/project01/index2/images/book1.jpg" width="190" height="240" alt="불편한 편의점"/>
									<p>불편한 편의점:김호연 장···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="138">
									<img src="/project01/index2/images/book2.jpg" width="190" height="240" alt="달러구트"/>
									<p>달러구트 꿈 백화점.이미···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="139">
									<img src="/project01/index2/images/book3.jpg" width="190" height="240" alt="아몬드"/>
									<p>아몬드:손원평 장···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="140">
									<img src="/project01/index2/images/book4.jpg" width="190" height="240" alt="파친코"/>
									<p>파친코:이민진 장···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="141">
									<img src="/project01/index2/images/book5.jpg" width="190" height="240" alt="어서오세요"/>
									<p>어서오세요,휴남동 서점···</p>
								</a>
							</li>
						</ul>
					</div>
					<div class="b_con2 cf">
						<ul class="book fl">
							<li>
								<a href="#" tabindex="142">
									<img src="/project01/index2/images/book6.jpg" width="190" height="240" alt="소란스러운 동거"/>
									<p>소란스러운 동거</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="143">
									<img src="/project01/index2/images/book7.jpg" width="190" height="240" alt="오늘 내 기분은 철학으로"/>
									<p>오늘 내 기분은 철학으로···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="144">
									<img src="/project01/index2/images/book8.jpg" width="190" height="240" alt="움직이는 역사 박물관"/>
									<p>움직이는 역사 박물관</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="145">
									<img src="/project01/index2/images/book9.jpg" width="190" height="240" alt="(당신이 잘 안다고 착각하"/>
									<p>(당신이 잘 안다고 착각하···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="146">
									<img src="/project01/index2/images/book10.jpg" width="190" height="240" alt="때려치우기의 기술"/>
									<p>때려치우기의 기술</p>
								</a>
							</li>
						</ul>
					</div>
					<div class="b_con3 cf">
						<ul class="book fl">
							<li>
								<a href="#" tabindex="147">
									<img src="/project01/index2/images/book11.jpg" width="190" height="240" alt="낙인 "/>
									<p>낙인 </p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="148">
									<img src="/project01/index2/images/book12.jpg" width="190" height="240" alt="풀들이살찔때"/>
									<p>풀들이 살찔 때 : 양윤덕 시···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="149">
									<img src="/project01/index2/images/book13.jpg" width="190" height="240" alt="타래실: 주미경 수필집"/>
									<p>타래실: 주미경 수필집</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="150">
									<img src="/project01/index2/images/book14.jpg" width="190" height="240" alt="아몬드"/>
									<p>아몬드 : 100만 부 기념 특···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="151">
									<img src="index/images/book15.jpg" width="190" height="240" alt="시경집전변정. 4"/>
									<p>시경집전변정. 4</p>
								</a>
							</li>
						</ul>
					</div>
					<div class="b_con4 cf">
						<ul class="book fl">
							<li>
								<a href="#" tabindex="147">
									<img src="/project01/index2/images/book16.jpg" width="190" height="240" alt="양순이네 떡집"/>
									<p>양순이네 떡집</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="148">
									<img src="/project01/index2/images/book17.jpg" width="190" height="240" alt="알사탕"/>
									<p>알사탕</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="149">
									<img src="/project01/index2/images/book18.jpg" width="190" height="240" alt="엉덩이 탐정"/>
									<p>추리 천재 엉덩이 탐정. 1,···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="150">
									<img src="/project01/index2/images/book19.jpg" width="190" height="240" alt="그리스로마신화"/>
									<p>그리스 로마 신화: 만화로···</p>
								</a>
							</li>
						</ul>
						<ul class="book fl">
							<li>
								<a href="#" tabindex="151">
									<img src="/project01/index2/images/book20.jpg" width="190" height="240" alt="엉덩이 탐정"/>
									<p>(추리 천재)엉덩이 탐정.···</p>
								</a>
							</li>
						</ul>
					</div>
				</div>				
			</article>
		</div>
	</section>    
    
    <%@ include file="main/footer.jsp" %>

</body>
</html>