<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sub4</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="박지현"/>
	<meta name="Keywords" content="박지현, ParkJiHyun, 포트폴리오, 박지현 포트폴리오, portfolio, JiHyun's portfolio, 프로젝트, Project, 박 지현, 박 지 현, 지현 박, 지현, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="박지현의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="css/sub04.css"/>
	<link rel="shortcut icon" href="../main/images/index.ico"/>
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="js/sub04.js"></script>	
</head>
<body>

<%@ include file="main/header.jsp" %>

<section id="container">
		<div class="contentTitle cf">
			<h3 class="hidden">도서관소식</h3>
			<div class="Titlebox">
				<div class="Librarytitle">
					<ul class="Info">
						<li class="title">도서관소식</li>
						<li class="Icoimg"><a href="../index.html"><img src="images/ico_home.png" alt="홈버튼"/></a></li>
						<li class="Icoimg"><img src="images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">이용안내</li>
						<li class="Icoimg"><img src="images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">도서관소식</li>
					</ul>
					<ul class="Icon1 fr">
						<li><a href="#"></a></li>
					</ul>
					<ul class="Icon2 fr">
						<li><a href="#"></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="contents">
			<div class="Menubar fl">
				<h2 class="hidden">이용안내</h2>
				<ul>
					<li class="menutitle"><img src="images/lnb_bg.png" alt=""/><span>이용안내</span></li>
					<li class="menu1"><a href="#"><span class="Text">도서관소식</span><span class="Img2"><img src="images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">자주하는질문</span><span class="Img"><img src="images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">도서관이용안내</span><span class="PImg"><img src="images/lnb_plus_off.png" alt="PlusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">상호대차</span><span class="IImg"><img src="images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">모바일앱</span><span class="Img"><img src="images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">스마트도서관</span><span class="Img"><img src="images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">책배달서비스</span><span class="PImg"><img src="images/lnb_plus_off.png" alt="plusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">전자도서관</span><span class="PPImg"><img src="images/lnb_plus_off.png" alt="plusImg"/></span></a></li>
				</ul>
			</div>
			<div class="Noticepage">
				<div class="Notice cf">
					<div class="Searchbox fl">
						<div class="SearchForm1 fl">
							<form name="SearchForm1" id="NoticeForm1" method="get">
								<div class="Searchform1">
									<select name="LibrarySearch" id="LibSearch" title="도서관검색">
										<option value="select" selected="selected">전체도서관</option>
										<option value="1" >석수도서관</option>
										<option value="2" >만안도서관</option>
										<option value="3" >삼덕도서관</option>
										<option value="4" >박달도서관</option>
										<option value="5" >평촌도서관</option>
										<option value="6" >관양도서관</option>
										<option value="7" >비산도서관</option>
										<option value="8" >호계도서관</option>
										<option value="9" >어린이도서관</option>
										<option value="10" >벌말도서관</option>
									</select>
								</div>
							</form>
						</div>
						<div class="SearchForm2 fl">
							<form name="SearchForm2" id="NoticeForm2" method="get">
								<div class="Searchform2">
									<select name="TitleSearch" id="TitSearch" title="제목검색">
										<option value="select" selected="selected">제목</option>
										<option value="1" >내용</option>
									</select>
								</div>
							</form>
						</div>
						<div class="SearchText fl">
							<label for="userId"></label>
							<input type="text" id="userId" name="userId" placeholder="검색어 입력"/>
						</div>
						<div class="SearchBtn fl">
							<input type="button" id="button" title="검색" value="검색" class="btn"/>
						</div>
					</div>
				</div>
				<div id="board" class="cf">
					<div class="Title fl">
						<div class="width50">번호</div>
						<div class="width805">제목</div>
						<div class="width87">첨부</div>
						<div class="width99">작성일</div>
						<div class="width99">조회수</div>
					</div>
					<div class="Memo fl">
						<!--div*6 -->
						<div class="text">
							<div class="width50 fl">3295</div>
							<div class="width40_1 fl">호계</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">호계도서관「찾아,드림(DREAM)」 서울시립과학관 학예사 유정숙 진···</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"><img src="images/ico_attach.png" alt="첨부파일이미지"/></div>
							<div class="width99 fl">2022-07-07</div>
							<div class="width99 fl">56</div>
						</div>
						<div class="text">
							<div class="width50 fl">3294</div>
							<div class="width40_1 fl">호계</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">호계도서관「찾아,드림(DREAM)」 하반기 온라인 직업체험 강좌 운영···</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"><img src="images/ico_attach.png" alt="첨부파일이미지"/></div>
							<div class="width99 fl">2022-07-07</div>
							<div class="width99 fl">48</div>
						</div>
						<div class="text">
							<div class="width50 fl">3293</div>
							<div class="width40_1 fl">호계</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">2022년 호계도서관 여름방학 특강 수강생 모집 안내</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"></div>
							<div class="width99 fl">2022-07-07</div>
							<div class="width99 fl">71</div>
						</div>
						<div class="text">
							<div class="width50 fl">3292</div>
							<div class="width40_2 fl">벌말</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">[벌말도서관]『동화랑 퀴즈랑 놀자』 7월부터 운영 재개 안내</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"><img src="images/ico_attach.png" alt="첨부파일이미지"/></div>
							<div class="width99 fl">2022-07-07</div>
							<div class="width99 fl">24</div>
						</div>
						<div class="text">
							<div class="width50 fl">3291</div>
							<div class="width40_4 fl">만안</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">2022년도 만안도서관 여름방학특강(교과서 미리보기)</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"><img src="images/ico_attach.png" alt="첨부파일이미지"/></div>
							<div class="width99 fl">2022-07-07</div>
							<div class="width99 fl">53</div>
						</div>
						<div class="text">
							<div class="width50 fl">3290</div>
							<div class="width40_5 fl">평촌</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">2022년 6월 자료를 기증하여 주신 분들</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"><img src="images/ico_attach.png" alt="첨부파일이미지"/></div>
							<div class="width99 fl">2022-07-07</div>
							<div class="width99 fl">12</div>
						</div>
						<div class="text">
							<div class="width50 fl">3289</div>
							<div class="width40_3 fl">박달</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">박달도서관 통합열람실 운영 안내</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"><img src="images/ico_attach.png" alt="첨부파일이미지"/></div>
							<div class="width99 fl">2022-07-06</div>
							<div class="width99 fl">73</div>
						</div>
						<div class="text">
							<div class="width50 fl">3288</div>
							<div class="width40_3 fl">박달</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">2022년 박달도서관 독후감상화 대회 개최</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"><img src="images/ico_attach.png" alt="첨부파일이미지"/></div>
							<div class="width99 fl">2022-07-05</div>
							<div class="width99 fl">77</div>
						</div>
						<div class="text">
							<div class="width50 fl">3287</div>
							<div class="width40_2 fl">벌말</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">벌말도서관 온라인 여름방학 특강 운영 안내</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"><img src="images/ico_attach.png" alt="첨부파일이미지"/></div>
							<div class="width99 fl">2022-07-05</div>
							<div class="width99 fl">117</div>
						</div>
						<div class="text">
							<div class="width50 fl">3286</div>
							<div class="width40_3 fl">박달</div>
							<div class="widthGroup">
								<div class="width490 fl"><a href="#">2022년 박달도서관 여름방학 특강 안내</a></div>
								<div class="width40 fl"></div>
							</div>
							<div class="width53 fl"><img src="images/ico_attach.png" alt="첨부파일이미지"/></div>
							<div class="width99 fl">2022-07-05</div>
							<div class="width99 fl">131</div>
						</div>
					</div>
					<div class="btnWrap fl">
						<div class="btnBg">
							<div class="beforeBtn fl">
								<button class="btn1">&lt;&lt;</button>
								<button class="btn2">&lt;</button>
							</div>
							<div class="pageNum fl">
								<div class="page"><a class="fNum" href="#">1</a></div>
								<div class="page"><a href="#">2</a></div>
								<div class="page"><a href="#">3</a></div>
								<div class="page"><a href="#">4</a></div>
								<div class="page"><a href="#">5</a></div>
								<div class="page"><a href="#">6</a></div>
								<div class="page"><a href="#">7</a></div>
								<div class="page"><a href="#">8</a></div>
								<div class="page"><a href="#">9</a></div>
								<div class="page"><a href="#">10</a></div>
							</div>
							<div class="afterBtn fl">
								<button class="btn1">&gt;&gt;</button>
								<button class="btn2">&gt;</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<%@ include file="main/footer.jsp" %>
</body>
</html>