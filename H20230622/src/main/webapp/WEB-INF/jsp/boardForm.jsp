<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardForm.jsp</title>
</head>
<body>

	<%
		String msg = (String)request.getAttribute("errorMsg");
	%>
	<%
		if(msg != null){
	%>
		<p>메세지 : <b><%=msg %></b> </p>
	<%
	}
	%>
    <h2>게시글 등록</h2>
    <form action="addBoard.do" method="post">
    <table border="1">
        <tr>
            <th>제목</th>
            <td><input type = "text" name = "title"></td>
            <th>작성자</th>
            <td><input type = "text" name = "writer"></td>
            <th>내용</th>
            <td><textarea name = "content" cols="30" rows="10"></textarea></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="저장">
                <input type="reset" value="초기화">
            </td>
        </tr>


    </table>
</form>
</body>
</html>