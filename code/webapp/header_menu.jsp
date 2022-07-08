<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴바</title>
<style type="text/css">
.menu {
	width: 1000px;
	height: 50px;
	margin: auto;

}

li {
	background-color: rgb(43, 66, 3);
	list-style: none;
	float: left;
	height: 50px;
	line-height: 50px;
	width: 315px;
}

a {
	color: rgb(219, 244, 175);
	text-decoration: none;
	display: block;
	text-align: center;
}

.menu a:hover {
	color: white;
	font-weight: bold;
	transform: scale(1.2, 1.2);
	transition: all 0.2s;
}

ul li ul li {
	float: none;
	position: static;
	height: 0;
	line-height: 0;
	transition: all 0.2s;
	-webkit-transition: all 0.2s;
	-moz-transition: all 0.2s;
	-ms-transition: all 0.2s;
	-o-transition: all 0.2s;
}
</style>
</head>
<body>
	<div class="menu">
		<ul>
			<li><a href="inChuncheon.jsp">춘천 '내'</a></li>
			<li><a href="outChuncheon.jsp">춘천 '외'</a></li>
			<li><a href="listboard.jsp">게시판</a></li>
		</ul>
	</div>
</body>
</html>