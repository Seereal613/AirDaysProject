<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> AIRDAYS LOGIN </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="airdays" />
<meta name="keywords" content="airdays" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<meta name="format-detection" content="telephone=no"/>

<meta property="og:title"           content="airdays"/>
<meta property="og:site_name"       content="airdays"/>
<meta property="og:type"            content="website"/>
<meta property="og:url"             content="http://"/>
<meta property="og:image"           content="images/img/kakako.jpg"/>
<meta property="og:description"     content="airdays"/>

<link rel="stylesheet" type="text/css" href="/ex/resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="/ex/resources/css/main.css" />
<link rel="stylesheet" type="text/css" href="/ex/resources/css/content.css" />
<!-- <link rel="stylesheet" type="text/css" href="/css/customer.css" /> -->
<link rel="stylesheet" type="text/css" href="/ex/resources/css/jquery.fancybox-1.3.4.css" />
<link rel="shortcut icon" href="/ex/resources/images/ico/favicon.ico">

<script type="text/javascript" src="/ex/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/ex/resources/js/modernizr.js"></script>
<script type="text/javascript" src="/ex/resources/js/common.js"></script>
<script type="text/javascript" src="/ex/resources/js/top_navi.js"></script>
<script type="text/javascript" src="/ex/resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/ex/resources/js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="/ex/resources/js/customInput.jquery.js"></script>
<script type="text/javascript" src="/ex/resources/js/imagesloaded.pkgd.min.js"></script>
<script type="text/javascript" src="/ex/resources/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="/ex/resources/js/jquery.fancybox-1.3.4.pack.js"></script>


<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->


</head>
<body>


<!--익스레이어팝업-->
<div id="ieUser" style="display:none">
	<div class="iewrap">	
		<p class="img"><img src="/ex/resources/images/ico/ico_alert.gif" alt="알림" /></p>
		<p class="txt">IE버전이 낮아 홈페이지 이용에 불편함이 있으므로 <strong>IE9이상이나 다른 브라우저</strong>를 이용해 주세요. </p>
		<ul>
			<li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="/ex/resources/images/ico/ico_ie.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="/ex/resources/images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="/ex/resources/images/ico/ico_mozila.gif" alt="MOZILA 최신브라우저 다운" ></a></li>
			<li><a href="http://www.apple.com/safari" target="_blank"><img src="/ex/resources/images/ico/ico_safari.gif" alt="SAFARI 최신브라우저 다운" ></a></li>
			<li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="/ex/resources/images/ico/ico_opera.gif" alt="OPERA 최신브라우저 다운" ></a></li>		
		</ul>
		<p class="btn" onclick="msiehide();"><img src="/ex/resources/images/ico/ico_close.gif" alt="닫기" /></p>
	</div>
</div>
<!--//익스레이어팝업-->
<!--IE 6,7,8 사용자에게 브라우저 업데이터 설명 Div 관련 스크립트-->
 <script type="text/javascript">

     var settimediv = 200000; //지속시간(1000= 1초)
     var msietimer;

     $(document).ready(function () {
         msiecheck();
     });

     var msiecheck = function () {
         var browser = navigator.userAgent.toLowerCase();
         if (browser.indexOf('msie 6') != -1 ||
                browser.indexOf('msie 7') != -1 ||
				 browser.indexOf('msie 8') != -1) {
             msieshow();			 
         }
         else {
             msiehide();
         }
     }

     var msieshow = function () {
        $("#ieUser").show();
        msietimer = setTimeout("msiehide()", settimediv);
     }

     var msiehide = function () {
		$("#ieUser").hide();
        clearTimeout(msietimer);
     }
</script>

<div id="allwrap">
<div id="allBg"></div>
<div id="wrap">


