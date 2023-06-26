<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="jstl1.jsp"></c:import>
	<%
	if (30 > 20) {
	}
	%>
	<c:if test="${30 > 20 }">
		<p>TRUE</p>
	</c:if>

	<c:set var="score" value="50"></c:set>
	<c:out value="${score }"></c:out>

	<c:choose>
		<c:when test="${score >20 }">
			<p>값은 참입니다</p>
		</c:when>
		<c:otherwise>
			<p>당신은 거짓말쟁이입니다.</p>
		</c:otherwise>
	</c:choose>

	<c:set var="mathScore" value="88"></c:set>

	<c:choose>
		<c:when test="${mathScore > 90 }">
			<p>'A'학점 입니다.</p>
		</c:when>
		<c:when test="${mathScore > 80 }">
			<p>'B'학점 입니다.</p>
		</c:when>
		<c:when test="${mathScore gt 70 }">
			<p>'C'학점 입니다.</p>
		</c:when>
		<c:otherwise>
		<p>그만두쇼 그냥</p>
		</c:otherwise>
	</c:choose>
	
	<c:choose>
	<c:when test="${loginName }">
		<p>이름 : <c:out value="${loginName }"></c:out></p>
		</c:when>
		<c:otherwise>
		<p>손님입니다</p>
		</c:otherwise>
	</c:choose>


</body>
</html>