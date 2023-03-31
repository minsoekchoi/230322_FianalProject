<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>첫화면</title>
<style type="text/css">
ul.menu {
	list-style-type: none;
	margin: auto;
	padding: 0px;
}

ul.menu a {
	background-color: tomato;
	color: white;
	text-decoration: none;
	float: left;
	padding: 20px 40px;
	border-right: 3px solid white;
}

ul.menu a:hover {
	background-color: skyblue;
	font-weight: bold;
}

header {
	text-align: center;
}

nav {
	margin-top: 25px;
	margin-left: 550px;
}
</style>
</head>
<body>
	<header>
		<h2>한국 ICT 인재 개발원</h2>
		<nav>
			<ul class="menu">
				<li><a href="view_origin.do"> 메인창 기본틀 </a></li>
				<li><a href="mypage.do"> 내프로필 </a></li>
				<li><a href="mypage_edit.do"> 내프로필수정창 </a></li>
				<li><a href="passwordcheck.do"> 비밀번호확인창 </a></li>
				<li><a href="passwordedit.do"> 비밀번호수정창 </a></li>
				<li><a href="boardlist_report.do"> 신고내역리스트 기본틀 </a></li>
				<li><a href="view_report.do"> 신고내용 </a></li>
				<li><a href="boardlist.do"> 자유게시판 공지사항 </a></li>
				<li><a href="boardlist_write.do"> 게시글작성 </a></li>
				<li><a href="view_boardlist.do"> 게시글보기 </a></li>
				<li><a href="boardlist_member.do"> 회원 관리 리스트 </a></li>
				<li><a href="boardlist_room.do"> 방 관리 리스트 </a></li>
				<li><a href="boardlist_outmember.do"> 탈퇴 회원 관리 리스트 </a></li>
				<li><a href="usercreate_super.do"> 사용자 생성 </a></li>
				<li><a href="userlist_super.do"> 사용자 관리 리스트 </a></li>
				<li><a href="admincreate_super.do"> 관리자 생성 </a></li>
				<li><a href="adminlist_super.do"> 관리자 관리 리스트 </a></li>

			</ul>
		</nav>
	</header>
</body>
</html>