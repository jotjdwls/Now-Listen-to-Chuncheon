<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 작성</title>
</head>

<!-- 파일 boardform.js : 폼의 각 입력 값이 있는지를 검토하는 함수 구현 -->
<script language=JavaScript src="boardform.js"></script>

<body>
	<%@ include file="header_title.jsp"%>
	<img src="image/background_another2.PNG" style="width: 100%; height: 200px;">
	<%@ include file="header_menu.jsp"%>
	<%@ page import="univ.*"%>
	<%
	String name = "";
	String title = "";
	String content = "";
	String headline = "등록";

	String id = request.getParameter("id");
	if (id != null) {
		//등록이 아닌 경우, 출력을 위해 선택한 게시의 각 필드 내용을 저장 
		int idnum = Integer.parseInt(id);
		BoardDBCP brddb = new BoardDBCP();
		BoardEntity brd = brddb.getBoard(idnum);
		name = brd.getName();
		title = brd.getTitle();
		content = brd.getContent();
		headline = "수정 삭제";
	}
	%>

	<br>
	<h3 style="text-align: center">여러분의 목소리를 들려주세요!</h3>
	<hr>

	<center>
		<form name=boardform method=post action="processboard.jsp">
			<!-- menu : 등록, 수정 또는 삭제 구분을 위한 매개변수로 이용 -->
			<input type=hidden name="menu" value="insert">
			<!-- 수정 또는 삭제를 위한 게시 id를 hidden으로 전송 -->
			<input type=hidden name="id" value=<%=id%>>

			<table width=100% border=0 cellspacing=0 cellpadding=7>
				<tr>
					<td align=center>

						<table border=0>
							<tr>
								<td colspan=2>
									<table>
										<tr>
											<td width=50>이 름 :</td>
											<td width=100><input type=text name=name
												value="<%=name%>" size=30 maxlength=20></td>
										</tr>
										<tr>
											<td width=50>제 목 :</td>
											<td colspan=3><input type=text name=title size=80
												value="<%=title%>" maxlength=100></td>
										</tr>
									</table>
								</td>
							</tr>

							<tr>
								<td colspan=2><textarea name=content rows=10 cols=95><%=content%></textarea></td>
							</tr>
							<tr>
								<td colspan=2>비밀번호 : <input type=password name=passwd
									size=20 maxlength=15></td>
							</tr>
							<tr>
								<td><font color=red size="1.5em"> 현재 게시 내용을 수정 또는
										삭제하려면 이미 등록한 비밀번호가 필요합니다.</font></td>
							</tr>
							<tr>
								<td colspan=2 height=5><hr size=2></td>
							</tr>
							<tr>
								<td colspan=2>
									<%
									if (id == null) {
									%> <!-- 버튼을 누르면 boardform.js의 함수를 실행하여 processboard.jsp로 이동 -->
									<input type=button value="등록" onClick="insertcheck()">
									<%
									} else {
									%> <!-- 버튼을 누르면 boardform.js의 각 함수를 실행하여 processboard.jsp로 이동 -->
									<input type=button value="수정완료" onClick="updatecheck()">
									<input type=button value="삭제" onClick="deletecheck()">
									<%
									}
									%> <!-- 목록보기 버튼은 listboard.jsp로 이동 --> <input type=button
									value="목록보기" onClick="location.href='listboard.jsp'"> <input
									type=reset value="취소">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

		</form>
	</center>
	<%@ include file="footer.jsp"%>

</body>
</html>
