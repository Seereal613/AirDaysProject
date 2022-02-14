<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문조회</title>
<!-- <link rel="stylesheet" type="text/css" href="/ex/resources/css/order3.css">  -->
<style>
.myPageOrderBox{
	padding:50px;
}
#myPageOrder{
     	margin: auto;
     	width: 1100px;
     	border-collapse:collapse;
     }
     #myPageOrder td,th{
     	height: 50px; 
     	border-bottom:2px solid #E9E9E9;
     	text-align: center;
     }
     #cancleBtn{
     	padding:2px;
     	float:right;
		background: gray;
		color:#fff; 
		border:none;
		border-radius:3px;
		box-shadow: 0 4px 12px rgba(17, 17, 17, 0.3);
     }
     #cancleBtn:focus{
     	outline:0;
     }
     #cancleBtn:hover{
     	background:rgba(17, 17, 17,0.9);
     	cursor:pointer;
     	box-shadow: 0 2px 4px rgba(17, 17, 17,0.6);
     }
</style>

<script>
var result = '${msg}';

if (result == 'success') {
	alert("주문이 취소되었습니다.");
}
</script>
</head>
<body>
<header>
<%@include file="/WEB-INF/views/include/header.jsp"%> 
</header>
<br>
<div class="myPageOrderBox">
	<table id="myPageOrder">
		<tr>
			<th>날짜</th>
			<th>주문번호</th>
			<th style="width: 400px;">주문상품</th>
			<th>개수</th>
			<th>상태</th>
			<th>결제금액</th>
		</tr>
		<c:forEach items="${list }" var="dto">
		<tr>
			<td><fmt:formatDate value="${dto.orderDate}" pattern="yyyy-MM-dd"/></td>
			<td><a href="/ex/order/update?orderNum=${dto.orderNum }">${dto.orderNum }</a></td> 
			<td class="myPageTd">${dto.productName }</td> 
			<td>${dto.productCnt }</td>
			<td>${dto.state }</td>
			<td><fmt:formatNumber value="${dto.payPrice }" pattern="#,###,###" />
				<c:if test="${dto.state=='결제완료' || dto.state=='입금확인중'}">
				<button onclick="location.href='/ex/order/delete?orderNum=${dto.orderNum}'" id="cancleBtn" >주문취소</button>
				</c:if>
			</td>	
		</tr>
		</c:forEach>
	</table>
</div>
	<footer class="footer">
		<%@ include file="../include/footer.jsp"%>
	</footer>	
</body>
</html>