<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<link rel="stylesheet" type="text/css" href="/ex/resources/css/FAQ.css" />
<link rel="stylesheet" type="text/css" href="/ex/resources/css/faqread.css" />
<%@include file="../include/header.jsp"%>
<script>
$(document).ready(function() {
	var fObject=$(".form");
	$(".btnCancel").on("click",function(){
		fObject.attr("method","get");
		fObject.attr("action","/ex/sboard/list");
		fObject.submit();
	})			
	$(".data_save_btn").on("click",function(){
		fObject.attr("method","post");
		fObject.attr("action","/ex/sboard/modify");
		fObject.submit();
	})
});
function goPage() { location.href="/ex/sboard/list"; }
</script>

<div class="subpage_container">
	<div class="layout_body">
		<div class="subpage_wrap">
			<div class="subpage_lnb">
				<div id="boardLnbCommon" class="boardLnbCommon">
					<h2 class="title1">
						<a href="#">CS CENTER</a>
					</h2>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="faqtop">자주 하는 질문</a></li>
						<li><a href="list">상품 문의</a></li>
						<li><a href="#">상품 후기</a></li>
					</ul>
				</div>
				<scrpit href="/css/layout.js"></scrpit>
			</div>

			<div class="subpage_container">
				<div class="title_container">
					<h2>상품 문의</h2>
				</div>
				<!-- /.box-header -->
				<!-- action에 경로가 없으면 현재 페이지 주소로 이동한다.-->
				<div id="bbsview">
					<form class="form" method="post">


						<input type='hidden' name='titleNum' value="${boardDTO.titleNum}">
						<input type='hidden' name='page' value="${pageMaker.page}">
						<input type='hidden' name='perPageNum'
							value="${pageMaker.perPageNum}"> <input type='hidden'
							name='searchType' value="${pageMaker.searchType}"> <input
							type='hidden' name='keyword' value="${pageMaker.keyword}">

						<form role="form" method="post">
							<div class="table_top_line1"></div>
							<table id="boradDetailTable " class="table_row_a v2 Thc"
								width="100%" cellpadding="0" cellspacing="0">
								<colgroup>
									<col class="size_b">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th>
											<p>분류</p>
										</th>
										<td><select name="questionType">
												<option value selected="selected">- 분류 선택</option>
												<option value="불량품문의">불량품문의</option>
												<option value="상품문의">상품문의</option>
												<option value="재고문의">재고문의</option>
												<option value="기타문의">기타문의</option>
										</select></td>
									</tr>
									<tr>
										<th>
											<p>작성자</p>
										</th>
										<td><input type="text" name="userID" style="width: 100%"
											value="${boardDTO.userID}" readonly="readonly"></td>
									</tr>
									<tr>
										<th>
											<p>제목</p>
										</th>
										<td><input type="text" name='faqTitle'
											style="width: 100%" value="${boardDTO.faqTitle}"></td>
									</tr>

								</tbody>
							</table>
							<textarea name="faqContent" rows="8" class="size3">${boardDTO.faqContent}</textarea>
						</form>
						<!-- /.box-body -->
						<div class="board_detail_btns2">
							<button type="submit"
								class="data_save_btn btn_resp size_c color2">
								<span designelement="text" textindex="11">확인</span>
							</button>
							<button type="button" class="btn_resp size_c"
								onclick="goPage()">
								<span designelement="text" textindex="12">취소</span>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>


