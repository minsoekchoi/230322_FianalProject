<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- link  -->
<link href="resources/css/homepage.css" rel="stylesheet">
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-solid-rounded/css/uicons-solid-rounded.css'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	crossorigin="anonymous">
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-regular-straight/css/uicons-regular-straight.css'>
<link rel='stylesheet'
	href='https://cdn-uicons.flaticon.com/uicons-thin-straight/css/uicons-thin-straight.css'>

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link href="resources/homepage/css/homepage.css" rel="stylesheet">
<!--  -->
<link href="resources/view_origin/css/view_origin.css" rel="stylesheet">
<link href="resources/attribute_list/css/attribute_table.css"
	rel="stylesheet">
<link href="resources/attribute_list/css/radio_buttons.css"
	rel="stylesheet">
<link href="resources/attribute_list/css/searchbox.css" rel="stylesheet">
<link href="resources/attribute_list/css/table_buttons.css"
	rel="stylesheet">
<title>방관리리스트</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
</head>
<body>
	<div id="wrap">
		<!-- 헤더 네비 -->
		<header>
			<h3 style="text-align: center;">room making</h3>
		</header>
		<nav>
			<input type="checkbox" class="openSidebarMenu" id="openSidebarMenu">
			<label for="openSidebarMenu" class="sidebarIconToggle">
				<div class="spinner diagonal part-1"></div>
				<div class="spinner horizontal"></div>
				<div class="spinner diagonal part-2"></div>
			</label>
			<div id="sidebarMenu">
				<ul class="sidebarMenuInner">
					<li style="font-size: 15px;"><a href="#"><i>&emsp;홈</i></a></li>
					<li style="font-size: 15px;"><a href="#"><i>&emsp;로그인&로그아웃</i></a></li>
					<li style="font-size: 15px;"><a href="#"><i>&emsp;회원관리리스트</i></a></li>
					<li style="font-size: 15px;"><a href="#"><i>&emsp;방관리리스트</i></a></li>
					<li style="font-size: 15px;"><a href="#"><i>&emsp;신고내역관리리스트</i></a></li>
					<li style="font-size: 15px;"><a href="#"><i>&emsp;탈퇴회원관리리스트</i></a></li>
					<li style="font-size: 15px;"><a href="#"><i>&emsp;공지사항</i></a></li>
				</ul>
			</div>
			<div class="option">
				<div class="dropdown1">
					<button onclick="dp_menu1()" class="button1">
						<i class="material-icons dp48">notifications</i>
					</button>
					<spacer></spacer>
					<span class="num-count">2</span>
					<div style="display: none;" id="drop-content1">
						<div class="notification-icon right"></div>
						<div class="profile1"></div>
						<div style="float: right;">
							<div class="notification-container1">
								<input class="checkbox" type="checkbox" id="size_1"
									value="small" checked /> <label class="notification new"
									for="size_1"><em>1</em> new <a href="">guest
										account(s)</a> have been created.<i
									class="material-icons dp48 right">clear</i></label> <input
									class="checkbox" type="checkbox" id="size_2" value="small"
									checked /> <label class="notification new" for="size_2"><em>2</em>
									new <a href="">lead(s)</a> are available in the system.<i
									class="material-icons dp48 right">clear</i></label> <input
									class="checkbox" type="checkbox" id="size_4" value="small"
									checked /> <label class="notification" for="size_4"><em>3</em>
									new <a href="">calendar event(s)</a> are scheduled for today.<i
									class="material-icons dp48 right">clear</i></label> <input
									class="checkbox" type="checkbox" id="size_5" value="small"
									checked /> <label class="notification" for="size_5"><em>4</em>
									blog post <a href="">comment(s)</a> need approval.<i
									class="material-icons dp48 right">clear</i></label>
							</div>
						</div>
					</div>
				</div>
				<div class="dropdown">
					<button onclick="dp_menu()" class="button">
						<i class="fi fi-rr-user" style="font-size: 20px;"></i>
					</button>
					<spacer></spacer>
					<div style="display: none;" id="drop-content">
						<div class="profile"></div>
						<div class="notification-container">
							<input class="checkbox1" type="checkbox" id="size_1"
								value="small" checked /> <label class="notification new1"
								for="size_1"><a href="" style="color: white;">마이페이지</a></label>
							<input class="checkbox1" type="checkbox" id="size_1"
								value="small" checked /> <label class="notification new1"
								for="size_1"><a href="" style="color: white;">신청내역</a></label> <input
								class="checkbox1" type="checkbox" id="size_1" value="small"
								checked /> <label class="notification new1" for="size_1"><a
								href="" style="color: white;">개설방내역</a></label> <input class="checkbox1"
								type="checkbox" id="size_1" value="small" checked /> <label
								class="notification new1" for="size_1"><a href=""
								style="color: white;">로그아웃</a></label>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<ul class="breadcrumb">
					<li class="br"><a href="#">&emsp;&emsp;홈</a></li>
					<li class="br"><a href="#">로그인</a></li>
					<li class="br"><a href="#">메뉴</a></li>
					<li class="br active">현재페이지</li>
				</ul>
			</div>
		</nav>
		<script>
			function dp_menu() {
				let click = document.getElementById("drop-content");
				if (click.style.display === "none") {
					click.style.display = "block";
					return false
				} else {
					click.style.display = "none";
				}
			}
			function dp_menu1() {
				let click = document.getElementById("drop-content1");
				if (click.style.display === "none") {
					click.style.display = "block";
				} else {
					click.style.display = "none";
				}
			}
		</script>
		<section>
			<div id="container_list">
				<div id="wrapper_list">
					<div id="wrapper_list_inner">
						<h2 id="headline">방관리리스트</h2>
						<div id="container_radio">
							<form id="container_radio_form">
								<label class="radio_label"> <input type="radio"
									name="radio" checked /> <span>전체보기</span>
								</label> <label class="radio_label"> <input type="radio"
									name="radio" /> <span>카테고리</span>
								</label> <label class="radio_label"> <input type="radio"
									name="radio" /> <span>모임명</span>
								</label> <label class="radio_label"> <input type="radio"
									name="radio" /> <span>개설자</span>
								</label> <label class="radio_label"> <input type="radio"
									name="radio" /> <span>개설일</span>
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
						<table class="list_table">
							<colgroup>
								<col width="100px" />
								<col width="150px" />
								<col width="440px" />
								<col width="150px" />
								<col width="150px" />
								<col width="150px" />
							</colgroup>
							<tbody>
								<tr>
									<th>방번호</th>
									<th>카테고리</th>
									<th>모임명</th>
									<th>개설자</th>
									<th>개설일</th>
									<th>삭제</th>
								</tr>
								<c:choose>
									<c:when test="${empty boardlist_room}">
										<tr>
											<td colspan="6"><h2>자료가 존재하지 않습니다.</h2></td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="k" items="${boardlist_room}" varStatus="vs">
											<tr>
												<td>${k.room_idx}</td>
												<td>${k.category_type}</td>
												<td>${k.room_title}</td>
												<td>${k.u_nickname}</td>
												<td>${k.write_datetime}</td>
												<td><a class="gradient-btn">모임방삭제</a></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
							<!-- 페이징기법 -->
							<tfoot>
								<tr>
									<td colspan="6">
										<ol class="paging">
											<!-- 이전 -->
											<c:choose>
												<c:when test="${paging.beginBlock <= paging.pagePerBlock}">
													<li class="disable">이전으로</li>
												</c:when>
												<c:otherwise>
													<li><a
														href="boardlist_room.do?cPage=${paging.beginBlock - paging.pagePerBlock}">이전으로</a></li>
												</c:otherwise>
											</c:choose>
											<!-- 블록안에 들어간 페이지번호들 -->
											<c:forEach begin="${paging.beginBlock}"
												end="${paging.endBlock}" step="1" var="k">
												<!-- 현재 페이지와 아닌 페이지 구분 -->
												<c:choose>
													<c:when test="${k == paging.nowPage}">
														<!-- 현재페이지는 색깔만  -->
														<li class="now">${k}</li>
													</c:when>
													<c:otherwise>
														<!-- 다른 페이지는 링크까지 -->
														<li><a href="boardlist_room.do?cPage=${k}">${k}</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<!-- 다음 -->
											<c:choose>
												<c:when test="${paging.endBlock >= paging.totalPage}">
													<li class="disable">다음으로</li>
												</c:when>
												<c:otherwise>
													<li><a
														href="boardlist_room.do?cPage=${paging.beginBlock + paging.pagePerBlock}">다음으로</a></li>
												</c:otherwise>
											</c:choose>
										</ol>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</section>
		<!-- footer 추가  -->
		<!-- footer 추가  -->
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="footer-col">
						<div class="social-links" style="text-indent: 95px;">
							<p>친절한 고객센터 1688-4757
							<p>월요일-금요일10:00-17:00</p>
							<p>[주말/공휴일휴무]고객상담을 위한 연락처로 마케팅 제안은 정중히 사양합니다</p>
						</div>
					</div>
					<div class="footer-col1">
						<h2>Social Media</h2>
						<ul class="social-icons">
							<li><a
								href="https://www.facebook.com/profile.php?id=100091363184815"
								class="social-square"><i class="fab  fa-facebook-f fa-1x"></i></a></li>
							<li><a
								href="https://www.youtube.com/channel/UCd_IGM4iCm0IUjsozb_xO8w"
								class="social-square"><i class="fab  fa-youtube fa"></i></a></li>
							<li><a href="https://www.instagram.com/neulddyaeng.o/"
								class="social-square"><i class="fab  fa-instagram fa"></i></a></li>
							<li><a href="https://blog.naver.com/tjdwosk3"
								class="social-square"><i class="fa-brands fa-line fa"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>