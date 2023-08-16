<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Vector"%>
<%@page import="mysawon.model.mysawonDto"%>
<%@page import="mysawon.model.mysawonDao"%>
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
	mysawonDao dao=new mysawonDao();
	mysawonDto dto=new mysawonDto();
	
	Vector<mysawonDto> list=dao.getAllMysawons();
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy년-MM월-dd일");
%>

<table class="table table-bordered">
<tr>
<th>번호</th><th>이름</th><th>아이디</th><th>비밀번호</th><th>부서</th><th>직위</th><th>입사일</th>
</tr>
<%for(int i=0;i<=list.size();i++) {%>
<tr>
<td>
<%=dto.getNum() %>
</td>
<td>
<img src='../image/avata/b<%=i+1 %>.png'>
<%=dto.getName() %>
</td>
<td>
<%=dto.getId() %>
</td>
<td>
<%=dto.getPass() %>
</td>
<td>
<%=dto.getBuseo() %>
</td>
<td>
<%=dto.getGrade() %>
</td>
<td>
<%=dto.getIpsaday() %>
</td>

</tr>
<%} %>
</table>
</body>
</html>