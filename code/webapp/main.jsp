<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
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
	text-decoration: underline;
	text-align: left;
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
	<img src="image/main_background.jpg" style="width: 100%; height: 200px;">
	<%@ include file="header_menu.jsp"%>
	<br>
	<br>

	<table>
		<tr>
			<td id="" colspan=2><h3>&lt;춘천 '내' 추천 여행지&gt;</h3></td>
		</tr>

		<tr>
			<td>
				<figure>
					<img src="image/chuncheon3/1.jpg" width="400px" height="300px">
					<figcaption>
						춘천<br> <a id="aOfFig" href="chun3.jsp">춘천아트페스티벌</a>
					</figcaption>
				</figure>
			</td>
			<td>
				<figure>
					<img src="image/chuncheon2/1.PNG" width="400px" height="300px">
					<figcaption>
						춘천<br> <a id="aOfFig" href="chun2.jsp">봄내극장</a>
					</figcaption>
				</figure>
			</td>
			<td>
				<figure>
					<img src="image/chuncheon4/1.PNG" width="400px" height="300px">
					<figcaption>
						춘천<br> <a id="aOfFig" href="chun4.jsp">춘천문화예술회관</a>
					</figcaption>
				</figure>
			</td>
		</tr>
		<tr>
			<td id="" colspan=2><h3>&lt;춘천 '외' 추천 여행지&gt;</h3></td>
		</tr>
		<tr>
			<td>
				<figure>
					<img src="image/jeongseon/1.jpg" width="400px" height="300px">
					<figcaption>
						정선<br> <a id="aOfFig" href="jeongseon.jsp">정선아리랑제</a>
					</figcaption>
				</figure>
			</td>
			<td>
				<figure>
					<img src="image/wonju/1.jpg" width="400px" height="300px">
					<figcaption>
						원주<br> <a id="aOfFig" href="wonju.jsp">원주 댄싱공연장</a>
					</figcaption>
				</figure>
			</td>
			<td>
				<figure>
					<img src="image/gangreung/1.PNG" width="400px" height="300px">
					<figcaption>
						강릉<br> <a id="aOfFig" href="gangreong.jsp">명주예술마당</a>
					</figcaption>
				</figure>
			</td>
		</tr>
	</table>


	<%@ include file="footer.jsp"%>

</body>
</html>