<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> POST </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<meta name="robots" content="index,follow" />
<meta name="language" content="ko" />
<meta property="og:type"            content="website"/>
<meta property="og:image" content="http://" />

<link rel="stylesheet" type="text/css" href="../ex/resource/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../ex/resource/css/layout.css" />
<link rel="stylesheet" type="text/css" href="../ex/resource/css/content.css" />
<link rel="stylesheet" type="text/css" href="../ex/resource/css/jquery.fancybox-1.3.4.css" />
<link rel="shortcut icon" href="../ex/resource/images/ico/favicon.ico">

<script type="text/javascript" src="../ex/resource/js/jquery.min.js"></script>
<script type="text/javascript" src="../ex/resource/js/jquery.fancybox-1.3.4.pack.js"></script>

<!--[if lt IE 9]>

<![endif]-->
</head>
<body>
	
	<style>
/** fancybox **/
.layerWrap {background:#fff;}
.layerWrap:after {content:""; display:block; clear:both;}
.layerWrap.bline {border:5px #ddd solid;}

.layerHead {position:relative; margin:0 18px; padding:33px 0 37px 0;}
.layerHead:after {content:""; display:block; clear:both;}
.layerHead span {font-size:24px; color:#222; font-weight:600;}
.layerHead p.btn {position:absolute; right:-7px; top:28px;}
.layerHead p.btn.type {right:0;}

.layerBody {position:relative; background:#fff; padding:0 20px 20px 20px;}
.layerBody:after {content:""; display:block; clear:both;}
</style>
<div class="layerWrap">
	<div class="layerHead">
		<span>우편번호 찾기</span>
		<p class="btn type"><a onclick="parent.$.fancybox.close();" href="javascript:;"><img src="../ex/resource/images/btn/btn_layer_close.gif" alt="닫기" /></a></p>
	</div>
	<div class="layerBody">
		<div id="layerStatementBody" style="width:100%;margin:0 auto;height:470px;-webkit-overflow-scrolling:touch;"></div>
	</div>
</div>
<!--<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>-->
<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
<script>
	var element_layer = document.getElementById('layerStatementBody');
	function sample2_execDaumPostcode() {
		new daum.Postcode({
			oncomplete: function(data) {
				// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullAddr = data.address; // 최종 주소 변수
				var extraAddr = ''; // 조합형 주소 변수

				// 기본 주소가 도로명 타입일때 조합한다.
				if(data.addressType === 'R'){
					//법정동명이 있을 경우 추가한다.
					if(data.bname !== ''){
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가한다.
					if(data.buildingName !== ''){
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
				}
				// 우편번호와 주소 및 영문주소 정보를 해당 필드에 넣는다.
				                parent.document.getElementById('user_zipnew').value = data.zonecode;
                //parent.document.getElementById('user_zip').value = data.postcode1 + "-" + data.postcode2;
                parent.document.getElementById('user_addr1').value = fullAddr;
                parent.document.getElementById('user_addr2').focus();
								// iframe을 넣은 element를 안보이게 한다.
				parent.$.fancybox.close();
			},
			width : '100%',
			height : '100%'
		}).embed(element_layer);
	}
	window.onload = sample2_execDaumPostcode();
</script>
</body>
</html>
<?php
     echo(2);
?>
