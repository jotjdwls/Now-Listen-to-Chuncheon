<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>춘천 내</title>
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
	<img src="image/background_chuncheon.PNG"
		style="width: 100%; height: 200px;">
	<%@ include file="header_menu.jsp"%>
	<br>
	<br>

	<table>
		<tr>
			<td id="" colspan=2><h3>&lt;춘천 '내' 모두보기&gt;</h3></td>
		</tr>

		<tr>
			<td>
				<figure>
					<img src="image/chuncheon1/photo3.jpg" width="400px" height="300px">
					<figcaption>
						춘천시 석사동<br> <a id="aOfFig" href="chun1.jsp">춘천국제고음악제</a>
					</figcaption>
				</figure>
			</td>
			<td>
				<figure>
					<img src="image/chuncheon2/1.PNG" width="400px" height="300px">
					<figcaption>
						춘천시 옥천동<br> <a id="aOfFig" href="chun2.jsp">봄내극장</a>
					</figcaption>
				</figure>
			</td>
		</tr>
		<tr>
			<td>
				<figure>
					<img src="image/chuncheon3/1.jpg" width="400px" height="300px">
					<figcaption>
						춘천시 효자3동<br> <a id="aOfFig" href="chun3.jsp">춘천아트페스티벌</a>
					</figcaption>
				</figure>
			</td>
			<td>
				<figure>
					<img src="image/chuncheon4/1.PNG" width="400px" height="300px">
					<figcaption>
						춘천시 효자동<br> <a id="aOfFig" href="chun4.jsp">춘천문화예술회관</a>
					</figcaption>
				</figure>
			</td>
		</tr>
	</table>


	<%@ include file="footer.jsp"%>

</body>
</html>