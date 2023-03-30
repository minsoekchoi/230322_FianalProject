<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/view_origin/css/view_origin.css" rel="stylesheet">
<link href="resources/attribute_list/css/attribute_table.css"
	rel="stylesheet">
<link href="resources/attribute_list/css/radio_buttons.css"
	rel="stylesheet">
<link href="resources/attribute_list/css/searchbox.css" rel="stylesheet">
<link href="resources/attribute_list/css/table_buttons.css"
	rel="stylesheet">
<title>자유게시판</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
</head>
<body>
	<div id="wrap">
		<header>
			<h3 style="text-align: center;">today Time's</h3>
		</header>
		<!-- navigator 추가  -->
		<nav></nav>
		<section>
			<div id="container_list">
				<div id="wrapper_list">
					<div id="wrapper_list_inner">
						<h2 id="headline">자유게시판</h2>
						<div id="container_radio">
							<form id="container_radio_form">
								<label class="radio_label"> <input type="radio"
									name="radio" checked /> <span>전체보기</span>
								</label> <label class="radio_label"> <input type="radio"
									name="radio" /> <span>제목</span>
								</label> <label class="radio_label"> <input type="radio"
									name="radio" /> <span>작성자</span>
								</label> <label class="radio_label"> <input type="radio"
									name="radio" /> <span>작성일</span>
								</label>
							</form>
						</div>
						<div id="container_searchbox">
							<div class="searchbox">
								<input type="text" class="searchtxt" placeholder="search">
								<a class="searchbtn" href="#"> <i class="fas fa-search"></i>
								</a>
							</div>
						</div>
						<%-- <table id="list_table">
						<colgroup>
							<col width="100px" />
							<col width="200px" />
							<col width="200px" />
							<col width="200px" />
							<col width="200px" />
							<col width="120px" />
							<col width="120px" />
						</colgroup>
						<tbody>
							<tr>
								<th>신고번호</th>
								<th>ID(신고받은사람)</th>
								<th>닉네임(신고받은사람)</th>
								<th>신고자</th>
								<th>신고사유</th>
								<th>신고일자</th>
								<th>신고삭제</th>
							</tr>

							<c:choose>
								<c:when test="${empty board_list}">
									<tr>
										<td colspan="7"><h3>원하시는 자료는 존재하지 않습니다.</h3></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="k" items="${board_list}" varStatus="vs">
										<tr>
											<td>${paging.totalRecord - ((paging.nowPage-1)*paging.numPerPage + vs.index)}</td>
											<td style="text-align: left; padding-left: 10px;"><c:forEach
													begin="1" end="${k.step}">&nbsp;[Re]
										</c:forEach> <a href="board_view.do?idx=${k.idx}&cPage=${paging.nowPage}">${k.title}</a>
											</td>
											<td>${k.writer}</td>
											<td>${k.regdate.substring(0,10)}</td>
											<td>${k.hit}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
						<!-- 페이지기법 -->
						<tfoot>
							<tr>
								<td colspan="7">이전 <c:choose>
										<c:when test="${paging.beginBlock > paging.pagePerBlock }">
											<a
												href="board_list.do?cPage=${paging.beginBlock-paging.pagePerBlock}">이전으로</a>
										</c:when>
									</c:choose> <!-- 블록안에 들어간 페이지번호들 --> <c:forEach
										begin="${paging.beginBlock}" end="${paging.endBlock}" step="1"
										var="k">
									현재 페이지는 링크X, 나머지는 해당 페이지로 링크 처리
									<c:if test="${k==paging.nowPage}">
									${k}
								</c:if>
										<c:if test="${k!=paging.nowPage}">
											<a href="board_list.do?cPage=${k}">${k}</a>
										</c:if>
									</c:forEach> <!-- 다음 --> <c:choose>
										<c:when test="${paging.endBlock < paging.totalPage }">
											<a
												href="bbs_list.do?cPage=${paging.beginBlock+paging.pagePerBlock}">다음으로</a>
										</c:when>
									</c:choose>
							</tr>
						</tfoot>
					</table> --%>
						<table class="list_table">
							<colgroup>
								<col width="100px" />
								<col width="590px" />
								<col width="150px" />
								<col width="150px" />
								<col width="150px" />
							</colgroup>
							<tbody>
								<tr>
									<th>글종류</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>조회수</th>
								</tr>

								<tr class="KOTRA-fontsize-80">
									<td>공지</td>
									<td>3월 신고 내역 처리 결과</td>
									<td>관리자</td>
									<td>2023.03.27</td>
									<td>155</td>
								</tr>
								<tr class="KOTRA-fontsize-80">
									<td>공지</td>
									<td>3월의 이벤트</td>
									<td>관리자</td>
									<td>2023.03.27</td>
									<td>250</td>
								</tr>
								<tr class="KOTRA-fontsize-80">
									<td>게시글</td>
									<td>클라이밍 장소 추천 받아요</td>
									<td>홀드왕</td>
									<td>2023.03.22</td>
									<td>4</td>
								</tr>
								<tr class="KOTRA-fontsize-80">
									<td>게시글</td>
									<td>클라이밍 장소 추천 받아요</td>
									<td>홀드왕</td>
									<td>2023.03.22</td>
									<td>4</td>
								</tr>
								<tr class="KOTRA-fontsize-80">
									<td>게시글</td>
									<td>클라이밍 장소 추천 받아요</td>
									<td>홀드왕</td>
									<td>2023.03.22</td>
									<td>4</td>
								</tr>
								<tr class="KOTRA-fontsize-80">
									<td>게시글</td>
									<td>클라이밍 장소 추천 받아요</td>
									<td>홀드왕</td>
									<td>2023.03.22</td>
									<td>4</td>
								</tr>
								<tr class="KOTRA-fontsize-80">
									<td>게시글</td>
									<td>클라이밍 장소 추천 받아요</td>
									<td>홀드왕</td>
									<td>2023.03.22</td>
									<td>4</td>
								</tr>
								<tr class="KOTRA-fontsize-80">
									<td>게시글</td>
									<td>클라이밍 장소 추천 받아요</td>
									<td>홀드왕</td>
									<td>2023.03.22</td>
									<td>4</td>
								</tr>
								<tr class="KOTRA-fontsize-80">
									<td>게시글</td>
									<td>클라이밍 장소 추천 받아요</td>
									<td>홀드왕</td>
									<td>2023.03.22</td>
									<td>4</td>
								</tr>
								<tr class="KOTRA-fontsize-80">
									<td>게시글</td>
									<td>클라이밍 장소 추천 받아요</td>
									<td>홀드왕</td>
									<td>2023.03.22</td>
									<td>4</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="5">< 1 2 3 4 5 ></td>
								</tr>
								<tr>
									<td colspan="5"
										style="background-color: #F8F8F8; border-bottom: 1px solid #F8F8F8;">
										<button class="btn hover1">게시글작성</button>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</section>
		<!-- footer 추가  -->
		<footer></footer>
	</div>
</body>
</html>