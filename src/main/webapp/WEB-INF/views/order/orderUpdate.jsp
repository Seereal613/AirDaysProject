<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문상세</title>
<link rel="stylesheet" type="text/css" href="/ex/resources/css/orderUpdate.css">

</head>

<body>
<header>
		<%@include file="/WEB-INF/views/include/header.jsp"%> 
</header>
	<br>
<div id="orderContent">
	<h2>주문 상세 내역</h2>
		<form action="/ex/update" method="post">
	<div id="order_info">
		<div id="orderProductInfo">
			<table id="orderProductInfoTable">
				<tr id="trPadding">
        				<td colspan="2" style="width: 700px;">상품정보</td>
        				<td style="width: 100px;">주문번호</td>
        				<td style="width: 100px;">주문수량</td>
        				<td style="width: 100px;">주문금액</td>
        			</tr>
						<c:forEach items="${list }" var="dto">
						<c:set var="sum" value="${dto.productPrice * dto.productCnt}"></c:set>
					<tr>
						<td class="productImage" style="width: 100px;" id="padding30">
	        				<img src="/ex/resources/img/${dto.productImage }"  style="width: 90px; height:90px;">
	        			</td>
	        			<td>${dto.productName }</td>
	        			<td>${dto.orderNum}</td>
	        			<td>${dto.productCnt}</td>
	        			<td>${dto.productPrice}</td>
					</tr>
					<c:set var="addressee" value="${dto.addressee }"/>
					<c:set var="address" value="${dto.address }"/>
					<c:set var="tel" value="${dto.tel }"/>
					<c:set var="payPrice" value="${dto.payPrice }"/>
					<c:set var="payMeans" value="${dto.payMeans }"/>
					<c:set var="orderDate" value="${dto.orderDate }"/>
					<input type="hidden" name="orderNum" value="${dto.orderNum }">
				</c:forEach>
			</table>
		</div>
		<div class="flexBox">
			<div id="recipientInfo">
				<p class="font_bold">배송지 정보</p>
                    <table>
                        <tr>
                            <td class="recipientTd1">받는 사람</td>
                            <td><input type="text" name="addressee" value="${addressee}"><input type="submit" value=" 배송지 변경 " id="reciveUserInfo"></td>
                        </tr>
                        <tr>
                            <td class="recipientTd1">주소 </td>
                            <td><input type="text" name="address" value="${address }" class="addressBox" style="width:500px;"></td>
                        </tr>
                        <tr>
                            <td class="recipientTd1">전화번호</td>
                            <td><input type="text" name="tel" value="${tel }" class="addressBox" style="width:500px;"></td>
                        </tr>
                    </table>
			</div>
			<div id="payment">
				<p class="font_bold">결제정보</p>
                    <table>
                        <tr>
                            <td style="width: 90px;">결제금액</td>
                            <td class="paymentTd2">&nbsp;<fmt:formatNumber value="${payPrice}" type="currency" /></td>
                        </tr>
                        <tr>
                            <td>결제수단</td>
                            <td class="paymentTd2">&nbsp;${payMeans }</td>
                        </tr>
                        <tr>
                            <td>결제일</td>
                            <td class="paymentTd2">&nbsp;<fmt:formatDate value="${orderDate }" pattern="yyyy-MM-dd HH:ss"/></td>
                        </tr>
                        <c:if test="${payMeans=='무통장입금'}">
                            <tr>
                                <td>입금계좌</td>
                                <td class="paymentTd2">&nbsp;한국은행&nbsp; 1005703121773</td>
                            </tr>
                        </c:if>
                    </table>
			</div>
		</div>
	</div>
		</form>
</div>	
	<footer>
		<%@ include file="../include/footer.jsp"%>
	</footer>	
</body>
</html>