<!-- header banner -->
<script type="text/javascript">
	function setCookies1( name, value, expires ) {
	document.cookie = name + "=" + escape (value) +
		"; path=/; expires=" + expires.toGMTString();
	}
	function closeWin(objname,pop) {
	 var expdate = new Date();
	  expdate.setTime(expdate.getTime() + 24*60*60*1000 ); // *365 365일
	 setCookies1( pop, "done" , expdate );
	$('#headerBanner').stop().animate({'height':'0'},300);
	}

	function win_link(url_link)
	{
	location.href=url_link;
	}
</script>

<!-- header -->
<div id="header">

	<div id="headerBanner" style="display:none;">
		<div class="innerbox pc">
			<div class="img"><a href="#"><img src="/ex/resources/images/img/img_top_banner.png" alt="" /></a></div>
			<div class="closebox">
				<a href="javascript:;" class="aclose" onclick="closeWin('headerBanner','headerBanner');">오늘 하루 이창을 열지 않음</a>
				<a href="javascript:;" class="pclose"><img src="/ex/resources/images/btn/btn_top_banner_close.png" alt="" /></a>
			</div>
		</div>

		<div class="innerbox mobile">
			<div class="img">
				<a href="/ex/resources/page/cs_clubbioderma.php">
					<img src="/ex/resources/images/img/bioderma_main_mobile_170605_01.png" alt="" />
					<!-- <img src="SC_IMG_URL/img/headerbanner01_txt_m.jpg" class="mtxt" alt="" /> -->
				</a>
			</div>		
			<div class="closebox">
				<a href="javascript:;" class="aclose" onclick="closeWin('headerBanner','headerBanner');">오늘 하루 이창을 열지 않음</a>
				<a href="javascript:;" class="pclose"><img src="/ex/resources/images/btn/btn_top_banner_close.png" alt="" /></a>
			</div>
		</div>
	</div>


	<script type="text/javascript">
	$(document).ready(function () {
		$(".pclose").click(function(){
			$('#headerBanner').stop().animate({'height':'0'},300);
		});
	});

	function getCookies(Name) {
	  var search = Name + "=";
		offset = document.cookie.indexOf(search);
	  if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면   
		if (offset != -1) { // 쿠키가 존재하면
		  offset += search.length;
		  // set index of beginning of value
		  end = document.cookie.indexOf(";", offset);
		  // 쿠키 값의 마지막 위치 인덱스 번호 설정
		  if (end == -1)
			end = document.cookie.length;
		  return unescape(document.cookie.substring(offset, end));
		}
	  }
	}

	if (getCookies("headerBanner") != "done") {  
		//document.getElementById('layerpopup1').style.display = 'block';
	  document.getElementById('headerBanner').style.display = 'block';
	}

	</script>
	<!-- header banner -->


	<!-- snb -->
	<div id="snbBox">
		<div id="snbBoxBG">
			<div id="quickm">
				
			</div>
			
			<div id="snb">
				<ul>
					<li><a href="#"><span>로그인</span></a></li>
					<!-- <li><a href="#"><span>Logout</span></a></li> -->
					<li><a href="#"><span>회원가입</span></a></li>
					<li><a href="#"><span>마이페이지</span></a></li>
					<li class="last"><a href="#"><span>장바구니</span></a></li>
					<li class="searchBtn"><a href="#"><img src="/ex/resources/images/btn/btn_top_search.jpg" alt="검색" /></a></li>
				</ul>
			</div>
		</div>
		<!-- top search -->
		<div id="topSearch">
			<div class="inSearchBox">
				<div class="mainSTy"><input type="text" placeholder="찾으시는 제품을 입력해 주세요." /></div>
				<ul>
					<li><a href="#" class="enterBtn"><img src="/ex/resources/images/btn/btn_top_search_enter.jpg" alt="" /></a></li>
					<li><a href="#" class="sccloseBtn"><img src="/ex/resources/images/btn/btn_top_search_close.jpg" alt="" /></a></li>
				</ul>
			</div>
		</div>
		<!-- //top search -->
	</div>
	<!-- //snb -->

	<!-- slide quick menu -->
	<div id="sqMenu">
		<div class="sqBox">
			<div class="qlogo"><a href="#"><img src="/ex/resources/images/img/img_gnb_logo_plp.png" alt="INSTITUT ESTHEDERM PARIS" /></a></div>
			<div class="qmenu">
				<ul>
					<li><a href="#">전체상품</a></li>
					<li><a href="#">신제품</a></li>
					<li><a href="#">베스트</a></li>
					<li><a href="#">기획전 </a></li>
					<li><a href="#">KF-94</a></li>
                    <li><a href="#">KF-94 슬림핏</a></li>
                    <li><a href="#">프리스타일</a></li>
                    <li><a href="#">비말차단</a></li>
				</ul>
			</div>
			<a href="javascript:;" class="sq openSearch"><img src="/ex/resources/images/btn/btn_sq_search.png" alt="검색" /></a>
		</div>
	</div>
	<!-- //slide quick menu -->

	<div id="logo">
		<h1><a href="#"><img src="/ex/resources/images/img/img_top_logo.jpg" alt="AIRDAYS" /></a></h1>
	</div>
	
	<div id="navigation">
		<!-- gnb -->
		<div id="mNavi">
			<span class="line"></span>
			<span class="line"></span>
			<span class="line"></span>
		</div>
		<div id="gnb">
			<ul id="topMenu">
				<li class="dep"><a href="javascript:;" id="topNavi1"><span>전체상품</span></a>
					<div id="topSubm1">
						
						<span class="bigTit">
							<p>전체상품</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">신제품</a></li>
							<li><a href="#">전체상품</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_7.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_12.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="javascript:;" id="topNavi2"><span>신제품</span></a>
					<div id="topSubm2">
						<span class="bigTit">
							<p>신제품</p>
							<img src="/ex/resources/images/img/img_main_gnb_02.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">소형</a></li>
							<li><a href="#">중형</a></li>
							<li><a href="#">대형</a></li>
							
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_1.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_20.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="javascript:;" id="topNavi3"><span>베스트</span></a>
					<div id="topSubm3">
						<span class="bigTit">
							<p>베스트</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">소형</a></li>
							<li><a href="#">중형</a></li>
							<li><a href="#">대형</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_5.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_19.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="javascript:;" id="topNavi4"><span>KF-94</span></a>
					<div id="topSubm4">
						<span class="bigTit">
							<p>KF-94</p>
							<img src="/ex/resources/images/img/img_main_gnb_02.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">소형</a></li>
							<li><a href="#">중형</a></li>
							<li><a href="#">대형</a></li>
                            <li><a href="#">와이드</a></li>
                            <li><a href="#">더뉴플러스</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_2.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_3.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="#" id="topNavi5"><span>KF-94 슬림핏</span></a>
					<div id="topSubm5">
						<span class="bigTit">
							<p>KF-94 슬림핏</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">소형</a></li>
							<li><a href="#">중형</a></li>
							<li><a href="#">대형</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_10.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_13.jpg" alt="" /></a>
						</span>
					</div>
				</li>
                <li class="dep"><a href="javascript:;" id="topNavi4"><span>프리스타일</span></a>
					<div id="topSubm4">
						<span class="bigTit">
							<p>프리스타일</p>
							<img src="/ex/resources/images/img/img_main_gnb_02.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">중형</a></li>
							<li><a href="#">대형</a></li>
							
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_8.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_21.jpg" alt="" /></a>
						</span>
					</div>
				</li>
                <li class="dep"><a href="javascript:;" id="topNavi4"><span>비말차단</span></a>
					<div id="topSubm4">
						<span class="bigTit">
							<p>비말차단</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">C형 비말차단</a></li>
							<li><a href="#">일반형 비말차단</a></li>
							
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_6.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_9.jpg" alt="" /></a>
						</span>
					</div>
				</li>
			</ul>

			<div id="navibg"></div>
		</div>
		<!-- //gnb -->


		<!-- mobile mymenu -->
		<div id="mMenu">
			<a href="javascript:;"><img src="/ex/resources/images/btn/btn_mymenu_open.png" alt="마이메뉴 열기" /></a>
		</div>
		<div id="myMenu">
			<div class="mCloseBtn">
				<span class="line"></span>
				<span class="line"></span>
			</div>

			<div id="snbB">
				<ul>
					<li><a href="#"><span class="t01">로그인</span></a></li>
					<li><a href="#"><span class="t02">회원가입</span></a></li>
					<li><a href="#"><span class="t03">마이 페이지</span></a></li>
					<li><a href="#"><span class="t04">장바구니</span></a></li>
				</ul>
			</div>

			<div id="snbMobile">
				<ul>
					<li><a href="#"><span>브랜드</span></a></li>
					<li><a href="#"><span>커뮤니티</span></a></li>
					<li><a href="#"><span>이벤트</span></a></li>
					<li><a href="#"><span>고객센터</span></a></li>
				</ul>
			</div>
		</div>
		<!-- //mobile mymenu -->

	</div>
	<!--// navigation -->

	<!-- slide quick menu -->
	<div id="sqMenu">
		<div class="sqBox">
			<div class="qlogo"><a href="SC_FRONT_URL"><img src="/ex/resources/images/img/img_sqlogo.gif" alt="INSTITUT ESTHEDERM PARIS" /></a></div>
			<div class="qmenu">
				<ul>
					<li><a href="SC_PAGE_URL/institut_story.php">INSTITUT ESTHEDERM</a></li>
					<li><a href="SC_PAGE_URL/best_seller.php">BEST SELLERS</a></li>
					<li><a href="SC_FRONT_URL/product_main.php">FACE CARE</a></li>
					<li><a href="SC_FRONT_URL/spa_intro.php">SPA TREATMENTS</a></li>
					<li><a href="SC_FRONT_URL/gift_ideas.php">GIFT IDEAS</a></li>
					<li><a href="/front/event.php">EVENT</a></li>
					<li><a href="/front/news.php">NEWS</a></li>
				</ul>
			</div>
			<a href="javascript:;" class="sq openSearch"><img src="/ex/resources/images/btn/btn_sq_search.gif" alt="검색" /></a>
		</div>
	</div>
	<!-- //slide quick menu -->

	



