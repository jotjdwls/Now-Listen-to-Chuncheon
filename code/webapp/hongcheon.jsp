<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍천문화재단</title>
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

	<table>
		<tr>
			<td rowspan=3>
				<figure>
					<img src="image/hongcheon/3.PNG" width="450px" height="350px">
					<figcaption>
						<h3>홍천문화재단</h3>
						<br>재단
						<hr>
						<br>강원도 <b>홍천군</b> 홍천읍 설악로 1792 KR <br>033-439-5800 <br>
						<a id="aOfFig_page" href="https://www.hccf.or.kr/">홈페이지 바로가기</a> <br>
						<button onclick="location.href='editboard.jsp'">후기작성</button>
						<button onclick="history.back()">뒤로가기</button>
					</figcaption>
				</figure>
			</td>
		</tr>
		<tr>
			<td><img src="image/hongcheon/1.PNG" width="300px"
				height="250px"></td>
			<td><img src="image/hongcheon/2.jpg" width="300px"
				height="250px"></td>
		</tr>

		<tr>
			<td rowspan=2 colspan=2><img id="place"
				src="image/hongcheon/address.PNG" width="600px" height="560px"></td>
		</tr>

	</table>

	<%@ include file="footer.jsp"%>

</body>
</html>