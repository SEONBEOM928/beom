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
	String name=request.getParameter("sangName");
	String size=request.getParameter("size");
	String [] col=request.getParameterValues("color");
	String plus=request.getParameter("plus");
	%>
	
	상품명: <%=name %><br><br>
	사이즈: <%=size %><br><br>
	색상:
	<%
	for(int i=0;i<col.length;i++)
	{%>
	<b style="color: <%=col[i]%>"> <%=col[i] %>&nbsp; </b>
	<%}
	%>
	<br><br>
	추가상품: <%=plus %><br>
</body>
</html>