<!-- //gnb -->
<script type="text/javascript">
$(document).ready(function(){
	//상단search
	$(".searchBtn a").bind("click", function(){
		$("#topSearch").slideDown(300);
	});
	$(".sccloseBtn").bind("click", function(){
		$("#topSearch").slideUp(300);
	});
	$(window).resize(function () {
		$(".sccloseBtn").click();
	});
	

});
</script>

</div>
<!-- //header -->




<!-- content -->
<div id="content">

	<h2>회원가입</h2>

	<div class="stepWrap">
		<ul>
			<li class="m1 on"><div>STEP<span>01</span></div><p>본인인증 및 <u>약관동의</u></p></li>
			<li class="m2"><div>STEP<span>02</span></div><p>회원정보<u>등록</u></p></li>
			<li class="m3"><div>STEP<span>03</span></div><p>회원가입<u>완료</u></p></li>
		</ul>
	</div>



	<div class="certification">
		<p class="tit">약관동의</p>
		<div class="agreeCWrap">
			<ul>
				<li>
					<input type="checkbox" id="agree1" name="agree1" value="Y" /><label for="agree1">(필수) 개인정보취급방침에 동의합니다.</label>
					<a href="/page/privacy.php" class="guidePopOpen">개인정보취급방침 전체보기</a>
				</li>
				<li>
					<input type="checkbox" id="agree2" name="agree2" value="Y" /><label for="agree2">(필수) 이용약관에 동의합니다.</label>
					<a href="/page/guide.php" class="guidePopOpen">이용약관 전체보기</a>
				</li>
			</ul>
		</div>


		<p class="tit">본인인증 확인</p>
		<p class="txt"><span>안전한 회원 가입</span>을 위해 <span>본인인증 과정</span>을 진행해 주세요.<br/>(14세 이상 내국인/국내 거주 외국인)</p>

		<form method="post" name="joinform" id="joinform" autocomplete="off">
			<input type="hidden" name="token" value="97f3d98a1511d943f6db4ec03c16a648" id="token">
			<input type="hidden" name="user_name" value="" id="user_name">
			<input type="hidden" name="user_sex" value="" id="user_sex">
			<input type="hidden" name="user_birth" value="" id="user_birth">
			<input type="hidden" id="user_di" name="user_di" value=""  />
			<input type="hidden" id="user_ci" name="user_ci" value=""  />

			<div class="outBox">
				<ul>
					<li>
						<div class="inbox phone">
							<div class="ico"><img src="/ex/resources/images/ico/ico_certification_phone.png" alt="" /></div>
							<div class="btn"><a href="javascript:popup_niceid();"><span>휴대폰 본인인증</span></a></div>
						</div>
					</li>

					<li>
						<div class="inbox ipin">
							<div class="ico"><img src="/ex/resources/images/ico/ico_certification_ipin.png" alt="" /></div>
							<div class="btn"><a href="/ex/join/joinform"><span>인증없이 진행</span></a></div>
						</div>
					</li>
				</ul>
			</div>
		</form>


	</div>



