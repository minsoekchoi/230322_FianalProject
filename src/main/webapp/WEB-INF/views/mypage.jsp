<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/gsap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="resources/mypage/js/mypage.js"></script>
<link href="resources/mypage/css/mypage.css" rel="stylesheet" />
<link href="resources/mypage/css/photo.css" rel="stylesheet" />
<link href="resources/mypage/css/mymain.css" rel="stylesheet">
<link href="resources/mypage/css/font.css" rel="stylesheet">
<link href="resources/mypage/css/progressbar.css" rel="stylesheet">
<title>MyPage</title>
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
		<div class="container_mypage">
			<div class="wrapper">
				<h2
					style="font-size: 30px; color: white; margin: 0 auto; margin-top: 25px;">마이페이지</h2>
				<!-- 바깥쪽 div를 relative를 주고 안쪽 div를 absolute를 준다음 top %로 위치를 조정할수 있다.  -->
				<div id="wrapper_inner">
					<div id="pictureandbadgeandflower">
						<div class="wrapper_picture">
							<div class="item_picture">
								<div class="polaroid">
									<img id="mypicture"
										src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/dXAhQuT.jpg">
									<div class="caption">By Joshua Sortino</div>
								</div>
							</div>
						</div>
						<div id="badge">BADGES</div>
						<!-- <div id="picturebutton">
							<input type="button" value="사진수정" id="pictureedit" /> <input
								type="button" value="사진삭제" id="picturedelete" />
						</div> -->
						<div id="flowerandflowerbutton">
							<div id="flower">FLOWER</div>
							<!-- <div id="flowerbutton">
								<input type="button" value="물주기" id="watering" />
							</div> -->
						</div>
					</div>
					<div>
						<div id="memberinformation_header"></div>
						<div>
							<table id="membertable">
								<tr>
									<td class="mypage_information">이름</td>
									<td class="mypage_information_text">주성재</td>
								</tr>
								<tr>
									<td class="mypage_information">닉네임</td>
									<td class="mypage_information_text">프론트대장님</td>
								</tr>
								<tr>
									<td class="mypage_information">아이디(이메일)</td>
									<td class="mypage_information_text">jut343@naver.com</td>
								</tr>
								<tr>
									<td class="mypage_information">성별</td>
									<td class="mypage_information_text">남</td>
								</tr>
								<tr>
									<td class="mypage_information">생년월일</td>
									<td class="mypage_information_text">1997.07.12</td>
								</tr>
								<tr>
									<td class="mypage_information">가입일</td>
									<td class="mypage_information_text">2023.03.21</td>
								</tr>
								<tr>
									<td class="mypage_information">지역</td>
									<td class="mypage_information_text">마포구</td>
								</tr>
								<tr>
									<td class="mypage_information">매너점수</td>
									<td>
										<div class="container_progressbar">
											<div class="progress-bar__container">
												<div class="progress-bar">
													<span class="progress-bar__text">100점!</span>
												</div>
											</div>
										</div> <!-- <input type="text" name="manner" style="width: 250px; height: 20px;" /> -->
									</td>
									<script src="resources/mypage/js/progressbar.js"></script>
									
								</tr>
							</table>
						</div>
						<div id="memberbutton">
							<div class="portfolio-experiment">
								<a> <span class="text">회원정보수정</span> <span
									class="line -right"></span> <span class="line -top"></span> <span
									class="line -left"></span> <span class="line -bottom"></span>
								</a>
							</div>
							<div class="portfolio-experiment" style="margin-left: 10px;">
								<a> <span class="text">비밀번호변경</span> <span
									class="line -right"></span> <span class="line -top"></span> <span
									class="line -left"></span> <span class="line -bottom"></span>
								</a>
							</div>
							<!-- <input type="button" value="회원정보수정" id="informationedit" /> -->
							<!-- <input type="button" value="비밀번호변경" id="passwordedit" /> -->
						</div>
					</div>

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