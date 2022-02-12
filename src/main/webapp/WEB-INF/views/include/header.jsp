<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> AIRDAYS MAIN </title>
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
<link rel="stylesheet" type="text/css" href="/ex/resources/css/main.css?ver=1" />
<link rel="stylesheet" type="text/css" href="/ex/resources/css/content.css" />
<link rel="stylesheet" type="text/css" href="/ex/resources/css/mainslide.css" />
<!-- <link rel="stylesheet" type="text/ex/resources/css" href="../ex/resources/css/customer.css" /> -->
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
<script type="text/javascript" src="/ex/resources/js/mainslide.js"></script>


<!--[if lt IE 9]>
<script type="text/javascript" src="../ex/resources/js/html5.js"></script>
<script type="text/javascript" src="../ex/resources/js/respond.min.js"></script>
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
			<li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src=/ex/resources"/images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
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
		</div>

		<div class="innerbox mobile">
			<div class="img">
				<a href="/page/cs_clubbioderma.php">
					<img src="/images/img/bioderma_main_mobile_170605_01.png" alt="" />
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
					<li><a href="/ex/login/login"><span>로그인</span></a></li>
					<!-- <li><a href="#"><span>Logout</span></a></li> -->
					<li><a href="/ex/join/joinform"><span>회원가입</span></a></li>
					<li class="last"><a href="/ex/zboard/airtop"><span>장바구니</span></a></li>
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
					<li><a href="/ex/product_list/product_list">전체상품</a></li>
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
		<h1><a href="/ex/main"><img src="/ex/resources/images/img/img_top_logo.jpg" alt="AIRDAYS" /></a></h1>
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
				<li class="dep"><a href="/ex/product_list/product_list" id="topNavi1"><span>전체상품</span></a>
					<div id="topSubm1">
						
						<span class="bigTit">
							<p>전체상품</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="/ex/product_list/product_list">신제품</a></li>
							<li><a href="/ex/product_list/product_list">전체상품</a></li>
						</ul>

						<span class="promotion">	
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_7.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_12.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="/ex/product_list/product_list" id="topNavi2"><span>신제품</span></a>
					<div id="topSubm2">
						<span class="bigTit">
							<p>신제품</p>
							<img src="/ex/resources/images/img/img_main_gnb_02.jpg" alt="" />
						</span>

						<ul>
							<li><a href="/ex/product_list/product_list">소형</a></li>
							<li><a href="/ex/product_list/product_list">중형</a></li>
							<li><a href="/ex/product_list/product_list">대형</a></li>
							
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_1.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_20.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="/ex/product_list/product_list" id="topNavi3"><span>베스트</span></a>
					<div id="topSubm3">
						<span class="bigTit">
							<p>베스트</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="/ex/product_list/product_list">소형</a></li>
							<li><a href="/ex/product_list/product_list">중형</a></li>
							<li><a href="/ex/product_list/product_list">대형</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_5.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_19.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="/ex/product_list/product_list" id="topNavi4"><span>KF-94</span></a>
					<div id="topSubm4">
						<span class="bigTit">
							<p>KF-94</p>
							<img src="/ex/resources/images/img/img_main_gnb_02.jpg" alt="" />
						</span>

						<ul>
							<li><a href="/ex/product_list/product_list">소형</a></li>
							<li><a href="/ex/product_list/product_list">중형</a></li>
							<li><a href="/ex/product_list/product_list">대형</a></li>
                            <li><a href="/ex/product_list/product_list">와이드</a></li>
                            <li><a href="/ex/product_list/product_list">더뉴플러스</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_2.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_3.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="/ex/product_list/product_list" id="topNavi5"><span>KF-94 슬림핏</span></a>
					<div id="topSubm5">
						<span class="bigTit">
							<p>KF-94 슬림핏</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="/ex/product_list/product_list">소형</a></li>
							<li><a href="/ex/product_list/product_list">중형</a></li>
							<li><a href="/ex/product_list/product_list">대형</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_10.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_13.jpg" alt="" /></a>
						</span>
					</div>
				</li>
                <li class="dep"><a href="/ex/product_list/product_list" id="topNavi4"><span>프리스타일</span></a>
					<div id="topSubm4">
						<span class="bigTit">
							<p>프리스타일</p>
							<img src="/ex/resources/images/img/img_main_gnb_02.jpg" alt="" />
						</span>

						<ul>
							<li><a href="/ex/product_list/product_list">중형</a></li>
							<li><a href="/ex/product_list/product_list">대형</a></li>
							
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_8.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_21.jpg" alt="" /></a>
						</span>
					</div>
				</li>
                <li class="dep"><a href="/ex/product_list/product_list" id="topNavi4"><span>비말차단</span></a>
					<div id="topSubm4">
						<span class="bigTit">
							<p>비말차단</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="/ex/product_list/product_list">C형 비말차단</a></li>
							<li><a href="/ex/product_list/product_list">일반형 비말차단</a></li>
							
						</ul>

						<span class="promotion">
							<a href="/ex/product_list/product_list"><img src="/ex/resources/images/img/img_ex_gnb_6.jpg" alt="" /></a>
							<a href="/ex/product_list/product_list"><img src="/ex/resources/images/img/img_ex_gnb_9.jpg" alt="" /></a>
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
</div>
</div>
</body>
</html>