</div>
<!-- //content -->

<form name="form_chk" method="post">
	<input type="hidden" name="m" value="checkplusSerivce">						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
	<input type="hidden" name="EncodeData" value="AgAFQUQxMTljC29E/oW3EfIoV2IV3iJejFc2JXGF5ThUWfQkhNDCxyua0oaoWNDRakkluYykwgKRmEz3a9DeqSGp6v575V+n9dsb3hws/N/sYoLx+rkf5GTecAUGujsau/o+z5hQTWhAdvwXVYPKc9KZqKRmtjhnuS4aMEWzt53+X+mXGknSrYVNHfPUBK045BeMnydkFNlnJcoKn0UFYqC+W6yYwHs+KHJReCQSLlwquKq+oPYk2qKQSpCchIo1TCVjo9mChRfvqUB6kGNplcP4SxTPEVzyOcAYlXpAB+i5oiYzDrx3Skgm2xSnE6f/x2EbBInSc4Ldi/z1L5g7FMRkxkapwNZrLxWX0mHN+u9S4aR02t9voIHAeozHpYJMQWc5KvDS0gOkeI9QjPvBmMirirgzA5n8MvFPGTvoNeIxBVXCdQoEHOg37e6p1n8kv7jSRscQ3iN3zsthvnnxErHzvlz6buFZEkz53KmcLulDOhmUhbEPiA==">		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->

	<!-- 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용할 수 있으며, 인증결과 응답시 해당 값을 그대로 송신합니다.
		   해당 파라미터는 추가하실 수 없습니다. -->
	<input type="hidden" name="param_r1" value="">
	<input type="hidden" name="param_r2" value="">
	<input type="hidden" name="param_r3" value="">

