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
<link href="resources/attribute_list/css/table_buttons.css"
	rel="stylesheet">
<title>사용자 생성</title>
<script type="text/javascript">
	function usercreate_super_exit(f) {
		f.action = "userlist_super.do"
	}

	function usercreate_super_ok(f) {
		if (confirm("사용자를 생성하시겠습니까?")) {
			f.action = "usercreate_super_ok.do"
			alert("사용자가 생성되었습니다.");
		} else {
			return;
		}
	}
</script>
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
					<li style="font-size: 15px;"><a href="userlist_super.do"><i>&emsp;사용자관리<br>&emsp;리스트
						</i></a></li>
					<li style="font-size: 15px;"><a href="usercreate_super.do"><i>&emsp;사용자생성</i></a></li>
					<li style="font-size: 15px;"><a href="adminlist_super.do"><i>&emsp;관리자관리<br>&emsp;리스트
						</i></a></li>
					<li style="font-size: 15px;"><a href="admincreate_super.do"><i>&emsp;관리자생성</i></a></li>
					<li style="font-size: 15px;"><a href="admin_login.do"><i>&emsp;로그아웃</i></a></li>
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
			<form method="post" style="margin: 0 auto;">
				<div id="container_list">
					<div id="wrapper_list">
						<div id="wrapper_list_inner">
							<h2 id="headline">사용자 생성</h2>
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
										<td><input type="text" style="height: 20px" id="user_id"
											name="user_id"></td>
										<td><input type="text" style="height: 20px"
											name="user_name"></td>
										<td><input type="text" style="height: 20px"
											name="user_nickname"></td>
										<td><input type="text" style="height: 20px"
											name="user_birthday"></td>
										<td><select name="gender_select"
											style="width: 180px; height: 25px">
												<option value="">--선택하세요--</option>
												<option value="male">남</option>
												<option value="female">여</option>
										</select></td>
									</tr>
								</tbody>
							</table>
							<button class="btn hover1"
								onclick="usercreate_super_exit(this.form)"
								style="margin-right: 33px; margin-left: 20px; margin-top: 15px;">취소</button>
							<button class="btn hover1"
								onclick="usercreate_super_ok(this.form)"
								style="margin-top: 15px;">사용자생성</button>

						</div>
					</div>
				</div>
			</form>
		</section>
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
						<h2 style="margin-top: 22px">Social Media</h2>
						<ul class="social-icons" style="margin-top: -3px;">
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