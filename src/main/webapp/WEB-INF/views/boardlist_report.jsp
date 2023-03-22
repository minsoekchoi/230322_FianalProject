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
<link href="resources/boardlist_report/css/boardlist_report.css"
	rel="stylesheet">
<link href="resources/boardlist_report/css/mymain.css" rel="stylesheet">
<link href="resources/boardlist_report/css/radio_buttons.css"
	rel="stylesheet">
<link href="resources/boardlist_report/css/searchbox.css"
	rel="stylesheet">
<link href="resources/boardlist_report/css/table_buttons.css"
	rel="stylesheet">
<title>신고내역리스트</title>
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
		<div id="container_list">
			<div id="wrapper_list">
				<div id="wrapper_list_inner">
					<h2 id="headline">신고내역리스트</h2>
					<div id="container_radio">
						<form id="container_radio_form">
							<label class="radio_label"> <input type="radio"
								name="radio" checked /> <span>전체보기</span>
							</label> <label class="radio_label"> <input type="radio"
								name="radio" /> <span>신고번호</span>
							</label> <label class="radio_label"> <input type="radio"
								name="radio" /> <span>ID</span>
							</label> <label class="radio_label"> <input type="radio"
								name="radio" /> <span>가해자닉네임</span>
							</label> <label class="radio_label"> <input type="radio"
								name="radio" /> <span>신고자닉네임</span>
							</label> <label class="radio_label"> <input type="radio"
								name="radio" /> <span>신고일자</span>
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

							<tr class="KOTRA-fontsize-80">
								<td>1</td>
								<td>dfd232@naver.com</td>
								<td>망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니망나니</td>
								<td>dfd43545@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>2</td>
								<td>2134232@naver.com</td>
								<td>가시</td>
								<td>dfd232@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>3</td>
								<td>dfd43545@naver.com</td>
								<td>겁쟁이</td>
								<td>2134232@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>4</td>
								<td>dfd43545@naver.com</td>
								<td>겁쟁이</td>
								<td>2134232@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>5</td>
								<td>dfd43545@naver.com</td>
								<td>겁쟁이</td>
								<td>2134232@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>6</td>
								<td>dfd43545@naver.com</td>
								<td>겁쟁이</td>
								<td>2134232@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>7</td>
								<td>dfd43545@naver.com</td>
								<td>겁쟁이</td>
								<td>2134232@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>8</td>
								<td>dfd43545@naver.com</td>
								<td>겁쟁이</td>
								<td>2134232@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>9</td>
								<td>dfd43545@naver.com</td>
								<td>겁쟁이</td>
								<td>2134232@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>

							<tr class="KOTRA-fontsize-80">
								<td>10</td>
								<td>dfd43545@naver.com</td>
								<td>겁쟁이</td>
								<td>2134232@naver.com</td>
								<td><a class="gradient-btn" href="#">자세히보기</a></td>
								<!-- <td>content content content</td> -->
								<td>2023.03.15</td>
								<td><a class="gradient-btn" href="#">신고삭제</a></td>
								<!-- <td><input type="button" value="신고삭제" class="member_delete" /></td> -->
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="7">< 1 2 3 4 5 ></td>
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