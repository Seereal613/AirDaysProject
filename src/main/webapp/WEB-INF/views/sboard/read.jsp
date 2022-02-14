<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<%@include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="/ex/resources/css/faqread.css?ver=1" />
<style>
#modDiv {
	width: 400px;
	height: 150px;
	background-color: gray;
	position: fixed;
	top: 20%;
	left: 50%;
	margin-top: -50px;
	margin-left: -150px;
	padding: 10px;
	z-index: 1000;
}
</style>

<script>
	var titleNum = "${boardDTO.titleNum}";
	var page = 1;

	$(document).ready(function() {

		getPageList(page);

		$("#replyModBtn").on("click", function() {
			var rno = $(".modal-title").html();
			var replytext = $("#replytext").val();
			$.ajax({
				type : 'put',
				url : '/ex/replies/' + rno,
				headers : {
					"Content-Type" : "application/json"
				},
				data : JSON.stringify({
					replytext : replytext
				}),
				dataType : 'text',
				success : function(result) {
					if (result == 'SUCCESS') {
						alert("수정되었습니다 ");
						$("#modDiv").hide("slow");
						getPageList(page);
					}
				}
			})
		})

		$("#replies").on("click", '.replyDelBtn', function() {
			var rno = $(".modal-title").html();
			$.ajax({
				type : 'delete',
				url : '/ex/replies/' + rno,
				headers : {
					"Content-Type" : "application/json"
				},
				dataType : 'text',
				success : function(result) {
					if (result == 'SUCCESS') {
						alert("삭제되었습니다 ");
						/* $("#modDiv").hide("slow"); */
						getPageList(page);
					}
				}
			});
		});

		$("#closeBtn").on("click", function() {
			$("#modDiv").hide("slow");
		})
		$("#replies").on("click", ".replyLi button", function() {
			var rno = $(this).parent().attr("data-rno");
			var replytext = $(this).parent().text();
			$(".modal-title").html(rno);
			$("#replytext").val(replytext);
			$("#modDiv").show("slow");
		})
		var fObject = $(".form");
		$(".pagination").on("click", "a", function(event) {
			event.preventDefault();
			page = $(this).attr("href");
			getPageList(page);
		})

		$(".btn_resp_list").on("click", function() {

			fObject.attr("method", "get");
			fObject.attr("action", "/ex/sboard/list");
			fObject.submit();

		})
		$(".btnRemove").on("click", function() {
			fObject.attr("action", "/ex/sboard/remove");
			fObject.submit();
		})
		$(".btn_resp_modify").on("click", function() {
			fObject.attr("method", "get");
			fObject.attr("action", "/ex/sboard/modify");
			fObject.submit();
		})

		$("#replyAddBtn").on("click", function() {
			var replyer = $("#newReplyeWriter").val();
			var replytext = $("#newReplyText").val();

			$.ajax({
				type : "post",
				url : '/ex/replies',
				headers : {
					"Content-Type" : "application/json"
				},
				dataType : 'text',
				data : JSON.stringify({
					titleNum : titleNum, //앞에는 필드명 bno:bno 뒤에는 선언한 변수명
					replyer : replyer,
					replytext : replytext
				}),
				success : function(result) {
					if (result == 'SUCCESS') {
						alert("등록 되었습니다.");
						//화면에 찍는 작업
						getPageList(page);
					}
				}
			})
		})
	});

	function getPageList(page) {
		var str = "";

		$.getJSON("/ex/replies/" + titleNum + "/" + page,function(data) {
			console.log(data);
			$(data.list).each(function() {
				str += "<tr><td data-rno='"+this.rno+"' class='replyLi'><h2>"+ this.replyer
														+ "</h2></br><h3>"
														+ this.replytext
														+ "</h3></br><button id = 'replyDel'class='replyDelBtn'>삭제</button></br></td></tr>"
											})
							$("#replies").html(str);
							str = "";
							/* console.log(data.pageMaker)
							console.log(data)
							alert(data.pageMaker.prev) */
							if (data.pageMaker.prev) {
								str += "<a href='"
										+ (data.pageMaker.startPage - 1)
										+ "'>  << </a>";
							}

							for (var i = data.pageMaker.startPage; i < data.pageMaker.endPage; i++) {
								var strClass = data.pageMaker.page == i ? 'class=active'
										: '';
								str += "<a "+strClass+" href='"+i+"'>" + i
										+ "</a>";
							}
							if (data.pageMaker.next) {
								str += "<a href='"
										+ (data.pageMaker.endPage + 1)
										+ "'>  << </a>";
							}

							$(".pagination").html(str);
						})
	}
