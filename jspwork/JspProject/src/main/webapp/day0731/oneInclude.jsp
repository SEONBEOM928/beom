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
    String msg=request.getParameter("msg");
	String iname=request.getParameter("imgname");
  %>
  
  <h3>전달받은 메세지: <%=msg %></h3>
  <h3>전달받은 이미지</h3>
   <img alt="" src="<%=iname%>">
</body>
</html>