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


<!--?????????????????????-->
<div id="ieUser" style="display:none">
	<div class="iewrap">	
		<p class="img"><img src="/ex/resources/images/ico/ico_alert.gif" alt="??????" /></p>
		<p class="txt">IE????????? ?????? ???????????? ????????? ???????????? ???????????? <strong>IE9???????????? ?????? ????????????</strong>??? ????????? ?????????. </p>
		<ul>
			<li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="/ex/resources/images/ico/ico_ie.gif" alt="IE ?????????????????? ??????" ></a></li>
			<li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="/ex/resources/images/ico/ico_chrome.gif" alt="IE ?????????????????? ??????" ></a></li>
			<li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="/ex/resources/images/ico/ico_mozila.gif" alt="MOZILA ?????????????????? ??????" ></a></li>
			<li><a href="http://www.apple.com/safari" target="_blank"><img src="/ex/resources/images/ico/ico_safari.gif" alt="SAFARI ?????????????????? ??????" ></a></li>
			<li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="/ex/resources/images/ico/ico_opera.gif" alt="OPERA ?????????????????? ??????" ></a></li>		
		</ul>
		<p class="btn" onclick="msiehide();"><img src="/images/ico/ico_close.gif" alt="??????" /></p>
	</div>
</div>
<!--//?????????????????????-->
<!--IE 6,7,8 ??????????????? ???????????? ???????????? ?????? Div ?????? ????????????-->
 <script type="text/javascript">

     var settimediv = 200000; //????????????(1000= 1???)
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
	  expdate.setTime(expdate.getTime() + 24*60*60*1000 ); // *365 365???
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
				<a href="/ex/resources/page/cs_clubbioderma.php">
					<img src="/ex/resources/images/img/bioderma_main_mobile_170605_01.png" alt="" />
					<!-- <img src="SC_IMG_URL/img/headerbanner01_txt_m.jpg" class="mtxt" alt="" /> -->
				</a>
			</div>		
			<div class="closebox">
				<a href="javascript:;" class="aclose" onclick="closeWin('headerBanner','headerBanner');">?????? ?????? ????????? ?????? ??????</a>
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
	  if (document.cookie.length > 0) { // ????????? ???????????? ?????????   
		if (offset != -1) { // ????????? ????????????
		  offset += search.length;
		  // set index of beginning of value
		  end = document.cookie.indexOf(";", offset);
		  // ?????? ?????? ????????? ?????? ????????? ?????? ??????
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
					<li><a href="#"><span>?????????</span></a></li>
					<!-- <li><a href="#"><span>Logout</span></a></li> -->
					<li><a href="#"><span>????????????</span></a></li>
					<li><a href="#"><span>???????????????</span></a></li>
					<li class="last"><a href="#"><span>????????????</span></a></li>
					<li class="searchBtn"><a href="#"><img src="/ex/resources/images/btn/btn_top_search.jpg" alt="??????" /></a></li>
				</ul>
			</div>
		</div>
		<!-- top search -->
		<div id="topSearch">
			<div class="inSearchBox">
				<div class="mainSTy"><input type="text" placeholder="???????????? ????????? ????????? ?????????." /></div>
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
					<li><a href="#">????????????</a></li>
					<li><a href="#">?????????</a></li>
					<li><a href="#">?????????</a></li>
					<li><a href="#">????????? </a></li>
					<li><a href="#">KF-94</a></li>
                    <li><a href="#">KF-94 ?????????</a></li>
                    <li><a href="#">???????????????</a></li>
                    <li><a href="#">????????????</a></li>
				</ul>
			</div>
			<a href="javascript:;" class="sq openSearch"><img src="/ex/resources/images/btn/btn_sq_search.png" alt="??????" /></a>
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
				<li class="dep"><a href="javascript:;" id="topNavi1"><span>????????????</span></a>
					<div id="topSubm1">
						
						<span class="bigTit">
							<p>????????????</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">?????????</a></li>
							<li><a href="#">????????????</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_7.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_12.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="javascript:;" id="topNavi2"><span>?????????</span></a>
					<div id="topSubm2">
						<span class="bigTit">
							<p>?????????</p>
							<img src="/ex/resources/images/img/img_main_gnb_02.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">??????</a></li>
							<li><a href="#">??????</a></li>
							<li><a href="#">??????</a></li>
							
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_1.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_20.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="javascript:;" id="topNavi3"><span>?????????</span></a>
					<div id="topSubm3">
						<span class="bigTit">
							<p>?????????</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">??????</a></li>
							<li><a href="#">??????</a></li>
							<li><a href="#">??????</a></li>
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
							<li><a href="#">??????</a></li>
							<li><a href="#">??????</a></li>
							<li><a href="#">??????</a></li>
                            <li><a href="#">?????????</a></li>
                            <li><a href="#">???????????????</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_2.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_3.jpg" alt="" /></a>
						</span>
					</div>
				</li>
				<li class="dep"><a href="#" id="topNavi5"><span>KF-94 ?????????</span></a>
					<div id="topSubm5">
						<span class="bigTit">
							<p>KF-94 ?????????</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">??????</a></li>
							<li><a href="#">??????</a></li>
							<li><a href="#">??????</a></li>
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_10.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_13.jpg" alt="" /></a>
						</span>
					</div>
				</li>
                <li class="dep"><a href="javascript:;" id="topNavi4"><span>???????????????</span></a>
					<div id="topSubm4">
						<span class="bigTit">
							<p>???????????????</p>
							<img src="/ex/resources/images/img/img_main_gnb_02.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">??????</a></li>
							<li><a href="#">??????</a></li>
							
						</ul>

						<span class="promotion">
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_8.jpg" alt="" /></a>
							<a href="#"><img src="/ex/resources/images/img/img_ex_gnb_21.jpg" alt="" /></a>
						</span>
					</div>
				</li>
                <li class="dep"><a href="javascript:;" id="topNavi4"><span>????????????</span></a>
					<div id="topSubm4">
						<span class="bigTit">
							<p>????????????</p>
							<img src="/ex/resources/images/img/img_main_gnb_01.jpg" alt="" />
						</span>

						<ul>
							<li><a href="#">C??? ????????????</a></li>
							<li><a href="#">????????? ????????????</a></li>
							
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
			<a href="javascript:;"><img src="/ex/resources/images/btn/btn_mymenu_open.png" alt="???????????? ??????" /></a>
		</div>
		<div id="myMenu">
			<div class="mCloseBtn">
				<span class="line"></span>
				<span class="line"></span>
			</div>

			<div id="snbB">
				<ul>
					<li><a href="#"><span class="t01">?????????</span></a></li>
					<li><a href="#"><span class="t02">????????????</span></a></li>
					<li><a href="#"><span class="t03">?????? ?????????</span></a></li>
					<li><a href="#"><span class="t04">????????????</span></a></li>
				</ul>
			</div>

			<div id="snbMobile">
				<ul>
					<li><a href="#"><span>?????????</span></a></li>
					<li><a href="#"><span>????????????</span></a></li>
					<li><a href="#"><span>?????????</span></a></li>
					<li><a href="#"><span>????????????</span></a></li>
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
			<a href="javascript:;" class="sq openSearch"><img src="/ex/resources/images/btn/btn_sq_search.gif" alt="??????" /></a>
		</div>
	</div>
	<!-- //slide quick menu -->

	



<!-- //gnb -->
<script type="text/javascript">
$(document).ready(function(){
	//??????search
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

	<h2>????????????</h2>

	<div class="stepWrap">
		<ul>
			<li class="m1"><div>STEP<span>01</span></div><p><u>???????????? ??? <u>????????????</u></p></li>
			<li class="m2 on"><div>STEP<span>02</span></div><p>????????????<u>??????</u></p></li>
			<li class="m3"><div>STEP<span>03</span></div><p>????????????<u>??????</u></p></li>
		</ul>
	</div>

	<form method="post" name="joinform" id="joinform" autocomplete="off">
	<input type="hidden" id="user_idCheck" name="user_idCheck" />
    <input type="hidden" id="user_reidCheck" name="user_reidCheck" />
	<input type="hidden" name="token" value="8148af232380c62d6a3ac46a4de93a2d" id="token">
	<input type="hidden" id="user_name" name="user_name" value="?????????" />
	<input type="hidden" id="user_sex" name="user_sex" value="1"  />
	<input type="hidden" id="user_birth" name="user_birth" value="1993-07-07"  />
	<input type="hidden" id="user_di" name="user_di" value="MC0GCCqGSIb3DQIJAyEA02djbAZ3rOJ+cDe4hNAEkNo/v8z724INo/iqFXIazCA="  />
	<input type="hidden" id="user_ci" name="user_ci" value=""  />
	<input type="hidden" id="user_zip" name="user_zip" value=""  />

	<div class="diDiv">
		<table class="diTable" border="1" cellspacing="0">
			<caption>??????????????????</caption>
			<colgroup>
			<col width="190px" class="thWide"/><col width="*"/>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row"><span class="dot">?????????</span></th>
					<td>
						<ul class="pta">
							<li class="pr"><input type="text" class="w230" id="user_id" name="user_id" required onkeydown="$('#user_idCheck').val('');$('.id_chk').text('');" /><a href="javascript:;" class="sidebtn" id="id_check">????????????</a></li>
							<li class="mq900"><span class="valign noti id_chk"></span></li>
							<li class="cb"><p>4~16?????? ?????????????? ?????? ???????????????.</p></li>
						</ul>
					</td>
				</tr>

				<tr>
					<th scope="row"><span class="dot">????????????</span></th>
					<td>
						<ul class="pta">
							<li class="pr"><input type="password" id="user_pw" name="user_pw" class="w314" /></li>
							<li class="mq900"><span class="valign">??????????????? ???????????????????????????? ?????? 8~12?????? ????????? ????????????.</span></li>
						</ul>
					</td>
				</tr>

				<tr>
					<th scope="row"><span class="dot">???????????? ??????</span></th>
					<td>
						<ul class="pta">
							<li><input type="password" id="user_rpw" name="user_rpw" class="w314" /></li>
						</ul>
					</td>
				</tr>

				<tr>
					<th scope="row"><span class="dot">??????</span></th>
					<td>
						<ul class="pta">
							<li><input type="name" id="user_name" name="user_name" class="w314" /></li>
						</ul>
					</td>
				</tr>

				<tr>
					<th scope="row"><span class="dot">????????????</span></th>
					<td>
						<ul class="pta">
							<li>
								<!--<span class="valign">1993.07.07</span>-->
								<select class="select" name="user_birth_year">
																			<option value="1900" >1900</option>
																			<option value="1901" >1901</option>
																			<option value="1902" >1902</option>
																			<option value="1903" >1903</option>
																			<option value="1904" >1904</option>
																			<option value="1905" >1905</option>
																			<option value="1906" >1906</option>
																			<option value="1907" >1907</option>
																			<option value="1908" >1908</option>
																			<option value="1909" >1909</option>
																			<option value="1910" >1910</option>
																			<option value="1911" >1911</option>
																			<option value="1912" >1912</option>
																			<option value="1913" >1913</option>
																			<option value="1914" >1914</option>
																			<option value="1915" >1915</option>
																			<option value="1916" >1916</option>
																			<option value="1917" >1917</option>
																			<option value="1918" >1918</option>
																			<option value="1919" >1919</option>
																			<option value="1920" >1920</option>
																			<option value="1921" >1921</option>
																			<option value="1922" >1922</option>
																			<option value="1923" >1923</option>
																			<option value="1924" >1924</option>
																			<option value="1925" >1925</option>
																			<option value="1926" >1926</option>
																			<option value="1927" >1927</option>
																			<option value="1928" >1928</option>
																			<option value="1929" >1929</option>
																			<option value="1930" >1930</option>
																			<option value="1931" >1931</option>
																			<option value="1932" >1932</option>
																			<option value="1933" >1933</option>
																			<option value="1934" >1934</option>
																			<option value="1935" >1935</option>
																			<option value="1936" >1936</option>
																			<option value="1937" >1937</option>
																			<option value="1938" >1938</option>
																			<option value="1939" >1939</option>
																			<option value="1940" >1940</option>
																			<option value="1941" >1941</option>
																			<option value="1942" >1942</option>
																			<option value="1943" >1943</option>
																			<option value="1944" >1944</option>
																			<option value="1945" >1945</option>
																			<option value="1946" >1946</option>
																			<option value="1947" >1947</option>
																			<option value="1948" >1948</option>
																			<option value="1949" >1949</option>
																			<option value="1950" >1950</option>
																			<option value="1951" >1951</option>
																			<option value="1952" >1952</option>
																			<option value="1953" >1953</option>
																			<option value="1954" >1954</option>
																			<option value="1955" >1955</option>
																			<option value="1956" >1956</option>
																			<option value="1957" >1957</option>
																			<option value="1958" >1958</option>
																			<option value="1959" >1959</option>
																			<option value="1960" >1960</option>
																			<option value="1961" >1961</option>
																			<option value="1962" >1962</option>
																			<option value="1963" >1963</option>
																			<option value="1964" >1964</option>
																			<option value="1965" >1965</option>
																			<option value="1966" >1966</option>
																			<option value="1967" >1967</option>
																			<option value="1968" >1968</option>
																			<option value="1969" >1969</option>
																			<option value="1970" >1970</option>
																			<option value="1971" >1971</option>
																			<option value="1972" >1972</option>
																			<option value="1973" >1973</option>
																			<option value="1974" >1974</option>
																			<option value="1975" >1975</option>
																			<option value="1976" >1976</option>
																			<option value="1977" >1977</option>
																			<option value="1978" >1978</option>
																			<option value="1979" >1979</option>
																			<option value="1980" >1980</option>
																			<option value="1981" >1981</option>
																			<option value="1982" >1982</option>
																			<option value="1983" >1983</option>
																			<option value="1984" >1984</option>
																			<option value="1985" >1985</option>
																			<option value="1986" >1986</option>
																			<option value="1987" >1987</option>
																			<option value="1988" >1988</option>
																			<option value="1989" >1989</option>
																			<option value="1990" >1990</option>
																			<option value="1991" >1991</option>
																			<option value="1992" >1992</option>
																			<option value="1993" >1993</option>
																			<option value="1994" >1994</option>
																			<option value="1995" >1995</option>
																			<option value="1996" >1996</option>
																			<option value="1997" >1997</option>
																			<option value="1998" >1998</option>
																			<option value="1999" >1999</option>
																			<option value="2000" selected="selected">2000</option>
																			<option value="2001" >2001</option>
																			<option value="2002" >2002</option>
																			<option value="2003" >2003</option>
																			<option value="2004" >2004</option>
																			<option value="2005" >2005</option>
																			<option value="2006" >2006</option>
																			<option value="2007" >2007</option>
																			<option value="2008" >2008</option>
																			<option value="2009" >2009</option>
																			<option value="2010" >2010</option>
																			<option value="2011" >2011</option>
																			<option value="2012" >2012</option>
																			<option value="2013" >2013</option>
																			<option value="2014" >2014</option>
																			<option value="2015" >2015</option>
																			<option value="2016" >2016</option>
																			<option value="2017" >2017</option>
																			<option value="2018" >2018</option>
																			<option value="2019" >2019</option>
																			<option value="2020" >2020</option>
																			<option value="2021" >2021</option>
																		</select>???&nbsp;&nbsp;
								<select class="select" name="user_birth_month">
																			<option value="01" selected="selected">01</option>
																			<option value="02" >02</option>
																			<option value="03" >03</option>
																			<option value="04" >04</option>
																			<option value="05" >05</option>
																			<option value="06" >06</option>
																			<option value="01" >07</option>
																			<option value="08" >08</option>
																			<option value="09" >09</option>
																			<option value="10" >10</option>
																			<option value="11" >11</option>
																			<option value="12" >12</option>
																		</select>???&nbsp;&nbsp;
								<select class="select" name="user_birth_day">
																			<option value="01" selected="selected">01</option>
																			<option value="02" >02</option>
																			<option value="03" >03</option>
																			<option value="04" >04</option>
																			<option value="05" >05</option>
																			<option value="06" >06</option>
																			<option value="01" >07</option>
																			<option value="08" >08</option>
																			<option value="09" >09</option>
																			<option value="10" >10</option>
																			<option value="11" >11</option>
																			<option value="12" >12</option>
																			<option value="13" >13</option>
																			<option value="14" >14</option>
																			<option value="15" >15</option>
																			<option value="16" >16</option>
																			<option value="17" >17</option>
																			<option value="18" >18</option>
																			<option value="19" >19</option>
																			<option value="20" >20</option>
																			<option value="21" >21</option>
																			<option value="22" >22</option>
																			<option value="23" >23</option>
																			<option value="24" >24</option>
																			<option value="25" >25</option>
																			<option value="26" >26</option>
																			<option value="27" >27</option>
																			<option value="28" >28</option>
																			<option value="29" >29</option>
																			<option value="30" >30</option>
																			<option value="31" >31</option>
																		</select>???
							</li>
						</ul>
					</td>
				</tr>

				<tr>
					<th scope="row"><span class="dot">?????????</span></th>
					<td>
						<ul class="pta">
							<li>
								<select class="select" id="user_mobile" name="user_mobile" title="???????????? ??????" onChange="TabNext(this,'up',3,this.form.user_mobile2)">
									<option value="010" selected="selected">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
							</li>
							<li><span class="unit">-</span></li>
							<li><input type="text" id="user_mobile2" name="user_mobile2" class="w118c" maxlength="4" /></li>
							<li><span class="unit">-</span></li>
							<li class="pr mq580 mq380"><input type="text" id="user_mobile3" name="user_mobile3" class="w118c" maxlength="4" /></li>
							<li class="mq900"><span class="valign"><input type="checkbox" id="phoneAgree" name="user_sms" value="Y" checked onclick="checkAll('sms')"/><label for="phoneAgree">?????? ????????? ???????????????.</label></span></li>
						</ul>
					</td>
				</tr>

				<tr>
					<th scope="row"><span class="dot">?????????</span></th>
					<td>
						<ul class="pta">
							<li><input type="text" id="user_email01" name="user_email01" class="w157" /></li>
							<li><span class="unit">@</span></li>
							<li class="pr8 mq580"><input type="text" id="user_email02" name="user_email02" class="w157" /></li>
							<li class="mq800">
								<select class="select" id="email_url" onchange="return $('#user_email02').val(this.value).focus();">
									<option value="#" selected="selected">????????????</option>
									<option value="naver.com">naver.com</option>
									<option value="daum.net">daum.net</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="nate.com">nate.com</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
									<option value="paran.com">paran.com</option>
									<option value="empal.com">empal.com</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="korea.com">korea.com</option>
									<option value="lycos.co.kr">lycos.co.kr</option>
									<option value="dreamwiz.com">dreamwiz.com</option>
									<option value="hanafos.com">hanafos.com</option>
									<option value="chol.com">chol.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="empas.com">empas.com</option>
								</select>
							</li>
							
						</ul>
					</td>
				</tr>

				<tr>
					<th scope="row"><span class="dot">??????</span></th>
					<td>
						<ul class="pta">
							<li><input type="text" class="w230" id="user_zipnew" name="user_zipnew" maxlength="5" required numberOnly onclick="$('.addr').click();"/><a href="/page/post.jsp" class="sidebtn addr">???????????? ??????</a></li>
							<li class="cb pt"><input type="text" class="w341" id="user_addr1" name="user_addr1" required readonly /></li>
							<li class="pt"><input type="text" class="w413" id="user_addr2" name="user_addr2" required placeholder="??????????????? ????????? ?????????." /></li>
						</ul>
					</td>
				</tr>

               
				
			</tbody>
		</table>
	</div>
	</form>

	<div class="btnArea">
		<a href="javascript:checkForm();" class="okbtn"><span>???????????? ??????</span></a>
	</div>





</div>
<!-- //content -->

<script type="text/javascript">
$(function(){
	$(document).on("keyup", "input:text[numberOnly]", function() {$(this).val( $(this).val().replace(/[^0-9]/gi,"") );});
	$(document).on("keyup", "input:text[datetimeOnly]", function() {$(this).val( $(this).val().replace(/[^0-9:\-]/gi,"") );});

});

$(document).ready(function(){
	$('#id_Check').click(function(){
		var $user_id = $('#user_id');
		var re_id = /^[a-z0-9_-]{3,16}$/;
		if( !$user_id.val() || re_id.test($user_id.val()) != true ){
			alert('???????????? ?????? ??? ?????????.');
            $('#user_idCheck').val('N');
			$user_id.val('').focus();
			return ;
		}
		var form_data = {
				user_id: $user_id.val(),
				is_ajax: 1
		};
		$.ajax({
			type: "POST",
			url: "log/HomeController",
			data: form_data,
			success: function(response) {
				if(response == 'success') {
					$(".id_chk").text('?????? ????????? ??????????????????.');
					$('#user_idCheck').val('Y');
				}
				else {
                    $('#user_idCheck').val('N');
					$(".id_chk").text(response);
				}
			}
		});
		return;
	});

	$('#reid_check').click(function(){
		var $user_reid = $('#user_reid');
		var re_id = /^[a-z0-9_-]{3,16}$/;
		if( !$user_reid.val() || re_id.test($user_reid.val()) != true ){
			alert('????????? ???????????? ?????? ??? ?????????.');
            $('#user_reidCheck').val('N');
			$user_reid.val('').focus();
			return ;
		}
		var form_data = {
				user_reid: $user_reid.val(),
				is_ajax: 1
		};
		$.ajax({
			type: "POST",
			url: "https://www.bioderma.co.kr/front/reid_check.php",
			data: form_data,
			success: function(response) {
				if(response == 'success') {
					$(".reid_chk").text('????????? ID??? ?????? ???????????????. (???????????? ?????????(ID)?????? ?????? ??????????????? ???????????????.)');
					$('#user_reidCheck').val('Y');
				}
				else {
                    $('#user_reidCheck').val('N');
					$(".reid_chk").text(response);
				}
			}
		});
		return;
	});


  var winWidth = $(window).width();
  if (winWidth > 800){
    var layerCheck = 540;
  } else if ( 800 > winWidth > 540) {
    var layerCheck = 540;
  } else {
    var layerCheck = 320;
  }

/*
	$(".overBtn").fancybox({
		'autoDimensions': false,
		'showCloseButton': false,
		'width' : 550,
		'padding' : 0,
		'scrolling': 'no',
		'type': 'iframe',
		'onComplete' : function() {
			$('#fancybox-frame').load(function() { // wait for frame to load and then gets it's height
			$('#fancybox-content').height($(this).contents().find('body').height());
			$.fancybox.resize();
			});
		}
	});
*/

	// radio, checkbox design

	$(".addr").fancybox({
		'autoDimensions': false,
		'showCloseButton': false,
    'width': layerCheck,
    'height': 500,
		'padding' : 0,
		'scrolling': 'no',
		'type': 'iframe',
		'onComplete' : function() {
			$('#fancybox-frame').load(function() { // wait for frame to load and then gets it's height
			$('#fancybox-content').height($(this).contents().find('body').height());
			$.fancybox.resize();
			});
		}
	});


});

var checkForm = function(){
	var f = document.joinform;
	var re_id = /^[a-z0-9_-]{3,16}$/;
	//var re_pw = /^[a-z0-9_-]{8,12}$/;
	var re_tel = /^[0-9-]{12,14}$/;
	var re_name = /^[???-???]{2,5}$/;
	var re_email = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

	if( !$('#user_id').val() || re_id.test($('#user_id').val()) != true ){
		alert('???????????? ?????? ??? ?????????.');
		$('#user_id').val('').focus();
		return ;
	}

	if( $('#user_idCheck').val() != 'Y' ){
		alert('????????? ??????????????? ????????? ????????????.');
		return ;
	}

	if( !$('#user_pw').val() || $('#user_pw').val().length < 8 || $('#user_pw').val().length > 12  ){
		alert('??????????????? ?????? ??? ?????????. 8~12?????? ??????????????? ????????????.');
		$('#user_pw').val('').focus();
		return ;
	}
	if( $('#user_pw').val() == $('#user_email01').val() ){
		alert('????????? ???????????? ????????? ??????????????? ???????????? ????????????.');
		$('#user_pw').val('').focus();
		return ;
	}
	if( $('#user_pw').val() != $('#user_rpw').val() ){
		alert('???????????? ??????????????? ???????????? ????????? ???????????? ????????????.');
		$('#user_rpw').val('').focus();
		return ;
	}

	var user_mobile = $("#user_mobile").val() + '-' + $("#user_mobile2").val() + '-' + $("#user_mobile3").val();
	if( !user_mobile || re_tel.test(user_mobile) != true ){
		alert('??????????????? ?????? ??? ?????????. ????????? ?????????????????????.');
		$('#user_mobile').focus();
		return ;
	}

	if( !$('#user_email01').val() || $('#user_email01').val().length < 3 ){
		alert('?????????????????? ?????? ??? ?????????. ????????? ???????????? 2??? ????????????????????? ????????????.');
		$('#user_email01').val('').focus();
		return ;
	}
	if( !$('#user_email02').val() || $('#user_email02').val().length < 5 ){
		alert('?????????????????? ?????? ??? ?????????.');
		$('#user_email02').val('').focus();
		return ;
	}
	var user_email = $("#user_email01").val() + '@' + $("#user_email02").val();
	if(re_email.test(user_email) != true) {
		alert('????????? ????????? ???????????? ????????????.');
		$('#user_email01').val('').focus();
		return ;
	}

	if( !$('#user_zipnew').val() ){
		alert('????????? ????????? ?????????.');
		sample2_execDaumPostcode();
		return ;
	}
	if( !$('#user_addr2').val() ){
		alert('??????????????? ????????? ?????????.');
		$('#user_addr2').focus();
		return ;
	}


	var form_data = $("#joinform").serialize();
	$.ajax({
		type: "POST",
		url: "https://www.bioderma.co.kr/front/join_exe.php",
		data: "is_ajax=1&" + form_data,
		success: function(response) {
			if(response == 'success') {
				location.reload();
			}else if(response == 'token') {
				alert("??????????????? ???????????????.");
				location.reload();
			}else{
				alert(response);
				return ;
			}
		}
	});
}

function checkAll(mode) {
    if (mode=='all') {
        if ($("input:checkbox[name='user_chkall']").prop('checked')==false) {
            $("input:checkbox[name='user_chkall']").siblings('label').removeClass('checked');
            $("input:checkbox[name='user_sms']").prop('checked', false);
            $("input:checkbox[name='user_sms']").siblings('label').removeClass('checked');
            $("input:checkbox[name='user_agree_email']").prop('checked', false);
            $("input:checkbox[name='user_agree_email']").siblings('label').removeClass('checked');
        } else {
            $("input:checkbox[name='user_sms']").prop('checked', true);
            $("input:checkbox[name='user_sms']").siblings('label').addClass('checked');
            $("input:checkbox[name='user_agree_email']").prop('checked', true);
            $("input:checkbox[name='user_agree_email']").siblings('label').addClass('checked');
        }
    }

    if (mode=='sms') {
        if ($("input:checkbox[name='user_sms']").prop('checked')==false) {
            $("input:checkbox[name='user_chkall']").prop('checked', false);
            $("input:checkbox[name='user_chkall']").siblings('label').removeClass('checked');
            $("input:checkbox[name='user_sms']").prop('checked', false);
            $("input:checkbox[name='user_sms']").siblings('label').removeClass('checked');
        } else {
            $("input:checkbox[name='user_sms']").prop('checked', true);
            $("input:checkbox[name='user_sms']").siblings('label').addClass('checked');
        }
    }

    if (mode=='mail') {
        if ($("input:checkbox[name='user_agree_email']").prop('checked')==false) {
            $("input:checkbox[name='user_chkall']").prop('checked', false);
            $("input:checkbox[name='user_chkall']").siblings('label').removeClass('checked');
            $("input:checkbox[name='user_agree_email']").prop('checked', false);
            $("input:checkbox[name='user_agree_email']").siblings('label').removeClass('checked');
        } else {
            $("input:checkbox[name='user_agree_email']").prop('checked', true);
            $("input:checkbox[name='user_agree_email']").siblings('label').addClass('checked');
        }
    }
}
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
						<li><a href="/main/privacy.php" class="guidePopOpen"><span>????????????????????????</span></a></li>
						<li><a href="/main/emailrefusal.php" class="guidePopOpen"><span>???????????????????????????</span></a></li>
						<li><a href="/main/guide.php" class="guidePopOpen"><span>????????????</span></a></li>
						<li><a href="#"><span>????????????</span></a></li>
						<li class="familySite">
							<select name="" id="" class="bdbox" onchange="gotourl(this.value, 'new');"><!-- ????????? ?????? -->
								<option value="/">Airdays</option>
								<option value="http://www.dwbio.co.kr/">(???)?????????????????????</option>
							</select>
						</li>
					</ul>
				</li>
			</ul>
		</div>

		<div id="ftInfo">
			<div class="link"><a href="#">(???)?????????????????????</a><a href="#">????????? : ?????????</a></div>
			<div class="txt">
				<p>?????? : ???????????? ????????? ????????? ????????? ????????????4??? 203 (???)?????????????????????</p>
				<p>???????????? : 032-831-8771  ??<span> </span>   ????????? :??dwiaan@naver.com</p>
				<p>????????????????????? : 214-88-79685??  </p>
				<p>??????????????????????????? : ???2020-????????????-2675???</p>
				
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



//select ??????
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