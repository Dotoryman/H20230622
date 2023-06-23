<%@page import="com.yedam.board.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardModify.jsp</title>
</head>
<body>

	<%
	BoardVO vo = (BoardVO) request.getAttribute("board");
	%>
	<h2>수정화면(boardModify.jsp)</h2>
	<form action = "boardModify.do" method = "post">
		<table border="1">
			<tr>
				<th>글번호</th><td><input readonly name="no" value="<%=vo.getBrdNo() %>"></td><th>조회수</th><td><%=vo.getClickCnt() %></td>
			</tr>
			<tr>
				<th>제목</th><td colspan="3"><input name="title" value="<%=vo.getBrdTitle() %>"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" cols="54" rows="3"><%=vo.getBrdContent() %></textarea></td>
			</tr>
			<tr>
				<th>작성자</th><td><%=vo.getBrdWriter() %></td><th>작성일자</th><td><%=vo.getCreateDate() %></td>
			</tr>
			<tr>
			<td colspan="4" align = "center">
				<input type = "submit" value ="저장">
			</td>
			
			</tr>
	
	
	
	
		</table>
	</form>
	
	<br>
	<a href="boardList.do">목록으로</a>

</body>
</html>