</form>
<form name="form_ipin" method="post">
	<input type="hidden" name="m" value="pubmain">						<!-- 필수 데이타로, 누락하시면 안됩니다. -->
    <input type="hidden" name="enc_data" value="AgAEQUoxNNFoVGDONqq7k7inTaz0501ZsGY9eeERJhvrN9RimaksONrXEcUC8EGm3Wgdg3T5137CH/nTJpKLHFYkt+c1pUG/fIkqfSumVNkUFCuLPcHiJg5HAz7JGXztqPNXUZiNWcay2ZzUUEh8fTfJNQ6Nv2m5LhowRbO3nf5f6ZcaSdKt+xMPaVMEsneA1l7f50vQabV/qZoY4UXiwyYajfzHCuZnHlC41pdXTDvu0xyTSoOJgSj+U4gCzqi2okkS3QMfHT9bXfhGgUZA0YWi2/JezO6KQG60VKmlDeErbQ4lH1a2">		<!-- 위에서 업체정보를 암호화 한 데이타입니다. -->

    <!-- 업체에서 응답받기 원하는 데이타를 설정하기 위해 사용할 수 있으며, 인증결과 응답시 해당 값을 그대로 송신합니다.
    	 해당 파라미터는 추가하실 수 없습니다. -->
    <input type="hidden" name="param_r1" value="">
    <input type="hidden" name="param_r2" value="">
    <input type="hidden" name="param_r3" value="">
