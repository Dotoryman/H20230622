<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
	<jsp:include page="Header.jsp"></jsp:include>
	<%
		String msg = (String)request.getAttribute("errorMsg");
		String logId = (String) session.getAttribute("loginId");
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
            <td>
            <c:choose>
	            <c:when test="${empty loginId }">
	            	<input type = "text" name = "writer">
	            </c:when>
	            <c:otherwise>
	            	<input type = "text" name = "writer" value="${loginId}" readonly>
	            </c:otherwise>
            
            </c:choose>

            </td>
            </tr>
            <tr>
            <th>내용</th>
            <td><textarea name = "content" cols="30" rows="10"></textarea></td>
            </tr>
        
        <tr>
            <td colspan="2">
            <c:choose>
            	<c:when test="${empty loginId }">
            		<input type="submit" value="저장" disabled>
            	</c:when>
            	<c:otherwise>
            		<input type="submit" value="저장">
            	</c:otherwise>
            </c:choose>
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