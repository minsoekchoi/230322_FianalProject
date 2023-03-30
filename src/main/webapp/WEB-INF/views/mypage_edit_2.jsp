<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.5/gsap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="resources/mypage/js/mypage.js"></script>
<link href="resources/view_origin/css/view_origin.css" rel="stylesheet">
<link href="resources/attribute_list/css/attribute_table.css"
	rel="stylesheet">
<link href="resources/attribute_list/css/table_buttons.css"
	rel="stylesheet">
<link href="resources/mypage/css/mypage.css" rel="stylesheet" />
<link href="resources/mypage/css/font.css" rel="stylesheet">
<link href="resources/mypage/css/photo.css" rel="stylesheet" />
<link href="resources/mypage/css/progressbar.css" rel="stylesheet">
<title>내프로필수정창</title>
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
						<h2 id="headline" style="margin-bottom: 50px;">내프로필수정창</h2>
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
								<div id="picturebutton">
									<input type="button" value="사진수정" id="pictureedit" /> <input
										type="button" value="사진삭제" id="picturedelete" />
								</div>
								<div id="badge">BADGES</div>
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
										<a> <span class="text">수정완료</span> <span
											class="line -right"></span> <span class="line -top"></span> <span
											class="line -left"></span> <span class="line -bottom"></span>
										</a>
									</div>
									<div class="portfolio-experiment"
										style="margin-left: 10px; margin-right: 20px;">
										<a> <span class="text">닫기</span> <span class="line -right"></span>
											<span class="line -top"></span> <span class="line -left"></span>
											<span class="line -bottom"></span>
										</a>
									</div>
									<!-- <input type="button" value="회원정보수정" id="informationedit" /> -->
									<!-- <input type="button" value="비밀번호변경" id="passwordedit" /> -->
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- footer 추가  -->
		<footer></footer>
	</div>
</body>
</html>