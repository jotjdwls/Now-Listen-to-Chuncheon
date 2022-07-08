<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>춘천 외</title>
<style>
figure {
	width: 350px;
	height: 500px;
}

table {
	width: 60%;
	margin: auto;
}

#aOfFig {
	color: black;
	text-align: left;
	text-decoration: underline;
}

#aOfFig:hover {
	color: blue;
}

table img:hover {
	transform: scale(1.1, 1.1);
	transition: all 0.3s;
	border: 2px solid green;
}

</style>
</head>
<body>
	<%@ include file="header_title.jsp"%>
	<img src="image/background_another.PNG" style="width: 100%; height: 200px;">
	<%@ include file="header_menu.jsp"%>
	<br>
	<br>

	<table>
		<tr>
			<td id="" colspan=2><h3>&lt;춘천 '외' 모두보기&gt;</h3></td>
		</tr>

		<tr>
			<td>
				<figure>
					<img src="image/hongcheon/3.PNG" width="400px" height="300px">
					<figcaption>
						홍천군 홍천읍<br> <a id="aOfFig" href="hongcheon.jsp">홍천문화재단</a>
					</figcaption>
				</figure>
			</td>
			<td>
				<figure>
					<img src="image/jeongseon/1.jpg" width="400px" height="300px">
					<figcaption>
						정선군 정선읍<br> <a id="aOfFig" href="jeongseon.jsp">정선아리랑제</a>
					</figcaption>
				</figure>
			</td>
		</tr>
		<tr>
			<td>
				<figure>
					<img src="image/wonju/1.jpg" width="400px" height="300px">
					<figcaption>
						원주시 단구로<br> <a id="aOfFig" href="wonju.jsp">원주 댄싱공연장</a>
					</figcaption>
				</figure>
			</td>
			<td>
				<figure>
					<img src="image/gangreung/1.PNG" width="400px" height="300px">
					<figcaption>
						강릉시 중앙동<br> <a id="aOfFig" href="gangreong.jsp">명주예술마당</a>
					</figcaption>
				</figure>
			</td>
		</tr>
	</table>


	<%@ include file="footer.jsp"%>

</body>
</html>