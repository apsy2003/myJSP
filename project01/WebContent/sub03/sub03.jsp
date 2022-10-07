<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sub3</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="박지현"/>
	<meta name="Keywords" content="박지현, ParkJiHyun, 포트폴리오, 박지현 포트폴리오, portfolio, JiHyun's portfolio, 프로젝트, Project, 박 지현, 박 지 현, 지현 박, 지현, rla, xo, dud, xodud, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="박지현의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="stylesheet" href="/project01/sub03/css/sub03.css"/>	
	<link rel="stylesheet" href="/project01/sub03/main/css/header.css"/>
	<link rel="stylesheet" href="/project01/sub03/main/css/footer.css"/>
	<link rel="shortcut icon" href="/project01/main/images/index.ico"/>
	<script src="/project01/sub03/js/jquery-1.7.1.min.js"></script>
	<script src="/project01/sub03/js/sub03.js"></script>
</head>
<body>
	<%@ include file="main/header.jsp" %>
	
	<section id="container">
		<div class="contentTitle cf">
			<h3 class="hidden">자주하는질문</h3>
			<div class="Titlebox">
				<div class="Librarytitle">
					<ul class="Info">
						<li class="title">자주하는질문</li>
						<li class="Icoimg"><a href="/project01/index.jsp"><img src="/project01/sub03/images/ico_home.png" alt="홈버튼"/></a></li>
						<li class="Icoimg"><img src="/project01/sub03/images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">이용안내</li>
						<li class="Icoimg"><img src="/project01/sub03/images/ico_naviArrow.png" alt="우측 화살표"/></li>
						<li class="Icoimg">자주하는질문</li>
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
					<li class="menutitle"><img src="/project01/sub03/images/lnb_bg.png" alt=""/><span>이용안내</span></li>
					<li class="menu2"><a href="/project01/board/listArticles.do"><span class="Text">도서관소식</span><span class="Img"><img src="/project01/sub03/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu1"><a href="/project01/sub03/sub03.jsp"><span class="Text">자주하는질문</span></a></li>
					<li class="menu2"><a href="#"><span class="Text"> 도서관이용안내</span><span class="PImg"><img src="/project01/sub03/images/lnb_plus_off.png" alt="PlusImg"/></span></a></li>
					<li class="menu2"><a href="#">상호대차</a><span class="Img1"><img src="/project01/sub03/images/lnb_minus_off.png" alt="minusImg"/></span></li>
					<li class="menu2"><a href="#"><span class="Text">모바일앱</span><span class="Img"><img src="/project01/sub03/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">스마트도서관</span><span class="Img"><img src="/project01/sub03/images/lnb_minus_off.png" alt="minusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">책배달서비스</span><span class="PImg"><img src="/project01/sub03/images/lnb_plus_off.png" alt="plusImg"/></span></a></li>
					<li class="menu2"><a href="#"><span class="Text">전자도서관</span><span class="PPImg"><img src="/project01/sub03/images/lnb_plus_off.png" alt="plusImg"/></span></a></li>
				</ul>
			</div>			
			<div class="QnApage">
				<div class="QnA cf">
					<div class="QnAbox">
						<div class="Searchbox fl">
							<div class="SearchForm1 fr">
								<form name="SearchForm1" id="NoticeForm1" method="get">
									<div class="Libraryform">
										<select name="LibrarySearch" id="LibSearch" title="도서관검색">
											<option value="select" selected="selected">석수도서관</option>
											<option value="1" >만안도서관</option>
											<option value="2" >삼덕도서관</option>
											<option value="3" >박달도서관</option>
											<option value="4" >평촌도서관</option>
											<option value="5" >관양도서관</option>
											<option value="6" >비산도서관</option>
											<option value="7" >호계도서관</option>
											<option value="8" >어린이도서관</option>
											<option value="9" >벌말도서관</option>
										</select>
									</div>
								</form>
							</div>
						</div>
						<div class="SearchBtn fl">
								<input type="button" id="button" title="확인" value="확인" class="btn"/>
						</div>
					</div>
				</div>
				<div id="board">
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title active">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
								<!-- .title2 -->
								<li class="title2">
													<!-- label -->
									<label for="click11" class="cf">비치희망 자료는 어떻게 신청할 수 있나요?</label>
								</li>
							</ul>
						</div>
				<!-- .content_wrap -->
					<!-- div.content -->
						<div class="QnA_content">
							<ul>
								<li class="A">A</li>
								<li class="A_Text">도서관 홈페이지에 로그인 후 [자료검색][비치희망도서신청]에서 희망도서신청을 통해 필요한 자료를 신청할 수 있습니다.</li>
								<li class="A_Text"><br/>-희망도서 신청 가능 권수 : 10개 도서관 통합 1인 월 3권</li>
								<li class="A_Text"><br/>구입 및 비치여부는 도서관홈페이지[마이페이지>희망도서 신청조회]에서 가능합니다</li>
								<li class="A_Text">※희망도서 선정 기준에 따라 소장중인 도서,문제집,대학교재,고가도서,문제집, 흥미위주의 만화 등은 구입이 불가하오니 이점 양지하시기 바랍니다.</li>
							</ul>
						</div>
					</div>	
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
								<!-- .title2 -->
								<li class="title2">
														<!-- label -->
									<label for="click11" class="cf">시립도서관도 트위터,인스타그램,유튜브 채널이 있나요?</label>
								</li>
							</ul>
						</div>	
				<!-- .content_wrap -->
						<div class="QnA_content">
							<ul>
								<li class="A">A</li>
								<li class="A_Text">시립도서관은 트위터,인스타그램,유튜브 채널을 운영하고 있습니다.</li>
								<li class="A_Text"><a href="twitter.com/anyanglib">https://twitter.com/anyanglib</a></li>
								<li class="A_Text"><a href="www.instagram.com/anyanglib/">https://www.instagram.com/anyanglib/</a></li>
								<li class="A_Text"><a href="www.youtube.com/channel/UCOTyiNx6Di5A_Yn4SrzNMzg">https://www.youtube.com/channel/UCOTyiNx6Di5A_Yn4SrzNMzg</a></li>
							</ul>
						</div>
					</div>
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
														<!-- .title2 -->
								<li class="title2">
													<!-- label -->
								<label for="click11" class="cf">북스타트 책꾸러미는 어디서 어떻게 받을 수 있나요?</label>
								</li>
							</ul>
						</div>	
				<!-- .content_wrap -->
						<div class="QnA_content">
							<ul>
								<li class="A">A</li>
								<li class="A_Text">*북스타트운영 도서관:안양어린이도서관 (동안로66(범계동))</li>
								<li class="A_Text">*대   상:안양시 거주,생후~36개월 영유아</li>
								<li class="A_Text">*신청방법:안양어린이도서관 홈페이지를 통한 신청(선착순 마감) 후 도서관 방문 수령.<br/>
								(※ 북스타트 책꾸러미 신청 접수일은 안양어린이도서관 홈페이지 확인 및 전화 문의(8045-6285))</li>
								<li class="A_Text">*신청시 필요 서류:주민등록등본(아기),신분증(보호자)</li>
							</ul>
						</div>
					</div>
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
								<!-- .title2 -->
								<li class="title2">
													<!-- label -->
									<label for="click11" class="cf">북스타트가 무엇이며, 안양시 운영 도서관은 어디 인가요?</label>
								</li>
							</ul>
						</div>	
				<!-- .content_wrap -->
						<div class="QnA_content">
							<ul>
								<li class="A">A</li>
								<li class="A_Text">"책과 함께 인생을 시작하자" 북스타트는 북스타트 코리아와 지방자치단체가 함께 펼치는 지역사회 문화운동 프로그램입니다.</li>
								<li class="A_Text">북스타트는 아기와 부모가 그림책을 놓고 깔깔 웃고 춤추고 노래하고 함께 이야기하는 행복과 즐거움의 프로그램입니다.</li>
								<li class="A_Text">그림책을 매개로 아기와 부모가 풍요로운 관계를 형성하고 대화를 통해서만 길러지는 소중한 인간적 능력들을 심화시킬 수 있도록 돕는 것이 북스타트의 역할입니다.</li class="A_Text">
								<li>＊북스타트 코리아 홈페이지 참조 https://bookstart.org:8000/</li>
								<li class="A_Text">＊북스타트 운영 도서관 : 안양어린이도서관 (동안로66(범계동))</li>
								<li class="A_Text">＊운영 내용: 북스타트 도서 전시, 북스타트 단계별 프로그램 운영, 북스타트 책꾸러미 배부</li>
							</ul>
						</div>
					</div>
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
								<!-- .title2 -->
								<li class="title2">
													<!-- label -->
									<label for="click11" class="cf">회원가입이 안 돼요</label>
								</li>
							</ul>
						</div>	
				<!-- .content_wrap -->
						<div class="QnA_content">
					<!-- div.subject -->
							<ul>
								<li class="A">A</li>
								<li class="A_Text">＊회원가입을 위해서는  2가지 절차가  필요합니다.<br/> 
								STEP 01 [안양시 통합회원]으로 가입<br/> 
								STEP 02 [도서관 신규회원 등록](통합회원과 도서회원의 연계작업)</li>
								<li class="A_Text">STEP 03 연계작업 단계에서 기존 도서회원인 경우에는<br/>
								이름, 생년월일, 핸드폰 번호 등의 정보 일치화를 확인합니다.</li>
								<li class="A_Text">핸드폰 번호가 변경되었을 경우에는 정보 불일치로 연계가 불가능하여<br/>
								수동으로 핸드폰번호를 수정해야 합니다. </li>
								<li class="A_Text">도서관 자료실 담당자를 통하여 도서회원 핸드폰 번호를 변경하시거나, 홈페이지 담당자(031-8045-6126)에게 문의하여 주시기 바랍니다.</li>
								<li class="A_Text">도서회원의 핸드폰 번호를 변경이 완료된 후  [STEP 02 도서관 신규회원 등록]을 1회 로그인하시면 [안양시 통합회원] 아이디를 이용하여 사용이 가능합니다.</li>
								<li class="A_Text">* [안양시 통합회원]은 대소문자를 구별하여 가입하신 아이디와 패스워드를 다르게 기억하시는 경우도 간혹 있어, 안양시청 홈페이지에서 통합회원 로그인이 잘되는 지 확인이 필요합니다.</li>
							</ul>
						</div>
					</div>
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
								<!-- .title2 -->
								<li class="title2">
								<!-- label -->
									<label for="click11" class="cf">동일도서 재대출은 언제부터 가능한가요?</label>
								</li>
							</ul>
						</div>	
						<!-- .content_wrap -->
						<div class="QnA_content">
							<ul>
								<li class="A">A</li>
								<li class="A_Text">반납 후 3일 이후에 재대출 가능(예약이 없을 시 1주일 1회 연장 가능)</li>
							</ul>
						</div>
					</div>
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
								<!-- .title2 -->
								<li class="title2">
													<!-- label -->
									<label for="click11" class="cf">전자책을 홈페이지에서 보는 방법이 어떻게 되나요?</label>
								</li>
							</ul>
						</div>	
				<!-- .content_wrap -->
						<div class="QnA_content">
							<ul>
								<li class="A">A</li>
								<li class="A_Text">＊종이책을 디지털화하여 PC에서 간편하게 읽을 수 있는 도서<br/>
								＊종이책과 같은 개념으로 전자책 소유권수에 따른 이용제한</li>
								<li class="A_Text">o 이용안내<br/>
								1) 도서관 홈페이지 로그인 (정회원 이용가능)<br/>
								2) [이용안내> 전자도서관>전자책] 서비스 바로가기 누르기</li>
								<li class="A_Text">o 대출 및 예약 가능권수 안내<br/>
								- 대출은 예약을 포함하여 최대 5권까지 가능.<br/>
								- 대출기간 7일(자동반납), 대출연장 1회 7일 가능<br/> 
								(단, 예약자가 있는 경우 연장 불가)</li>
								<li class="A_Text">※전자책 서비스는 PC에서 최초 1회 로그인 후 사용가능</li>
							</ul>
						</div>
					</div>
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
								<!-- .title2 -->
								<li class="title2">
								<!-- label -->
									<label for="click11" class="cf">DVD 대출은 몇점까지 되나요?</label>
								</li>
							</ul>
						</div>	
						<!-- .content_wrap -->
						<div class="QnA_content">
							<ul>
								<li class="A">A</li>
								<li class="A_Text">＊대상: 안양시도서관 대출회원<br/>
								＊이용안내 <br/>
								o 기간 - 14일(연장없음)<br/>
								o 수량 - 1인당 2점</li>
								<li class="A_Text">가족구성원별 2점 X 가족회원 수<br/>
								※기존 도서 대출권수에 미포함</li>
								<li class="A_Text">＊장소 : 각 도서관 디지털자료실(전자정보관, 정보탐험실)<br/>         ※타관(상호대차) 반납 불가능</li>
								<li class="A_Text">※ 타관반납 불가<br/>
								※ 연체시 대출정지 일괄적용</li>
							</ul>
						</div>
					</div>
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
								<!-- .title2 -->
								<li class="title2">
														<!-- label -->
									<label for="click11" class="cf">상호대차 안 되는 이유는 뭔가요?</label>
								</li>
							</ul>
						</div>	
						<!-- .content_wrap -->
						<div class="QnA_content">
						<!-- div.subject -->
							<ul>
								<li class="A">A</li>
								<li class="A_Text">o 신청이 되지 않는 경우<br/>
								- 이미 대출중이거나 예약중인 도서<br/>
								- 이용자가 이용가능권수를 초과하거나, 대출정지인 경우<br/>
								- 상호대차로 대출된 도서는 연장 및 예약 불가.</li>
								<li class="A_Text">o 신청했으나 자동취소 되는 경우<br/>
								- 도서관내 방문자가 먼저 열람 및 대출중인 경우<br/>
								- 도서가 파손되어 수리를 요하거나, 오·배열로 도서수집이 곤란한 경우<br/>									- 수령도서관에 신청도서가 소장되어 있는 경우 신청이 취소될 수 있습니다.<br/> - 소장도서관의 자료상태(대출중, 서가부재, 예약도서 등) 에 따라 신청이<br/>   취소될 수 있음.</li>
								<li class="A_Text">o 상호대차 신청 후 이용하지 않는 경우 상호대차신청이 제한될 수 있습니다.</li>
							</ul>
						</div>
					</div>
					<div class="QnA_Box">
				<!-- input -->
						<div class="Qna_Title">
							<input type="radio" id="click10" name="click"/>
							<ul>
								<li class="Q">Q</li>
								<!-- .title2 -->
								<li class="title2">
								<!-- label -->
								<label for="click11" class="cf">동안구청 스마트도서관은 어떻게 이용하나요?</label>
								</li>
							</ul>
						</div>	
				<!-- .content_wrap -->
						<div class="QnA_content">
							<ul>
								<li class="A">A</li>
								<li class="A_Text">동안구청 스마트도서관은 동안구청 1층 로비에 설치된 무인자동 도서대출ㆍ반납시스템으로 베스트셀러 도서를 골라 대출하고 반납하는 서비스입니다.</li>
								<li class="A_Text">ㅇ 동안구청 스마트도서관 이용 안내<br/>
								-  이용대상: 안양시도서관 관외대출 회원증 소지자(온라인, 실물)<br/>
								-  이용안내: 대출권수/대출기간은 1회 2권 7일간 [타관 반납 및 연장 불가]<br/>
								-  운영시간: 08:00시~21:00시(연중무휴)<br/> 
								-  운영장소: 동안구청 1층 로비 내</li>
							</ul>
						</div>
					</div>
					<div class="pageBtn">
						<div class="Btnbox">
							<div class="Btn1"><a href="#">1</a></div>
							<div class="Btn2"><a href="#">2</a></div>
							<div class="Btn2"><a href="#">3</a></div>
							<div class="Btn2"><a href="#">4</a></div>
							<div class="Btn2"><a href="#">5</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<%@ include file="main/footer.jsp" %>
</body>
</html>