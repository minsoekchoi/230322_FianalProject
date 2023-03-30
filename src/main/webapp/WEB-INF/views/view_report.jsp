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
<link href="resources/attribute_list/css/view_report_table.css"
	rel="stylesheet">
<title>신고내용</title>
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
						<h2 id="headline">신고내용</h2>
						<table class="view_report_table" style="margin-top: 50px;">
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
									<td colspan="8"><button class="btn hover1"
											style="margin-top: 15px;">뒤로</button></td>
								</tr>
							</tfoot>

						</table>
					</div>
				</div>
			</div>
		</section>
		<!-- footer 추가  -->
		<footer></footer>
	</div>
</body>
</html>