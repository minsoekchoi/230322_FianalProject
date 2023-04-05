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
<title>게시글작성</title>
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
						<h2 id="headline">게시글작성</h2>
						<div id="top_border"></div>
						<input type="text" id="boardlist_write_title"
							placeholder="제목을 입력해 주세요.">
						<textarea id="boardlist_write_content" placeholder="내용을 입력해 주세요."></textarea>
						<button class="btn hover1"
							style="margin-right: 33px; margin-left: 20px; margin-top: 15px;">취소</button>
						<button class="btn hover1" style="margin-top: 15px;">등록</button>

					</div>
				</div>
			</div>
		</section>
		<!-- footer 추가  -->
		<footer></footer>
	</div>
</body>
</html>