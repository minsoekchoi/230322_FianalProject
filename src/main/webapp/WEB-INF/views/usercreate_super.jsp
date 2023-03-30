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
<link href="resources/attribute_list/css/table_buttons.css"
	rel="stylesheet">
<title>사용자 생성</title>
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
						<h2 id="headline">사용자 생성</h2>
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
						<table class="list_table" style="margin-top: 50px;">
							<colgroup>
								<col width="90px" />
								<col width="210px" />
								<col width="210px" />
								<col width="210px" />
								<col width="210px" />
								<col width="210px" />
							</colgroup>
							<tbody>
								<tr>
									<th>회원번호</th>
									<th>ID</th>
									<th>이름</th>
									<th>닉네임</th>
									<th>생년월일</th>
									<th>성별</th>
								</tr>

								<tr class="KOTRA-fontsize-80">
									<td>자동부여</td>
									<td><input type="text" style="height: 20px"></td>
									<td><input type="text" style="height: 20px"></td>
									<td><input type="text" style="height: 20px"></td>
									<td><input type="text" style="height: 20px"></td>
									<td><select style="width: 180px; height: 25px"><option
												value="">--선택하세요--</option>
											<option>남</option>
											<option>여</option></select></td>
								</tr>
							</tbody>
						</table>
						<button class="btn hover1"
							style="margin-right: 33px; margin-left: 20px; margin-top: 15px;">취소</button>
						<button class="btn hover1" style="margin-top: 15px;">사용자생성</button>
					</div>
				</div>
			</div>
		</section>
		<!-- footer 추가  -->
		<footer></footer>
	</div>
</body>
</html>