</script>
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
		</div>
		<div class="subpage_container">
			<div class="title_container">
				<h2>상품문의</h2>
			</div>
			<div id="bbsview">
				<div class="form">
					<form class="form" method="post">
						<input type='hidden' name='titleNum' value="${boardDTO.titleNum}">
						<input type='hidden' name='page' value="${pageMaker.page}">
						<input type='hidden' name='perPageNum'
							value="${pageMaker.perPageNum}"> <input type='hidden'
							name='searchType' value="${pageMaker.searchType}"> <input
							type='hidden' name='keyword' value="${pageMaker.keyword}">
					</form>
					<div class="board_detail_title">${boardDTO.faqTitle}</div>
					<table class="table_row_a Thc" data-responsive="yes" width="100%"
						cellpadding="0" cellspacing="0">
						<colgroup>
							<col class="size_b">
							<col>
							<col class="size_b">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>
									<p designelement="text" textindex="1">분류</p>
								</th>
								<td>"[${boardDTO.questionType}]"</td>
								<th>
									<p designelement="text" textindex="1">작성자</p>
								</th>
								<td>${boardDTO.userID}</td>
							</tr>
							<tr>
								<th>
									<p designelement="text" textindex="1">등록일</p>
								</th>
								<td>${boardDTO.inquiryDate}</td>
							</tr>
						</tbody>
					</table>
					<div class="board_detail_contents">
						${boardDTO.faqContent} <br> <br>
					</div>
					<div class="board_sns_link">
						<span class="snsbox hand"> &nbsp;</span> <span class="snsbox hand"></span>
						&nbsp; <span class="snsbox hand"></span> &nbsp;
					</div>
					<div class="board_comment_area" id="comment_container">
						<div class="cmt_division v2">
							<div class="content title_area">
								<span class="title" designelement="text" textindex="1">답변</span>
								<string class="num pointcolor">${reply.DTO.rno}</string>
								&nbsp; <input type="button" name="board_comment_btn"
									id="board_comment_btn_261" seq="261" value="답변 등록하기▼"
									class="board_comment_btn btn_resp size_b isopen"
									onclick="openCloseToc()">
							</div>
						</div>
						<div id="cwrite">
							<div id="cmt_insert_261" class="cmt_insert_hide">
								<script>
									function openCloseToc() {
										var element = document
												.getElementById('board_comment_btn_261');
										if (document
												.getElementById('cmt_insert_261').style.display === 'block') {
											document
													.getElementById('cmt_insert_261').style.display = 'none';
											element.value = "답변 등록하기▼"
										} else {
											document
													.getElementById('cmt_insert_261').style.display = 'block';
											element.value = "답변 닫기▲"
										}
									}
								</script>

								<table class="cmt_box" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="its-td"><input type="hidden" name="name"
												id="cmtname" class="requiredline" size="20" value="">
												<h2>
													<input type="text" value="사용자아이디" readonly="readonly"
														class="required line" id="newReplyeWriter">
												</h2></td>
										</tr>
										<tr>
											<td class="its-td"><textarea name="replytext"
													id="newReplyText" class="size1 requiredline">
                                        </textarea></td>
										</tr>
										<td class="its-td">
											<button type="button" id="replyAddBtn" class="replyAdd">답변등록</button>
										</td>
									</tbody>
								</table>
							</div>
						</div>
						<div class="cmt_division v3">
							<table class="cmt_tbl" cellpadding="0" border="0" width="100%">

								<tbody>
									<div id="replies"></div>
									<tr>
										<td class="cmt_area cmt_contents" style="font-weight: normal;">
											<div
												style="left: 0; word-wrap: break-word; word-break: break-all;">
												<span board_weq="13" board_id="goods_qna">${replyDTO.replyContent}</span>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

						<!-- 		<div id='modDiv' style="display: none;">
						
							<div>
								<input type='text' id='replytext'>
							</div>
							<div>
								<button type="button" id="replyModBtn">수정</button>
								<button type="button" id="replyDelBtn">삭제</button>
								<button type="button" id='closeBtn'>관리자옵션 닫기</button>
							</div>
						</div> -->
						<div class='modal-title' style='display: none'></div>

						<div class='pagination'></div>
					</div>
					<div id="prenextlist" class="board_prev_next_list">
						<ul>
							<!-- <li><span class="pnl_desc">다음글</span> <span
								class="pnl_title"> <span
									class="hand highlight-link boad_view_btn_mbno sbj"> <a>다음글
											태그</a>
								</span>
							</span></li>
							<li><span class="pnl_desc">이전글</span> <span
								class="pnl_title"> <span
									class="hand highlight-link boad_view_btn_mbno sbj"> <a>이전글
											태그</a>
								</span>
							</span></li> -->
						</ul>
					</div>
					<ul class="board_detail_btns">
						<li class="left">
							<!-- <a href="list" class="btn_resp size_b color5">
								<span designelement="text" textindex="8">목록</span>
							</a> -->
							<button type="submit" id="btn_list" class="btn_resp_list"><span>목록</span></button>
						</li>
						<li class="right"><a href="write" class="btn_resp size_b color2"style="padding-top: 10px;"><span>상품문의쓰기</span></a> <!-- 	<a href="modify" class="btn_resp size_b color2">
								<span designelement="text" textindex="12">수정</span>
							</a> -->
						<button type="submit" id="btn_modify" class="btn_resp_modify"><span>수정</span></button></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>