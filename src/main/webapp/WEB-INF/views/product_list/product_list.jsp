<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 리스트</title>
<link rel="stylesheet" type="text/css"
	href="/ex/resources/css/product_list_Css.css">
</head>
<body>


	<div id="warp">
		<div id="product_lsit">
			<div class="category_title">
				<h2 class="title">전체상품</h2>
			</div>

			<div class="goods_list"> 
				<ul>
					<c:forEach items="${list}" var="ProductDTO">
						<li>
							<div class="product-box">
								<a href="/ex/product_info/product_detale"> <img
									src="../resources/img/${ProductDTO.productImage}">
								</a>
								<ul class="item_info_area">
									<li><span class="brand_name"> &#91; airdays &#93; </span>
										<a href="#">${ProductDTO.productName}</a></li>
									<li class="num">${ProductDTO.productPrice}원</li>
									<li style="visibility: hidden;">${ProductDTO.productCnt}</li>
									<li style="visibility: hidden;">${ProductDTO.productNum}</li>
								</ul>
							</div>
						</li>
					</c:forEach>

				</ul>
			</div>


		</div>
		<!-- product_lsit -->


	</div>
	<!--warp-->


</body>
</html>
<%@include file="../include/footer.jsp"%>