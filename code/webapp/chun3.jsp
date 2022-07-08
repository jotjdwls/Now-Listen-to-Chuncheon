<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>춘천아트페스티벌</title>
<style>
figure {
	width: 500px;
	height: 500px;
}

table {
	width: 60%;
	margin: auto;
}

#aOfFig_back {
	color: blue;
	text-align: left;
}

#aOfFig_back:hover {
	color: green;
}

#aOfFig_page {
	color: black;
	text-align: left;
	text-decoration: underline;
}

#aOfFig_page:hover {
	color: blue;
}

#place {
	pointer-events: none;
	border: 5px solid black;
}
</style>
</head>
<body>
	<%@ include file="header_title.jsp"%>
	<%@ include file="header_menu.jsp"%>
	<br>
	<br>

	<table>
		<tr>
			<td rowspan=3>
				<figure>
					<img src="image/chuncheon3/1.jpg" width="450px" height="350px">
					<figcaption>
						<h3>춘천아트페스티벌</h3>
						<br>예술단체
						<hr>
						<br>강원도 <b>춘천시</b> 효자3동 754-5 <br>033-251-0545 <br>
						<a id="aOfFig_page" href="http://ccaf.or.kr/">홈페이지 바로가기</a> <br>
						<button onclick="location.href='editboard.jsp'">후기작성</button>
						<button onclick="history.back()">뒤로가기</button>
					</figcaption>
				</figure>
			</td>
		</tr>
		<tr>
			<td><img src="image/chuncheon3/2.jpg" width="280px"
				height="280px"></td>
			<td><img src="image/chuncheon3/3.jpg" width="280px"
				height="280px"></td>
		</tr>

		<tr>
			<td rowspan=2 colspan=2><img id="place"
				src="image/chuncheon3/address.PNG" width="560px" height="560px"></td>
		</tr>

	</table>

	<%@ include file="footer.jsp"%>

</body>
</html>