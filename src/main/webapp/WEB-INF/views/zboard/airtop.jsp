<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/post2.css"/>
    <script type="text/javascript" src="/ex/resources/js/tl.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script type="text/javascript">
	    $(document).ready(function(){
	    	basket.reCalc();
	    	basket.updateUI();			
	    });
    </script>
   
</head>

<body>
<header>
	 <%@include file="../include/header.jsp"%>  
</header>
    <div class="container"></div>
    
    <form name="orderform" id="orderform" method="post" class="orderform"  >
    
        <input type="hidden" name="cmd" value="order">
       
        <div class="basketdiv" id="basket">
            <div class="row head">
                <div class="subdiv">
                    <div class="check">선택</div>
                    <div class="img">이미지</div>
                    <div class="pname">상품명</div>
                </div>
                <div class="subdiv">
                    <div class="basketprice">가격</div>
                    <div class="num">수량</div>
                    <div class="sum">합계</div>
                </div>
                <div class="subdiv">

                    <div class="basketcmd">삭제</div>
                </div>
                <div class="split"></div>
            </div>
    	<c:forEach items="${list}" var="dto">
            <div class="row data">
                <div class="subdiv">
                    <div class="check"><input type="checkbox" name="buy" value="${dto.wishlistNum}" checked="checked" onclick="javascript:basket.checkItem();">&nbsp;</div>
                    <div class="img">
                    	<c:if test="${dto.productSize eq 'S'}">
						  	<img src="/ex/resources/img/${dto.productImage}" width="120">
						</c:if>
						<c:if test="${dto.productSize eq 'M'}">
						  	<img src="/ex/resources/img/${dto.productImage}" width="120">
						</c:if>
						<c:if test="${dto.productSize eq 'L'}">
						  	<img src="/ex/resources/img/${dto.productImage}" width="120">
						</c:if>
                    </div>
                    <div class="pname">
                        <span>${dto.productName}</span>
                    </div>
                </div>
                <div class="subdiv">
                    <div class="basketprice"><input type="hidden" name="p_price" id="p_price${dto.wishlistNum}" class="p_price" value="${dto.productPrice}">${dto.productPrice}원</div>
                    <div class="num">
                        <div class="updown">
                        	<span onclick="javascript:basket.changePNum(${dto.wishlistNum});"><i class="fas fa-arrow-alt-circle-up up"></i></span>
                            	<input type="text" name="p_num${dto.wishlistNum}" id="p_num${dto.wishlistNum}" size="3" maxlength="4" class="p_num" value="${dto.productCnt}" onkeyup="javascript:basket.changePNum('${dto.wishlistNum}');">
                            <span onclick="javascript:basket.changePNum(${dto.wishlistNum});"><i class="fas fa-arrow-alt-circle-down down"></i></span>
                        </div>
                    </div>
                    <div class="sum">${dto.productPrice*dto.productCnt}원</div>
                    
                    
                </div>
                <div class="subdiv">
                    <div class="basketcmd"><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem();">삭제</a></div>
                </div>
            </div>
       </c:forEach>
    	</div>
      
		
		   	    <div class="right-align basketrowcmd">
		       		<a href="#" class="abutton" onclick="basket.delCheckedItem();">선택상품삭제</a>
					<a href="#" class="abutton" onclick="basket.delAllItem();">장바구니비우기</a>
		        </div>
		
	
        <div class="bigtext right-align sumcount" id="sum_p_num${dto.productCnt}">상품갯수: 4개</div>
        <div class="bigtext right-align box blue summoney" id="sum_p_price${dto.productPrice}">합계금액: 100,000원</div>

        <div id="goorder" class="">
            <div class="clear"></div>
            <div class="buttongroup center-align cmd">
                <a href="/ex/order/order" value="goOrder()">선택한 상품 주문</a>
            </div>
        </div>
         
     
    </form>
     <div class="resp_wrap">
      <div class="container2", class="resp">
             <div class="menu2">
                 <ul class="title">
                     <li><a href="#"><h4>INFORMATION</h4></a></li>
                      <li><a href="#">이용약관</a></li>
                      <li><a href="#">개인정보처리방침</a></li>
                      <li><a href="#">공지사항</a></li>
                      <li><a href="#">제휴안내</a></li>
                      <li><a href="#">사랑의 마스크 배송</a></li>
                  </ul>
              </div>
        </div>
   </div>
     
          <%@include file="../include/footer.jsp"%> 
  
</body>
</html>