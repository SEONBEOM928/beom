<%@page import="db.simpleguest.SimpleDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Cute+Font&family=Diphylleia&family=Dongle:wght@300&family=Hi+Melody&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	String num=request.getParameter("num");
	
%>
<div style="margin: 100px; 100px; border: 3px solid gray;">
<form action="deleteAction.jsp" method="post">
<input type="hidden" name="num" value="<%=num %>">
<table>

<tr>
	<th>비밀번호</th>
	<td><input type="password" name="pass"></td>
</tr>
<tr>
<td>
<button type="submit" class="btn btn-success">확인</button>
</td>
<td>
<button type="button" class="btn btn-dark" onclick="location.href='guestlist.jsp'">취소</button>
</td>
</tr>
 

</table>
</form>
</div>
</body>
</html>