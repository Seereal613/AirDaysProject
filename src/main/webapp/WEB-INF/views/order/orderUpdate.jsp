<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="jquery-3.3.1.js"></script>
<style>
#orderContent {
	position: relative;
	top: 17px;
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	/* background: skyblue; */
}

@media ( min-width : 1200px) {
	#orderContent {
		max-width: 1140px;
	}
}

h2 {
	text-align: left;
	margin: 30px;
}

#order_info {
	display: flex;
	flex-direction: row;
	flex: 4;
}

#orderProductInfo {
	width: 700px;
	margin-bottom: 10px;
}

#orderProductInfo>table {
	padding: 10px;
	display: block;
}

#orderProductInfoTable td {
	border-bottom: 1px solid #ececec;
	/* background: #fafafa; */
}

#padding10 {
	padding: 10px;
}

#padding30 {
	padding-left: 30px;
}

#btn {
	float: right;
	margin-right: 5px;
}

.productImage {
	padding: 5px;
}

#orderProduct {
	padding-left: 150px;
}

.font_bold {
	font-weight: bold;
	font-size: 14px;
}

#recipientInfo {
	display: block;
	margin: 15px;
}

#payment {
	flex: 1;
	height: 300px;
	margin-top: 10px;
	margin-left: 50px;
	padding-left: 10px;
	padding-top: 10px;
	border: 1.5px solid #E9E9E9;
	border-collapse: collapse;
}

#payment>table {
	margin: 30px;
}

#payment td {
	height: 50px;
	border-bottom: 3px dotted #E9E9E9;
}

.paymentTd2 {
	text-align: right;
	margin-right: 10px
}

#paymentTitle {
	text-align: center;
	margin: 15px;
}

#pay {
	margin-left: 30px;
}

table {
	border-collapse: collapse;
}

input {
	height: 30px;
	margin-bottom: 3px;
	margin-left: 10px;
}

.adressBox {
	width: 400px;
}

select {
	height: 30px;
	font-size: 15px;
}

#payBtn {
	width: 300px;
	height: 35px;
	/* border: hidden; */
	border: none;
	background-color: rgb(75, 74, 74);
	color: aliceblue;
	font-weight: bold;
	font-size: 16px;
	border-radius: 10px;
	margin-bottom: 20px;
	margin-left: 30px;
}

#payBtn:hover {
	background: black;
	cursor: pointer;
}

#equalsBtn {
	/* height: 35px; */
	margin-left: 20px;
	/* border: hidden; */
	font-size: 15px;
}

#sum {
	text-align: center;
	margin-left: 200px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	$(document).ready(function() {
		$(".reciveUserInfo").click(function() {
			alert("버튼을 눌렀습니다.");
		});
	});
</script>

<title>select</title>
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
						<tr>
							<td colspan="2" style="width: 700px;" id="padding10"></td>
						</tr>
						<c:forEach items="${list }" var="dto">
							<c:set var="sum" value="${dto.productPrice * dto.productCnt}"></c:set>
							<tr>
								<td class="productImage" style="width: 100px;" id="padding30">
									<img src="${dto.productImage }"
									style="width: 90px; height: 90px;">
								</td>
								<td id="orderProduct">
									<p class="font_bold">${dto.productName }</p> <br> <br>
									<fmt:formatNumber value="${dto.productPrice}"
										pattern="#,###,###" /> x ${dto.productCnt}<input
									type="hidden" name="productCnt" value="${dto.productCnt }">
									<b id="sum"><fmt:formatNumber value="${sum}"
											type="currency" /></b>
								</td>
							</tr>

						</c:forEach>
					</table>
					<div id="recipientInfo">
						<input type="hidden" name="orderNum" value="${dto.orderNum }">
						<table>
							<tr>
								<td>받는 사람</td>
								<td><input type="text" name="addressee"
									value="${dto.addressee}"><input type="submit"
									value="배송지 변경 " id="reciveUserInfo"></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><input type="text" name="address"
									value="${dto.address }" class="adressBox" style="width: 500px;"></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><input type="text" name="tel" value="${dto.tel }"
									class="adressBox" style="width: 500px;"></td>
							</tr>
						</table>
					</div>

				</div>
				<br> <br>


				<div id="payment">
					<h3 id="paymentTitle">결제정보</h3>
					<table>
						<tr>
							<td style="width: 90px;">결제금액</td>
							<td class="paymentTd2" style="width: 200px;">&nbsp;<fmt:formatNumber
									value="${dto.payPrice}" type="currency" /></td>
						</tr>
						<tr>
							<td>결제수단</td>
							<td class="paymentTd2" style="width: 200px;">&nbsp;${dto.payMeans }</td>
						</tr>
						<tr>
							<td>결제일</td>
							<td class="paymentTd2" style="width: 200px;">&nbsp;<fmt:formatDate
									value="${dto.orderDate }" pattern="yyyy-MM-dd HH:ss" /></td>
						</tr>
					</table>
					<br>



				</div>
			</div>

		</form>
	</div>
	<footer>
		<%-- <%@ include file="/footer.jsp"%> --%>
	</footer>
</body>
</html>