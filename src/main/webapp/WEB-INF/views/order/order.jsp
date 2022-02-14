<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문</title>
<link rel="stylesheet"  href="/ex/resources/css/order.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>

  $(document).ready(function(){
      $(".reciveModify").click(function(){
		alert("버튼을 눌렀습니다.");
       });
      $("#Newrecive").click(function(){
      	$('#addressee').val('');
    		$('#address').val('');
    		$('#tel').val('');
      });

//무통장 입금이면 state 입급확인중으로 됨
  	  $("#payMeansInfo").change(function() {
  		var payMeans=$("#payMeansInfo option:selected").val();
      		if(payMeans=='무통장입금'){
      			$("input[type=hidden][name=state]").val("입금확인중");
      		}			
  		});
   });
       	
    	
   
</script>


</head>
<body>
<header>
		<%@include file="/WEB-INF/views/include/header.jsp"%> 
</header>
	<br>
<form action="/ex/order/order" method="post">
	<div id="orderContent">
		<h2>주문/결제</h2><br><br><br><br><br>
		<div id="order_info">
			<div id="orderProductInfo">
				<table id="orderProductInfoTable">
					<tr >
        				<td colspan="2" style="width: 700px;" id="padding10">배송: 택배(선불) 2,500원
        				<button type="button" id="btn" class="reciveModify">배송 변경</button></td>
        			</tr>
					<c:forEach items="${list }" var="orderdto">
						<c:set var="sum" value="${orderdto.productPrice * orderdto.productCnt}"></c:set>
						<c:set var="sum2" value="${sum2 + sum}"></c:set>
						<c:set var="sum3" value="${sum2+2500 }"></c:set>
					<tr>
						<td class="productImage" style="width: 140px;" id="padding30">
	        				<img src="/ex/resources/img/${orderdto.productImage }"  style="width: 100px; height:100px;">
	        			</td>
						<td id="orderProduct">
							<p class="font_bold">${orderdto.productName }</p><input type="hidden" name="productName" value="${orderdto.productName }"><br>
							<br>
							Price-<fmt:formatNumber value="${orderdto.productPrice}" pattern="#,###,###" />
							x ${orderdto.productCnt}<input type="hidden" name="productCnt" value="${orderdto.productCnt }"><br>
							<fmt:formatNumber value="${sum}" type="currency" />
						</td>
					</tr>
					<c:set var="userID" value="${orderdto.userID }"/>
					<c:set var="username" value="${orderdto.userName }"/>
					<c:set var="address" value="${orderdto.address }"/>
					<c:set var="tel" value="${orderdto.tel }"/>
					</c:forEach>
				</table>
				<div id="recipientInfo">
					<table>
                        <%-- <tr>
                            <td>받는 사람</td>
                            <td><input type="text" name="username" value="${orderdto.userName }"><input type="button" value="주문자와 동일" id="reciveUserInfo"></td>
                        </tr>
                        <tr>
                            <td>주소 </td>
                            <td><input type="text" name="address" value="${orderdto.address }" class="addressBox" style="width:500px;"></td>
                        </tr>
                        <tr>
                            <td>전화번호</td>
                            <td><input type="text" name="tel" value="${orderdto.tel }" class="adressBox" style="width:500px;"></td>
                        </tr> --%>
                        <tr>
                            <td class="recipientTd1">받는 사람</td>
                            <td><input type="text" name="addressee" value="${username }" id="addressee"><input type="button" value=" 새로운 배송지 정보 입력 " id="Newrecive"></td>
                        </tr>
                        <tr>
                            <td class="recipientTd1">주소 </td>
                            <td><input type="text" name="address" value="${address }" id="address" class="addressBox" style="width:500px;"></td>
                        </tr>
                        <tr>
                            <td class="recipientTd1">전화번호</td>
                            <td><input type="text" name="tel" value="${tel }" id="tel" class="addressBox" style="width:500px;"></td>
                        </tr>
                    </table>
				</div>	
			</div>
			<div id="payment">
				<h3 id="paymentTitle">결제금액</h3>
                <table>
                    <tr>
                        <td style="width: 90px;">상품금액</td>
                        <td class="paymentTd2" ><fmt:formatNumber value="${sum2}" type="currency" /></td>
                    </tr>
                    <tr>
                        <td>배송비</td>
                        <td class="paymentTd2" ><fmt:formatNumber value="2500" type="currency" /></td>
                    </tr>
                    <tr>
                        <td>최종금액</td>
                        <td class="paymentTd2" ><fmt:formatNumber value="${sum3}" type="currency" /><input type="hidden" name="payPrice" value="${sum3}"></td>
                    </tr>
                </table>
                <br>
                
                <div id="pay">
                   	<span>결제 수단</span> 
                    <select name="payMeans" id="payMeansInfo">
                        <option value="신용카드">신용카드</option>
                        <option value="무통장입금">무통장입금</option>
                        <option value="네이버페이">네이버페이</option>
                    </select>
                </div>
                

                <br> <br>
                <input type="hidden" name="userID" value="${userID}">
                <input type="hidden" name="state" value="결제완료" id="stateInfo">
                <input type="submit" value="결제하기" id="payBtn">
			</div>
		</div>

	</div>
</form> 
	
<br><br>
<footer class="footer">
		<%@ include file="../include/footer.jsp"%>
</footer>	
</body>
</html>
