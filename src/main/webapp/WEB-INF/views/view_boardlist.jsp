<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/view_origin/css/view_origin.css" rel="stylesheet">
<link href="resources/boardlist_write/css/boardlist_write.css"
	rel="stylesheet">
<link href="resources/attribute_list/css/table_buttons.css"
	rel="stylesheet">
<link href="resources/attribute_list/css/attribute_table.css"
	rel="stylesheet">
<link href="resources/boardlist_write/css/boardlist_write.css"
	rel="stylesheet">
<link href="resources/view_boardlist/css/view_boardlist.css"
	rel="stylesheet">
<title>게시글보기</title>
</head>
<body>
	<div id="wrap">
		<header>
			<h3 style="text-align: center;">today Time's</h3>
		</header>
		<!-- navigator 추가  -->
		<nav></nav>
		<section id="section_view_boardlist">
			<div id="container_list_view_boardlist">
				<div id="wrapper_list_view_boardlist">
					<div id="wrapper_list_inner_view_boardlist">
						<h2 id="headline">[자유글]&nbsp3월의 이벤트</h2>
						<div id="top_border"></div>
						<table id="view_boardlist_category">
							<colgroup>
								<col width="98px;" />
								<col width="278px;" />
								<col width="98px;" />
								<col width="278px;" />
								<col width="98px;" />
								<col width="278px;" />
							</colgroup>
							<tbody>
								<tr>
									<td
										style="border-right: 2px solid rgb(233, 233, 233); user-select: none;">작성자</td>
									<td
										style="border-right: 2px solid rgb(233, 233, 233); user-select: none;">클라이밍좋아요</td>
									<td
										style="border-right: 2px solid rgb(233, 233, 233); user-select: none;">작성일</td>
									<td
										style="border-right: 2px solid rgb(233, 233, 233); user-select: none;">2022.03.28</td>
									<td
										style="border-right: 2px solid rgb(233, 233, 233); user-select: none;">조회수</td>
									<td style="user-select: none;">200</td>
								</tr>
							</tbody>
						</table>
						<input type="text" id="view_boardlist_content">
						<div id="bottom_border"></div>
						<input type="text" id="view_boardlist_comment" placeholder="댓글창1">
						<input type="text" id="view_boardlist_comment" placeholder="댓글창2">
						<input type="text" id="view_boardlist_comment" placeholder="댓글창3">
						<input type="text" id="view_boardlist_comment" placeholder="댓글창4">
						<input type="text" id="view_boardlist_comment" placeholder="댓글창5">
						<input type="text" id="view_boardlist_comment" placeholder="댓글창6">
						<div id="view_boardlist_buttonbox"
							style="width: 1200px; height: 150px; background-color: #F8F8F8; margin: 0 auto;">
							<button class="btn hover1"
								style="margin-right: 33px; margin-left: 20px; margin-top: 15px;">뒤로</button>
							<button class="btn hover1" style="margin-top: 15px;">댓글작성</button>
						</div>
						<div
							style="width: 100vw; height: 370px; background-color: #F8F8F8;"></div>
						<div id="footer_view_boardlist"></div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>