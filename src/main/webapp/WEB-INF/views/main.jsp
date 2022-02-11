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


<link rel="stylesheet" type="text/css" href="/ex/resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="/ex/resources/css/main.css" />
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

<%@include file="include/header.jsp"%>

<!-- content -->

<div>
	<img class="slide1" style="width:1520px;" src="/ex/resources/images/main/images_1.jpg" >
	<img class="slide1" style="width:1520px;" src="/ex/resources/images/main/images_2.jpg" >
	<img class="slide1" style="width:1520px;" src="/ex/resources/images/main/images_3.jpg" >
	<img class="slide1" style="width:1520px;" src="/ex/resources/images/main/images_4.jpg" >
	<img class="slide1" style="width:1520px;" src="/ex/resources/images/main/images_5.jpg" >
  </div>
  <div style="position: absolute;">
	<div id="top_main">
		<div class="container">
			<img src="/ex/resources/images/main/images_6.png" style="width:1520px;">
		
		  	</div>
	</div>
	

<!-- //content -->

<script type="text/javascript">

var checkForm = function() {
	var re_pw = /^[a-z0-9_-]{6,18}$/;
	var re_id = /^[a-z0-9_-]{3,30}$/;
	var re_email = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

	if(re_id.test($("#user_id").val()) != true && re_email.test($("#user_id").val()) != true) {
		alert('아이디가 유효하지 않습니다');
		$('#user_id').val('').focus();
		return false;
	}
	if( !$('#user_pw').val() ){
		alert('비밀번호를 입력 해 주세요\n6자이상 18자이하로 입력하시기 바랍니다.');
		$('#user_pw').val('').focus();
		return false;
	}
	var string = $("#loginform").serialize();
  /*
  try {
    _PL('http://motex1mm.com/front/login?user_id='+$("#user_id").val());
  } catch (e) {}
  */
	$.ajax({
		type: "POST",
		url: "https://www.bioderma.co.kr/front/login_exe2.php",
		data: "is_ajax=1&" + string,
		success: function(response) {
			if(response == 'success') {
				if( 'https://www.bioderma.co.kr/front' != '/front/login.php') location.href = 'https://www.bioderma.co.kr/front';
				else location.replace('https://www.bioderma.co.kr/front');
			}
			else if(response == '3mover'){
        // layer popup
        var layerWidth = function(){
          var winWidth = Math.max( $(window).width(), window.innerWidth);
          if (winWidth > 702) { var layerCheck = 702;
          } else if (winWidth < 703 && winWidth > 540) { var layerCheck = 540;
          } else { var layerCheck = 280; }

          // fancy box
          $.fancybox({
            'autoDimensions': false,
            'showCloseButton': false,
            'width': layerCheck,
            'padding': 0,
            'scrolling': 'no',
            'type': 'iframe',
            'href':'/front/change_pw_pop.php',
            'onComplete': function () {
              $('#fancybox-frame').load(function () { // wait for frame to load and then gets it's height
                $('#fancybox-content').height($(this).contents().find('body').height());
                $.fancybox.resize();
              });
            }
          });
        }; layerWidth();

        $(window).resize(function(){ layerWidth(); });
			}
			else if(response == 'token'){
				alert("비정상적인 접근입니다.");
				location.reload();
			}
			else {
				alert(response);
				$("#user_pw").val('');
				return;
			}
		}
	});
	return;
}

var checkForm2 = function() {

	if(!$("#order_num").val()) {
		alert('주문번호를 입력하세요.');
		$('#order_num').val('').focus();
		return false;
	}
	if(!$("#order_hp").val()) {
		alert('주문자시 작성한 휴대폰 번호를 입력하세요.');
		$('#order_hp').val('').focus();
		return false;
	}
	var string = $("#orderform").serialize();
	$.ajax({
		type: "POST",
		url: "https://www.bioderma.co.kr/front/order_login_exe.php",
		data: "is_ajax=1&" + string,
		success: function(response) {
			if(response == 'success') {
				location.replace('https://www.bioderma.co.kr/front/nomember_order.php');
			}
			else if(response == 'token'){
				alert("비정상적인 접근입니다.");
				location.reload();
			}
			else {
				alert(response);
				$("#order_name,#order_num").val('');
				return;
			}
		}
	});
	return;
}

//document.onkeypress = function(){
//	if(event.keyCode == 13) checkForm();
//}

//-->
</script>

<!-- Naver oAuth Start -->
<div id="naverIdLogin" style="display:none"></div>
<script type="text/javascript" src="https://static.nid.naver.com/ex/resources/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
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
<script src="//developers.kakao.com/sdk/ex/resources/js/kakao.min.js"></script>
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

<%@include file="include/footer.jsp"%>




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
</div>
</body>
</html>