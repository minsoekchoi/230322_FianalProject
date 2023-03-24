<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<link href="resources/view_report/css/view_report.css" rel="stylesheet">
<link href="resources/view_report/css/mymain.css" rel="stylesheet">
<link href="resources/view_report/css/view_report_table.css"
	rel="stylesheet">
<title>신고내용</title>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-solid-rounded/css/uicons-solid-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-thin-straight/css/uicons-thin-straight.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<header>
		<input type="checkbox" class="openSidebarMenu" id="openSidebarMenu">
		<label for="openSidebarMenu" class="sidebarIconToggle">
			<div class="spinner diagonal part-1"></div>
			<div class="spinner horizontal"></div>
			<div class="spinner diagonal part-2"></div>
		</label>
		<div id="sidebarMenu">
			<ul class="sidebarMenuInner">
				<li><a href="#"><i class="fi fi-sr-home">홈</i></a></li>
				<li><a href="#"><i class="fi fi-rr-user">로그인</i></a></li>
				<li><a href="#"><i class="fi fi-rr-basketball">농구</i></a></li>
				<li><a href="#"><i class="fi fi-rr-baby">클라이밍</i></a></li>
				<li><a href="#"><i class="fi fi-rs-bowling">볼링</i></a></li>
				<li><a href="#"><i class="fi fi-ts-racquet">배드민턴</i></a></li>
				<li><a href="#"><i class="fi fi-rs-house-flood">방만들기</i></a></li>
				<li><a href="#"><i class="fi fi-rr-thumbtack">신고하기</i></a></li>
				<li><a href="#"><i class="fi fi-rr-comment-sms">자유게시판</i></a></li>
			</ul>
		</div>
		<h3 style="text-align: center;">오늘 땡</h3>
		<div class="option">
			<img src="" class="fa-solid fa-bell"
				style="background-color: rgba(255, 255, 255, 0.2); border-radius: 50%; width: 50px; text-align: center;">
			<img src="" class="fa-solid fa-user"
				style="background-color: rgba(255, 255, 255, 0.2); border-radius: 50%; width: 50px; text-align: center;">
		</div>
	</header>
	<section>
		<div id="container_view_report">
			<div id="wrapper_view_report">
				<div id="wrapper_view_report_inner">
					<h2 id="headline">신고내용</h2>
					<table class="view_report_table">
						<tbody>
						<colgroup>
							<col width="200px" />
							<col width="370px" />
							<col width="200px" />
							<col width="370px" />
						</colgroup>
						<tr>
							<td class="view_report_category">신고자</td>
							<td>신고자이름삽입</td>
							<td class="view_report_category">가해자</td>
							<td class="view_report_right">가해자이름삽입</td>
						</tr>
						<tr>
							<!-- 두 td만 간격을 위해 border-bottom 따로 줌  -->
							<td class="view_report_category"
								style="border-bottom: 1px solid rgb(36, 61, 91);">모임명</td>
							<td>모임명삽입</td>
							<td class="view_report_category"
								style="border-bottom: 1px solid rgb(36, 61, 91);">모임일시</td>
							<td class="view_report_right">모임일시삽입</td>
						</tr>
					</table>
					<table class="view_report_table">
						<colgroup>
							<col width="200px" />
							<col width="134px" />
							<col width="134px" />
							<col width="134px" />
							<col width="134px" />
							<col width="134px" />
							<col width="134px" />
							<col width="136px" />
						</colgroup>
						<tr>
							<!-- 간격을 위해 border-top 따로 줌  -->
							<td class="view_report_category" rowspan="2"
								style="border-top: 1px solid black;">신고내용</td>
							<td class="view_report_category_checkbox_top"
								style="border-left: 1px solid black;">부정적태도</td>
							<td class="view_report_category_checkbox_top">의도적반칙</td>
							<td class="view_report_category_checkbox_top">욕설</td>
							<td class="view_report_category_checkbox_top">불쾌행위</td>
							<td class="view_report_category_checkbox_top">탈주</td>
							<td class="view_report_category_checkbox_top">혐오발언</td>
							<td class="view_report_category_checkbox_top">의도적불참</td>
						</tr>
						<tr>
							<td class="view_report_category_checkbox_bottom"><input
								id="check_box" type="checkbox"></td>
							<td class="view_report_category_checkbox_bottom"><input
								id="check_box" type="checkbox"></td>
							<td class="view_report_category_checkbox_bottom"><input
								id="check_box" type="checkbox"></td>
							<td class="view_report_category_checkbox_bottom"><input
								id="check_box" type="checkbox"></td>
							<td class="view_report_category_checkbox_bottom"><input
								id="check_box" type="checkbox"></td>
							<td class="view_report_category_checkbox_bottom"><input
								id="check_box" type="checkbox"></td>
							<td class="view_report_category_checkbox_bottom"><input
								id="check_box" type="checkbox"></td>
						</tr>
						<tr>
							<td class="view_report_category">신고내용</td>
							<th id="view_report_report_content" colspan="7">스크롤효과구현완료</th>
						</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="8"><button class="btn hover1">뒤로</button></td>
							</tr>
						</tfoot>

					</table>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col">
					<div class="social-links">
						<span>친절한 고객센터</span><br> <span>1688-4757</span><br> <span>월요일-금요일10:00-17:00</span><br>
						<span>[주말/공휴일휴무]</span><br> <span>고객상담을 위한 연락처로 마케팅
							제안은 정중히 사양합니다</span>
					</div>
				</div>
				<div class="footer-col">
					<h2>Social Media</h2>
					<div class="social-links">
						<a href="https://www.facebook.com/"> <i
							class="fab  fa-facebook-f fa-2x"></i></a> <a
							href="https://www.youtube.com/"> <i
							class="fab  fa-youtube fa-2x"></i></a> <a
							href="https://www.instagram.com/"> <i
							class="fab  fa-instagram fa-2x"></i></a> <a
							href="https://www.naver.com/"> <i
							class="fa-brands fa-line fa-2x"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>