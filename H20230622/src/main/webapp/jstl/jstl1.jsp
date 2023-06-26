<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="my" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl1.jsp</title>
</head>
<body>
<%String msg = "Hell of the world"; %>
<%out.print(msg); %>
<my:set value="Hell of the World" var = "msg"></my:set><br>
<my:out value="${msg}"></my:out><br>
<my:out value="${loginId}"></my:out>
</body>
</html>