</form>

<script type="text/javascript">
<!--
window.name ="Parent_window";
var popup_niceid = function(){
	var f = document.joinform;

	if( !$("#agree1").is(":checked") ){
		alert("회원가입 약관 동의를 하시기 바랍니다.");
		$('#agree1').focus();
		//return false;
    return;
	}
	if( !$("#agree2").is(":checked") ){
		alert("개인정보처리방침안내 동의를 하시기 바랍니다.");
		$('#agree2').focus();
		//return false;
    return;
	}
	window.open('', 'popupChk', 'width=500, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
	document.form_chk.action = "https://nice.checkplus.co.kr/CheckPlusSafeModel/checkplus.cb";
	document.form_chk.target = "popupChk";
	document.form_chk.submit();
}
function fnPopup(){
	var f = document.joinform;

	if( !$("#agree1").is(":checked") ){
		alert("회원가입 약관 동의를 하시기 바랍니다.");
		$('#agree1').focus();
		//return false;
    return;
	}
	if( !$("#agree2").is(":checked") ){
		alert("개인정보처리방침안내 동의를 하시기 바랍니다.");
		$('#agree2').focus();
		//return false;
    return;
	}
	window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
	document.form_ipin.target = "popupIPIN2";
	document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
	document.form_ipin.submit();
}
var checkForm = function(){
	var f = document.joinform;

	if( !$("#agree1").is(":checked") ){
		alert("회원가입 약관 동의를 하시기 바랍니다.");
		$('#agree1').focus();
		return false;
	}
	if( !$("#agree2").is(":checked") ){
		alert("개인정보처리방침안내 동의를 하시기 바랍니다.");
		$('#agree2').focus();
		return false;
	}

	f.action = "https://www.bioderma.co.kr/front/join_form.php";
	f.submit();
}
//-->
</script>

<!-- Naver oAuth Start -->
<div id="naverIdLogin" style="display:none"></div>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "2eYTnRt3Kj8Eo5NVkVUQ",
			callbackUrl: "http://www.bioderma.co.kr/front/login_exe_naver.php",
			isPopup: true, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "white", type:1 , height: 52} /* 로그인 버튼의 타입을 지정 */
		}
	);

	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
</script>
<!-- // 네이버아이디로로그인 초기화 Script -->
<!-- Naver oAuth End -->


<!-- Kakao oAuth Start -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
	// 카카오톡 로그인
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('91903987728f67543cba0895251bb344');
	// [S] Kakao 로그인 함수
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
	  var scrurl = "https://www.bioderma.co.kr/front";	
      Kakao.Auth.login({
        success: function(authObj) {
			Kakao.API.request({
				url: '/v2/user/me',
				success: function(res) {
					// [S] 실제 로그인 프로세스
					$.ajax({
						type: "POST",
						url: "/front/login_exe_sns.php",
						data: "is_ajax=1&mode=kakaotalk&user_id="+res.id+"&user_email="+res.kakao_account.email+"&name="+res.kakao_account.profile.nickname+"&gender="+res.kakao_account.gender+"&birthday="+res.kakao_account.birthday+"&birthday_type="+res.kakao_account.birthday_type,
						success: function(response) {
							if(response == 'success') {
								//if( 'https://www.bioderma.co.kr/front' != '/front/login.php') location.href = 'https://www.bioderma.co.kr/front';
								//else location.replace('https://www.bioderma.co.kr/front');
                                //location.reload();
                                //location.href='/front/join.php';
                                //location.href='/front/';
								
								if(scrurl)
								{
									if(scrurl !='/front/login.php')
									{
										location.href=scrurl;
									}
									
									
								}
								else
								{
									location.href='/front/';
								}
								
							}
							else if(response == 'token'){
								alert("비정상적인 접근입니다.");
								location.reload();
							}
							else {
								alert(response);
								return;
							}
						}
					});
				},
				fail: function(error) {

				}
				// [S] 실제 로그인 프로세스
			});
        },
        fail: function(err) {
          //alert(JSON.stringify(err));
        }
      });
    };
	// [E] Kakao 로그인 함수

	// [S] Kakao 로그아웃 함수
	function logoutWithKakao() {
		Kakao.Auth.logout(function(){
			location.href="/login/logout.php";
		});
	}
	// [E] Kakao 로그아웃 함수
