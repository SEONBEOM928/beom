<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="alert alert-success">총 ${totalCount }명의 회원이 있습니다.</div>
<table class="table table-bordered">
<caption align="top">회원목록</caption>
	<tr>
		<th>이름</th><th>아이디</th><th>연락처</th><th>주소</th><th>이메일</th><th>가입일</th>
	</tr>	
  <c:forEach var="member" items="${list }">
	<tr>
		<td>${member.name }</td>
		<td>${member.id }</td>
		<td>${member.hp }</td>
		<td>${member.addr }</td>
		<td>${member.email }</td>
		<td><fmt:formatDate value="${member.gaipday }" pattern="yyyy-MM-dd"/></td>
	
		
	</tr>
	
	
	</c:forEach>
</table>
<button type="button" class="btn btn-info" onclick="location.href='form'">회원가입</button>
</body>
</html>