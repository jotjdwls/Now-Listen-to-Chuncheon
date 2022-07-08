<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록 표시</title>
<style>
#aOfTable {
	color: black;
	font-weight: bold;
}
</style>
</head>
<body>
	<%@ include file="header_title.jsp"%>
	<img src="image/background_another2.PNG" style="width: 100%; height: 200px;">
	<%@ include file="header_menu.jsp"%>
	
	<br>
	<h3 style="text-align: center">게시판 목록</h3>
	<hr>
	<font size=1.7em>&nbsp;&nbsp;&nbsp;번호를 누르면 해당 게시물을 볼 수 있습니다.</font>
	<center>

		<%@ page
			import="java.util.ArrayList, univ.BoardEntity, java.text.SimpleDateFormat"%>
		<jsp:useBean id="brddb" class="univ.BoardDBCP" scope="page" />
		<%
		//게시 목록을 위한 배열리스트를 자바진즈를 이용하여 확보 
		ArrayList<BoardEntity> list = brddb.getBoardList();
		int counter = list.size();
		int row = 0;

		if (counter > 0) {
		%>
		<table width=800 border=0 cellpadding=1 cellspacing=3>

			<tr>
				<th><font color="476600"><b>번호</b></font></th>
				<th><font color="476600"><b>작성자</b></font></th>
				<th><font color="476600"><b>제목</b></font></th>
				<th><font color="476600"><b>작성일</b></font></th>
			</tr>
			<%
			//게시 등록일을 2010-3-15 10:33:21 형태로 출력하기 위한 클래스 
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			for (BoardEntity brd : list) {
				//홀짝으로 다르게 색상 지정
				String color = "papayawhip";
				if (++row % 2 == 0)
					color = "white";
			%>
			<tr bgcolor=<%=color%>
				onmouseover="this.style.backgroundColor='SkyBlue'"
				onmouseout="this.style.backgroundColor='<%=color%>'">
				<!-- 수정과 삭제를 위한 링크로 id를 전송 -->
				<td align=center width="50"><a id=aOfTable
					href="editboard.jsp?id=<%=brd.getId()%>"><%=brd.getId()%></a></td>
				<td align=left width="150"><%=brd.getName()%></td>
				<td align=left><%=brd.getTitle()%></td>
				<!-- 게시 작성일을 2010-3-15 10:33:21 형태로 출력 -->
				<td align=center width="180"><%=df.format(brd.getRegdate())%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>

	</center>
	<hr width=90%>

	<font size=2em>&nbsp;&nbsp;&nbsp;조회된 게시판 목록 수가 </font>
	<font size=3em color="red" weight="bold"><%=counter%>개 </font>
	<font size=2em>입니다.</font>
	<br>
	<center>
		<form name=form method=post action=editboard.jsp>
			<input type=submit value="글쓰기" style="align: left;">
		</form>
	</center>
	<%@ include file="footer.jsp"%>
</body>
</html>
