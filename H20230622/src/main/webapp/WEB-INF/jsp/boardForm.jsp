<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page="Header.jsp"></jsp:include>
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
    <table class = "table">
       
            <tr>
            <th>제목</th>
            <td><input type = "text" name = "title"></td>
            </tr>
            <tr>            
            <th>작성자</th>
            <td><input type = "text" name = "writer"></td>
            </tr>
            <tr>
            <th>내용</th>
            <td><textarea name = "content" cols="30" rows="10"></textarea></td>
            </tr>
        
        <tr>
            <td colspan="2">
                <input type="submit" value="저장">
                <input type="reset" value="초기화">
            </td>
        </tr>
        <tr>
        <br>
	    <a href="boardList.do">목록으로</a>
		</tr>

    </table>
</form>
<jsp:include page="Footer.jsp"></jsp:include>