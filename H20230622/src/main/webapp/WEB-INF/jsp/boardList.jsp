<%@page import="com.yedam.board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/jsp/board.jsp</title>
</head>
<body>
<%
	List<BoardVO> list = (List<BoardVO>) request.getAttribute("list"); //list = dao.list();
%>

 
	<h1>게 시 판</h1>
	<table border = '1'>
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<% for(BoardVO vo : list) {
			%>	
			<tr>
				<td><%=vo.getBrdNo()%></td>
				<td><a href="searchBoard.do?bno=<%=vo.getBrdNo()%>"><%=vo.getBrdTitle()%></a></td>
				<td><%=vo.getBrdWriter()%></td>
				<td><%=vo.getClickCnt()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<a href="boardForm.do">글쓰기</a>
</body>
</html>