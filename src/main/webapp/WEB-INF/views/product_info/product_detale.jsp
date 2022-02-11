<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세 보기</title>
<link rel="stylesheet" type="text/css" href="/ex/resources/css/product_detale.css">
</head>
<%@include file="../include/header.jsp"%>
<body>

<div class="middle" style="height: 600px;" >
    <div class="product_view">
        <h2 class="product_title">${pdto.productName}</h2>
        <table>       
            <colgroup>
            <col style="width: 174px;">
            <col>
            </colgroup>
            <tbody>
                <tr>
                    <td>적립혜택 </td>
                    <td>
                        <p>구매 504원 | 후기</p>
                        <p>우측 '자세히' 참조</p>
                    </td>

                </tr>
                <tr>
                    <td>배송</td>
                    <td>택배 (주문 시 결제)</td>
                </tr>
                <tr>
                    <td>상품 정보</td>
                    <td>우측 '자세히' 참조</td>
                </tr>
                <tr>
                    <td>상품후기</td>
                    <td>176명 ***** 5개</td>

                </tr>
                <tr>
                    <td>브랜드</td>
                    <td>airdays</td>
                </tr>

                <tr colspan="2">
                    <td>상품 옵션</td>
                </tr>

                <tr>
                    <td>구매수량</td>
                    <td><input type="text"></td>
                </tr>
                <tr>
                	<td></td>
                    <td class="total">${pdto.productPrice}원</td>
                </tr>

            </tbody>
        </table>
        <div class="img">
            <img src="../resources/img/${pdto.productImage}" alt="">
            <ul>
                <li><a href="#"></a><img src="../resources/img/${pdto.productImage }"></li>
                <li><a href="#"></a><img src="../resources/img/${pdto.productImage }"></li>
            </ul>
        </div>
        <div class="btns">
            <a href="#a" class="btn1">장바구니</a>
            <a href="#a" class="btn2">구매하기</a>
        </div>
    </div>
</div>


</body>
<%@include file="../include/footer.jsp"%>
</html>
