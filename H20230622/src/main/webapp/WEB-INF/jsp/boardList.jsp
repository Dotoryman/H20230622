<%@page import="com.yedam.common.PageDTO"%>
<%@page import="com.yedam.board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/jsp/board.jsp</title>
<style>
.center {
  text-align: center;
}

.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  margin: 0 4px;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}
</style>

</head>
<body>
<%
	List<BoardVO> list = (List<BoardVO>) request.getAttribute("list"); //list = dao.list();
	PageDTO pg = (PageDTO) request.getAttribute("page");
%>

 	<p><%=pg %></p>
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
	<br>
	<div class="center">
  	<div class="pagination">
	<%
		if (pg.isPrev()){
	%>
		<a href="boardList.do?page=<%=pg.getStartPage()-1 %>"> prev </a>
	<%
		}
		for (int i = pg.getStartPage(); i <= pg.getEndPage(); i++){
			if(i == pg.getCurPage()){
	%>
	<a href="boardList.do?page=<%=i %>" class="active"> <%=i %> </a>
	<%
		} else {
	%>
			<a href="boardList.do?page=<%=i %>"> <%=i %> </a>
	<%
		}
	}
		if (pg.isNext()){
	%>
		<a href="boardList.do?page=<%=pg.getEndPage()+1 %>"> next </a>
	<%
		}
	%>
	</div>
	</div>
	
	<br>
	<br>
	<tr>
	<a href="boardForm.do">글쓰기</a>
	</tr>
</body>
</html>