</script>
<!-- Kakao oAuth End -->

<script>
function sns_login(obj) {
    if (obj=="naver") {
        document.getElementById('naverIdLogin_loginButton').click();
    }

    if (obj=="google") {
        $(".abcRioButtonContentWrapper").click();
    }
}
</script>



<!-- footer wrap -->
<div id="footerWrap">
	<div id="footer">
		<div id="ftList">
			<ul class="con">
				
				<li class="homeCon">
					<ul>
						<li><a href="/main/privacy.php" class="guidePopOpen"><span>개인정보취급방침</span></a></li>
						<li><a href="/main/emailrefusal.php" class="guidePopOpen"><span>이메일무단수집거부</span></a></li>
						<li><a href="/main/guide.php" class="guidePopOpen"><span>이용약관</span></a></li>
						<li><a href="#"><span>고객센터</span></a></li>
						<li class="familySite">
							<select name="" id="" class="bdbox" onchange="gotourl(this.value, 'new');"><!-- 선택시 이동 -->
								<option value="/">Airdays</option>
								<option value="http://www.dwbio.co.kr/">(주)디더블유바이오</option>
							</select>
						</li>
					</ul>
				</li>
			</ul>
		</div>

		<div id="ftInfo">
			<div class="link"><a href="#">(주)디더블유바이오</a><a href="#">대표자 : 한재준</a></div>
			<div class="txt">
				<p>주소 : 충청북도 청주시 흥덕구 옥산면 과학산업4로 203 (주)디더블유바이오</p>
				<p>대표번호 : 032-831-8771   <span> </span>   이메일 : dwiaan@naver.com</p>
				<p>사업자등록번호 : 214-88-79685   </p>
				<p>통신판매업신고번호 : 제2020-충북청주-2675호</p>
				
				<strong class="copy">airdays</strong>
			</div>
		</div>


	</div>
	<div id="btTEXT">A I R D A Y S</div>
</div>
<!-- //footer -->



<script type="text/javascript">
$(function(){
	// layer popup
	var guideLayerWidth = function(){
		var winWidth = $(window).width();
		if (winWidth > 1200) { var layerCheck = 1200; } 
		else if (winWidth < 1200 && winWidth > 900) { var layerCheck = 900; }
		else if (winWidth < 900 && winWidth > 541) { var layerCheck = 541; }
		else if (winWidth < 541 && winWidth > 360) { var layerCheck = 360; }
		else { var layerCheck = 320; }

		$(".guidePopOpen").fancybox({
			'autoDimensions': false,
			'showCloseButton': false,
			'width': layerCheck,
			'padding': 0,
			'scrolling':'no',
			'type': 'iframe',
			'onComplete': function () {
				$('#fancybox-frame').load(function () { // wait for frame to load and then gets it's height
				$('#fancybox-content').height($(this).contents().find('body').height());
				$.fancybox.resize();
				});
			}
		});
	}; guideLayerWidth();

	$(window).resize(function(){ 
		guideLayerWidth();
	});
});



//select 링크
function gotourl(url, type) {
	if (type == 'new')
		window.open(url);
		else
	location.href = url;
}
</script></div>
</div>
</body>
</html>